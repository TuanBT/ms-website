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
        public ActionResult Statistic()
        {
            if (Session["AccId"] != null)
            {
                if (Session["Role"].Equals("Customer"))
                {
                    return RedirectToAction("StatisticRequestCustomer", "Statistic");
                }
                if (Session["Role"].Equals("Staff") || Session["Role"].Equals("MaidMediator"))
                {
                    return RedirectToAction("StatisticRequestMaid", "Statistic");
                }
                if (Session["Role"].Equals("Admin"))
                {
                    return RedirectToAction("StatisticRequest", "Statistic", new { year = DateTime.Now.Year });
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult StatisticRequestCustomer()
        {
            using (var db = new MSEntities())
            {
                var accId = (int) Session["AccId"];
                if (db.Customers.Count(c => c.AccountId == accId) > 0)
                {
                    int numWating = db.Recruitments.Count(r => (r.CustomerId == accId && r.Status == "Waiting"));
                    int numApplied = db.Recruitments.Count(r => (r.CustomerId == accId && r.Status == "Applied"));
                    int isActive = db.Recruitments.Count(r => (r.CustomerId == accId && r.IsActive == false));
                    int numExpired = db.Recruitments.Count(r => (r.CustomerId == accId && r.Status == "Expired"));
                    int numHide = db.JobRequests.Count(r => (r.MaidMediatorId == accId && r.Status == "Hide"));
                    ViewBag.CusStatusStatistic = new int[] {numWating, numExpired, isActive, numApplied, numHide};
                }
                else
                {
                    ViewBag.CusStatusStatistic = new int[] { 0, 0, 0, 0, 0 };
                }
            }
            return View();
        }

        public ActionResult StatisticRequestMaid()
        {
            using (var db = new MSEntities())
            {
                var accId = (int)Session["AccId"];
                if (db.MaidMediators.Count(m => m.AccountId == accId) > 0)
                {
                    int numWating = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Waiting"));
                    int numApplied = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Applied"));
                    int numApproved = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Approved"));
                    int numExpired = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Expired"));
                    int numHide = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Hide"));
                    ViewBag.MaidStatusStatistic = new int[] {numWating, numExpired, numApproved, numApplied, numHide};
                }
                else if (db.Staffs.Count(s => s.AccountId == accId) > 0)
                {
                    int numWating = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Waiting"));
                    int numApplied = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Applied"));
                    int numApproved = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Approved"));
                    int numExpired = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Expired"));
                    int numHide = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Hide"));
                    ViewBag.MaidStatusStatistic = new int[] { numWating, numExpired, numApproved, numApplied, numHide };
                }else
                {
                    ViewBag.MaidStatusStatistic = new int[] { 0, 0, 0, 0, 0 };
                }
            }
            return View();
        }

        public ActionResult StatisticRequest(int year)
        {
            if (Session["AccId"] != null)
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
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult StatisticIncome(int year)
        {
            if (Session["AccId"] != null)
            {
                if (Session["Role"].Equals("Staff") || Session["Role"].Equals("Admin"))
                {
                    var jobList = new List<JobRequest>();
                    var recruitList = new List<Recruitment>();
                    var rcPrice = (int)Session["PriceRC"];
                    var jrPrice = (int)Session["PriceJR"];
                    if (year == 0)
                    {
                        year = DateTime.Now.Year;
                    }
                    using (var db = new MSEntities())
                    {
                        var totalIncome1 = 0;
                        var totalIncome2 = 0;
                        var totalIncome3 = 0;
                        var totalIncome4 = 0;
                        var totalIncome5 = 0;
                        var totalIncome6 = 0;
                        var totalIncome7 = 0;
                        var totalIncome8 = 0;
                        var totalIncome9 = 0;
                        var totalIncome10 = 0;
                        var totalIncome11 = 0;
                        var totalIncome12 = 0;
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 1 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 1 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome1 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome1 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 2 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 2 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome2 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome2 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 3 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 3 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome3 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome3 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 4 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 4 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome4 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome4 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 5 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 5 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome5 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome5 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 6 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 6 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome6 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome6 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 7 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 7 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome7 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome7 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 8 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 8 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome8 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome8 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(jr => jr.IsActive && jr.PostTime.Month == 9 && jr.PostTime.Year == year)
                                .
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 9 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome9 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome9 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 10 && jr.PostTime.Year == year).
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 10 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome10 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome10 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 11 && jr.PostTime.Year == year).
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 11 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome11 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome11 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        jobList =
                            db.JobRequests.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 12 && jr.PostTime.Year == year).
                                ToList();
                        recruitList =
                            db.Recruitments.Where(
                                jr => jr.IsActive && jr.PostTime.Month == 12 && jr.PostTime.Year == year).
                                ToList();
                        foreach (var jobRequest in jobList)
                        {
                            totalIncome12 += jrPrice * (int)(jobRequest.ExpiredTime - jobRequest.PostTime).TotalDays / 7;
                        }
                        foreach (var recruitment in recruitList)
                        {
                            totalIncome12 += rcPrice * (int)(recruitment.ExpiredTime - recruitment.PostTime).TotalDays / 7;
                        }
                        var totalString = totalIncome1 + ";" + totalIncome2 + ";" + totalIncome3 + ";" + totalIncome4 +
                                          ";"
                                          + totalIncome5 + ";" + totalIncome6 + ";" + totalIncome7 + ";" + totalIncome8 +
                                          ";"
                                          + totalIncome9 + ";" + totalIncome10 + ";" + totalIncome11 + ";" +
                                          totalIncome12;
                        ViewBag.Year = year;
                        ViewBag.Total = totalString;
                        return View("StatisticIncome");
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }
    }
}
