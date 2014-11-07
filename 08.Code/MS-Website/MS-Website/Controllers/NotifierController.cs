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
                /*//if accId of staff
                if(db.Staffs.Any(s => s.AccountId==notifier.AccId))
                {
                    if (notifier.Content == "Kiểm tra lại thanh toán")
                    {
                        var notifiers =
                            db.Notifiers.Where(n => n.Content == "Kiểm tra lại thanh toán" && n.Link == notifier.Link).
                                ToList();
                        foreach (var notifier1 in notifiers)
                        {
                            notifier1.View = true;
                            db.SaveChanges();
                        }
                    }
                }*/
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }


    }
}
