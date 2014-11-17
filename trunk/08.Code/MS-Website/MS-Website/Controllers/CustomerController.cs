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
        private SkillBusiness buss = new SkillBusiness();

        //
        // GET: /CustomerRecruiment/

        public ActionResult GetCustomer(int custId)
        {
            if (Session["AccId"] != null)
            {
                using (var db = new MSEntities())
                {
                    var account = db.Accounts.SingleOrDefault(a => a.AccountId == custId);
                    var customer = db.Customers.SingleOrDefault(c => c.AccountId == custId);
                    var notApplRecList =
                        db.Recruitments.Where(
                            r => r.Customer.AccountId == custId && r.Status.Equals("Waiting") && r.IsActive).ToList();
                    var applRecList =
                        db.Recruitments.Where(
                            r => r.Customer.AccountId == custId && r.Status.Equals("Applied") && r.IsActive).ToList();
                    var expiredRecList =
                        db.Recruitments.Where(
                            r => r.Customer.AccountId == custId && r.Status.Equals("Expired") && r.IsActive).ToList();
                    var hideList =
                        db.Recruitments.Where(
                            r => r.Customer.AccountId == custId && r.Status.Equals("Hide") && r.IsActive).ToList();
                    var notActiveList =
                        db.Recruitments.Where(r => r.Customer.AccountId == custId && !r.IsActive).ToList();
                    ViewBag.NotApplList =
                        notApplRecList.Select(
                            recruitment => new RecruitmentTemp(recruitment, customer, account, null, null)).ToList();
                    ViewBag.ApplList = (from recruitment in applRecList
                                        let apply =
                                            db.Applies.SingleOrDefault(
                                                a => a.RecruitmentId == recruitment.RecruitmentId)
                                        let jobRequest =
                                            db.JobRequests.SingleOrDefault(r => r.JobRequestId == apply.JobRequestId)
                                        select new RecruitmentTemp(recruitment, customer, account, jobRequest, null))
                        .ToList();
                    ViewBag.ExpiredList =
                        expiredRecList.Select(
                            recruitment => new RecruitmentTemp(recruitment, customer, account, null, null)).ToList();
                    ViewBag.HideList =
                        hideList.Select(
                            recruitment => new RecruitmentTemp(recruitment, customer, account, null, null)).ToList();
                    ViewBag.NotActiveList =
                        notActiveList.Select(
                            recruitment => new RecruitmentTemp(recruitment, customer, account, null, null)).ToList();
                    ViewBag.Manage = "true";
                    return View("CustomerProfile", account);
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult CustomerEdit()
        {
            if (Session["AccId"] != null)
            {
                var custId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    var customerAcc = db.Accounts.SingleOrDefault(a => a.AccountId == custId);
                    if (customerAcc != null)
                    {
                        ViewBag.CustAddr = customerAcc.Customer.Address;
                        return View("CustomerEdit", customerAcc);
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult EditCustProfile(string custId, string fullname, string phone, string email, string addr)
        {
            if (Session["AccId"] != null)
            {
                var loggedId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    int custIdNum = Convert.ToInt32(custId);
                    var cust = db.Accounts.SingleOrDefault(a => a.AccountId == custIdNum);
                    HttpPostedFileBase avatar = Request.Files["avatar"];
                    string picExt = ".png";
                    if (avatar != null)
                    {
                        picExt = System.IO.Path.GetExtension(avatar.FileName);
                        string path = System.IO.Path.Combine(Server.MapPath("~/Content/Image/Profile"), cust.AccountId + picExt);
                        avatar.SaveAs(path);
                    }
                    if (cust.AccountId == loggedId)
                    {
                        cust.FullName = fullname;
                        cust.Phone = phone;
                        cust.Email = email;
                        cust.Customer.Address = addr;
                        if (avatar != null && avatar.FileName != "")
                        {
                            cust.Avatar = "../Content/Image/Profile/" + cust.AccountId + picExt;
                        }
                        db.SaveChanges();
                        return RedirectToAction("GetCustomer", "Customer", new { custId = cust.AccountId });
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult HideRecruitment(int recruitId)
        {
            using (var db = new MSEntities())
            {
                var recruitment = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == recruitId);
                if (recruitment != null)
                {
                    if (recruitment.Status.Equals("Applied"))
                    {
                        TempData["Alert"] = "Công việc đã thuê được người";
                    }
                    else if (recruitment.Status.Equals("Expired"))
                    {
                        TempData["Alert"] = "Công việc đã hết hạn";
                    }
                    else if (!recruitment.IsActive)
                    {
                        TempData["Alert"] = "Công việc không tồn tại";
                    }
                    else
                    {
                        recruitment.Status = "Hide";
                        db.SaveChanges();
                    }
                }
            }
            return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });
        }

        public ActionResult PublicRecruitment(int recruitId)
        {
            using (var db = new MSEntities())
            {
                var recruitment = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == recruitId);
                if (recruitment != null)
                {
                    if (recruitment.Status.Equals("Expired"))
                    {
                        TempData["Alert"] = "Công việc đã hết hạn";
                    }
                    else if (!recruitment.IsActive)
                    {
                        TempData["Alert"] = "Công việc không tồn tại";
                    }
                    else
                    {
                        recruitment.Status = "Waiting";
                        db.SaveChanges();
                    }
                }
            }
            return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });
        }

        public ActionResult PostRecruitment()
        {
            using (var db = new MSEntities())
            {
                if (Session["AccId"] == null)
                {
                    return RedirectToAction("Login", "Home");
                }
                LoadItems(db);
            }
            return View("PostRecruitment");
        }

        public ActionResult AddRecruitment(string title, string gender, string age, string LanguageEnglish,
            string LanguageChinese, string LanguageJapanese, string LanguageKorean, string exp,
            string hometown, string addr, string married, string stay, string salary, string work,
            string SickCare, string OldCare, string BabySister, string DisabilityCare, string BonsaiCare,
            string Cooking, string Washing, string CleanHouse, string time)
        {
            if (Session["AccId"] != null)
            {
                var custId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    var skillRef = new SkillReference();
                    skillRef.Type = 2;
                    if (!gender.Equals("null"))
                    {
                        skillRef.Gender =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(gender) && si.SkillName.Equals("Gender")).SkillId;
                    }
                    if (!age.Equals("null"))
                    {
                        skillRef.Age =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(age) && si.SkillName.Equals("Age")).SkillId;
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
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(exp) && si.SkillName.Equals("Experience")).SkillId;
                    }
                    if (!hometown.Equals("null"))
                    {
                        skillRef.Hometown =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(hometown) && si.SkillName.Equals("Hometown")).SkillId;
                    }
                    if (!addr.Equals("null"))
                    {
                        skillRef.Address =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(addr) && si.SkillName.Equals("Address")).SkillId;
                    }
                    if (!married.Equals("null"))
                    {
                        skillRef.Married =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(married) && si.SkillName.Equals("Married")).SkillId;
                    }
                    if (!stay.Equals("null"))
                    {
                        skillRef.Stay =
                            db.SkillInstances.SingleOrDefault(
                                si =>
                                si.SkillName.Equals("Stay") && si.SkillString.Equals(stay) &&
                                si.SkillName.Equals("Stay")).SkillId;
                    }
                    if (!salary.Equals("null"))
                    {
                        skillRef.Salary =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(salary) && si.SkillName.Equals("Salary")).SkillId;
                    }
                    if (!work.Equals("null"))
                    {
                        skillRef.Work =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(work) && si.SkillName.Equals("Work")).SkillId;
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
                    skillRef.Distance = PostController.GetDistance(skillRef);
                    db.SkillReferences.Add(skillRef);
                    db.SaveChanges();
                    skillRef = db.SkillReferences.SingleOrDefault(sr => sr.Type == 2);
                    var recruitment = new Recruitment();
                    recruitment.SkillRefId = skillRef.SkillRefId;
                    recruitment.CustomerId = custId;
                    recruitment.Status = "Waiting";
                    recruitment.PostTime = DateTime.Now;
                    recruitment.ExpiredTime = DateTime.Now.AddDays(7 * int.Parse(time));
                    int price  = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["PriceRC"]);
                    int SubPriceWeek = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["SubPriceWeek"]);
                    int week = int.Parse(time);
                    recruitment.Price = price * week - (SubPriceWeek / 2) * week * (week - 1);
                    recruitment.Title = title;
                    skillRef.Type = 1;
                    db.Recruitments.Add(recruitment);
                    db.SaveChanges();
                    var newRecruitId =
                        db.Recruitments.SingleOrDefault(r => r.SkillRefId == skillRef.SkillRefId).RecruitmentId;
                    return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = newRecruitId });
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult RecruitmentEdit(int recruitId)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                LoadItems(db);
                var recruitment = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitId);
                if (recruitment.PostTime.AddDays(3) < DateTime.Now)
                {
                    TempData["Alert"] = "Công việc đã hết hạn cho sửa";
                    return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });
                }
                if (recruitment.Status.Equals("Applied"))
                {
                    TempData["Alert"] = "Công việc đã được thuê";
                    return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });
                }
                var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == recruitment.SkillRefId);
                List<string> skillList = new List<string>();
                PostController.LoadSkillList(skillRef, skillList, db);
                ViewBag.SkillStrList = skillList;
                if (skillRef.Gender != null)
                {
                    ViewBag.GenderValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Gender") && si.SkillId == skillRef.Gender).SkillString;
                }
                if (skillRef.Age != null)
                {
                    ViewBag.AgeValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Age") && si.SkillId == skillRef.Age).SkillString;
                }
                if (skillRef.LanguageEnglish != null)
                {
                    ViewBag.EnglishValue = true;
                }
                if (skillRef.LanguageJapanese != null)
                {
                    ViewBag.JapaneseValue = true;
                }
                if (skillRef.LanguageChinese != null)
                {
                    ViewBag.ChineseValue = true;
                }
                if (skillRef.LanguageKorean != null)
                {
                    ViewBag.KoreanValue = true;
                }
                if (skillRef.Experience != null)
                {
                    ViewBag.ExperienceValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Experience") && si.SkillId == skillRef.Experience).SkillString;
                }
                if (skillRef.Hometown != null)
                {
                    ViewBag.HometownValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Hometown") && si.SkillId == skillRef.Hometown).SkillString;
                }
                if (skillRef.Address != null)
                {
                    ViewBag.AddressValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Address") && si.SkillId == skillRef.Address).SkillString;
                }
                if (skillRef.Married != null)
                {
                    ViewBag.MarriedValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Married") && si.SkillId == skillRef.Married).SkillString;
                }
                if (skillRef.Stay != null)
                {
                    ViewBag.StayValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Stay") && si.SkillId == skillRef.Stay).SkillString;
                }
                if (skillRef.Salary != null)
                {
                    ViewBag.SalaryValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillId == skillRef.Salary).SkillString;
                }
                if (skillRef.Work != null)
                {
                    ViewBag.WorkValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Work") && si.SkillId == skillRef.Work).SkillString;
                }
                if (skillRef.SickCare != null)
                {
                    ViewBag.SickCareValue = true;
                }
                if (skillRef.OldCare != null)
                {
                    ViewBag.OldCareValue = true;
                }
                if (skillRef.BabySister != null)
                {
                    ViewBag.BabySisterValue = true;
                }
                if (skillRef.DisabilityCare != null)
                {
                    ViewBag.DisabilityCareValue = true;
                }
                if (skillRef.BonsaiCare != null)
                {
                    ViewBag.BonsaiCareValue = true;
                }
                if (skillRef.Cooking != null)
                {
                    ViewBag.CookingValue = true;
                }
                if (skillRef.Washing != null)
                {
                    ViewBag.WashingValue = true;
                }
                if (skillRef.CleanHouse != null)
                {
                    ViewBag.CleanHouseValue = true;
                }
                return View("EditRecruitment", recruitment);
            }
        }

        public ActionResult EditRecruitment(int recruitId, string title, string gender, string age, string LanguageEnglish,
            string LanguageChinese, string LanguageJapanese, string LanguageKorean, string exp,
            string hometown, string addr, string married, string stay, string salary, string work,
            string SickCare, string OldCare, string BabySister, string DisabilityCare, string BonsaiCare,
            string Cooking, string Washing, string CleanHouse)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                var recruitment = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == recruitId);
                if (recruitment.PostTime.AddDays(3) < DateTime.Now)
                {
                    TempData["Alert"] = "Công việc đã hết hạn cho sửa";
                }
                else if (recruitment.Status.Equals("Applied"))
                {
                    TempData["Alert"] = "Công việc đã được thuê";
                }
                else
                {
                    recruitment.Title = title;
                    var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == recruitment.SkillRefId);
                    if (!gender.Equals("null"))
                    {
                        skillRef.Gender =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(gender) && si.SkillName.Equals("Gender")).SkillId;
                    }
                    else
                    {
                        skillRef.Gender = null;
                    }
                    if (!age.Equals("null"))
                    {
                        skillRef.Age =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(age) && si.SkillName.Equals("Age")).SkillId;
                    }
                    else
                    {
                        skillRef.Age = null;
                    }
                    if (LanguageEnglish != null)
                    {
                        skillRef.LanguageEnglish =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageEnglish)).SkillId;
                    }
                    else
                    {
                        skillRef.LanguageEnglish = null;
                    }
                    if (LanguageChinese != null)
                    {
                        skillRef.LanguageChinese =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageChinese)).SkillId;
                    }
                    else
                    {
                        skillRef.LanguageChinese = null;
                    }
                    if (LanguageJapanese != null)
                    {
                        skillRef.LanguageJapanese =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageJapanese)).
                                SkillId;
                    }
                    else
                    {
                        skillRef.LanguageJapanese = null;
                    }
                    if (LanguageKorean != null)
                    {
                        skillRef.LanguageKorean =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(LanguageKorean)).SkillId;
                    }
                    else
                    {
                        skillRef.LanguageKorean = null;
                    }
                    if (!exp.Equals("null"))
                    {
                        skillRef.Experience =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(exp) && si.SkillName.Equals("Experience")).SkillId;
                    }
                    else
                    {
                        skillRef.Experience = null;
                    }
                    if (!hometown.Equals("null"))
                    {
                        skillRef.Hometown =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(hometown) && si.SkillName.Equals("Hometown")).SkillId;
                    }
                    else
                    {
                        skillRef.Hometown = null;
                    }
                    if (!addr.Equals("null"))
                    {
                        skillRef.Address =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(addr) && si.SkillName.Equals("Address")).SkillId;
                    }
                    else
                    {
                        skillRef.Address = null;
                    }
                    if (!married.Equals("null"))
                    {
                        skillRef.Married =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(married) && si.SkillName.Equals("Married")).SkillId;
                    }
                    else
                    {
                        skillRef.Married = null;
                    }
                    if (!stay.Equals("null"))
                    {
                        skillRef.Stay =
                            db.SkillInstances.SingleOrDefault(
                                si =>
                                si.SkillName.Equals("Stay") && si.SkillString.Equals(stay) &&
                                si.SkillName.Equals("Stay")).SkillId;
                    }
                    else
                    {
                        skillRef.Stay = null;
                    }
                    if (!salary.Equals("null"))
                    {
                        skillRef.Salary =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(salary) && si.SkillName.Equals("Salary")).SkillId;
                    }
                    else
                    {
                        skillRef.Salary = null;
                    }
                    if (!work.Equals("null"))
                    {
                        skillRef.Work =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(work) && si.SkillName.Equals("Work")).SkillId;
                    }
                    else
                    {
                        skillRef.Work = null;
                    }
                    if (SickCare != null)
                    {
                        skillRef.SickCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(SickCare)).SkillId;
                    }
                    else
                    {
                        skillRef.SickCare = null;
                    }
                    if (OldCare != null)
                    {
                        skillRef.OldCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(OldCare)).SkillId;
                    }
                    else
                    {
                        skillRef.OldCare = null;
                    }
                    if (BabySister != null)
                    {
                        skillRef.BabySister =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BabySister)).SkillId;
                    }
                    else
                    {
                        skillRef.BabySister = null;
                    }
                    if (DisabilityCare != null)
                    {
                        skillRef.DisabilityCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(DisabilityCare)).SkillId;
                    }
                    else
                    {
                        skillRef.DisabilityCare = null;
                    }
                    if (BonsaiCare != null)
                    {
                        skillRef.BonsaiCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BonsaiCare)).SkillId;
                    }
                    else
                    {
                        skillRef.BonsaiCare = null;
                    }
                    if (Cooking != null)
                    {
                        skillRef.Cooking =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Cooking)).SkillId;
                    }
                    else
                    {
                        skillRef.Cooking = null;
                    }
                    if (Washing != null)
                    {
                        skillRef.Washing =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Washing)).SkillId;
                    }
                    else
                    {
                        skillRef.Washing = null;
                    }
                    if (CleanHouse != null)
                    {
                        skillRef.CleanHouse =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(CleanHouse)).SkillId;
                    }
                    else
                    {
                        skillRef.CleanHouse = null;
                    }
                    skillRef.Group = PostController.GetGroup(skillRef);
                    db.SaveChanges();
                }
                return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });
            }
        }

        public ActionResult ExtendRecruitment(int recruitId, int extend)
        {
            using (var db = new MSEntities())
            {
                var recruit = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == recruitId);
                if (recruit.Status.Equals("Applied"))
                {
                    TempData["Alert"] = "Công việc đã thuê được người";
                }
                else if (recruit.Status.Equals("Payment"))
                {
                    TempData["Alert"] = "Công việc chưa được thanh toán";
                }
                else if (!recruit.IsActive)
                {
                    TempData["Alert"] = "Công việc không tồn tại";
                }
                else
                {
                    var expiredTime = recruit.ExpiredTime.AddDays(7 * extend);
                    recruit.ExpiredTime = expiredTime;
                    if (recruit.Status.Equals("Expired"))
                    {
                        recruit.Status = "Waiting";
                    }
                    db.SaveChanges();
                }
                return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });
            }
        }

        public void LoadItems(MSEntities db)
        {
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

        public ActionResult ApplyJobRequest(int jobRequestId, string recruitIdStr)
        {
            if (recruitIdStr == null)
            {
                TempData["Alert"] = "Chưa chọn đơn tuyển việc!";
                return RedirectToAction("GetJobRequest", "Post", new { jobId = jobRequestId });
            }
            using (var db = new MSEntities())
            {
                var recruitId = int.Parse(recruitIdStr);
                var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobRequestId);
                if (jobRequest != null)
                {
                    if (jobRequest.Status.Equals("Waiting"))
                    {
                        var recruit = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitId);
                        var apply = new Apply();
                        apply.JobRequestId = jobRequestId;
                        apply.RecruitmentId = recruitId;
                        db.Applies.Add(apply);
                        jobRequest.Status = "Applied";
                        jobRequest.ApplyTimes = DateTime.Now;
                        recruit.Status = "Applied";
                        db.SaveChanges();
                        var function = new Function();
                        function.SentMessage(
                            jobRequest.Maid.Phone ?? "",
                            jobRequest.Staff != null ? jobRequest.Staff.Account.Phone : "",
                            jobRequest.MaidMediator != null ? jobRequest.MaidMediator.Account.Phone : "",
                            recruit.Customer.Account.Phone ?? "");
                        string link = "/Post/GetJobRequest?jobId=" + jobRequestId;
                        //People post jobrequest
                        var notifier = new MS_Website.Models.Notifier
                            {
                                AccId =
                                    jobRequest.MaidMediatorId != null
                                        ? (int)jobRequest.MaidMediatorId
                                        : (int)jobRequest.StaffId,
                                Date = DateTime.Now,
                                Content = "Yêu cầu của bạn đã được thuê",
                                Link = link,
                                View = false
                            };
                        db.Notifiers.Add(notifier);
                        db.SaveChanges();
                    }
                    else if (jobRequest.Status.Equals("Applied") || jobRequest.Status.Equals("Approved"))
                    {
                        TempData["Alert"] = "Công việc đã được thuê bởi khách hàng khác";
                    }
                    else if (jobRequest.Status.Equals("Expired"))
                    {
                        TempData["Alert"] = "Công việc đã hết hạn";
                    }
                    else if (jobRequest.Status.Equals("Hide") || !jobRequest.IsActive)
                    {
                        TempData["Alert"] = "Công việc không tồn tại";
                    }
                    return RedirectToAction("GetJobRequest", "Post", new { jobId = jobRequestId });
                }
                return RedirectToAction("GetCustomer", "Customer", new { custId = Session["AccId"] });
            }
        }
    }
}
