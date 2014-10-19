using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;
using MS_Website.Controllers;
using MS_Website.Business;

namespace MS_Website.Controllers
{
    public class CustomerController : Controller
    {
        private MSEntities db = new MSEntities();
        private SkillBusiness buss = new SkillBusiness();

        //
        // GET: /CustomerRecruiment/

        public ActionResult Index()
        {
            using (var db = new MSEntities())
            {
                if (Session["AccId"] != null)
                {
                    var accId = (int)Session["AccId"];
                    var role = ((string)Session["Role"]).Trim();
                    var account = db.Accounts.SingleOrDefault(a => a.AccountId == accId);
                    if (role.Equals("Customer"))
                    {
                        var customer = db.Customers.SingleOrDefault(c => c.AccountId == accId);
                        var notApplJobList = db.Recruitments.Where(r => r.Customer.AccountId == accId && r.Status.Equals("Waiting")).ToList();
                        var applJobList = db.Recruitments.Where(r => r.Customer.AccountId == accId && r.Status.Equals("Applied")).ToList();
                        var expiredJobList = db.Recruitments.Where(r => r.Customer.AccountId == accId && r.Status.Equals("Expired")).ToList();
                        ViewBag.NotApplList = notApplJobList.Select(recruitment => new RecruitmentTemp(recruitment, customer, null, null)).ToList();
                        ViewBag.ApplList = (from recruitment in applJobList let apply = db.Applies.SingleOrDefault(a => a.RecruitmentId == recruitment.RecruitmentId) let jobRequest = db.JobRequests.SingleOrDefault(r => r.JobRequestId == apply.JobRequestId) select new RecruitmentTemp(recruitment, customer, jobRequest, null)).ToList();
                        ViewBag.ExpiredList = expiredJobList.Select(recruitment => new RecruitmentTemp(recruitment, customer, null, null)).ToList();
                        ViewBag.JoinDate = db.Accounts.SingleOrDefault(a => a.AccountId == customer.AccountId).JoinDate;
                        ViewBag.CustImg = customer.Account.Avatar;
                        return View("CustomerProfile", account);
                    }
                }
                return RedirectToAction("Login", "Home");
            }
        }

        public ActionResult RemoveRecruitment(int recruitmentId)
        {
            using (var db = new MSEntities())
            {
                var recruitment = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitmentId);
                if (recruitment != null)
                {
                    db.Recruitments.Remove(recruitment);
                    var skillRefTmp = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == recruitment.SkillRefId);
                    db.SkillReferences.Remove(skillRefTmp);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("Index");
        }

        public ActionResult PostRecruitment()
        {
            using (var db = new MSEntities())
            {
                if (Session["AccId"] == null)
                {
                    return RedirectToAction("Login", "Home");
                }
                Session["Gender"] = db.SkillInstances.Where(si => si.SkillName.Equals("Gender")).ToList();
                Session["Age"] = db.SkillInstances.Where(si => si.SkillName.Equals("Age")).ToList();
                Session["Language"] = db.SkillInstances.Where(si => si.SkillName.Contains("Language")).ToList();
                Session["Experience"] = db.SkillInstances.Where(si => si.SkillName.Equals("Experience")).ToList();
                Session["Hometown"] = db.SkillInstances.Where(si => si.SkillName.Equals("Hometown")).ToList();
                Session["Address"] = db.SkillInstances.Where(si => si.SkillName.Equals("Address")).ToList();
                Session["Married"] = db.SkillInstances.Where(si => si.SkillName.Equals("Married")).ToList();
                Session["StayList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Stay")).ToList();
                Session["SalaryList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Salary")).ToList();
                Session["WorkList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Work")).ToList();
                if (Session["SkillList"] == null)
                {
                    Session["SkillList"] = db.SkillInstances.Where(si => si.CategoryId == 2).ToList();
                }
                LoadItems();
            }
            return View("PostRecruitment");
        }

        public ActionResult AddRecruitment(string gender, string age, string LanguageEnglish,
            string LanguageChinese, string LanguageJapanese, string LanguageKorean, string exp,
            string hometown, string addr, string married, string stay, string salary, string work,
            string SickCare, string OldCare, string BabySister, string DisabilityCare, string BonsaiCare,
            string Cooking, string Washing, string CleanHouse, string time)
        {
            var custId = (int) Session["AccId"];
            using (var db = new MSEntities())
            {
                var skillRef = new SkillReference();
                skillRef.Type = 2;
                if (!gender.Equals("null"))
                {
                    skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(gender) && si.SkillName.Equals("Gender")).SkillId;
                }
                if (!age.Equals("null"))
                {
                    skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(age) && si.SkillName.Equals("Age")).SkillId;
                }
                if (LanguageEnglish != null)
                {
                    skillRef.LanguageEnglish =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageEnglish)).SkillId;
                }
                if (LanguageChinese != null)
                {
                    skillRef.LanguageChinese =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageChinese)).SkillId;
                }
                if (LanguageJapanese != null)
                {
                    skillRef.LanguageJapanese =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageJapanese)).SkillId;
                }
                if (LanguageKorean != null)
                {
                    skillRef.LanguageKorean =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageKorean)).SkillId;
                }
                if (!exp.Equals("null"))
                {
                    skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(exp) && si.SkillName.Equals("Experience")).SkillId;
                }
                if (!hometown.Equals("null"))
                {
                    skillRef.Hometown = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(hometown) && si.SkillName.Equals("Hometown")).SkillId;
                }
                if (!addr.Equals("null"))
                {
                    skillRef.Address = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(addr) && si.SkillName.Equals("Address")).SkillId;
                }
                if (!married.Equals("null"))
                {
                    skillRef.Married = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(married) && si.SkillName.Equals("Married")).SkillId;
                }
                if (!stay.Equals("null"))
                {
                    skillRef.Stay = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Stay") && si.SkillString.Equals(stay) && si.SkillName.Equals("Stay")).SkillId;
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
                db.SkillReferences.Add(skillRef);
                db.SaveChanges();
                skillRef = db.SkillReferences.SingleOrDefault(sr => sr.Type == 2);
                var recruitment = new Recruitment();
                recruitment.SkillRefId = skillRef.SkillRefId;
                recruitment.CustomerId = custId;
                recruitment.Status = "Waiting";
                recruitment.PostTime = DateTime.Now;
                recruitment.ExpiredTime = DateTime.Now.AddDays(7 * int.Parse(time));
                recruitment.Title = "Tuân ngu";
                skillRef.Type = 1;
                db.Recruitments.Add(recruitment);
                db.SaveChanges();
                LoadItems();
                var newRecruitId = db.Recruitments.SingleOrDefault(r => r.SkillRefId == skillRef.SkillRefId).RecruitmentId;
                return RedirectToAction("GetRecruitment", "Post", new {recruitmentId = newRecruitId});
            }
            return View("PostRecruitment");
        }

        public void LoadItems()
        {
            ViewBag.Gender = Session["Gender"];
            ViewBag.Age = Session["Age"];
            ViewBag.Language = Session["Language"];
            ViewBag.Experience = Session["Experience"];
            ViewBag.Hometown = Session["Hometown"];
            ViewBag.Address = Session["Address"];
            ViewBag.Married = Session["Married"];
            ViewBag.StayList = Session["StayList"];
            ViewBag.SalaryList = Session["SalaryList"];
            ViewBag.WorkList = Session["WorkList"];
            ViewBag.SkillList = Session["SkillList"];
        }

        public ActionResult ApplyJobRequest(int jobRequestId, int recruitId)
        {
            var apply = new Apply();
            apply.JobRequestId = jobRequestId;
            apply.RecruitmentId = recruitId;
            db.Applies.Add(apply);
            var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobRequestId);
            var recruit = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitId);
            jobRequest.Status = "Applied";
            recruit.Status = "Applied";
            db.SaveChanges();
            return RedirectToAction("GetJobRequest", "Post", new { jobId = jobRequestId });
        }
    }
}
