using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class BasicController : Controller
    {
       public MSEntities _db = new MSEntities();

        //
        // GET: /Basic/

        public ActionResult Index()
        {
            return View();
        }

    }
}
