using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MS_Website.Models;
using Twilio;
using Account = MS_Website.Models.Account;

namespace MS_Website.Controllers
{
    public class JreRcr
    {
        public List<RecruitmentTemp> recruitmentTemps { get; set; }
        public List<JobRequestTemp> jobRequestTemps { get; set; }
    }

    public class HomeController : Controller
    {
        //
        // GET: /Home/
        private readonly MSEntities _db = new MSEntities();

        public ActionResult Index()
        {
            /*List<RecruitmentTemp> recruitmentTemps = null;
            List<JobRequestTemp> jobRequestTemps = null;
            JreRcr jreRcr;
            using (_db)
            {
                
                var recruitments = _db.Recruitments.Where(r => r.Status == "Waiting").Take(5).ToList();
                var jobRequests = _db.JobRequests.Where(j => j.Status == "Waiting").Take(5).ToList();

                foreach(var recruitment in recruitments)
                {
                    var customer = _db.Accounts.FirstOrDefault(c => c.AccountId == recruitment.CustomerId);
                    new RecruitmentTemp();
                    var recruitmentTemp = new RecruitmentTemp
                                                          {
                                                              RecruitmentId = recruitment.RecruitmentId,
                                                              CustomerId = recruitment.CustomerId,
                                                              PostTime = recruitment.PostTime,
                                                              ExpiredTime = recruitment.ExpiredTime,
                                                              SkillRefId = recruitment.SkillRefId,
                                                              Status = recruitment.Status,
                                                              CustomerName = customer!=null?customer.FullName:"NULL",
                                                              CustImg = customer != null ? customer.Avatar : "NULL",
                                                              SkillList = {"1","2"}
                                                          };
                    recruitmentTemps.Add(recruitmentTemp);
                }

                foreach (var jobRequest in jobRequests)
                {
                    var maid = _db.Maids.FirstOrDefault(m => m.MaidId == jobRequest.MaidId);
                    new JobRequestTemp();
                   var jobRequestTemp = new JobRequestTemp
                                              {
                                                  JobRequestId = jobRequest.JobRequestId,
                                                  SkillRefId = jobRequest.SkillRefId,
                                                  MaidMediatorId = jobRequest.MaidMediatorId,
                                                  StaffId = jobRequest.StaffId,
                                                  PostTime = jobRequest.PostTime,
                                                  ExpiredTime = jobRequest.ExpiredTime,
                                                  ApplyTimes = jobRequest.ApplyTimes,
                                                  MaidId = jobRequest.MaidId,
                                                  Status = jobRequest.Status,
                                                  MaidName = maid.MaidName,
                                                  MaidDesc = maid.Description,
                                                  MaidImg = maid.PersonalImage,
                                                  MaidRate = maid.RateAvg,
                                                  CustomerID = 0,
                                                  CustomerName = "",
                                                  SkillList = { "1", "2" }
                                              };
                    jobRequestTemps.Add(jobRequestTemp);
                }
                
                jreRcr = new JreRcr
                                    {
                                        jobRequestTemps = jobRequestTemps,
                                        recruitmentTemps = recruitmentTemps
                                    };
            }
            ViewBag.JreRcr = jreRcr;*/
            return View();
        }

        public ActionResult Register()
        {
            return View("Register");
        }
        public JsonResult GetJsonData()
        {

            /*var account = from a in ms.Accounts
                         select a;
           var abc = Json(account, JsonRequestBehavior.AllowGet);*/
            var apply = from a in _db.Applies select a;

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

            return Json(apply, JsonRequestBehavior.AllowGet);
            ;
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
                        Session["AccId"] = b.AccountId;
                        Session["Fullname"] = b.FullName;
                        Session["Role"] = b.Role;
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

        public ActionResult AddAccount(Account acc)
        {
            using (var _db = new MSEntities())
            {
                var newUser = _db.Accounts.Create();
                newUser.Username = acc.Username;
                newUser.Password = acc.Password;
                newUser.Avatar = acc.Avatar;
                newUser.Role = acc.Role;
                newUser.Email = acc.Email;
                newUser.Phone = acc.Phone;
                newUser.FullName = acc.FullName;
                newUser.JoinDate = DateTime.Now;
                newUser.IsActive = true;
                newUser.IsWebmaster = false;
                _db.Accounts.Add(newUser);
                _db.SaveChanges();
                if (acc.Role.Equals("Customer"))
                {
                    var addedAcc = _db.Accounts.SingleOrDefault(a => a.Username.Equals(acc.Username));
                    var newCustomer = new Customer();
                    newCustomer.AccountId = addedAcc.AccountId;
                    newCustomer.Payment = 0;
                    _db.Customers.Add(newCustomer);
                    _db.SaveChanges();
                }
                else
                {
                    var addedAcc = _db.Accounts.SingleOrDefault(a => a.Username.Equals(acc.Username));
                    var newMaid = new MaidMediator();
                    newMaid.AccountId = addedAcc.AccountId;
                    _db.MaidMediators.Add(newMaid);
                    _db.SaveChanges();
                }
                return RedirectToAction("Login", "Home", acc);
            }
        }

        public ActionResult Redirect()
        {
            if (Session["Role"] != null)
            {
                if (Session["Role"].Equals("MaidMediator"))
                {
                    return RedirectToAction("Index", "MaidMediator");
                }
                if (Session["Role"].Equals("Staff"))
                {

                }
                if (Session["Role"].Equals("Customer"))
                {

                }
            }
            return View("Login");
        }
    }
}
