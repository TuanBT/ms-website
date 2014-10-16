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

        public ActionResult Index(int id = 0)
        {
            List<Comment> comments = db.Comments.Where(c => c.JobRequestId == id).ToList();
            return PartialView("_Index", comments);
        }

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

        public ActionResult Rate(int jobReqId)
        {
            var rating = db.Ratings.FirstOrDefault(r => r.JobRequestId == 1);

            if (rating != null)
            {
                @ViewBag.AverageRate = rating.Rate / 2;
            }
            else
            {
                @ViewBag.AverageRate = "";
            }
            
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
           
            Rating custRating = db.Ratings.FirstOrDefault(r => (r.JobRequestId == 1) && (r.CustomerId == 11));
            if (custRating != null)
            {
                custRating.Rate = rating.Rate * 2;
                db.SaveChanges();
            }
            else
            {
                rating.Rate = rating.Rate * 2;
                db.Ratings.Add(rating);
                db.SaveChanges();
            }

            @ViewBag.AverageRate = rating.Rate;

            double sum = 0;
            int count = 0;
            List<JobRequest> jobReqs = db.JobRequests.Where(j => j.MaidId == 1).ToList();
            foreach (var item in jobReqs)
            {
                var rat = db.Ratings.FirstOrDefault(r => r.JobRequestId == item.JobRequestId);
                if (rat != null)
                {
                    sum += rat.Rate;
                    count++;
                }
            }

            if (count != 0)
            {
                double averageRate = sum / count;
                var maid = db.Maids.Find(1);
                maid.RateAvg = Math.Round(averageRate * 2, MidpointRounding.AwayFromZero) / 2;
                db.SaveChanges();

            }
            //rate = Math.Round(rate, MidpointRounding.AwayFromZero);
            //rate = Math.Round(rate * 2, MidpointRounding.AwayFromZero) / 2;

            return PartialView("_Rate");
        }

    }
}
