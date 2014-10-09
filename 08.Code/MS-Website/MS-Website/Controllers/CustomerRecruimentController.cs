using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;
using MS_Website.Controllers;
using MS_Website.Business;

namespace MS_Website.Controllers
{
    public class CustomerRecruimentController : Controller
    {
        MSEntities db = new MSEntities();
        SkillBusiness buss = new SkillBusiness();

        //
        // GET: /CustomerRecruiment/

        public ActionResult Index()
        {
            List<Recruitment> recruiments = db.Recruitments.ToList();
            return View(recruiments);
        }


        //
        // GET: /CustomerRecruiment/Create 

        public ActionResult Create()
        {
            return View();
        }

        //
        // GET: /CustomerRecruiment/Details

        public ActionResult Details(int id = 0)
        {
            Recruitment recruiment = db.Recruitments.Find(id);

          

            if (recruiment == null)
            {
                return HttpNotFound();
            }

            var skillList = buss.SkillInstanceGenerate(recruiment);
            ViewBag.SkillList = skillList;
            return View(recruiment);
        }

        //
        // GET: /CustomerRecruiment/Post

        public ActionResult Post()
        {
            return View();
        }

        public ActionResult Details2()
        {
            JobRequest jr = db.JobRequests.Find(1);
            return View(jr);
        }

    }
}
