using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class EvaluateController : Controller
    {
        MSEntities db = new MSEntities();

        //
        // GET: /Evaluate/

        //public ActionResult Index(int id = 1)
        //{
        //    List<Comment> comments = db.Comments.Where(c => c.JobRequestId == 1).ToList();
        //    return PartialView("_Index", comments);
        //}

        //
        // GET: /Evaluate/Post/

        public ActionResult Post()
        {
            return PartialView("_Post");
        }

        //
        // GET: /Evaluate/Post/

        [HttpPost]
        public ActionResult Post(Comment comment)
        {
            try
            {
                comment.PostTime = DateTime.UtcNow;
                db.Comments.Add(comment);
                db.SaveChanges();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            return PartialView("_Post");
        }

        //
        // GET: /Evaluate/Rate

        public ActionResult Rate()
        {
            double rate = 0;
            int count = 0;
            List<Rating> ratings = db.Ratings.Where(r => r.JobRequestId == 1).ToList();

            foreach (var item in ratings)
            {
                rate += item.Rate;
                count++;
            }

            rate = rate / count;
            rate = Math.Round(rate, MidpointRounding.AwayFromZero);
            rate = Math.Round(rate * 2, MidpointRounding.AwayFromZero) / 2;
            @ViewBag.AverageRating = rate;
            return PartialView("_Rate");
        }

        //
        // POST: /Evaluate/Rate

        [HttpPost]
        public ActionResult Rate(Rating rating)
        {
            if (rating.Rate > 5)
            {
                rating.Rate = rating.Rate / 10;
            }
            double sum = 0;
            int count = 0;
            Rating custRating = db.Ratings.Where(r => r.JobRequestId == 1).FirstOrDefault(r => r.CustomerId == 7);
            if (custRating != null)
            {
                custRating.Rate = rating.Rate;
                db.SaveChanges();
            }
            else
            {
                db.Ratings.Add(rating);
                db.SaveChanges();
            }

            List<Rating> ratings = db.Ratings.Where(r => r.JobRequestId == 1).ToList();

            foreach (var item in ratings)
            {
                sum += item.Rate;
                count++;
            }

            double rate = sum / count;
            rate = Math.Round(rate * 2, MidpointRounding.AwayFromZero) / 2;
            @ViewBag.AverageRating = rate;

            return PartialView("_Rate");
        }

    }
}
