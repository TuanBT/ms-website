using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class MaidMediatorController : Controller
    {
        //
        // GET: /MaidMediator/

        public ActionResult Index()
        {
            using (var db = new MSEntities())
            {
                if (Session["AccId"] != null)
                {
                    var accId = (int) Session["AccId"];
                    var role = ((string) Session["Role"]).Trim();
                    var account = db.Accounts.SingleOrDefault(a => a.AccountId == accId);
                    if (role.Equals("MaidMediator"))
                    {
                        ViewBag.MaidList = db.Maids.Where(m => m.MaidMediator.Account.AccountId == accId).ToList();
                        return View("MaidMediator", account);
                    }
                    if (role.Equals("Staff"))
                    {
                        ViewBag.MaidList = db.Maids.Where(m => m.Staff.Account.AccountId == accId).ToList();
                    }
                }
                return RedirectToAction("Login", "Home");
            }
        }

        public ActionResult AddMaid(string fullname, string desc, string address, string phone)
        {
            using (var db = new MSEntities())
            {
                var accId = (int)Session["AccId"];
                var maid = new Maid { MaidName = fullname, MaidMediatorId = accId };
                db.Maids.Add(maid);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
        }

        public ActionResult ManageMaidProfile(int maidId)
        {
            using (var db = new MSEntities())
            {
                var maid = db.Maids.FirstOrDefault(m => m.MaidId == maidId);
                if (maid != null)
                {
                    var notApplJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Waiting")).ToList();
                    var applJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Applied")).ToList();
                    var apprJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Approved")).ToList();
                    var expiredJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Expired")).ToList();
                    ViewBag.NotApplList = notApplJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null)).ToList();
                    ViewBag.ApplList = (from jobRequest in applJobList let apply = db.Applies.SingleOrDefault(a => a.JobRequestId == jobRequest.JobRequestId) let recruit = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apply.RecruitmentId) select new JobRequestTemp(jobRequest, maid, recruit, null)).ToList();
                    ViewBag.ApprList = (from jobRequest in apprJobList let apply = db.Applies.SingleOrDefault(a => a.JobRequestId == jobRequest.JobRequestId) let recruit = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apply.RecruitmentId) select new JobRequestTemp(jobRequest, maid, recruit, null)).ToList();
                    ViewBag.ExpiredList = expiredJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null)).ToList();
                    if (maid.MaidMediatorId != null)
                    {
                        var mUsername = maid.MaidMediator.Account.Username;
                        var isActive = maid.MaidMediator.Account.IsActive;
                        var joinDate = maid.MaidMediator.Account.JoinDate;
                        var role = maid.MaidMediator.Account.Role;
                        var avatar = maid.MaidMediator.Account.Avatar;
                        var email = maid.MaidMediator.Account.Email;
                        var phone = maid.MaidMediator.Account.Phone;
                        var fullname = maid.MaidMediator.Account.FullName;
                        var mm = new MaidManager(mUsername, isActive, joinDate, role, avatar, email, phone,
                                                         fullname);
                        ViewBag.MaidManager = mm;
                    }
                    else
                    {
                        var mUsername = maid.Staff.Account.Username;
                        var isActive = maid.Staff.Account.IsActive;
                        var joinDate = maid.Staff.Account.JoinDate;
                        var role = maid.Staff.Account.Role;
                        var avatar = maid.Staff.Account.Avatar;
                        var email = maid.Staff.Account.Email;
                        var phone = maid.Staff.Account.Phone;
                        var fullname = maid.Staff.Account.FullName;
                        var mm = new MaidManager(mUsername, isActive, joinDate, role, avatar, email, phone,
                                                         fullname);
                        ViewBag.MaidManager = mm;
                    }
                }
                return View("MaidProfile", maid);
            }
        }

        public ActionResult RemoveJob(string jobId)
        {
            using (var db = new MSEntities())
            {
                var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == int.Parse(jobId));
                if (jobRequest != null)
                {
                    db.JobRequests.Remove(jobRequest);
                    var skillRefTmp = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == jobRequest.SkillRefId);
                    db.SkillReferences.Remove(skillRefTmp);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("Index");
        }

        public ActionResult PostRequest()
        {
            using (var db = new MSEntities())
            {
                if (Session["AccId"] == null)
                {
                    return RedirectToAction("Login", "Home");
                }
                var maidManagerId = (int) Session["AccId"];
                var role = Session["Role"];
                Session["StayList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Stay")).ToList();
                Session["SalaryList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Salary")).ToList();
                Session["WorkList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Work")).ToList();
                if (Session["SkillList"] == null)
                {
                    Session["SkillList"] = db.SkillInstances.Where(si => si.CategoryId == 2).ToList();
                }
                if (role.Equals("MaidMediator"))
                {
                    var maidList = db.Maids.Where(m => m.MaidMediatorId == maidManagerId).ToList();
                    Session["MaidList"] = maidList;
                } 
                else if (role.Equals("Staff"))
                {
                    var maidList = db.Maids.Where(m => m.StaffId == maidManagerId).ToList();
                    Session["MaidList"] = maidList;
                }
                LoadItems();
            }
            return View("PostRequest");
        }

        public ActionResult AddRequest(string stay, string salary, string work, string SickCare,
            string OldCare, string BabySister, string DisabilityCare, string BonsaiCare, string Cooking,
            string Washing, string CleanHouse, string maidId, string time)
        {
            if (maidId != null)
            {
                using (var db = new MSEntities())
                {
                    var skillRef = new SkillReference();
                    skillRef.Type = 2;
                    var maidIdInt = int.Parse(maidId);
                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == maidIdInt);
                    if ((bool)maid.Gender)
                    {
                        skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("Nam")).SkillId;
                    }
                    else
                    {
                        skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("Nữ")).SkillId;
                    }
                    if (maid.BirthDate != null)
                    {
                        var skillRefAge = DateTime.Now.Year - DateTime.Parse(maid.BirthDate.ToString()).Year;
                        if (skillRefAge >= 15 && skillRefAge <= 20)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("15-20")).SkillId;
                        }
                        else if (skillRefAge > 20 && skillRefAge <= 30)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("21-30")).SkillId;
                        }
                        else if (skillRefAge > 30 && skillRefAge <= 40)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("31-40")).SkillId;
                        }
                        else if (skillRefAge > 40 && skillRefAge <= 50)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("41-50")).SkillId;
                        }
                        else if (skillRefAge > 50 && skillRefAge <= 60)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("51-60")).SkillId;
                        }
                    }
                    if ((bool)maid.English)
                    {
                        skillRef.LanguageEnglish = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageEnglish")).SkillId;
                    }
                    if ((bool)maid.Chinese)
                    {
                        skillRef.LanguageChinese = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageChinese")).SkillId;
                    }
                    if ((bool)maid.Japanese)
                    {
                        skillRef.LanguageJapanese = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageJapanese")).SkillId;
                    }
                    if ((bool)maid.Korean)
                    {
                        skillRef.LanguageKorean = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageKorean")).SkillId;
                    }
                    if (maid.Experience < 1)
                    {
                        skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("<1 năm")).SkillId;
                    }
                    else if (maid.Experience >= 1 && maid.Experience <= 3)
                    {
                        skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("1-3 năm")).SkillId;
                    }
                    else if (maid.Experience > 3)
                    {
                        skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(">3 năm")).SkillId;
                    }
                    if (maid.Hometown != null)
                    {
                        skillRef.Hometown = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(maid.Hometown)).SkillId;
                    }
                    if (maid.Address != null)
                    {
                        skillRef.Hometown = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(maid.Address)).SkillId;
                    }
                    if (!stay.Equals("null"))
                    {
                        skillRef.Stay = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Stay") && si.SkillString.Equals(stay)).SkillId;
                    }
                    if (!salary.Equals("null"))
                    {
                        skillRef.Salary = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(salary)).SkillId;
                    }
                    if (!work.Equals("null"))
                    {
                        skillRef.Work = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(work)).SkillId;
                    }
                    if (SickCare != null)
                    {
                        skillRef.SickCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(SickCare)).SkillId;
                    }
                    if (OldCare != null)
                    {
                        skillRef.OldCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(OldCare)).SkillId;
                    }
                    if (BabySister != null)
                    {
                        skillRef.BabySister =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BabySister)).SkillId;
                    }
                    if (DisabilityCare != null)
                    {
                        skillRef.DisabilityCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(DisabilityCare)).SkillId;
                    }
                    if (BonsaiCare != null)
                    {
                        skillRef.BonsaiCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BonsaiCare)).SkillId;
                    }
                    if (Cooking != null)
                    {
                        skillRef.Cooking =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Cooking)).SkillId;
                    }
                    if (Washing != null)
                    {
                        skillRef.Washing =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Washing)).SkillId;
                    }
                    if (CleanHouse != null)
                    {
                        skillRef.CleanHouse =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(CleanHouse)).SkillId;
                    }
                    db.SkillReferences.Add(skillRef);
                    db.SaveChanges();
                    skillRef = db.SkillReferences.SingleOrDefault(sr => sr.Type == 2);
                    var jobRequest = new JobRequest();
                    jobRequest.SkillRefId = skillRef.SkillRefId;
                    if (Session["Role"].Equals("MaidMediator"))
                    {
                        jobRequest.MaidMediatorId = (int) Session["AccId"];
                    }
                    else if (Session["Role"].Equals("Staff"))
                    {
                        jobRequest.StaffId = (int) Session["AccId"];
                    }
                    jobRequest.Status = "Waiting";
                    jobRequest.PostTime = DateTime.Now;
                    jobRequest.ExpiredTime = DateTime.Now.AddDays(7*int.Parse(time));
                    jobRequest.MaidId = maidIdInt;
                    jobRequest.Title = "Tuân ngu";
                    jobRequest.IsActive = false;
                    skillRef.Type = 0;
                    db.JobRequests.Add(jobRequest);
                    db.SaveChanges();
                    LoadItems();
                }
            }
            return View("PostRequest");
        }

        public void LoadItems()
        {
            ViewBag.StayList = Session["StayList"];
            ViewBag.SalaryList = Session["SalaryList"];
            ViewBag.WorkList = Session["WorkList"];
            ViewBag.SkillList = Session["SkillList"];
            ViewBag.MaidList = Session["MaidList"];
        }
    }
}
