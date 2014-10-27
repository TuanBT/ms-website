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
            //Index search
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
                        var jobRequest = db.JobRequests.SingleOrDefault(jr => jr.SkillRefId == skillRef.SkillRefId && jr.Status.Equals("Waiting"));
                        if (jobRequest != null)
                        {
                            var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                            var jobRequestTmp = new JobRequestTemp(jobRequest, maid, null, null, skillList);
                            jobRequestList.Add(jobRequestTmp);
                        }
                        else
                        {
                            var recruitment = db.Recruitments.SingleOrDefault(r => r.SkillRefId == skillRef.SkillRefId && r.Status.Equals("Waiting"));
                            if (recruitment != null)
                            {
                                var customer = db.Customers.SingleOrDefault(c => c.AccountId == recruitment.CustomerId);
                                var account = db.Accounts.SingleOrDefault(a => a.AccountId == customer.AccountId);
                                var recruitmentTemp = new RecruitmentTemp(recruitment, customer, account, null, skillList);
                                recruitmentList.Add(recruitmentTemp);
                            }
                        }
                    }
                    if (recruitmentList.Any())
                    {
                        var custImgList = new List<string>();
                        foreach (var recruit in recruitmentList)
                        {
                            custImgList.Add(recruit.Customer.Account.Avatar);
                        }
                        ViewBag.CustImgList = custImgList;
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

        public ActionResult AdvancedSearch(string gender, string age, string salary, string sickCare,
            string oldCare, string babySister, string disabilityCare, string bonsaiCare, string cooking,
            string washing, string cleanHouse, string time)
        {
            using (var db = new MSEntities())
            {
                var searchInsList = new List<SkillInstance>(); 
                var skillRefList = new List<SkillReference>();
                var jobRequestList = new List<JobRequestTemp>();
                var recruitmentList = new List<RecruitmentTemp>();
                var checkedSkills = new List<string>();
                if (gender != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Gender") && si.SkillString.Equals(gender)));
                }
                if (age != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Age") && si.SkillString.Equals(age)));
                }
                if (salary != null)
                {
                    if (salary.Equals("low"))
                    {
                        searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillString.Equals("<1 tr")));
                        searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillString.Equals("1-2 tr")));
                        searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillString.Equals("2-3 tr")));
                    }
                    else if (salary.Equals("average"))
                    {
                        searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillString.Equals("3-5 tr")));
                    }
                    else if (salary.Equals("high"))
                    {
                        searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillString.Equals(">5 tr")));
                    }
                }
                if (sickCare != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("SickCare")));
                    checkedSkills.Add(sickCare);
                }
                if (oldCare != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("OldCare")));
                    checkedSkills.Add(oldCare);
                }
                if (babySister != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Babysister")));
                    checkedSkills.Add(babySister);
                }
                if (disabilityCare != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("DisabilityCare")));
                    checkedSkills.Add(disabilityCare);
                }
                if (bonsaiCare != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("BonsaiCare")));
                    checkedSkills.Add(bonsaiCare);
                }
                if (cooking != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Cooking")));
                    checkedSkills.Add(cooking);
                }
                if (washing != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Washing")));
                    checkedSkills.Add(washing);
                }
                if (cleanHouse != null)
                {
                    searchInsList.Add(db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("CleanHouse")));
                    checkedSkills.Add(cleanHouse);
                }
                if (searchInsList.Any())
                {
                    foreach (var skillInstance in searchInsList)
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
                                    db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("<1 tr")).SkillId;
                                var salaryId2 =
                                    db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("1-2 tr")).
                                        SkillId;
                                var salaryId3 =
                                    db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("2-3 tr")).
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
                }
                if (time != null)
                {
                    var now = DateTime.Now;
                    var searchDate = now.AddDays(-int.Parse(time));
                    if (skillRefList.Any())
                    {
                        for (var i = 0; i < skillRefList.Count; i++)
                        {
                            if (skillRefList[i].Type == 0)
                            {
                                if (db.JobRequests.SingleOrDefault(j => j.SkillRefId == skillRefList[i].SkillRefId).PostTime > searchDate)
                                {
                                    skillRefList.RemoveAt(i);
                                    i--;
                                }
                            }
                        }
                    }
                    else
                    {
                        var jobListTmp = db.JobRequests.Where(j => j.PostTime <= searchDate).ToList();
                        var recruitListTmp = db.Recruitments.Where(r => r.PostTime <= searchDate).ToList();
                        foreach (var jobRequest in jobListTmp)
                        {
                            skillRefList.Add(db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == jobRequest.SkillRefId));
                        }
                        foreach (var recruitment in recruitListTmp)
                        {
                            skillRefList.Add(db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == recruitment.SkillRefId));
                        }
                    }
                }
                foreach (var skillRef in skillRefList)
                {
                    var skillList = new List<string>();
                    PostController.LoadSkillList(skillRef, skillList, db);
                    var jobRequest = db.JobRequests.SingleOrDefault(jr => jr.SkillRefId == skillRef.SkillRefId && jr.Status.Equals("Waiting"));
                    if (jobRequest != null)
                    {
                        var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                        var jobRequestTemp = new JobRequestTemp(jobRequest, maid, null, null, skillList);
                        jobRequestList.Add(jobRequestTemp);
                    }
                    else
                    {
                        var recruitment = db.Recruitments.SingleOrDefault(r => r.SkillRefId == skillRef.SkillRefId && r.Status.Equals("Waiting"));
                        if (recruitment != null)
                        {
                            var customer = db.Customers.SingleOrDefault(c => c.AccountId == recruitment.CustomerId);
                            var account = db.Accounts.SingleOrDefault(a => a.AccountId == customer.AccountId);
                            var recruitmentTemp = new RecruitmentTemp(recruitment, customer, account, null, skillList);
                            recruitmentList.Add(recruitmentTemp);
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
                ViewBag.SkillList = Session["SkillList"];
                return View("Search");
            }
        }
    }
}
