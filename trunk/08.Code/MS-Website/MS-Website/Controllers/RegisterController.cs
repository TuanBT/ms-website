using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class RegisterController : Controller
    {
        //
        // GET: /Register/
        MSEntities _db=new MSEntities();
        public ActionResult Index()
        {
               
                
            return View("Index");
        }
        public ActionResult Register(Account acc)
        {
            using (_db)
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
                return RedirectToAction("Index", "Register"); 
            }
        }
    }
}
