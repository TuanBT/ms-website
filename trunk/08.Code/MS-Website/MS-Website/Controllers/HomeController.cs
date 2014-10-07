﻿using System;
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
            var acc = ms.Accounts.Select(a => a).ToArray();
            ViewBag.me = acc[0].FullName;
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
                    else
                    {
                        ViewBag.Error = ;
                    }
                   
                }
            }
            return View(acc);
        }
    }
}
