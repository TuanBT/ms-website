using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class PostController : Controller
    {
        //
        // GET: /JobRequest/

        public ActionResult GetJobRequest(string recruitId, int jobId)
        {
            using (var db = new MSEntities())
            {
                bool flag = false;
                var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                ViewBag.JobReqId = jobId;
                Session["flag"] = flag;
                Session["jobId"] = jobId;
                if (job != null)
                {
                    var ratingRow = db.Ratings.FirstOrDefault(r => r.JobRequestId == job.JobRequestId);
                    ViewBag.jrRate = 0;
                    if (ratingRow != null)
                    {
                        ViewBag.jrRate = ratingRow.Rate;
                    }
                    var commentTable = db.Comments.Where(c => c.JobRequestId == job.JobRequestId).OrderByDescending(c => c.CommentId).ToList();
                    ViewBag.Comment = commentTable;

                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == job.MaidId);
                    var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == job.SkillRefId);
                    var skillList = new List<string>();
                    if (skillRef != null)
                    {
                        LoadSkillList(skillRef, skillList, db);
                    }
                    if (Session["AccId"] != null)
                    {
                        if (job.IsActive)
                        {
                            if (job.Maid.MaidMediatorId != null)
                            {
                                if (job.Maid.MaidMediatorId == (int)Session["AccId"])
                                {
                                    if (!job.Status.Equals("Applied") && !job.Status.Equals("Approved"))
                                    {
                                        ViewBag.Manage = "true";
                                    }
                                }
                            }
                            else
                            {
                                if (job.Maid.StaffId == (int)Session["AccId"])
                                {
                                    if (!job.Status.Equals("Applied") && !job.Status.Equals("Approved"))
                                    {
                                        ViewBag.Manage = "true";
                                    }
                                }
                            }
                            if (Session["Role"].Equals("Customer"))
                            {
                                var custId = (int)Session["AccId"];
                                ViewBag.RecruitmentList =
                                    db.Recruitments.Where(
                                        r => r.CustomerId == custId && r.Status.Equals("Waiting") && r.IsActive).ToList();
                            }
                        }
                        else
                        {
                            ViewBag.Edit = "true";
                        }
                    }
                    if (recruitId != null)
                    {
                        ViewBag.Recruit = recruitId;
                    }
                    if (job.Status.Equals("Applied") || job.Status.Equals("Approved"))
                    {
                        var apply = db.Applies.SingleOrDefault(a => a.JobRequestId == jobId);
                        var recruitment = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apply.RecruitmentId);
                        ViewBag.Customer =
                            db.Accounts.SingleOrDefault(a => a.AccountId == recruitment.CustomerId);
                        var jobRequestTmp = new JobRequestTemp(job, maid, null, recruitment, apply, skillList);
                        if (Session["Role"] != null)
                        {
                            if (Session["Role"].Equals("Customer"))
                            {
                                if (recruitment.CustomerId == (int)Session["AccId"])
                                {
                                    if (recruitment.Status.Equals("Approved"))
                                    {
                                        if (job.Maid.ReportDate == null)
                                        {
                                            ViewBag.Report = true;
                                        }
                                    }
                                }
                            }
                        }
                        return View("JobRequest", jobRequestTmp);
                    }
                    else
                    {
                        if (Session["AccId"] != null)
                        {
                            if (job.MaidMediatorId == (int)Session["AccId"] || job.StaffId == (int)Session["AccId"])
                            {
                                if (job.Status.Equals("Waiting") && job.IsActive)
                                {
                                    var recRecruitList = new List<RecruitmentTemp>();
                                    var recSkillRefList = new List<SkillReference>();
                                    recSkillRefList = db.SkillReferences.Where(sr => sr.Type == 1 && sr.Group == skillRef.Group).OrderBy(sr => sr.Distance).ToList();
                                    foreach (var skillReference in recSkillRefList)
                                    {
                                        var recruitment =
                                            db.Recruitments.SingleOrDefault(
                                                j =>
                                                j.SkillRefId == skillReference.SkillRefId && j.Status.Equals("Waiting") &&
                                                j.IsActive);
                                        if (recruitment != null)
                                        {
                                            var cust = db.Customers.SingleOrDefault(c => c.AccountId == recruitment.CustomerId);
                                            var account = db.Accounts.SingleOrDefault(a => a.AccountId == cust.AccountId);
                                            var recruitmentTmp = new RecruitmentTemp(recruitment, cust, account, null, null, null);
                                            recRecruitList.Add(recruitmentTmp);
                                        }
                                    }
                                    if (recRecruitList.Any())
                                    {
                                        ViewBag.Recommend = recRecruitList;
                                        ViewBag.RecommendNum = recRecruitList.Count;
                                    }
                                    var registeredRecruit =
                                        db.Registers.SingleOrDefault(r => r.JobRequestId == jobId);
                                    if (registeredRecruit != null)
                                    {
                                        var recruit =
                                            db.Recruitments.SingleOrDefault(
                                                r => r.RecruitmentId == registeredRecruit.RecruitmentId);
                                        var acc = db.Accounts.SingleOrDefault(a => a.AccountId == recruit.CustomerId);
                                        var recruitTmp = new RecruitmentTemp(recruit, null, acc, null, null, null);
                                        ViewBag.RegisteredRecruit = recruitTmp;
                                    }
                                }
                            }
                        }
                        var jobRequestTmp = new JobRequestTemp(job, maid, null, null, null, skillList);
                        return View("JobRequest", jobRequestTmp);
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult GetRecruitment(int recruitmentId, int? jobRequestId)
        {
            using (var db = new MSEntities())
            {
                var recruitment = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitmentId);
                if (recruitment != null)
                {
                    var customer = db.Customers.SingleOrDefault(m => m.AccountId == recruitment.CustomerId);
                    var account = db.Accounts.SingleOrDefault(a => a.AccountId == customer.AccountId);
                    var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == recruitment.SkillRefId);
                    var skillList = new List<string>();
                    if (skillRef != null)
                    {
                        LoadSkillList(skillRef, skillList, db);
                        if (Session["AccId"] != null)
                        {
                            if (recruitment.CustomerId == (int) Session["AccId"])
                            {
                                if (!recruitment.Status.Equals("Applied") && !recruitment.Status.Equals("Approved"))
                                {
                                    ViewBag.Manage = "true";
                                }
                                if (!recruitment.IsActive)
                                {
                                    ViewBag.Edit = "true";
                                }
                            }
                        }
                    }
                    if (customer.isSaleOff)
                    {
                        ViewBag.SaleOff = System.Configuration.ConfigurationManager.AppSettings["SaleOff"].Replace(",", ".");
                    }
                    if (recruitment.Status.Equals("Applied") || recruitment.Status.Equals("Approved"))
                    {
                        var apply = db.Applies.SingleOrDefault(a => a.RecruitmentId == recruitmentId);
                        var jobRequest = db.JobRequests.SingleOrDefault(r => r.JobRequestId == apply.JobRequestId);
                        ViewBag.Maid =
                            db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                        var recruitmentTmp = new RecruitmentTemp(recruitment, customer, account, jobRequest, apply, skillList);
                        if (recruitment.Status.Equals("Applied"))
                        {
                            if (Session["Role"] != null)
                            {
                                if (Session["Role"].Equals("Customer"))
                                {
                                    if (recruitment.CustomerId == (int)Session["AccId"])
                                    {
                                        ViewBag.Approve = true;
                                        if (recruitment.ExpiredTime > DateTime.Now)
                                        {
                                            ViewBag.Cancel = true;
                                        }
                                    }
                                }
                            }
                        }
                        return View("Recruitment", recruitmentTmp);
                    }
                    else
                    {
                        if (recruitment.Status.Equals("Waiting") && recruitment.IsActive)
                        {
                            if (Session["AccId"] != null)
                            {
                                if (Session["Role"].Equals("Customer"))
                                {
                                    if (recruitment.CustomerId == (int) Session["AccId"])
                                    {
                                        var recJobReqList = new List<JobRequestTemp>();
                                        var recSkillRefList = new List<SkillReference>();
                                        recSkillRefList =
                                            db.SkillReferences.Where(sr => sr.Type == 0 && sr.Group == skillRef.Group).
                                                OrderBy(sr => sr.Distance).ToList();
                                        foreach (var skillReference in recSkillRefList)
                                        {
                                            var jobRequest =
                                                db.JobRequests.SingleOrDefault(
                                                    j =>
                                                    j.SkillRefId == skillReference.SkillRefId &&
                                                    j.Status.Equals("Waiting") &&
                                                    j.IsActive);
                                            if (jobRequest != null)
                                            {
                                                var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                                                var jobRequestTmp = new JobRequestTemp(jobRequest, maid, null, null,
                                                                                       null, null);
                                                recJobReqList.Add(jobRequestTmp);
                                            }
                                        }
                                        if (recJobReqList.Any())
                                        {
                                            ViewBag.Recommend = recJobReqList;
                                            ViewBag.RecommendNum = recJobReqList.Count;
                                        }
                                        var registeredJobList =
                                            db.Registers.Where(r => r.RecruitmentId == recruitmentId).ToList();
                                        if (registeredJobList.Any())
                                        {
                                            var jobRequestTmpList = new List<JobRequestTemp>();
                                            foreach (var register in registeredJobList)
                                            {
                                                var job =
                                                    db.JobRequests.SingleOrDefault(
                                                        j => j.JobRequestId == register.JobRequestId);
                                                var maid = db.Maids.SingleOrDefault(m => m.MaidId == job.MaidId);
                                                var jobRequestTmp = new JobRequestTemp(job, maid, null, null, null, null);
                                                jobRequestTmpList.Add(jobRequestTmp);
                                            }
                                            ViewBag.RegisterList = jobRequestTmpList;
                                            ViewBag.RegisterNum = jobRequestTmpList.Count;
                                        }
                                    }
                                }
                                else if (Session["Role"].Equals("Staff") || Session["Role"].Equals("MaidMediator"))
                                {
                                    var accId = (int)Session["AccId"];
                                    var registeredList = db.Registers.Where(r => r.RecruitmentId == recruitmentId).ToList();
                                    if (registeredList.Any())
                                    {
                                        var registeredJobList = new List<JobRequestTemp>();
                                        foreach (var register in registeredList)
                                        {
                                            var job =
                                                db.JobRequests.SingleOrDefault(
                                                    j => j.JobRequestId == register.JobRequestId);
                                            if (job.StaffId == accId || job.MaidMediatorId == accId)
                                            {
                                                var maid = db.Maids.SingleOrDefault(m => m.MaidId == job.MaidId);
                                                var jobTmp = new JobRequestTemp(job, maid, null, null, null, null);
                                                registeredJobList.Add(jobTmp);
                                            }
                                        }
                                        if (registeredJobList.Any())
                                        {
                                            ViewBag.RegisteredList = registeredJobList;
                                            ViewBag.RegisteredNum = registeredJobList.Count;
                                        }
                                    }
                                    if (jobRequestId != null)
                                    {
                                        ViewBag.RegisterJob = jobRequestId;
                                    }
                                    else
                                    {
                                        var jobList =
                                            db.JobRequests.Where(j => j.MaidMediatorId == accId || j.StaffId == accId && j.Status.Equals("Waiting") && j.IsActive && !j.IsRegistered).ToList();
                                        var jobRequestTmpList = new List<JobRequestTemp>();
                                        foreach (var jobRequest in jobList)
                                        {
                                            var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                                            var jobRequestTmp = new JobRequestTemp(jobRequest, maid, null, null, null, null);
                                            jobRequestTmpList.Add(jobRequestTmp);
                                        }
                                        ViewBag.JobList = jobRequestTmpList;
                                        ViewBag.Test = jobRequestTmpList.Count;
                                    }
                                    ViewBag.Register = true;
                                }
                            }
                        }
                        var recruitmentTmp = new RecruitmentTemp(recruitment, customer, account, null, null, skillList);
                        return View("Recruitment", recruitmentTmp);
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public static List<string> LoadSkillList(SkillReference skillRef, List<string> skillList, MSEntities db)
        {
            string skillStr;
            if (skillRef.Gender != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Gender);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Age != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Age);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.LanguageEnglish != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageEnglish);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.LanguageChinese != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageChinese);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.LanguageJapanese != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageJapanese);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.LanguageKorean != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageKorean);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Experience != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Experience);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Hometown != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Hometown);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Address != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Address);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Married != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Married);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Stay != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Stay);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Salary != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Salary);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Work != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Work);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.SickCare != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.SickCare);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.OldCare != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.OldCare);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.BabySister != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.BabySister);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.DisabilityCare != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.DisabilityCare);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.BonsaiCare != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.BonsaiCare);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Cooking != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Cooking);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.Washing != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Washing);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            if (skillRef.CleanHouse != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.CleanHouse);
                if (skill != null)
                {
                    skillStr = skill.SkillNameVietnam;
                    if (skill.SkillString != null)
                    {
                        skillStr += " - " + skill.SkillString;
                    }
                    skillList.Add(skillStr);
                }
            }
            return skillList;
        }

        public static int GetGroup(SkillReference sr)
        {
            using (var db = new MSEntities())
            {
                var gender = 0;
                var age = 0;
                var english = 0;
                var chinese = 0;
                var japanese = 0;
                var korean = 0;
                var exp = 0;
                var hometown = 0;
                var addr = 0;
                var married = 0;
                var work = 0;
                var stay = 0;
                var salary = 0;
                var sickCare = 0;
                var oldCare = 0;
                var babysister = 0;
                var disCare = 0;
                var bonsaiCare = 0;
                var cooking = 0;
                var washing = 0;
                var clean = 0;
                if (sr.Gender != null)
                {
                    gender =
                           db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Gender") && si.SkillId == sr.Gender)
                               .SkillNormallized;
                }
                if (sr.Age != null)
                {
                    age = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Age") && si.SkillId == sr.Age).SkillNormallized;
                }
                if (sr.LanguageEnglish != null)
                {
                    english = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageEnglish).SkillNormallized;
                }
                if (sr.LanguageChinese != null)
                {
                    chinese = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageChinese).SkillNormallized;
                }
                if (sr.LanguageJapanese != null)
                {
                    japanese = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageJapanese).SkillNormallized;
                }
                if (sr.LanguageKorean != null)
                {
                    korean = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageKorean).SkillNormallized;
                }
                if (sr.Experience != null)
                {
                    exp = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Experience") && si.SkillId == sr.Experience).SkillNormallized;
                }
                if (sr.Hometown != null)
                {
                    hometown = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Hometown") && si.SkillId == sr.Hometown).SkillNormallized;
                }
                if (sr.Address != null)
                {
                    addr = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Address") && si.SkillId == sr.Address).SkillNormallized;
                }
                if (sr.Married != null)
                {
                    married = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Married") && si.SkillId == sr.Married).SkillNormallized;
                }
                if (sr.Work != null)
                {
                    work = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Work") && si.SkillId == sr.Work).SkillNormallized;
                }
                if (sr.Stay != null)
                {
                    stay = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Stay") && si.SkillId == sr.Stay).SkillNormallized;
                }
                if (sr.Salary != null)
                {
                    salary = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillId == sr.Salary).SkillNormallized;
                }
                if (sr.SickCare != null)
                {
                    sickCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.SickCare).SkillNormallized;
                }
                if (sr.OldCare != null)
                {
                    oldCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.OldCare).SkillNormallized;
                }
                if (sr.BabySister != null)
                {
                    babysister = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.BabySister).SkillNormallized;
                }
                if (sr.DisabilityCare != null)
                {
                    disCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.DisabilityCare).SkillNormallized;
                }
                if (sr.BonsaiCare != null)
                {
                    bonsaiCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.BonsaiCare).SkillNormallized;
                }
                if (sr.Cooking != null)
                {
                    cooking = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.Cooking).SkillNormallized;
                }
                if (sr.Washing != null)
                {
                    washing = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.Washing).SkillNormallized;
                }
                if (sr.CleanHouse != null)
                {
                    clean = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.CleanHouse).SkillNormallized;
                }
                double[] kmeanPara = { gender, age, english, chinese, japanese, korean, exp, hometown, addr, married, work, stay, salary, sickCare, oldCare, babysister, disCare, bonsaiCare, cooking, washing, clean };
                string strPathServer = AppDomain.CurrentDomain.BaseDirectory;
                string strMeansDataFile = strPathServer + "App_Data\\" + "meansData.txt";
                Kmean kmean = new Kmean(strMeansDataFile);
                return kmean.GetGroupRowData(kmeanPara);
            }
        }

        public static double GetDistance(SkillReference sr)
        {
            using (var db = new MSEntities())
            {
                var gender = 0;
                var age = 0;
                var english = 0;
                var chinese = 0;
                var japanese = 0;
                var korean = 0;
                var exp = 0;
                var hometown = 0;
                var addr = 0;
                var married = 0;
                var work = 0;
                var stay = 0;
                var salary = 0;
                var sickCare = 0;
                var oldCare = 0;
                var babysister = 0;
                var disCare = 0;
                var bonsaiCare = 0;
                var cooking = 0;
                var washing = 0;
                var clean = 0;
                if (sr.Gender != null)
                {
                    gender =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Gender") && si.SkillId == sr.Gender)
                            .SkillNormallized;
                }
                if (sr.Age != null)
                {
                    age =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Age") && si.SkillId == sr.Age).
                            SkillNormallized;
                }
                if (sr.LanguageEnglish != null)
                {
                    english = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageEnglish).SkillNormallized;
                }
                if (sr.LanguageChinese != null)
                {
                    chinese = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageChinese).SkillNormallized;
                }
                if (sr.LanguageJapanese != null)
                {
                    japanese =
                        db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageJapanese).SkillNormallized;
                }
                if (sr.LanguageKorean != null)
                {
                    korean = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.LanguageKorean).SkillNormallized;
                }
                if (sr.Experience != null)
                {
                    exp =
                        db.SkillInstances.SingleOrDefault(
                            si => si.SkillName.Equals("Experience") && si.SkillId == sr.Experience).SkillNormallized;
                }
                if (sr.Hometown != null)
                {
                    hometown =
                        db.SkillInstances.SingleOrDefault(
                            si => si.SkillName.Equals("Hometown") && si.SkillId == sr.Hometown).SkillNormallized;
                }
                if (sr.Address != null)
                {
                    addr =
                        db.SkillInstances.SingleOrDefault(
                            si => si.SkillName.Equals("Address") && si.SkillId == sr.Address).SkillNormallized;
                }
                if (sr.Married != null)
                {
                    married =
                        db.SkillInstances.SingleOrDefault(
                            si => si.SkillName.Equals("Married") && si.SkillId == sr.Married).SkillNormallized;
                }
                if (sr.Work != null)
                {
                    work =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Work") && si.SkillId == sr.Work).
                            SkillNormallized;
                }
                if (sr.Stay != null)
                {
                    stay =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Stay") && si.SkillId == sr.Stay).
                            SkillNormallized;
                }
                if (sr.Salary != null)
                {
                    salary =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillId == sr.Salary)
                            .SkillNormallized;
                }
                if (sr.SickCare != null)
                {
                    sickCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.SickCare).SkillNormallized;
                }
                if (sr.OldCare != null)
                {
                    oldCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.OldCare).SkillNormallized;
                }
                if (sr.BabySister != null)
                {
                    babysister = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.BabySister).SkillNormallized;
                }
                if (sr.DisabilityCare != null)
                {
                    disCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.DisabilityCare).SkillNormallized;
                }
                if (sr.BonsaiCare != null)
                {
                    bonsaiCare = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.BonsaiCare).SkillNormallized;
                }
                if (sr.Cooking != null)
                {
                    cooking = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.Cooking).SkillNormallized;
                }
                if (sr.Washing != null)
                {
                    washing = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.Washing).SkillNormallized;
                }
                if (sr.CleanHouse != null)
                {
                    clean = db.SkillInstances.SingleOrDefault(si => si.SkillId == sr.CleanHouse).SkillNormallized;
                }
                double[] kmeanPara =
                    {
                        gender, age, english, chinese, japanese, korean, exp, hometown, addr, married,
                        work, stay, salary, sickCare, oldCare, babysister, disCare, bonsaiCare, cooking, washing, clean
                    };
                string strPathServer = AppDomain.CurrentDomain.BaseDirectory;
                string strMeansDataFile = strPathServer + "App_Data\\" + "meansData.txt";
                Kmean kmean = new Kmean(strMeansDataFile);
                return kmean.GetDistanceRowData(kmeanPara, kmean.GetGroupRowData(kmeanPara));
            }
        }

        [HttpPost]
        public ActionResult RatingJobRequest(string rate, string jrId)
        {
            var jobId = Convert.ToInt32(jrId);
            rate = rate.Replace('.', ',');
            var numrate = double.Parse(rate) * 2;
            bool statusNew = false;
            float MaidRateAvg = 0;
            using (var db = new MSEntities())
            {
                var CustomerId = (int)Session["AccId"];
                var dbRate = db.Ratings.FirstOrDefault(r => r.CustomerId == CustomerId && r.JobRequestId == jobId);

                if (dbRate == null)
                {
                    Rating rating = new Rating
                                        {
                                            CustomerId = CustomerId,
                                            JobRequestId = jobId,
                                            Rate = numrate
                                        };
                    db.Ratings.Add(rating);
                    db.SaveChanges();
                    statusNew = true;
                }
                else
                {
                    if (dbRate.Rate != numrate)
                    {
                        dbRate.Rate = numrate;
                        db.SaveChanges();
                        statusNew = true;
                    }
                }
                if (statusNew)
                {
                    /* var maidId = db.JobRequests.FirstOrDefault(j => j.JobRequestId == jobId).MaidId;
                     var Ratings = db.Ratings.Select(r => r).ToList();
                     var jobRequests =
                         db.JobRequests.Where(
                             j => (j.Status == "Applied" || j.Status == "Approved") && j.MaidId == maidId).ToList();
                     int count = 0;
                     double total = 0;
                     foreach (var Rating in Ratings)
                     {
                         foreach (var jobRequest in jobRequests)
                         {
                             if (Rating.JobRequestId == jobRequest.JobRequestId)
                             {
                                 count++;
                                 total += Rating.Rate;
                             }
                         }
                     }
                     var Maid = db.Maids.FirstOrDefault(m => m.MaidId == maidId);
                     Maid.RateAvg = (int)total / count;
                     db.SaveChanges();*/
                }
            }
            //return Json("{MaidRateAvg:" + MaidRateAvg + ",numrate:" + numrate + "}", JsonRequestBehavior.AllowGet);
            return RedirectToAction("GetJobRequest", new { jobId });
        }

        [HttpPost]
        public JsonResult CommentJobRequest(string content, string cusId, string jrId)
        {
            if (content == "")
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
            var jobId = Convert.ToInt32(jrId);
            var customerId = Convert.ToInt32(cusId);
            string result = "";
            var comment = new Comment();
            using (var db = new MSEntities())
            {
                comment = new Comment
               {
                   CustomerId = customerId,
                   JobRequestId = jobId,
                   CommentContent = content,
                   PostTime = DateTime.Now
               };
                db.Comments.Add(comment);
                db.SaveChanges();
            }
            comment.CommentContent += "&&&" + comment.PostTime.ToString("dd/M/yyyy");
            return Json(Json(comment), JsonRequestBehavior.AllowGet);
            //return RedirectToAction("GetJobRequest", new { jobId = jobId });
        }

        public ActionResult ReturnPaypal(int recruitmentId)
        {
            //Status Payment
            using (var db = new MSEntities())
            {
                var recruitment = db.Recruitments.FirstOrDefault(r => r.RecruitmentId == recruitmentId);
                if (recruitment != null)
                {
                    recruitment.IsActive = true;
                    db.SaveChanges();
                }
                return RedirectToAction("GetRecruitment", "Post", new { recruitmentId });
            }
        }

        [HttpPost]
        public JsonResult NotiPaypal(string content, string link)
        {
            using (var db = new MSEntities())
            {

                var noti = db.Notifiers.Where(n => n.Content == content && n.Link == link).ToList();
                if (noti.Count == 0)
                {
                    var staffs = db.Staffs.Select(s => s).ToList();
                    foreach (var staff in staffs)
                    {
                        var notifier = new Notifier()
                                           {
                                               AccId = staff.AccountId,
                                               Content = content,
                                               Link = link,
                                               View = false,
                                               Date = DateTime.Now
                                           };
                        db.Notifiers.Add(notifier);
                        db.SaveChanges();
                    }
                }
                return Json("Bạn đã gửi yêu cầu kiểm tra thành công. Chúng tôi sẽ sớm xử lý trường hợp này!", JsonRequestBehavior.AllowGet);
            }
        }

    }
}
