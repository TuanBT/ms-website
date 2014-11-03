using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class NotifierController : Controller
    {
        //
        // GET: /Notifier/

        public ActionResult Notifier()
        {
            if (Session["AccId"] != null)
            {
                var accId = (int) Session["AccId"];
                using (var db = new MSEntities())
                {
                    var notifier = db.Notifiers.Where(n => n.View==false && n.AccId == accId).ToList();
                    Session["NumberNotifier"] = notifier.Count;
                    return View(notifier);
                }
            }
            return RedirectToAction("Login","Home");
        }

        [HttpPost]
        public JsonResult HideNotifier(string notiId)
        {
            var nId = Convert.ToInt32(notiId);
            using (var db = new MSEntities())
            {
                var notifier = db.Notifiers.FirstOrDefault(n => n.Id == nId);
                notifier.View = true;
                db.SaveChanges();
                if (Session["AccId"] != null)
                {
                    var accId = (int) Session["AccId"];
                    var notifiers = db.Notifiers.Where(n => n.View == false && n.AccId == accId).ToList();
                    Session["NumberNotifier"] = notifiers.Count;
                }
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }

    }
}
