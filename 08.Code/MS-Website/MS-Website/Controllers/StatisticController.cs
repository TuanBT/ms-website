using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class StatisticController : Controller
    {
        //
        // GET: /Statistic/

        public ActionResult StatisticRequest()
        {
            if (Session["AccId"] != null)
            {
                using (var db = new MSEntities())
                {
                    var t1 = new DateTime(2014, 1, 1);
                    var t2 = new DateTime(2014, 2, 1);
                    var t3 = new DateTime(2014, 3, 1);
                    var t4 = new DateTime(2014, 4, 1);
                    var t5 = new DateTime(2014, 5, 1);
                    var t6 = new DateTime(2014, 6, 1);
                    var t7 = new DateTime(2014, 7, 1);
                    var t8 = new DateTime(2014, 8, 1);
                    var t9 = new DateTime(2014, 9, 1);
                    var t10 = new DateTime(2014, 10, 1);
                    var t11 = new DateTime(2014, 11, 1);
                    var t12 = new DateTime(2014, 12, 1);

                    var jr = db.JobRequests;
                    string statisticJr = "" +
                       jr.Count(j => j.PostTime >= t1 && j.PostTime < t2) + ";" +
                              jr.Count(j => j.PostTime >= t2 && j.PostTime < t3) + ";" +
                               jr.Count(j => j.PostTime >= t3 && j.PostTime < t4) + ";" +
                               jr.Count(j => j.PostTime >= t4 && j.PostTime < t5) + ";" +
                               jr.Count(j => j.PostTime >= t5 && j.PostTime < t6) + ";" +
                               jr.Count(j => j.PostTime >= t6 && j.PostTime < t7) + ";" +
                               jr.Count(j => j.PostTime >= t7 && j.PostTime < t8) + ";" +
                               jr.Count(j => j.PostTime >= t8 && j.PostTime < t9) + ";" +
                               jr.Count(j => j.PostTime >= t9 && j.PostTime < t10) + ";" +
                               jr.Count(j => j.PostTime >= t10 && j.PostTime < t11) + ";" +
                               jr.Count(j => j.PostTime >= t11 && j.PostTime < t12) + ";" +
                               jr.Count(j => j.PostTime >= t12) + "";

                    var rc = db.Recruitments;
                    string statisticRc = "" +
                      rc.Count(j => j.PostTime >= t1 && j.PostTime < t2) + ";" +
                             rc.Count(j => j.PostTime >= t2 && j.PostTime < t3) + ";" +
                              rc.Count(j => j.PostTime >= t3 && j.PostTime < t4) + ";" +
                              rc.Count(j => j.PostTime >= t4 && j.PostTime < t5) + ";" +
                              rc.Count(j => j.PostTime >= t5 && j.PostTime < t6) + ";" +
                              rc.Count(j => j.PostTime >= t6 && j.PostTime < t7) + ";" +
                              rc.Count(j => j.PostTime >= t7 && j.PostTime < t8) + ";" +
                              rc.Count(j => j.PostTime >= t8 && j.PostTime < t9) + ";" +
                              rc.Count(j => j.PostTime >= t9 && j.PostTime < t10) + ";" +
                              rc.Count(j => j.PostTime >= t10 && j.PostTime < t11) + ";" +
                              rc.Count(j => j.PostTime >= t11 && j.PostTime < t12) + ";" +
                              rc.Count(j => j.PostTime >= t12) + "";

                    ViewBag.StaTisticJR = statisticJr;
                    ViewBag.StatisticRc = statisticRc;
                    return View();
                }
            }
            return RedirectToAction("Login", "Home");
            
        }

    }
}
