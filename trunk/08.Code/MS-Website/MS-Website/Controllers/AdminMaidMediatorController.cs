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
    public class AdminMaidMediatorController : Controller
    {
        private MSEntities db = new MSEntities();

        //
        // GET: /AdminMaidMediator/

        public ActionResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParam = String.IsNullOrEmpty(sortOrder) ? "Name_desc" : "";
            ViewBag.DateSortParam = sortOrder == "Date" ? "Date_desc" : "Date";
            var maidMediators = db.Accounts.Where(a => a.Role.Equals("MaidMediator"));

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
                maidMediators = maidMediators.Where(c => c.FullName.ToLower().Contains(searchString.ToLower()) ||
                    c.Username.ToLower().Contains(searchString.ToLower()));
            }
            switch (sortOrder)
            {
                case "Name_desc":
                    maidMediators = maidMediators.OrderByDescending(c => c.Username);
                    break;
                case "Date":
                    maidMediators = maidMediators.OrderBy(c => c.JoinDate);
                    break;
                case "Date_desc":
                    maidMediators = maidMediators.OrderByDescending(c => c.JoinDate);
                    break;
                default:
                    maidMediators = maidMediators.OrderBy(c => c.Username);
                    break;
            }

            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(maidMediators.ToPagedList(pageNumber, pageSize));
        }

        //
        // GET: /AdminMaidMediator/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /AdminMaidMediator/Create

        [HttpPost]
        public ActionResult Create(Account account)
        {
            if (ModelState.IsValid)
            {
                account.IsActive = false;
                account.JoinDate = DateTime.Now;
                account.Role = "MaidMediator";
                account.IsWebmaster = true;
                db.Accounts.Add(account);
                db.SaveChanges();
                MaidMediator maidMediator = new MaidMediator();
                maidMediator.AccountId = account.AccountId;
                maidMediator.Payment = 0;
                db.MaidMediators.Add(maidMediator);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(account);
        }

        //
        // GET: /AdminMaidMediator/Edit

        public ActionResult Edit(int id)
        {
            var account = db.Accounts.Find(id);
            return View(account);
        }

        //
        // POST: /AdminMaidMediator/Edit

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
        // POST: /AdminMaidMediator/Activate

        public ActionResult Activate(int id)
        {
            var account = db.Accounts.Find(id);
            account.IsActive = true;
            db.Entry(account).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        //
        // POST: /AdminMaidMediator/Deactivate

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