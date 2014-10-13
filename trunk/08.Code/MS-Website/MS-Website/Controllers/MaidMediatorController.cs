using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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
                var accId = (int)Session["AccId"];
                var role = ((string)Session["Role"]).Trim();
                var account = db.Accounts.SingleOrDefault(a => a.AccountId == accId);
                if (role.Equals("MaidMediator"))
                {
                    ViewBag.MaidList = db.Maids.Where(m => m.MaidMediator.Account.AccountId == accId).ToList();
                }
                else if (role.Equals("Staff"))
                {
                    ViewBag.MaidList = db.Maids.Where(m => m.Staff.Account.AccountId == accId).ToList();
                }
                return View("MaidMediator", account);
            }
        }

        public ActionResult AddMaid(string fullname, string desc, string address, string phone)
        {
            using (var db = new MSEntities())
            {
                var accId = (int)Session["AccId"];
                var maid = new Maid { MaidName = fullname, MaidMediatorId = accId, Gender = "Nam" };
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
                    var nAList = notApplJobList.Select(job => new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, null, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, null, null, null)).ToList();
                    var applList = (from job in applJobList let applTmp = db.Applies.SingleOrDefault(a => a.JobRequestId == job.JobRequestId) where applTmp != null let recruitTmp = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == applTmp.RecruitmentId) where recruitTmp != null select new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, job.ApplyTimes, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, recruitTmp.CustomerId, recruitTmp.Customer.Account.FullName, null)).ToList();
                    var apprList = (from job in apprJobList let apprTmp = db.Applies.SingleOrDefault(a => a.JobRequestId == job.JobRequestId) where apprTmp != null let recruitTmp = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apprTmp.RecruitmentId) where recruitTmp != null select new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, job.ApplyTimes, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, recruitTmp.CustomerId, recruitTmp.Customer.Account.FullName, null)).ToList();
                    var eList = expiredJobList.Select(job => new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, null, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, null, null, null)).ToList();
                    ViewBag.NotApplList = nAList;
                    ViewBag.ApplList = applList;
                    ViewBag.ApprList = apprList;
                    ViewBag.ExpiredList = eList;
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

        public ActionResult RemoveJob(int jobId)
        {
            using (var db = new MSEntities())
            {
                var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
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
                var maidManagerId = (int) Session["accId"];
                var role = Session["Role"];
                Session["GenderList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Gender")).ToList();
                Session["AgeList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Age")).ToList();
                Session["LanguageList"] = db.SkillInstances.Where(si => si.SkillNameVietnam.Contains("Biết tiếng")).ToList();
                Session["ExpList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Experience")).ToList();
                Session["HomeTownList"] = db.SkillInstances.Where(si => si.SkillName.Equals("HomeTown")).ToList();
                Session["AddrList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Address")).ToList();
                Session["HealthList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Health")).ToList();
                Session["MarriageList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Married")).ToList();
                Session["StayList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Stay")).ToList();
                Session["SalaryList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Salary")).ToList();
                Session["WorkList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Work")).ToList();
                var skillList = db.SkillInstances.Where(si => si.SkillNameVietnam.Contains("Chăm sóc") 
                    || si.SkillNameVietnam.Contains("Biết")).ToList();
                for (var i = 0; i < skillList.Count; i++)
                {
                    if (!skillList.ElementAt(i).SkillNameVietnam.Contains("Biết tiếng")) continue;
                    skillList.RemoveAt(i);
                    i--;
                }
                Session["SkillList"] = skillList;
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

        public ActionResult AddRequest(string gender, string age, string LanguageEnglish, string LanguageChina,
            string LanguageJapanese, string LanguageKorean, string exp, string hometown, string addr,
            string health, string marriage, string stay, string salary, string work, string SickCare,
            string OldCare, string BabySister, string DisabilityCare, string BonsaiCare, string Cooking,
            string Washing, string CleanHouse, string maidId, string time)
        {
            if (maidId != null)
            {
                using (var db = new MSEntities())
                {
                    var skillRef = new SkillReference();
                    skillRef.Type = 2;
                    if (!gender.Equals("null"))
                    {
                        skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(gender)).SkillId;
                    }
                    if (!age.Equals("null"))
                    {
                        skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(age)).SkillId;
                    }
                    if (LanguageEnglish != null)
                    {
                        skillRef.LanguageEnglish =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageEnglish)).SkillId;
                    }
                    if (LanguageChina != null)
                    {
                        skillRef.LanguageChina =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageChina)).SkillId;
                    }
                    if (LanguageJapanese != null)
                    {
                        skillRef.LanguageJapanese =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageJapanese)).
                                SkillId;
                    }
                    if (LanguageKorean != null)
                    {
                        skillRef.LanguageKorean =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageKorean)).SkillId;
                    }
                    if (!exp.Equals("null"))
                    {
                        skillRef.Experience =
                            db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(exp)).SkillId;
                    }
                    if (!hometown.Equals("null"))
                    {
                        skillRef.Hometown =
                            db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(hometown)).SkillId;
                    }
                    if (!addr.Equals("null"))
                    {
                        skillRef.Address = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(addr)).SkillId;
                    }
                    if (!health.Equals("null"))
                    {
                        skillRef.Health = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(health)).SkillId;
                    }
                    if (!marriage.Equals("null"))
                    {
                        var marriageId =
                            db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(marriage)).SkillId;
                    }
                    if (!stay.Equals("null"))
                    {
                        skillRef.Stay = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(stay)).SkillId;
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
                    skillRef = db.SkillReferences.SingleOrDefault(si => si.Type == 2);
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
                    jobRequest.MaidId = int.Parse(maidId);
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
            ViewBag.GenderList = Session["GenderList"];
            ViewBag.AgeList = Session["AgeList"];
            ViewBag.LanguageList = Session["LanguageList"];
            ViewBag.ExpList = Session["ExpList"];
            ViewBag.HomeTownList = Session["HomeTownList"];
            ViewBag.AddrList = Session["AddrList"];
            ViewBag.HealthList = Session["HealthList"];
            ViewBag.MarriageList = Session["MarriageList"];
            ViewBag.StayList = Session["StayList"];
            ViewBag.SalaryList = Session["SalaryList"];
            ViewBag.WorkList = Session["WorkList"];
            ViewBag.SkillList = Session["SkillList"];
            ViewBag.MaidList = Session["MaidList"];
        }
    }
}
