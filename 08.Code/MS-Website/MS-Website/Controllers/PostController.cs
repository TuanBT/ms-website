using System;
using System.Collections.Generic;
using System.Data.Entity;
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

        public ActionResult GetJobRequest(int jobId)
        {
            using (var db = new MSEntities())
            {
                var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);                
                if (job != null)
                {
                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == job.MaidId);
                    ViewBag.MaidImg = maid.PersonalImage;
                    var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == job.SkillRefId);
                    var skillList = new List<string>();
                    if (skillRef != null)
                    {
                        LoadSkillList(skillRef, skillList, db);
                    }
                    ViewBag.MaidRating = db.Maids.SingleOrDefault(m => m.MaidId == job.MaidId).RateAvg;
                    if (job.Maid.MaidMediatorId != null)
                    {
                        if (job.Maid.MaidMediatorId == (int)Session["AccId"])
                        {
                            ViewBag.Remove = "true";
                        }
                    }
                    else
                    {
                        if (job.Maid.StaffId == (int)Session["AccId"])
                        {
                            ViewBag.Remove = "true";
                        }
                    }
                    if (Session["Role"].Equals("Customer"))
                    {
                        var custId = (int)Session["AccId"];
                        ViewBag.RecruitmentList = db.Recruitments.Where(r => r.CustomerId == custId && r.Status.Equals("Waiting")).ToList();
                    }
                    if (job.Status.Equals("Applied") || job.Status.Equals("Approved"))
                    {
                        var apply = db.Applies.SingleOrDefault(a => a.JobRequestId == jobId);
                        var recruitment = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apply.RecruitmentId);
                        ViewBag.CustImg =
                            db.Accounts.SingleOrDefault(a => a.AccountId == recruitment.CustomerId).Avatar;
                        var jobRequestTmp = new JobRequestTemp(job, maid, recruitment, skillList);
                        return View("JobRequest", jobRequestTmp);
                    }
                    else
                    {
                        var jobRequestTmp = new JobRequestTemp(job, maid, null, skillList);
                        return View("JobRequest", jobRequestTmp);
                    }
                }
            }
            ViewBag.JobReqId = jobId;
            return View("JobRequest");
        }

        public ActionResult GetRecruitment(int recruitmentId)
        {
            using (var db = new MSEntities())
            {
                var recruitment = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitmentId);
                if (recruitment != null)
                {
                    var customer = db.Customers.SingleOrDefault(m => m.AccountId == recruitment.CustomerId);
                    ViewBag.CustImg = customer.Account.Avatar;
                    var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == recruitment.SkillRefId);
                    var skillList = new List<string>();
                    var recSkillRefList = new List<SkillReference>();
                    var recJobReqList = new List<JobRequestTemp>();
                    if (recruitment.CustomerId == (int)Session["AccId"])
                    {
                        ViewBag.Remove = "true";
                    }
                    if (skillRef != null)
                    {
                        LoadSkillList(skillRef, skillList, db);
                        recSkillRefList =
                            db.SkillReferences.Where(sr => sr.Type == 0 && sr.Group == skillRef.Group).ToList();
                        foreach (var skillReference in recSkillRefList)
                        {
                            var jobRequest =
                                db.JobRequests.SingleOrDefault(j => j.SkillRefId == skillReference.SkillRefId && j.Status.Equals("Waiting"));
                            if (jobRequest != null)
                            {
                                var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                                var jobRequestTmp = new JobRequestTemp(jobRequest, maid, null, null);
                                recJobReqList.Add(jobRequestTmp);
                            }
                        }
                        if (recJobReqList.Any())
                        {
                            ViewBag.Recommend = recJobReqList;
                        }
                    }
                    if (recruitment.Status.Equals("Applied") || recruitment.Status.Equals("Approved"))
                    {
                        var apply = db.Applies.SingleOrDefault(a => a.RecruitmentId == recruitmentId);
                        var jobRequest = db.JobRequests.SingleOrDefault(r => r.JobRequestId == apply.JobRequestId);
                        ViewBag.MaidImg =
                            db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId).PersonalImage;
                        var recruitmentTmp = new RecruitmentTemp(recruitment, customer, jobRequest, skillList);
                        return View("Recruitment", recruitmentTmp);
                    }
                    else
                    {
                        var recruitmentTmp = new RecruitmentTemp(recruitment, customer, null, skillList);
                        return View("Recruitment", recruitmentTmp);
                    }
                }
            }
            return View("JobRequest");
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
    }
}
