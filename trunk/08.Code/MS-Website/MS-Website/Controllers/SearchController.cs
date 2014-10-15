using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class SearchController : Controller
    {
        //
        // GET: /Search/
        //
        public ActionResult Index(string searchString)
        {
            using (var db = new MSEntities())
            {
                var skillInstanceList = db.SkillInstances.Where(si => si.SkillString.Contains(searchString) || si.SkillNameVietnam.Contains(searchString)).ToList();
                var skillRefList = new List<SkillReference>();
                var jobRequestList = new List<JobRequestTemp>();
                var recruitmentList = new List<RecruitmentTemp>();
                if (Session["SkillList"] == null)
                {
                    Session["SkillList"] = db.SkillInstances.Where(si => si.CategoryId == 2).ToList();
                }
                ViewBag.SkillList = Session["SkillList"];
                foreach (var skillInstance in skillInstanceList)
                {
                    var skillName = skillInstance.SkillName;
                    var skillId = skillInstance.SkillId;
                    if (skillName.Equals("Gender"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Gender == skillId).ToList();
                    }
                    else if (skillName.Equals("Age"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Age == skillId).ToList();
                    }
                    else if (skillName.Equals("LanguageEnglish"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageEnglish == skillId).ToList();
                    }
                    else if (skillName.Equals("LanguageChinese"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageChinese == skillId).ToList();
                    }
                    else if (skillName.Equals("LanguageJapanese"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageJapanese == skillId).ToList();
                    }
                    else if (skillName.Equals("LanguageKorean"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageKorean == skillId).ToList();
                    }
                    else if (skillName.Equals("Experience"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Experience == skillId).ToList();
                    }
                    else if (skillName.Equals("Hometown"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Hometown == skillId).ToList();
                    }
                    else if (skillName.Equals("Address"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Address == skillId).ToList();
                    }
                    else if (skillName.Equals("Married"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Married == skillId).ToList();
                    }
                    else if (skillName.Equals("Stay"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Stay == skillId).ToList();
                    }
                    else if (skillName.Equals("Salary"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Salary == skillId).ToList();
                    }
                    else if (skillName.Equals("Work"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Work == skillId).ToList();
                    }
                    else if (skillName.Equals("SickCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.SickCare == skillId).ToList();
                    }
                    else if (skillName.Equals("OldCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.OldCare == skillId).ToList();
                    }
                    else if (skillName.Equals("BabySister"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.BabySister == skillId).ToList();
                    }
                    else if (skillName.Equals("DisabilityCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.DisabilityCare == skillId).ToList();
                    }
                    else if (skillName.Equals("BonsaiCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.BonsaiCare == skillId).ToList();
                    }
                    else if (skillName.Equals("Cooking"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Cooking == skillId).ToList();
                    }
                    else if (skillName.Equals("Washing"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Washing == skillId).ToList();
                    }
                    else if (skillName.Equals("CleanHouse"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.CleanHouse == skillId).ToList();
                    }
                    foreach (var skillRef in skillRefList)
                    {
                        var skillList = new List<string>();
                        PostController.LoadSkillList(skillRef, skillList, db);
                        var jobRequest = db.JobRequests.SingleOrDefault(jr => jr.SkillRefId == skillRef.SkillRefId);
                        if (jobRequest != null)
                        {
                            var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                            if (jobRequest.Status.Equals("Applied") || jobRequest.Status.Equals("Approved"))
                            {
                                var apply =
                                    db.Applies.SingleOrDefault(a => a.JobRequestId == jobRequest.JobRequestId);
                                var recruitment =
                                    db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apply.RecruitmentId);
                                var jobRequestTmp = new JobRequestTemp(jobRequest, maid, recruitment, skillList);
                                jobRequestList.Add(jobRequestTmp);
                            }
                            else
                            {
                                var jobRequestTmp = new JobRequestTemp(jobRequest, maid, null, null);
                                jobRequestList.Add(jobRequestTmp);
                            }
                        }
                        else
                        {
                            var recruitment = db.Recruitments.SingleOrDefault(a => a.SkillRefId == skillRef.SkillRefId);
                            var customer = db.Customers.SingleOrDefault(c => c.AccountId == recruitment.CustomerId);
                            if (recruitment.Status.Equals("Applied") || recruitment.Status.Equals("Approved"))
                            {
                                var apply = db.Applies.SingleOrDefault(a => a.RecruitmentId == recruitment.RecruitmentId);
                                jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == apply.JobRequestId);
                                var recruitmentTemp = new RecruitmentTemp(recruitment, customer, jobRequest, skillList);
                                recruitmentList.Add(recruitmentTemp);
                            }      
                            else
                            {
                                var recruitmentTemp = new RecruitmentTemp(recruitment, customer, null, skillList);
                                recruitmentList.Add(recruitmentTemp);
                            }
                        }
                    }
                }
                ViewBag.Recruitment = recruitmentList;
                ViewBag.JobRequest = jobRequestList;
                if (Session["Role"] != null)
                {
                    if (Session["Role"].Equals("MaidMediator"))
                    {
                        ViewBag.JobRequest = null;
                    }
                    else if (Session["Role"].Equals("Customer"))
                    {
                        ViewBag.Recruitment = null;
                    }
                    else if (Session["Role"].Equals("Staff"))
                    {
                        ViewBag.Recruitment = recruitmentList;
                        ViewBag.JobRequest = jobRequestList;
                    }
                }
                else
                {
                    ViewBag.Recruitment = recruitmentList;
                    ViewBag.JobRequest = jobRequestList;
                }
            }
            return View("Search");
        }

        public ActionResult AdvancedSearch(string gender, string age, string salary, string SickCare,
            string OldCare, string BabySister, string DisabilityCare, string BonsaiCare, string Cooking,
            string Washing, string CleanHouse, string time)
        {
            using (var db = new MSEntities())
            {
                SkillInstance skillIns;
                var skillInstanceList = new List<SkillInstance>();
                var skillRefList = new List<SkillReference>();
                var jobRequestList = new List<JobRequestTemp>();
                var recruitmentList = new List<RecruitmentTemp>();
                var checkedSkills = new List<string>();
                if (salary != null && !salary.Equals("all"))
                {
                    if (salary.Equals("low"))
                    {
                        skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("<1 triệu"));
                        skillInstanceList.Add(skillIns);
                        skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("1 triệu - 2 triệu"));
                        skillInstanceList.Add(skillIns);
                        skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("2 triệu - 3 triệu"));
                        skillInstanceList.Add(skillIns);
                    }
                    else if (salary.Equals("average"))
                    {
                        skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("3 triệu - 5 triệu"));
                        skillInstanceList.Add(skillIns);
                    }
                    else if (salary.Equals("high"))
                    {
                        skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(">5 triệu"));
                        skillInstanceList.Add(skillIns);
                    }
                }
                if (gender != null && !gender.Equals("all"))
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(gender));
                    skillInstanceList.Add(skillIns);
                }
                if (age != null && !age.Equals("all"))
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(age));
                    skillInstanceList.Add(skillIns);
                }
                if (SickCare != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(SickCare));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(SickCare);
                }
                if (OldCare != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(OldCare));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(OldCare);
                }
                if (BabySister != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BabySister));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(BabySister);
                }
                if (DisabilityCare != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(DisabilityCare));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(DisabilityCare);
                }
                if (BonsaiCare != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BonsaiCare));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(BonsaiCare);
                }
                if (Cooking != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Cooking));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(Cooking);
                }
                if (Washing != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Washing));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(Washing);
                }
                if (CleanHouse != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(CleanHouse));
                    skillInstanceList.Add(skillIns);
                    checkedSkills.Add(CleanHouse);
                }
                if (skillInstanceList.Any())
                {
                    foreach (var skillInstance in skillInstanceList)
                    {
                        var skillName = skillInstance.SkillName;
                        var skillId = skillInstance.SkillId;
                        if (skillName.Equals("Gender"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Gender == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Gender == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Age"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Age == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Age == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("LanguageEnglish"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.LanguageEnglish == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).LanguageEnglish == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("LanguageChinese"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.LanguageChinese == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).LanguageChinese == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("LanguageJapanese"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.LanguageJapanese == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).LanguageJapanese == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("LanguageKorean"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.LanguageKorean == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).LanguageKorean == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Experience"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Experience == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Experience == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Hometown"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Hometown == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Hometown == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Address"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Address == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Address == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Married"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Married == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Married == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Stay"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Stay == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Stay == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Salary"))
                        {
                            if (salary.Equals("low"))
                            {
                                var salaryId1 =
                                    db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("<1 triệu")).SkillId;
                                var salaryId2 =
                                    db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("1 triệu - 2 triệu")).
                                        SkillId;
                                var salaryId3 =
                                    db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("2 triệu - 3 triệu")).
                                        SkillId;
                                if (!skillRefList.Any())
                                {
                                    skillRefList =
                                        db.SkillReferences.Where(
                                            sr =>
                                            sr.Salary == salaryId1 || sr.Salary == salaryId2 || sr.Salary == salaryId3).
                                            ToList();
                                }
                                else
                                {
                                    for (var i = 0; i < skillRefList.Count(); i++)
                                    {
                                        if (skillRefList.ElementAt(i).Salary == salaryId1 ||
                                            skillRefList.ElementAt(i).Salary == salaryId2 ||
                                            skillRefList.ElementAt(i).Salary == salaryId3) continue;
                                        skillRefList.RemoveAt(i);
                                        i--;
                                    }
                                }
                            }
                            else
                            {
                                if (!skillRefList.Any())
                                {
                                    skillRefList = db.SkillReferences.Where(sr => sr.Salary == skillId).ToList();
                                }
                                else
                                {
                                    for (var i = 0; i < skillRefList.Count(); i++)
                                    {
                                        if (skillRefList.ElementAt(i).Salary == skillId) continue;
                                        skillRefList.RemoveAt(i);
                                        i--;
                                    }
                                }
                            }
                        }
                        else if (skillName.Equals("Work"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Work == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Work == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("SickCare"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.SickCare == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).SickCare == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("OldCare"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.OldCare == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).OldCare == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("BabySister"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.BabySister == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).BabySister == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("DisabilityCare"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.DisabilityCare == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).DisabilityCare == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("BonsaiCare"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.BonsaiCare == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).BonsaiCare == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Cooking"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Cooking == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Cooking == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("Washing"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Washing == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Washing == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                        else if (skillName.Equals("CleanHouse"))
                        {
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.CleanHouse == skillId).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).CleanHouse == skillId) continue;
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                    }
                    if (time != null && !time.Equals("all"))
                    {
                        var now = DateTime.Now;
                        var searchDate = now.AddDays(-int.Parse(time));
                        var jobRequestListTmp = db.JobRequests.Where(j => j.PostTime <= searchDate).ToList();
                        var recruitmentListTmp = db.Recruitments.Where(r => r.PostTime <= searchDate).ToList();
                        if (!skillRefList.Any())
                        {
                            skillRefList.AddRange(
                                jobRequestListTmp.Select(
                                    jobRequest =>
                                    db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == jobRequest.SkillRefId)));
                            skillRefList.AddRange(
                                recruitmentListTmp.Select(
                                    recruitment =>
                                    db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == recruitment.SkillRefId)));
                        }
                        else
                        {
                            for (var i = 0; i < skillRefList.Count(); i++)
                            {
                                var inListRefId = skillRefList.ElementAt(i).SkillRefId;
                                var jobRequestTmp =
                                    db.JobRequests.SingleOrDefault(j => j.SkillRefId == inListRefId);
                                if (jobRequestTmp != null) continue;
                                var recruitmentTmp = db.Recruitments.SingleOrDefault(r => r.SkillRefId == inListRefId);
                                if (recruitmentTmp != null) continue;
                                skillRefList.RemoveAt(i);
                                i--;
                            }
                        }
                    }
                    foreach (var skillRef in skillRefList)
                    {
                        var skillList = new List<string>();
                        PostController.LoadSkillList(skillRef, skillList, db);
                        var jobRequest = db.JobRequests.SingleOrDefault(jr => jr.SkillRefId == skillRef.SkillRefId);
                        if (jobRequest != null)
                        {
                            var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                            if (jobRequest.Status.Equals("Waiting"))
                            {
                                var jobRequestTemp = new JobRequestTemp(jobRequest, maid, null, null);
                                jobRequestList.Add(jobRequestTemp);
                            }
                        }
                        else
                        {
                            var recruitment = db.Recruitments.SingleOrDefault(r => r.SkillRefId == skillRef.SkillRefId);
                            if (recruitment != null)
                            {
                                var customer = db.Customers.SingleOrDefault(c => c.AccountId == recruitment.CustomerId);
                                if (recruitment.Status.Equals("Waiting"))
                                {
                                    var recruitmentTemp = new RecruitmentTemp(recruitment, customer, null, skillList);
                                    recruitmentList.Add(recruitmentTemp);
                                }
                            }
                        }
                    }
                    if (Session["Role"] != null)
                    {
                        if (Session["Role"].Equals("MaidMediator"))
                        {
                            ViewBag.Recruitment = recruitmentList;
                        }
                        else if (Session["Role"].Equals("Customer"))
                        {
                            ViewBag.JobRequest = jobRequestList;
                        }
                        else if (Session["Role"].Equals("Staff"))
                        {
                            ViewBag.Recruitment = recruitmentList;
                            ViewBag.JobRequest = jobRequestList;
                        }
                    }
                    else
                    {
                        ViewBag.Recruitment = recruitmentList;
                        ViewBag.JobRequest = jobRequestList;
                    }
                    if (Session["SkillList"] == null)
                    {
                        Session["SkillList"] = db.SkillInstances.Where(si => si.CategoryId == 2).ToList();
                    }
                    ViewBag.Gender = gender;
                    ViewBag.Age = age;
                    ViewBag.Salary = salary;
                    ViewBag.CheckedList = checkedSkills;
                    ViewBag.Time = time;
                }
            }
            ViewBag.SkillList = Session["SkillList"];
            return View("Search");
        }
    }
}
