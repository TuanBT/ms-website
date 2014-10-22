﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class MaidManagerController : Controller
    {
        //
        // GET: /MaidMediator/

        public ActionResult GetMaidManager(int accId, string role)
        {
            using (var db = new MSEntities())
            {
                int numWating = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Waiting"));
                int numApplied = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Applied"));
                int numApproved = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Approved"));
                int numExpired = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Expired"));
                ViewBag.MaidMediatorStatusStatistic = new int[] { numWating, numExpired, numApproved, numApplied };
                if (role.Equals("MaidMediator"))
                {
                    var maidMediator = db.Accounts.SingleOrDefault(mm => mm.AccountId == accId);
                    ViewBag.MaidList = db.Maids.Where(m => m.MaidMediator.Account.AccountId == accId).ToList();
                    Session["MaidManager"] = maidMediator;
                    return View("MaidMediator", maidMediator);
                }
                if (role.Equals("Staff"))
                {
                    var staff = db.Accounts.SingleOrDefault(s => s.AccountId == accId);
                    ViewBag.MaidList = db.Maids.Where(m => m.Staff.Account.AccountId == accId).ToList();
                    Session["MaidManager"] = staff;
                    return View("Staff", staff);
                }
                return RedirectToAction("Login","Home");
            }
        }

        public ActionResult MaidManagerEdit()
        {
            if (Session["AccId"] != null)
            {
                var maidManagerId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    if (Session["Role"].Equals("MaidMediator"))
                    {
                        var maidMediatorAcc = db.Accounts.SingleOrDefault(a => a.AccountId == maidManagerId);
                        return View("MaidManagerEdit", maidMediatorAcc);
                    }
                    if (Session["Role"].Equals("Staff"))
                    {
                        var staffAcc = db.Accounts.SingleOrDefault(a => a.AccountId == maidManagerId);
                        return View("MaidManagerEdit", staffAcc);
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult EditMaidMedProfile(int maidMedId, string fullname, string phone, string email, string avatar)
        {
            if (Session["AccId"] != null)
            {
                var loggedId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    if (loggedId == maidMedId)
                    {
                        var maidMedAcc = db.Accounts.SingleOrDefault(a => a.AccountId == loggedId);
                        maidMedAcc.FullName = fullname;
                        maidMedAcc.Phone = phone;
                        maidMedAcc.Email = email;
                        db.SaveChanges();
                        if (maidMedAcc.Role.Equals("MaidMediator"))
                        {
                            return RedirectToAction("GetMaidManager", new { accId = loggedId, role = "MaidMediator" });
                        }
                        if (maidMedAcc.Role.Equals("Staff"))
                        {
                            return RedirectToAction("GetMaidManager", new { accId = loggedId, role = "Staff" });
                        }
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult MaidEdit(int maidId)
        {
            if (Session["AccId"] != null)
            {
                var loggedId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == maidId);
                    if (maid.MaidMediatorId == loggedId || maid.StaffId == loggedId)
                    {
                        if (Session["Hometown"] == null)
                        {
                            Session["Hometown"] = db.SkillInstances.Where(si => si.SkillName.Equals("Hometown")).ToList();
                        }
                        if (Session["Address"] == null)
                        {
                            Session["Address"] = db.SkillInstances.Where(si => si.SkillName.Equals("Address")).ToList();
                        }
                        ViewBag.Hometown = Session["Hometown"];
                        ViewBag.Address = Session["Address"];
                        return View("MaidEdit", maid);
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult LoadAddMaid()
        {
            using (var db = new MSEntities())
            {
                if (Session["Hometown"] == null)
                {
                    Session["Hometown"] = db.SkillInstances.Where(si => si.SkillName.Equals("Hometown")).ToList();
                }
                if (Session["Address"] == null)
                {
                    Session["Address"] = db.SkillInstances.Where(si => si.SkillName.Equals("Address")).ToList();
                }
                ViewBag.Hometown = Session["Hometown"];
                ViewBag.Address = Session["Address"];
                return View("AddMaid");
            }
        }

        public ActionResult AddMaid(string fullname, double exp, string phone, string birthdate, bool gender,
            string english, string jap, string chinese, string korean, string hometown, string addr, bool married,
            string desc, string avatar)
        {
            if (Session["AccId"] != null)
            {
                if (Session["Role"].Equals("MaidMediator") || Session["Role"].Equals("Staff"))
                {
                    using (var db = new MSEntities())
                    {
                        var maid = new Maid();
                        var managerId = (int)Session["AccId"];
                        if (Session["Role"].Equals("MaidMediator"))
                        {
                            maid.MaidMediatorId = managerId;
                        }
                        else
                        {
                            maid.StaffId = managerId;
                        }
                        maid.MaidName = fullname;
                        maid.Experience = exp;
                        maid.Phone = phone;
                        maid.BirthDate = DateTime.Parse(birthdate);
                        maid.Gender = gender;
                        maid.English = english != null;
                        maid.Japanese = jap != null;
                        maid.Chinese = chinese != null;
                        maid.Korean = korean != null;
                        maid.Hometown = hometown;
                        maid.Address = addr;
                        maid.Married = married;
                        maid.Description = desc;
                        maid.RateAvg = 0;
                        maid.PersonalImage = "../Content/Image/default-avatar.png";
                        db.Maids.Add(maid);
                        db.SaveChanges();
                        maid = Session["Role"].Equals("MaidMediator") ? db.Maids.OrderByDescending(m => m.MaidId).FirstOrDefault(m => m.MaidMediatorId == managerId) : db.Maids.OrderByDescending(m => m.MaidId).FirstOrDefault(m => m.StaffId == managerId);
                        if (maid != null)
                        {
                            return RedirectToAction("ManageMaidProfile", new { maidId = maid.MaidId });
                        }
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult EditMaidProfile(int maidId, string fullname, double exp, string phone, string birthdate, bool gender,
            string english, string jap, string chinese, string korean, string hometown, string addr, bool married,
            string desc, string avatar)
        {
            if (Session["AccId"] != null)
            {
                var loggedId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == maidId);
                    if (maid.MaidMediatorId == loggedId || maid.StaffId == loggedId)
                    {
                        maid.MaidName = fullname;
                        maid.Experience = exp;
                        maid.Phone = phone;
                        maid.BirthDate = DateTime.Parse(birthdate);
                        maid.Gender = gender;
                        maid.English = english != null;
                        maid.Japanese = jap != null;
                        maid.Chinese = chinese != null;
                        maid.Korean = korean != null;
                        maid.Hometown = hometown;
                        maid.Address = addr;
                        maid.Married = married;
                        maid.Description = desc;
                        maid.RateAvg = 0;
                        maid.PersonalImage = "../Content/Image/default-avatar.png";
                        db.SaveChanges();
                        return RedirectToAction("ManageMaidProfile", new { maidId = maid.MaidId });
                    }
                }
            }
            return RedirectToAction("Login", "Home");
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
                    ViewBag.NotApplList = notApplJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null, null)).ToList();
                    ViewBag.ApplList = (from jobRequest in applJobList let apply = db.Applies.SingleOrDefault(a => a.JobRequestId == jobRequest.JobRequestId) let recruit = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apply.RecruitmentId) select new JobRequestTemp(jobRequest, maid, null, recruit, null)).ToList();
                    ViewBag.ApprList = (from jobRequest in apprJobList let apply = db.Applies.SingleOrDefault(a => a.JobRequestId == jobRequest.JobRequestId) let recruit = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apply.RecruitmentId) select new JobRequestTemp(jobRequest, maid, null, recruit, null)).ToList();
                    ViewBag.ExpiredList = expiredJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null, null)).ToList();
                    if (Session["AccId"] != null)
                    {
                        if (maid.MaidMediatorId != null)
                        {
                            if (maid.MaidMediatorId == (int)Session["AccId"])
                            {
                                ViewBag.Remove = "true";
                            }
                        }
                        else
                        {
                            if (maid.StaffId == (int)Session["AccId"])
                            {
                                ViewBag.Remove = "true";
                            }
                        }
                    }
                    if (maid.MaidMediatorId != null)
                    {
                        var accId = maid.MaidMediatorId;
                        var mUsername = maid.MaidMediator.Account.Username;
                        var isActive = maid.MaidMediator.Account.IsActive;
                        var joinDate = maid.MaidMediator.Account.JoinDate;
                        var role = maid.MaidMediator.Account.Role;
                        var avatar = maid.MaidMediator.Account.Avatar;
                        var email = maid.MaidMediator.Account.Email;
                        var phone = maid.MaidMediator.Account.Phone;
                        var fullname = maid.MaidMediator.Account.FullName;
                        var mm = new MaidManager(accId, mUsername, isActive, joinDate, role, avatar, email, phone,
                                                         fullname);
                        ViewBag.MaidManager = mm;
                    }
                    else
                    {
                        var accId = maid.StaffId;
                        var mUsername = maid.Staff.Account.Username;
                        var isActive = maid.Staff.Account.IsActive;
                        var joinDate = maid.Staff.Account.JoinDate;
                        var role = maid.Staff.Account.Role;
                        var avatar = maid.Staff.Account.Avatar;
                        var email = maid.Staff.Account.Email;
                        var phone = maid.Staff.Account.Phone;
                        var fullname = maid.Staff.Account.FullName;
                        var mm = new MaidManager(accId, mUsername, isActive, joinDate, role, avatar, email, phone,
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
                var maidManagerId = (int)Session["AccId"];
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

        public ActionResult AddRequest(string title, string stay, string salary, string work, string SickCare,
            string OldCare, string BabySister, string DisabilityCare, string BonsaiCare, string Cooking,
            string Washing, string CleanHouse, int maidId, string time)
        {
            if (maidId != null)
            {
                using (var db = new MSEntities())
                {
                    var skillRef = new SkillReference();
                    skillRef.Type = 2;
                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == maidId);
                    if ((bool)maid.Gender)
                    {
                        skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("Nam") && si.SkillName.Equals("Gender")).SkillId;
                    }
                    else
                    {
                        skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("Nữ") && si.SkillName.Equals("Gender")).SkillId;
                    }
                    if (maid.BirthDate != null)
                    {
                        var skillRefAge = DateTime.Now.Year - DateTime.Parse(maid.BirthDate.ToString()).Year;
                        if (skillRefAge >= 15 && skillRefAge <= 20)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("15-20") && si.SkillName.Equals("Age")).SkillId;
                        }
                        else if (skillRefAge > 20 && skillRefAge <= 30)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("21-30") && si.SkillName.Equals("Age")).SkillId;
                        }
                        else if (skillRefAge > 30 && skillRefAge <= 40)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("31-40") && si.SkillName.Equals("Age")).SkillId;
                        }
                        else if (skillRefAge > 40 && skillRefAge <= 50)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("41-50") && si.SkillName.Equals("Age")).SkillId;
                        }
                        else if (skillRefAge > 50 && skillRefAge <= 60)
                        {
                            skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("51-60") && si.SkillName.Equals("Age")).SkillId;
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
                        skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("<1 năm") && si.SkillName.Equals("Experience")).SkillId;
                    }
                    else if (maid.Experience >= 1 && maid.Experience <= 3)
                    {
                        skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("1-3 năm") && si.SkillName.Equals("Experience")).SkillId;
                    }
                    else if (maid.Experience > 3)
                    {
                        skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(">3 năm") && si.SkillName.Equals("Experience")).SkillId;
                    }
                    if (maid.Hometown != null)
                    {
                        skillRef.Hometown = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(maid.Hometown) && si.SkillName.Equals("Hometown")).SkillId;
                    }
                    if (maid.Address != null)
                    {
                        skillRef.Address = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(maid.Address) && si.SkillName.Equals("Address")).SkillId;
                    }
                    if (!stay.Equals("null"))
                    {
                        skillRef.Stay = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(stay) && si.SkillName.Equals("Stay")).SkillId;
                    }
                    if (!salary.Equals("null"))
                    {
                        skillRef.Salary = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(salary) && si.SkillName.Equals("Salary")).SkillId;
                    }
                    if (!work.Equals("null"))
                    {
                        skillRef.Work = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(work) && si.SkillName.Equals("Work")).SkillId;
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
                    skillRef.Group = PostController.GetGroup(skillRef);
                    db.SkillReferences.Add(skillRef);
                    db.SaveChanges();
                    skillRef = db.SkillReferences.SingleOrDefault(sr => sr.Type == 2);
                    var jobRequest = new JobRequest();
                    jobRequest.SkillRefId = skillRef.SkillRefId;
                    if (Session["Role"].Equals("MaidMediator"))
                    {
                        jobRequest.MaidMediatorId = (int)Session["AccId"];
                    }
                    else if (Session["Role"].Equals("Staff"))
                    {
                        jobRequest.StaffId = (int)Session["AccId"];
                    }
                    jobRequest.Status = "Waiting";
                    jobRequest.PostTime = DateTime.Now;
                    jobRequest.ExpiredTime = DateTime.Now.AddDays(7 * int.Parse(time));
                    jobRequest.MaidId = maidId;
                    jobRequest.Title = title;
                    jobRequest.IsActive = false;
                    skillRef.Type = 0;
                    db.JobRequests.Add(jobRequest);
                    db.SaveChanges();
                    LoadItems();
                    var newJobId = db.JobRequests.SingleOrDefault(j => j.SkillRefId == skillRef.SkillRefId).JobRequestId;
                    return RedirectToAction("GetJobRequest", "Post", new { jobId = newJobId });
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

        public ActionResult ManageJobRequest()
        {
            List<JobRequestTemp> jobRequestTemps = new List<JobRequestTemp>();
            using (var db = new MSEntities())
            {
                var jobRequests = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                foreach (var jobRequest in jobRequests)
                {

                    var jobRequestTemp = new JobRequestTemp
                    {
                        Job = jobRequest,
                        SkillList = null,
                        Account = db.Accounts.FirstOrDefault(j => j.AccountId == jobRequest.MaidMediatorId),

                        Maid = null,
                        Recruitment = null,
                    };
                    if (jobRequestTemp.Job.MaidMediatorId != null)
                    {
                        jobRequestTemps.Add(jobRequestTemp);
                    }

                }


                //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                //var jobList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                return View(jobRequestTemps);

            }
        }

        [HttpGet]
        public ActionResult MarkActive(int jobRequestId)
        {
            var db = new MSEntities();

            using (db)
            {

                var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobRequestId);
                jobRequest.Status = "Waiting";
                db.SaveChanges();
                //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                return RedirectToAction("ManageJobRequest", "MaidManager");
            }
        }

        public ActionResult ManageRecruitment()
        {
            List<RecruitmentTemp> recruitmentTemps = new List<RecruitmentTemp>();
            using (var db = new MSEntities())
            {
                var recruiments = db.Recruitments.Where(j => j.Status == "NotActive").ToList();
                foreach (var recruitment in recruiments)
                {

                    var recruitmentTemp = new RecruitmentTemp
                    {
                        Recruitment = recruitment,
                        SkillList = null,
                        Account = db.Accounts.FirstOrDefault(j => j.AccountId == recruitment.CustomerId),
                        JobRequest = null,
                    };
                    recruitmentTemps.Add(recruitmentTemp);


                }


                //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                //var jobList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                return View(recruitmentTemps);

            }
        }

        [HttpGet]
        public ActionResult MarkActiveRecruitment(int recruitmentId)
        {
            var db = new MSEntities();

            using (db)
            {

                var recruitment = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitmentId);
                recruitment.Status = "Waiting";
                db.SaveChanges();
                //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                return RedirectToAction("ManageRecruitment", "MaidManager");
            }
        }
    }
}
