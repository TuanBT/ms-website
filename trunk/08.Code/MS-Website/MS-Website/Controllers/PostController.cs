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

        public ActionResult Index(int jobId)
        {
            using (var db = new MSEntities())
            {
                var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                if (job != null)
                {
                    var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == job.SkillRefId);
                    var skillList = new List<string>();
                    if (skillRef != null)
                    {
                        LoadSkillList(skillRef, skillList, db);
                    }
                    if (job.Status.Equals("Applied") || job.Status.Equals("Approved"))
                    {
                        var recruitTmp = db.Applies.SingleOrDefault(a => a.JobRequestId == job.JobRequestId);
                        if (recruitTmp != null)
                        {
                            ViewBag.CusAva = recruitTmp.Recruitment.Customer.Account.Avatar;
                            var jobRequestTmp = new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, job.ApplyTimes, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, recruitTmp.Recruitment.CustomerId, recruitTmp.Recruitment.Customer.Account.FullName, skillList);
                            return View("JobRequest", jobRequestTmp);
                        }
                    }
                    else
                    {
                        var jobRequestTmp = new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, job.ApplyTimes, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, null, null, skillList);
                        return View("JobRequest", jobRequestTmp);
                    }
                }
            }
            return View("JobRequest");
        }

        public static List<string> LoadSkillList(SkillReference skillRef, List<string>skillList, MSEntities db)
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
            if (skillRef.LanguageChina != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.LanguageChina);
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
            if (skillRef.Health != null)
            {
                var skill = db.SkillInstances.SingleOrDefault(s => s.SkillId == skillRef.Health);
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
