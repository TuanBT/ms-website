using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;
using Twilio;
using Account = MS_Website.Models.Account;

namespace MS_Website.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        MSEntities ms = new MSEntities();
        public ActionResult Index()
        {
            //var acc = ms.Accounts.Select(a => a).ToArray();
            //ViewBag.me = acc[0].FullName;
            return View();
        }

        public JsonResult GetJsonData()
        {
           
           /*var account = from a in ms.Accounts
                        select a;
          var abc = Json(account, JsonRequestBehavior.AllowGet);*/
            var apply = from a in ms.Applies select a;

            // Find your Account Sid and Auth Token at twilio.com/user/account
            string AccountSid = "AC439137c82934e09c6e8120d9ee085b2b";
            string AuthToken = "b145152a0db201fe0e624f0205f66734";

            var twilio = new TwilioRestClient(AccountSid, AuthToken);
            var message = twilio.SendMessage("+14172024103", "+84978754416", "Tin nhắn thử nghiệm!");
 
            if (message.RestException != null)
            {
                var error = message.RestException.Message;
                // handle the error ...
            }

            return Json(apply, JsonRequestBehavior.AllowGet); ;
        }
public ActionResult RunKmean()
        {
            using (var db = new MSEntities())
            {
                var skillRefTable = db.SkillReferences.Select(s => s);

                string strPathServer = AppDomain.CurrentDomain.BaseDirectory;
                string strMeansDataFile = strPathServer + "App_Data\\" + "meansData.txt";
                int numCluterK = skillRefTable.ToList().Count / 10;
                var kmean = new Kmean(numCluterK, strMeansDataFile);
                var kmeanDatas = new List<KmeanData>();
                foreach (var skillRef in skillRefTable)
                {
                    int gender = skillRef.Gender != null ? skillRef.Gender.Value : -1;
                    double genderVl = gender != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == gender).SkillNormallized
                                          : -1;
                    int age = skillRef.Age != null ? skillRef.Age.Value : -1;
                    double ageVl = age != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == age).SkillNormallized
                                          : -1;
                    int languageEnglish = skillRef.LanguageEnglish != null ? skillRef.LanguageEnglish.Value : -1;
                    double languageEnglishVl = languageEnglish != -1
                                         ? db.SkillInstances.FirstOrDefault(s => s.SkillId == languageEnglish).SkillNormallized
                                         : -1;
                    int languageChina = skillRef.LanguageChina != null ? skillRef.LanguageChina.Value : -1;
                    double languageChinaVl = languageChina != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == languageChina).SkillNormallized
                                          : -1;
                    int languageJapanese = skillRef.LanguageJapanese != null ? skillRef.LanguageJapanese.Value : -1;
                    double languageJapaneseVl = languageJapanese != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == languageJapanese).SkillNormallized
                                          : -1;
                    int languageKorean = skillRef.LanguageKorean != null ? skillRef.LanguageKorean.Value : -1;
                    double languageKoreanVl = languageKorean != -1
                                         ? db.SkillInstances.FirstOrDefault(s => s.SkillId == languageKorean).SkillNormallized
                                         : -1;
                    int experience = skillRef.Experience != null ? skillRef.Experience.Value : -1;
                    double experienceVl = experience != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == experience).SkillNormallized
                                          : -1;
                    int hometown = skillRef.Hometown != null ? skillRef.Hometown.Value : -1;
                    double hometownVl = hometown != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == hometown).SkillNormallized
                                          : -1;
                    int address = skillRef.Address != null ? skillRef.Address.Value : -1;
                    double addressVl = address != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == address).SkillNormallized
                                          : -1;
                    int health = skillRef.Health != null ? skillRef.Health.Value : -1;
                    double healthVl = health != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == health).SkillNormallized
                                          : -1;
                    int stay = skillRef.Stay != null ? skillRef.Stay.Value : -1;
                    double stayVl = stay != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == stay).SkillNormallized
                                          : -1;
                    int salary = skillRef.Salary != null ? skillRef.Salary.Value : -1;
                    double salaryVl = salary != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == salary).SkillNormallized
                                          : -1;
                    int work = skillRef.Work != null ? skillRef.Work.Value : -1;
                    double workVl = work != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == work).SkillNormallized
                                          : -1;
                    int sickCare = skillRef.SickCare != null ? skillRef.SickCare.Value : -1;
                    double sickCareVl = sickCare != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == sickCare).SkillNormallized
                                          : -1;
                    int oldCare = skillRef.OldCare != null ? skillRef.OldCare.Value : -1;
                    double oldCareVl = oldCare != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == oldCare).SkillNormallized
                                          : -1;
                    int babySister = skillRef.BabySister != null ? skillRef.BabySister.Value : -1;
                    double babySisterVl = babySister != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == babySister).SkillNormallized
                                          : -1;
                    int disabilityCare = skillRef.DisabilityCare != null ? skillRef.DisabilityCare.Value : -1;
                    double disabilityCareVl = disabilityCare != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == disabilityCare).SkillNormallized
                                          : -1;
                    int bonsaiCare = skillRef.BonsaiCare != null ? skillRef.BonsaiCare.Value : -1;
                    double bonsaiCareVl = bonsaiCare != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == bonsaiCare).SkillNormallized
                                          : -1;
                    int cooking = skillRef.Cooking != null ? skillRef.Cooking.Value : -1;
                    double cookingVl = cooking != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == cooking).SkillNormallized
                                          : -1;
                    int washing = skillRef.Washing != null ? skillRef.Washing.Value : -1;
                    double washingVl = washing != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == washing).SkillNormallized
                                          : -1;
                    int cleanHouse = skillRef.CleanHouse != null ? skillRef.CleanHouse.Value : -1;
                    double cleanHouseVl = cleanHouse != -1
                                          ? db.SkillInstances.FirstOrDefault(s => s.SkillId == cleanHouse).SkillNormallized
                                          : -1;

                    var kmeanData = new KmeanData
                    {
                        dataRowId = skillRef.SkillRefId,
                        dataRow = new double[] { genderVl, ageVl, languageEnglishVl, languageChinaVl, languageJapaneseVl, languageKoreanVl, 
                            experienceVl, hometownVl, addressVl, healthVl, stayVl, salaryVl, workVl, sickCareVl, oldCareVl, babySisterVl, disabilityCareVl, 
                            bonsaiCareVl, cookingVl, washingVl, cleanHouseVl },
                        group = -1
                    };
                    kmeanDatas.Add(kmeanData);
                }
                kmeanDatas = kmean.GetKmeanData(kmeanDatas);

                int i = 0;
                foreach ( SkillReference skillReference in skillRefTable)
                {
                    skillReference.Group = kmeanDatas[i].group;
                    i++;
                }
                db.SaveChanges();
            }
            return View("Index");
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(Account acc)
        {
            if (ModelState.IsValid)
            {
                using (var ms = new MSEntities())
                {
                    var b =
                        ms.Accounts.FirstOrDefault(
                            a => a.Username.Equals(acc.Username) && a.Password.Equals(acc.Password));
                    if (b != null)
                    {
                        Session["AccId"] = b.AccountId.ToString(CultureInfo.InvariantCulture);
                        Session["Fullname"] = b.FullName.ToString(CultureInfo.InvariantCulture);
                        Session["Role"] = b.Role.ToString(CultureInfo.InvariantCulture);
                        return View("Index");
                    }
                }
            }
            return View(acc);
        }

        [HttpPost]
        public ActionResult LogOut()
        {
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }
    }
}
