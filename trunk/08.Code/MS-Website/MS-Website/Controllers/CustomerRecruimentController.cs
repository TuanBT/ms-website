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
            //Session["skillRef"] = TempData["skillRef"];
            return View();
        }

        //
        // POST: /CustomerRecruiment/Post
        [HttpPost]
        public ActionResult Post(Recruitment recruiment,FormCollection form)
        {
            SkillReference skillRef = (SkillReference)Session["skillRef"];
            double timeSpan = double.Parse(form["TimeSpan"]);
            try
            {
                db.SkillReferences.Add(skillRef);
                db.SaveChanges();
                recruiment.SkillRefId = skillRef.SkillRefId;
                recruiment.CustomerId = 11;
                recruiment.Status = "Waiting";
                recruiment.PostTime = DateTime.Now;
                recruiment.ExpiredTime = recruiment.PostTime.AddDays(timeSpan);
                db.Recruitments.Add(recruiment);
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return RedirectToAction("Index");
        }

        //
        // GET: /CutomerRecruiment/ChooseSkill

        public ActionResult ChooseSkill()
        {
            List<SkillInstance> skills = db.SkillInstances.ToList();
            ViewBag.Skills = skills;
            foreach (var item in skills)
            {
                if (item.SkillName.StartsWith("Language"))
                {

                }
            }
            return PartialView("_ChooseSkill");
        }

        //
        // POST: /CustomerRecruiment/ChooseSkill

        [HttpPost]
        public ActionResult ChooseSkill(SkillReference skillRef)
        {
            Session["skillRef"] = skillRef;
            return RedirectToAction("Post");
        }

        //
        // GET: /CustomerRecruiment/ChooseMaid

        public ActionResult ChooseMaid()
        {
            return PartialView("_ChooseMaid");
        }

        //
        // POST: /CustomerRecruiment/ChooseMaid

        [HttpPost]
        public ActionResult ChooseMaid(SkillInstance skillInst)
        {
            return RedirectToAction("Post");
        }

    }
}
