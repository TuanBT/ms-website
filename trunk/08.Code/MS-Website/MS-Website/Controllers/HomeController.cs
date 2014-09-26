using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MS_Website.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            MSEntities ms = new MSEntities();
            var account = ms.Accounts.Select(a => a.Username == "tuanbt");
            return View();
        }

        public JsonResult GetJsonData()
        {
            MSEntities ms = new MSEntities();
            var account = from a in ms.Accounts
                          select a;
            var abc = Json(account, JsonRequestBehavior.AllowGet);
            return abc;
        }

    }
}
