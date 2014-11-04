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

        public ActionResult StatisticRequest(int year)
        {
            if (Session["Role"].Equals("Staff") || Session["Role"].Equals("Admin"))
            {
                if (year == 0)
                {
                    year = DateTime.Now.Year;
                }
                if (Session["AccId"] != null)
                {
                    using (var db = new MSEntities())
                    {
                        var t1 = new DateTime(year, 1, 1);
                        var t2 = new DateTime(year, 2, 1);
                        var t3 = new DateTime(year, 3, 1);
                        var t4 = new DateTime(year, 4, 1);
                        var t5 = new DateTime(year, 5, 1);
                        var t6 = new DateTime(year, 6, 1);
                        var t7 = new DateTime(year, 7, 1);
                        var t8 = new DateTime(year, 8, 1);
                        var t9 = new DateTime(year, 9, 1);
                        var t10 = new DateTime(year, 10, 1);
                        var t11 = new DateTime(year, 11, 1);
                        var t12 = new DateTime(year, 12, 1);
                        var t13 = new DateTime(year + 1, 1, 1);

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
                                             jr.Count(j => j.PostTime >= t12 && j.PostTime < t13) + "";

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
                                             rc.Count(j => j.PostTime >= t12 && j.PostTime < t13) + "";

                        ViewBag.StaTisticJR = statisticJr;
                        ViewBag.StatisticRc = statisticRc;
                        ViewBag.Year = year;
                        return View();
                    }
                }
            }
            return RedirectToAction("Login", "Home");  
        }

        public ActionResult StatisticIncome(int year)
        {
            if (Session["Role"].Equals("Staff") || Session["Role"].Equals("Admin"))
            {
                if (year == 0)
                {
                    year = DateTime.Now.Year;
                }
                using (var db = new MSEntities())
                {
                    var jobIncome_1 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 1 && jr.PostTime.Year == year)*25;
                    var recruitIncome_1 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 1 && r.PostTime.Year == year)*25;
                    var totalIncome_1 = jobIncome_1 + recruitIncome_1;
                    var jobIncome_2 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 2 && jr.PostTime.Year == year)*25;
                    var recruitIncome_2 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 2 && r.PostTime.Year == year)*25;
                    var totalIncome_2 = jobIncome_2 + recruitIncome_2;
                    var jobIncome_3 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 3 && jr.PostTime.Year == year)*25;
                    var recruitIncome_3 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 3 && r.PostTime.Year == year)*25;
                    var totalIncome_3 = jobIncome_3 + recruitIncome_3;
                    var jobIncome_4 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 4 && jr.PostTime.Year == year)*25;
                    var recruitIncome_4 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 4 && r.PostTime.Year == year)*25;
                    var totalIncome_4 = jobIncome_4 + recruitIncome_4;
                    var jobIncome_5 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 5 && jr.PostTime.Year == year)*25;
                    var recruitIncome_5 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 5 && r.PostTime.Year == year)*25;
                    var totalIncome_5 = jobIncome_5 + recruitIncome_5;
                    var jobIncome_6 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 6 && jr.PostTime.Year == year)*25;
                    var recruitIncome_6 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 6 && r.PostTime.Year == year)*25;
                    var totalIncome_6 = jobIncome_6 + recruitIncome_6;
                    var jobIncome_7 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 7 && jr.PostTime.Year == year)*25;
                    var recruitIncome_7 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 7 && r.PostTime.Year == year)*25;
                    var totalIncome_7 = jobIncome_7 + recruitIncome_7;
                    var jobIncome_8 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 8 && jr.PostTime.Year == year)*25;
                    var recruitIncome_8 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 8 && r.PostTime.Year == year)*25;
                    var totalIncome_8 = jobIncome_8 + recruitIncome_8;
                    var jobIncome_9 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 9 && jr.PostTime.Year == year)*25;
                    var recruitIncome_9 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 9 && r.PostTime.Year == year)*25;
                    var totalIncome_9 = jobIncome_9 + recruitIncome_9;
                    var jobIncome_10 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 10 && jr.PostTime.Year == year)*
                        25;
                    var recruitIncome_10 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 10 && r.PostTime.Year == year)*25;
                    var totalIncome_10 = jobIncome_10 + recruitIncome_10;
                    var jobIncome_11 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 11 && jr.PostTime.Year == year)*
                        25;
                    var recruitIncome_11 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 11 && r.PostTime.Year == year)*25;
                    var totalIncome_11 = jobIncome_11 + recruitIncome_11;
                    var jobIncome_12 =
                        db.JobRequests.Count(jr => jr.IsActive && jr.PostTime.Month == 12 && jr.PostTime.Year == year)*
                        25;
                    var recruitIncome_12 =
                        db.Recruitments.Count(r => r.IsActive && r.PostTime.Month == 12 && r.PostTime.Year == year)*25;
                    var totalIncome_12 = jobIncome_12 + recruitIncome_12;
                    var totalString = totalIncome_1 + ";" + totalIncome_2 + ";" + totalIncome_3 + ";" + totalIncome_4 +
                                      ";"
                                      + totalIncome_5 + ";" + totalIncome_6 + ";" + totalIncome_7 + ";" + totalIncome_8 +
                                      ";"
                                      + totalIncome_9 + ";" + totalIncome_10 + ";" + totalIncome_11 + ";" +
                                      totalIncome_12;
                    ViewBag.Year = year;
                    ViewBag.Total = totalString;
                    return View("StatisticIncome");
                }
            }
            return RedirectToAction("Login", "Home");
        }
    }
}
