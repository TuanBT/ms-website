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
                    else if (skillName.Equals("LanguageChina"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageChina == skillId).ToList();
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
                    else if (skillName.Equals("Health"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Health == skillId).ToList();
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
                            if (jobRequest.Status.Equals("Applied") || jobRequest.Status.Equals("Approved"))
                            {
                                var recruitTemp =
                                    db.Applies.SingleOrDefault(a => a.JobRequestId == jobRequest.JobRequestId);
                                var jobRequestTemp = new JobRequestTemp(jobRequest.JobRequestId, jobRequest.SkillRefId,
                                                                        jobRequest.MaidMediatorId, jobRequest.StaffId,
                                                                        jobRequest.Status,
                                                                        jobRequest.PostTime, jobRequest.ExpiredTime,
                                                                        jobRequest.ApplyTimes,
                                                                        jobRequest.MaidId, jobRequest.Maid.MaidName,
                                                                        jobRequest.Maid.PersonalImage, jobRequest.Maid.Description, jobRequest.Maid.RateAvg,
                                                                        recruitTemp.Recruitment.CustomerId,
                                                                        recruitTemp.Recruitment.Customer.Account.
                                                                            FullName, skillList);
                                jobRequestList.Add(jobRequestTemp);
                            }
                            else
                            {
                                var jobRequestTemp = new JobRequestTemp(jobRequest.JobRequestId, jobRequest.SkillRefId,
                                                                        jobRequest.MaidMediatorId, jobRequest.StaffId,
                                                                        jobRequest.Status,
                                                                        jobRequest.PostTime, jobRequest.ExpiredTime,
                                                                        jobRequest.ApplyTimes,
                                                                        jobRequest.MaidId, jobRequest.Maid.MaidName,
                                                                        jobRequest.Maid.PersonalImage, jobRequest.Maid.Description, jobRequest.Maid.RateAvg,
                                                                        null,
                                                                        null, skillList);
                                jobRequestList.Add(jobRequestTemp);
                            }
                        }
                        else
                        {
                            var recruit = db.Recruitments.SingleOrDefault(a => a.SkillRefId == skillRef.SkillRefId);
                            if (recruit != null)
                            {
                                var recruitmentTemp = new RecruitmentTemp(recruit.RecruitmentId, recruit.SkillRefId,
                                                                          recruit.CustomerId,
                                                                          recruit.Status, recruit.PostTime,
                                                                          recruit.ExpiredTime,
                                                                          recruit.Customer.Account.Avatar,
                                                                          recruit.Customer.Account.FullName, skillList);
                                recruitmentList.Add(recruitmentTemp);
                            }
                        }
                    }
                }
                ViewBag.Recruitment = recruitmentList;
                ViewBag.JobRequest = jobRequestList;
            }
            return View("Search");
        }

        public ActionResult AdvancedSearch(string gender, string age, string salary, string work, string time)
        {
            using (var db = new MSEntities())
            {
                SkillInstance skillIns;
                var skillInstanceList = new List<SkillInstance>();
                var skillRefList = new List<SkillReference>();
                var jobRequestList = new List<JobRequestTemp>();
                var recruitmentList = new List<RecruitmentTemp>();
                if (salary != null)
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
                if (gender != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(gender));
                    skillInstanceList.Add(skillIns);
                }
                if (age != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(age));
                    skillInstanceList.Add(skillIns);
                }
                if (work != null)
                {
                    skillIns = db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(work));
                    skillInstanceList.Add(skillIns);
                }
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
                                if (skillRefList.ElementAt(i).Gender != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).Age != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).LanguageEnglish != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                    }
                    else if (skillName.Equals("LanguageChina"))
                    {
                        if (!skillRefList.Any())
                        {
                            skillRefList = db.SkillReferences.Where(sr => sr.LanguageChina == skillId).ToList();
                        }
                        else
                        {
                            for (var i = 0; i < skillRefList.Count(); i++)
                            {
                                if (skillRefList.ElementAt(i).LanguageChina != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).LanguageJapanese != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).LanguageKorean != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).Experience != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).Hometown != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).Address != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                    }
                    else if (skillName.Equals("Health"))
                    {
                        if (!skillRefList.Any())
                        {
                            skillRefList = db.SkillReferences.Where(sr => sr.Health == skillId).ToList();
                        }
                        else
                        {
                            for (var i = 0; i < skillRefList.Count(); i++)
                            {
                                if (skillRefList.ElementAt(i).Health != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).Stay != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                    }
                    else if (skillName.Equals("Salary"))
                    {
                        if (salary.Equals("low"))
                        {
                            var salaryId1 = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("<1 triệu")).SkillId;
                            var salaryId2 = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("1 triệu - 2 triệu")).SkillId;
                            var salaryId3 = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("2 triệu - 3 triệu")).SkillId;
                            if (!skillRefList.Any())
                            {
                                skillRefList = db.SkillReferences.Where(sr => sr.Salary == salaryId1 || sr.Salary == salaryId2 || sr.Salary == salaryId3).ToList();
                            }
                            else
                            {
                                for (var i = 0; i < skillRefList.Count(); i++)
                                {
                                    if (skillRefList.ElementAt(i).Salary != salaryId1 && skillRefList.ElementAt(i).Salary != salaryId2 && skillRefList.ElementAt(i).Salary != salaryId3)
                                    {
                                        skillRefList.RemoveAt(i);
                                        i--;
                                    }
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
                                    if (skillRefList.ElementAt(i).Salary != skillId)
                                    {
                                        skillRefList.RemoveAt(i);
                                        i--;
                                    }
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
                                if (skillRefList.ElementAt(i).Work != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).SickCare != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).OldCare != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).BabySister != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).DisabilityCare != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).BonsaiCare != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).Cooking != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).Washing != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
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
                                if (skillRefList.ElementAt(i).CleanHouse != skillId)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                    }
                }
                foreach (var skillRef in skillRefList)
                {
                    var skillList = new List<string>();
                    PostController.LoadSkillList(skillRef, skillList, db);
                    var now = DateTime.Now;
                    var searchDate = now;
                    if (time != null)
                    {
                        searchDate = now.AddDays(int.Parse(time) * -1);
                    }
                    var jobRequest = db.JobRequests.SingleOrDefault(jr => jr.SkillRefId == skillRef.SkillRefId);
                    if (jobRequest != null)
                    {
                        if (jobRequest.Status.Equals("Applied") || jobRequest.Status.Equals("Approved"))
                        {
                            var recruitTemp =
                                db.Applies.SingleOrDefault(a => a.JobRequestId == jobRequest.JobRequestId);
                            var jobRequestTemp = new JobRequestTemp(jobRequest.JobRequestId,
                                                                    jobRequest.SkillRefId,
                                                                    jobRequest.MaidMediatorId,
                                                                    jobRequest.StaffId,
                                                                    jobRequest.Status,
                                                                    jobRequest.PostTime, jobRequest.ExpiredTime,
                                                                    jobRequest.ApplyTimes,
                                                                    jobRequest.MaidId, jobRequest.Maid.MaidName,
                                                                    jobRequest.Maid.PersonalImage,
                                                                    jobRequest.Maid.Description,
                                                                    jobRequest.Maid.RateAvg,
                                                                    recruitTemp.Recruitment.CustomerId,
                                                                    recruitTemp.Recruitment.Customer.Account.
                                                                        FullName, skillList);
                            jobRequestList.Add(jobRequestTemp);
                        }
                        else
                        {
                            var jobRequestTemp = new JobRequestTemp(jobRequest.JobRequestId,
                                                                    jobRequest.SkillRefId,
                                                                    jobRequest.MaidMediatorId,
                                                                    jobRequest.StaffId,
                                                                    jobRequest.Status,
                                                                    jobRequest.PostTime, jobRequest.ExpiredTime,
                                                                    jobRequest.ApplyTimes,
                                                                    jobRequest.MaidId, jobRequest.Maid.MaidName,
                                                                    jobRequest.Maid.PersonalImage,
                                                                    jobRequest.Maid.Description,
                                                                    jobRequest.Maid.RateAvg,
                                                                    null, null, skillList);
                            jobRequestList.Add(jobRequestTemp);
                        }
                    }
                    else
                    {
                        var recruit = db.Recruitments.SingleOrDefault(r => r.SkillRefId == skillRef.SkillRefId);
                        if (recruit != null)
                        {
                            var recruitmentTemp = new RecruitmentTemp(recruit.RecruitmentId, recruit.SkillRefId,
                                                                      recruit.CustomerId,
                                                                      recruit.Status, recruit.PostTime,
                                                                      recruit.ExpiredTime,
                                                                      recruit.Customer.Account.Avatar,
                                                                      recruit.Customer.Account.FullName,
                                                                      skillList);
                            recruitmentList.Add(recruitmentTemp);
                        }
                    }
                }
                ViewBag.Recruitment = recruitmentList;
                ViewBag.JobRequest = jobRequestList;
            }
            ViewBag.Gender = gender;
            ViewBag.Age = age;
            ViewBag.Salary = salary;
            ViewBag.Work = work;
            ViewBag.Time = time;
            return View("Search");
        }
    }
}
