using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using MS_Website.Models;
using PagedList;
using PagedList.Mvc;
using System.IO;

namespace MS_Website.Controllers
{
    public class AdminCustomerController : Controller
    {
        MSEntities db = new MSEntities();

        //
        // GET: /AdminCustomer/

        public ActionResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParam = String.IsNullOrEmpty(sortOrder) ? "Name_desc" : "";
            ViewBag.DateSortParam = sortOrder == "Date" ? "Date_desc" : "Date";
            var customers = db.Accounts.Where(a => a.Role.Equals("Customer"));

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }
            ViewBag.CurrentFilter = searchString;

            if (!String.IsNullOrEmpty(searchString))
            {
                customers = customers.Where(c => c.FullName.ToLower().Contains(searchString.ToLower()) ||
                    c.Username.ToLower().Contains(searchString.ToLower()));
            }
            switch (sortOrder)
            {
                case "Name_desc":
                    customers = customers.OrderByDescending(c => c.Username);
                    break;
                case "Date":
                    customers = customers.OrderBy(c => c.JoinDate);
                    break;
                case "Date_desc":
                    customers = customers.OrderByDescending(c => c.JoinDate);
                    break;
                default:
                    customers = customers.OrderBy(c => c.Username);
                    break;
            }

            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(customers.ToPagedList(pageNumber, pageSize));
        }

        //
        // GET: /AdminCustomer/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /AdminCustomer/Create

        [HttpPost]
        public ActionResult Create(Account account)
        {
            if (ModelState.IsValid)
            {
                account.IsActive = false;
                account.JoinDate = DateTime.Now;
                account.Role = "Customer";
                account.IsWebmaster = true;
                db.Accounts.Add(account);
                db.SaveChanges();
                Customer customer = new Customer();
                customer.AccountId = account.AccountId;
                customer.Payment = 0;
                db.Customers.Add(customer);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(account);
        }

        //
        // GET: /AdminCustomer/Edit

        public ActionResult Edit(int id)
        {
            var account = db.Accounts.Find(id);
            return View(account);
        }

        //
        // POST: /AdminCustomer/Edit

        [HttpPost]
        public ActionResult Edit(Account account, HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.Combine(Server.MapPath("~/Content/Image/Profile"), fileName);
                    file.SaveAs(path);
                    account.Avatar = "~/Content/Image/Profile/" + fileName.ToString();
                }
                catch (NullReferenceException ex)
                {

                }
                finally
                {
                    db.Entry(account).State = EntityState.Modified;
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            return View(account);
        }

        //
        // POST: /AdminCustomer/Activate

        public ActionResult Activate(int id)
        {
            var account = db.Accounts.Find(id);
            account.IsActive = true;
            db.Entry(account).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        //
        // POST: /AdminCustomer/Deactivate

        public ActionResult Deactivate(int id)
        {
            var account = db.Accounts.Find(id);
            account.IsActive = false;
            db.Entry(account).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
