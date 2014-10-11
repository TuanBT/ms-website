using System;
using System.Linq;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class StaffController : Controller
    {
        //
        // GET: /Staff/

        public ActionResult Index()
        {
            using (var db = new MSEntities())
            {
                var accId = (int)Session["AccId"];
                var role = ((string)Session["Role"]).Trim();
                var account = db.Accounts.SingleOrDefault(a => a.AccountId == accId);
                if (role.Equals("MaidMediator"))
                {
                    ViewBag.MaidList = db.Maids.Where(m => m.MaidMediator.Account.AccountId == accId).ToList();
                }
                else if (role.Equals("Staff"))
                {
                    ViewBag.MaidList = db.Maids.Where(m => m.Staff.Account.AccountId == accId).ToList();
                }
                return View("Staff", account);
            }
        }

        public ActionResult AddMaid(String fullname, String desc, String address, String phone)
        {
            using (var db = new MSEntities())
            {
                var accId = (int)Session["AccId"];
                var maid = new Maid { MaidName = fullname, StaffId = accId, Gender = "Nam" };
                db.Maids.Add(maid);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
        }

        public ActionResult ManageMaidProfile(int maidId)
        {
            using (var db = new MSEntities())
            {
                var maid = db.Maids.FirstOrDefault(m => m.MaidId == maidId);
                if (maid != null)
                {
                    var notApplJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Waiting")).ToList();
                    var applJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Applied")).ToList();
                    var apprJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Approved")).ToList();
                    var expiredJobList = db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.Status.Equals("Expired")).ToList();
                    var nAList = notApplJobList.Select(job => new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, null, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, null, null, null)).ToList();
                    var applList = (from job in applJobList let applTmp = db.Applies.SingleOrDefault(a => a.JobRequestId == job.JobRequestId) where applTmp != null let recruitTmp = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == applTmp.RecruitmentId) where recruitTmp != null select new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, job.ApplyTimes, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, recruitTmp.CustomerId, recruitTmp.Customer.Account.FullName, null)).ToList();
                    var apprList = (from job in apprJobList let apprTmp = db.Applies.SingleOrDefault(a => a.JobRequestId == job.JobRequestId) where apprTmp != null let recruitTmp = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == apprTmp.RecruitmentId) where recruitTmp != null select new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, job.ApplyTimes, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, recruitTmp.CustomerId, recruitTmp.Customer.Account.FullName, null)).ToList();
                    var eList = expiredJobList.Select(job => new JobRequestTemp(job.JobRequestId, job.SkillRefId, job.MaidMediatorId, job.StaffId, job.Status, job.PostTime, job.ExpiredTime, null, job.MaidId, job.Maid.MaidName, job.Maid.PersonalImage, job.Maid.Description, job.Maid.RateAvg, null, null, null)).ToList();
                    ViewBag.NotApplList = nAList;
                    ViewBag.ApplList = applList;
                    ViewBag.ApprList = apprList;
                    ViewBag.ExpiredList = eList;
                    if (maid.StaffId != null)
                    {
                        var mUsername = maid.Staff.Account.Username;
                        var isActive = maid.Staff.Account.IsActive;
                        var joinDate = maid.Staff.Account.JoinDate;
                        var role = maid.Staff.Account.Role;
                        var avatar = maid.Staff.Account.Avatar;
                        var email = maid.Staff.Account.Email;
                        var phone = maid.Staff.Account.Phone;
                        var fullname = maid.Staff.Account.FullName;
                        var mm = new MaidManager(mUsername, isActive, joinDate, role, avatar, email, phone,
                                                         fullname);
                        ViewBag.MaidManager = mm;
                    }
                    else
                    {
                        var mUsername = maid.MaidMediator.Account.Username;
                        var isActive = maid.MaidMediator.Account.IsActive;
                        var joinDate = maid.MaidMediator.Account.JoinDate;
                        var role = maid.MaidMediator.Account.Role;
                        var avatar = maid.MaidMediator.Account.Avatar;
                        var email = maid.MaidMediator.Account.Email;
                        var phone = maid.MaidMediator.Account.Phone;
                        var fullname = maid.MaidMediator.Account.FullName;
                        var mm = new MaidManager(mUsername, isActive, joinDate, role, avatar, email, phone,
                                                         fullname);
                        ViewBag.MaidManager = mm;
                    }
                }
                return View("MaidProfile", maid);
            }
        }

        public ActionResult RemoveJob(int jobId)
        {
            using (var db = new MSEntities())
            {
                var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                if (jobRequest != null)
                {
                    db.JobRequests.Remove(jobRequest);
                    var skillRefTmp = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == jobRequest.SkillRefId);
                    db.SkillReferences.Remove(skillRefTmp);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("Index");
        }
    }
}
