using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Admin()
        {
            return View();
        }

        public ActionResult RunKmean()
        {
            using (var db = new MSEntities())
            {
                var skillRefJrTable = db.SkillReferences.Where(s => s.Type == 0).ToList();
                var skillRefTable = db.SkillReferences.Select(s => s);

                string strPathServer = AppDomain.CurrentDomain.BaseDirectory;
                string strMeansDataFile = strPathServer + "App_Data\\" + "meansData.txt";
                //Choose max count/10
                int numCluterK = (skillRefTable.Count() - skillRefJrTable.Count()) > skillRefJrTable.Count()
                                     ? (skillRefTable.Count() - skillRefJrTable.Count())/10
                                     : skillRefJrTable.Count()/10;
                if (numCluterK == 0) numCluterK = 1;
                var kmean = new Kmean(numCluterK, strMeansDataFile);
                var kmeanDatas = new List<KmeanData>();
                foreach (var skillRef in skillRefTable)
                {
                    int gender = skillRef.Gender != null ? skillRef.Gender.Value : -1;
                    double genderVl = gender != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == gender).SkillNormallized
                                          : 0;
                    int age = skillRef.Age != null ? skillRef.Age.Value : -1;
                    double ageVl = age != -1
                                       ? db.SkillInstances.FirstOrDefault(s => s.SkillId == age).SkillNormallized
                                       : 0;
                    int languageEnglish = skillRef.LanguageEnglish != null ? skillRef.LanguageEnglish.Value : -1;
                    double languageEnglishVl = languageEnglish != -1
                                                   ? db.SkillInstances.FirstOrDefault(s => s.SkillId == languageEnglish)
                                                         .SkillNormallized
                                                   : -1;
                    int LanguageChinese = skillRef.LanguageChinese != null ? skillRef.LanguageChinese.Value : -1;
                    double LanguageChineseVl = LanguageChinese != -1
                                                   ? db.SkillInstances.FirstOrDefault(s => s.SkillId == LanguageChinese)
                                                         .SkillNormallized
                                                   : 0;
                    int languageJapanese = skillRef.LanguageJapanese != null ? skillRef.LanguageJapanese.Value : -1;
                    double languageJapaneseVl = languageJapanese != -1
                                                    ? db.SkillInstances.FirstOrDefault(
                                                        s => s.SkillId == languageJapanese).SkillNormallized
                                                    : 0;
                    int languageKorean = skillRef.LanguageKorean != null ? skillRef.LanguageKorean.Value : -1;
                    double languageKoreanVl = languageKorean != -1
                                                  ? db.SkillInstances.FirstOrDefault(s => s.SkillId == languageKorean).
                                                        SkillNormallized
                                                  : 0;
                    int experience = skillRef.Experience != null ? skillRef.Experience.Value : -1;
                    double experienceVl = experience != -1
                                              ? db.SkillInstances.FirstOrDefault(s => s.SkillId == experience).
                                                    SkillNormallized
                                              : 0;
                    int hometown = skillRef.Hometown != null ? skillRef.Hometown.Value : -1;
                    double hometownVl = hometown != -1
                                            ? db.SkillInstances.FirstOrDefault(s => s.SkillId == hometown).
                                                  SkillNormallized
                                            : 0;
                    int address = skillRef.Address != null ? skillRef.Address.Value : -1;
                    double addressVl = address != -1
                                           ? db.SkillInstances.FirstOrDefault(s => s.SkillId == address).
                                                 SkillNormallized
                                           : 0;
                    int Married = skillRef.Married != null ? skillRef.Married.Value : -1;
                    double MarriedVl = Married != -1
                                           ? db.SkillInstances.FirstOrDefault(s => s.SkillId == Married).
                                                 SkillNormallized
                                           : 0;
                    int stay = skillRef.Stay != null ? skillRef.Stay.Value : -1;
                    double stayVl = stay != -1
                                        ? db.SkillInstances.FirstOrDefault(s => s.SkillId == stay).SkillNormallized
                                        : 0;
                    int salary = skillRef.Salary != null ? skillRef.Salary.Value : -1;
                    double salaryVl = salary != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == salary).SkillNormallized
                                          : 0;
                    int work = skillRef.Work != null ? skillRef.Work.Value : -1;
                    double workVl = work != -1
                                        ? db.SkillInstances.FirstOrDefault(s => s.SkillId == work).SkillNormallized
                                        : 0;
                    int sickCare = skillRef.SickCare != null ? skillRef.SickCare.Value : -1;
                    double sickCareVl = sickCare != -1
                                            ? db.SkillInstances.FirstOrDefault(s => s.SkillId == sickCare).
                                                  SkillNormallized
                                            : 0;
                    int oldCare = skillRef.OldCare != null ? skillRef.OldCare.Value : -1;
                    double oldCareVl = oldCare != -1
                                           ? db.SkillInstances.FirstOrDefault(s => s.SkillId == oldCare).
                                                 SkillNormallized
                                           : 0;
                    int babySister = skillRef.BabySister != null ? skillRef.BabySister.Value : -1;
                    double babySisterVl = babySister != -1
                                              ? db.SkillInstances.FirstOrDefault(s => s.SkillId == babySister).
                                                    SkillNormallized
                                              : 0;
                    int disabilityCare = skillRef.DisabilityCare != null ? skillRef.DisabilityCare.Value : -1;
                    double disabilityCareVl = disabilityCare != -1
                                                  ? db.SkillInstances.FirstOrDefault(s => s.SkillId == disabilityCare).
                                                        SkillNormallized
                                                  : 0;
                    int bonsaiCare = skillRef.BonsaiCare != null ? skillRef.BonsaiCare.Value : -1;
                    double bonsaiCareVl = bonsaiCare != -1
                                              ? db.SkillInstances.FirstOrDefault(s => s.SkillId == bonsaiCare).
                                                    SkillNormallized
                                              : 0;
                    int cooking = skillRef.Cooking != null ? skillRef.Cooking.Value : -1;
                    double cookingVl = cooking != -1
                                           ? db.SkillInstances.FirstOrDefault(s => s.SkillId == cooking).
                                                 SkillNormallized
                                           : 0;
                    int washing = skillRef.Washing != null ? skillRef.Washing.Value : -1;
                    double washingVl = washing != -1
                                           ? db.SkillInstances.FirstOrDefault(s => s.SkillId == washing).
                                                 SkillNormallized
                                           : 0;
                    int cleanHouse = skillRef.CleanHouse != null ? skillRef.CleanHouse.Value : -1;
                    double cleanHouseVl = cleanHouse != -1
                                              ? db.SkillInstances.FirstOrDefault(s => s.SkillId == cleanHouse).
                                                    SkillNormallized
                                              : 0;

                    var kmeanData = new KmeanData
                        {
                            dataRowId = skillRef.SkillRefId,
                            dataRow = new double[]
                                {
                                    genderVl, ageVl, languageEnglishVl, LanguageChineseVl, languageJapaneseVl,
                                    languageKoreanVl,
                                    experienceVl, hometownVl, addressVl, MarriedVl, stayVl, salaryVl, workVl, sickCareVl
                                    , oldCareVl, babySisterVl, disabilityCareVl,
                                    bonsaiCareVl, cookingVl, washingVl, cleanHouseVl
                                },
                            group = -1
                        };
                    kmeanDatas.Add(kmeanData);
                }
                //Run alg and write group
                kmeanDatas = kmean.GetKmeanData(kmeanDatas);

                int i = 0;
                foreach (SkillReference skillReference in skillRefTable)
                {
                    skillReference.Group = kmeanDatas[i].group;
                    i++;
                }
                db.SaveChanges();
            }
            return View("Admin");
        }

        public ActionResult AdminConfig()
        {
            return View();
        }

        public ActionResult AddStaff(Account acc, string account)
        {
            if (Session["AccId"] != null && Session["IsAdmin"].Equals(true))
            {
                using (var db = new MSEntities())
                {
                    try
                    {
                        var newStaff = db.Accounts.Create();
                        newStaff.Username = acc.Username;
                        newStaff.Password = acc.Password;
                        newStaff.IsActive = true;
                        newStaff.JoinDate = DateTime.Now;
                        newStaff.Role = "Staff";
                        newStaff.IsWebmaster = false;
                        newStaff.Email = null;
                        newStaff.Phone = null;
                        newStaff.FullName = null;
                        newStaff.Avatar = null;
                        db.Accounts.Add(newStaff);
                        db.SaveChanges();

                        var addedAcc = db.Accounts.SingleOrDefault(a => a.Username.Equals(acc.Username));
                        var newStaffs = new Staff {AccountId = addedAcc.AccountId};
                        db.Staffs.Add(newStaffs);
                        db.SaveChanges();
                        return RedirectToAction("BanAccount", "Admin", acc);

                    }
                    catch (Exception)
                    {
                        return View("AddStaff");
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult BanAccount()
        {

            if (Session["AccId"] != null && Session["IsAdmin"].Equals(true))
            {

                var db = new MSEntities();
                var acc = db.Accounts.Where(a => a.IsActive.Equals(true) && a.IsWebmaster.Equals(false)).ToList();



                return View("BanAccount", acc);
            }
            return RedirectToAction("Login", "Home");

        }

        [HttpGet]
        public ActionResult MarkActive(int accountId)
        {
            if (Session["AccId"] != null && Session["IsAdmin"].Equals(true))
            {
                var db = new MSEntities();

                using (db)
                {

                    var acc = db.Accounts.SingleOrDefault(j => j.AccountId == accountId);
                    acc.IsActive = false;
                    db.SaveChanges();
                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    return RedirectToAction("BanAccount", "Admin");
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult ManageComment()
        {
            
            if (Session["AccId"] != null && Session["IsAdmin"].Equals(true))
            {
                List<CommentTemp> commentTemps = new List<CommentTemp>();
                using (var db = new MSEntities())
                {
                    var comments = db.Comments.Where(c=>c.CommentId!=null).ToList();
                    foreach (var comment in comments)
                    {

                        var commentTemp = new CommentTemp
                            {
                                Comment = comment,
                                Account = db.Accounts.FirstOrDefault(j => j.AccountId == comment.CustomerId),
                                Job = db.JobRequests.FirstOrDefault(j => j.JobRequestId == comment.JobRequestId),
                            };
                        commentTemps.Add(commentTemp);
                    }
                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    //var jobList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    return View(commentTemps);
                }
            }
            return RedirectToAction("Login", "Home");
        }

        [HttpGet]
        public ActionResult DeleteComment(int commentId)
        {
            if (Session["AccId"] != null)
            {
                var db = new MSEntities();

                using (db)
                {

                    var comment = db.Comments.SingleOrDefault(j => j.CommentId == commentId);
                    db.Comments.Remove(comment);
                    db.SaveChanges();
                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    return RedirectToAction("ManageComment", "Admin");
                }
            }
            return RedirectToAction("Login", "Home");
        }
    }
}
