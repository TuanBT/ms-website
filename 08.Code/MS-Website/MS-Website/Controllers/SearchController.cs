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
                var skillInstanceList = db.SkillInstances.Where(si => si.SkillString.Contains(searchString)).ToList();
                foreach (var skillInstance in skillInstanceList)
                {
                    var skillRefList = new List<SkillReference>();
                    var jobRequestList = new List<JobRequestTemp>();
                    var recruitmentList = new List<RecruitmentTemp>();
                    var skillName = skillInstance.SkillName;
                    var skillId = skillInstance.SkillId;
                    if (skillName.Equals("Gender"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Gender == skillId).ToList();
                    }

                    if (skillName.Equals("Age"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Age == skillId).ToList();
                    }

                    if (skillName.Equals("LanguageEnglish"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageEnglish == skillId).ToList();
                    }

                    if (skillName.Equals("LanguageChina"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageChina == skillId).ToList();
                    }

                    if (skillName.Equals("LanguageJapanese"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageJapanese == skillId).ToList();
                    }

                    if (skillName.Equals("LanguageKorean"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.LanguageKorean == skillId).ToList();
                    }

                    if (skillName.Equals("Experience"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Experience == skillId).ToList();
                    }

                    if (skillName.Equals("Hometown"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Hometown == skillId).ToList();
                    }

                    if (skillName.Equals("Address"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Address == skillId).ToList();
                    }

                    if (skillName.Equals("Health"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Health == skillId).ToList();
                    }

                    if (skillName.Equals("Stay"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Stay == skillId).ToList();
                    }

                    if (skillName.Equals("Salary"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Salary == skillId).ToList();
                    }

                    if (skillName.Equals("Work"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Work == skillId).ToList();
                    }

                    if (skillName.Equals("SickCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.SickCare == skillId).ToList();
                    }

                    if (skillName.Equals("OldCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.OldCare == skillId).ToList();
                    }

                    if (skillName.Equals("BabySister"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.BabySister == skillId).ToList();
                    }

                    if (skillName.Equals("DisabilityCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.DisabilityCare == skillId).ToList();
                    }

                    if (skillName.Equals("BonsaiCare"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.BonsaiCare == skillId).ToList();
                    }

                    if (skillName.Equals("Cooking"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Cooking == skillId).ToList();
                    }

                    if (skillName.Equals("Washing"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.Washing == skillId).ToList();
                    }

                    if (skillName.Equals("CleanHouse"))
                    {
                        skillRefList = db.SkillReferences.Where(sr => sr.CleanHouse == skillId).ToList();
                    }

                    foreach (var skillRef in skillRefList)
                    {
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
                                                                        jobRequest.Maid.PersonalImage,
                                                                        recruitTemp.Recruitment.CustomerId,
                                                                        recruitTemp.Recruitment.Customer.Account.
                                                                            FullName);
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
                                                                          recruit.Status, recruit.PostRequestedTime,
                                                                          recruit.ExpiredTime,
                                                                          recruit.Customer.Account.Avatar,
                                                                          recruit.Customer.Account.FullName);
                                recruitmentList.Add(recruitmentTemp);
                            }
                        }

                        ViewBag.Recruitment = recruitmentList;
                        ViewBag.JobRequest = jobRequestList;
                        var skillList = new List<string>();
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
                        ViewBag.SkillList = skillList;
                    }
                }
            }
            //var skill = from s in _db.SkillInstances select s;

            /*if (!String.IsNullOrEmpty(searchString))
            {
                skill = skill.Where(a => a.SkillString.Contains(searchString));
            }*/
            return View();
        }

    }
}
