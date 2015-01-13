using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class MaidManagerController : Controller
    {
        //
        // GET: /MaidMediator/

        public ActionResult GetMaidManager(int accId, string role)
        {
            if (Session["AccId"] != null)
            {
                using (var db = new MSEntities())
                {
                    //var accId = (int)Session["AccId"];
                    if (db.MaidMediators.Count(m => m.AccountId == accId) > 0)
                    {
                        int numWating = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Waiting"));
                        int numApplied = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Applied"));
                        int numApproved = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Approved"));
                        int numExpired = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Expired"));
                        int numHide = db.JobRequests.Count(j => (j.MaidMediatorId == accId && j.Status == "Hide"));
                        ViewBag.MaidStatusStatistic = new int[] { numWating, numExpired, numApproved, numApplied, numHide };
                    }
                    else if (db.Staffs.Count(s => s.AccountId == accId) > 0)
                    {
                        int numWating = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Waiting"));
                        int numApplied = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Applied"));
                        int numApproved = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Approved"));
                        int numExpired = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Expired"));
                        int numHide = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Hide"));
                        ViewBag.MaidStatusStatistic = new int[] { numWating, numExpired, numApproved, numApplied, numHide };
                    }
                    else
                    {
                        ViewBag.MaidStatusStatistic = new int[] { 0, 0, 0, 0, 0 };
                    }

                    if (role.Equals("MaidMediator"))
                    {

                        var maidMediator = db.Accounts.SingleOrDefault(mm => mm.AccountId == accId);
                        ViewBag.MaidList = db.Maids.Where(m => m.MaidMediator.Account.AccountId == accId && m.NumOfReport < 4).ToList();
                        Session["MaidManager"] = maidMediator;
                        return View("MaidMediator", maidMediator);
                    }
                    if (role.Equals("Staff"))
                    {
                        int numWating = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Waiting"));
                        int numApplied = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Applied"));
                        int numApproved = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Approved"));
                        int numExpired = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Expired"));
                        int numHide = db.JobRequests.Count(j => (j.StaffId == accId && j.Status == "Hide"));
                        ViewBag.StaffStatusStatistic = new int[] { numWating, numExpired, numApproved, numApplied, numHide };
                        var staff = db.Accounts.SingleOrDefault(s => s.AccountId == accId);
                        ViewBag.MaidList = db.Maids.Where(m => m.Staff.Account.AccountId == accId && m.NumOfReport < 4).ToList();
                        Session["MaidManager"] = staff;
                        return View("Staff", staff);
                    }
            return RedirectToAction("Login", "Home");
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult MaidManagerEdit()
        {
            if (Session["AccId"] != null)
            {
                var maidManagerId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    if (Session["Role"].Equals("MaidMediator"))
                    {
                        var maidMediatorAcc = db.Accounts.SingleOrDefault(a => a.AccountId == maidManagerId);
                        if (maidMediatorAcc != null)
                        {
                            return View("MaidManagerEdit", maidMediatorAcc);
                        }
                    }
                    if (Session["Role"].Equals("Staff"))
                    {
                        var staffAcc = db.Accounts.SingleOrDefault(a => a.AccountId == maidManagerId);
                        if (staffAcc != null)
                        {
                            return View("MaidManagerEdit", staffAcc);
                        }
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult EditMaidMedProfile(string maidMedId, string fullname, string phone, string email)
        {
            if (Session["AccId"] != null)
            {
                int maidMedIds = Convert.ToInt32(maidMedId);
                var loggedId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    if (loggedId == maidMedIds)
                    {
                        var maidMedAcc = db.Accounts.SingleOrDefault(a => a.AccountId == loggedId);
                        HttpPostedFileBase avatar = Request.Files["avatar"];
                        string picExt = ".png";
                        if (avatar != null && avatar.FileName!="")
                        {
                            picExt = System.IO.Path.GetExtension(avatar.FileName);
                            string path = System.IO.Path.Combine(Server.MapPath("~/Content/Image/MaidMediator"), maidMedAcc.AccountId + picExt);
                            avatar.SaveAs(path);
                        }

                        maidMedAcc.FullName = fullname;
                        maidMedAcc.Phone = phone;
                        maidMedAcc.Email = email;
                        if (avatar != null && avatar.FileName != "")
                        {
                            maidMedAcc.Avatar = "../Content/Image/MaidMediator/" + maidMedAcc.AccountId.ToString() +
                                                picExt;
                        }
                        db.SaveChanges();
                        if (maidMedAcc.Role.Equals("MaidMediator"))
                        {
                            return RedirectToAction("GetMaidManager", new { accId = loggedId, role = "MaidMediator" });
                        }
                        if (maidMedAcc.Role.Equals("Staff"))
                        {
                            return RedirectToAction("GetMaidManager", new { accId = loggedId, role = "Staff" });
                        }
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult MaidEdit(int maidId)
        {
            if (Session["AccId"] != null)
            {
                var loggedId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == maidId);
                    if (maid != null)
                    {
                        if (maid.MaidMediatorId == loggedId || maid.StaffId == loggedId)
                        {
                            if (Session["Hometown"] == null)
                            {
                                Session["Hometown"] =
                                    db.SkillInstances.Where(si => si.SkillName.Equals("Hometown")).ToList();
                            }
                            if (Session["Address"] == null)
                            {
                                Session["Address"] =
                                    db.SkillInstances.Where(si => si.SkillName.Equals("Address")).ToList();
                            }
                            ViewBag.Hometown = Session["Hometown"];
                            ViewBag.Address = Session["Address"];
                            return View("MaidEdit", maid);
                        }
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult LoadAddMaid()
        {
            if (Session["AccId"] != null)
            {
                if (Session["Role"].Equals("Staff") || Session["Role"].Equals("MaidMediator"))
                {
                    using (var db = new MSEntities())
                    {
                        if (Session["Hometown"] == null)
                        {
                            Session["Hometown"] =
                                db.SkillInstances.Where(si => si.SkillName.Equals("Hometown")).ToList();
                        }
                        if (Session["Address"] == null)
                        {
                            Session["Address"] = db.SkillInstances.Where(si => si.SkillName.Equals("Address")).ToList();
                        }
                        ViewBag.Hometown = Session["Hometown"];
                        ViewBag.Address = Session["Address"];
                        return View("AddMaid");
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult AddMaid(string fullname, Nullable<double> exp, string phone, string birthdate, bool gender,
            string english, string jap, string chinese, string korean, string hometown, string addr, bool married,
            string desc, string avatar)
        {
            if (Session["AccId"] != null)
            {
                if (Session["Role"].Equals("MaidMediator") || Session["Role"].Equals("Staff"))
                {
                    using (var db = new MSEntities())
                    {
                        var bannedMaid = db.Maids.SingleOrDefault(m => m.Phone.Equals(phone) && m.NumOfReport > 3);
                        if (bannedMaid != null)
                        {
                            ViewBag.BannedMaid = "Người giúp việc có số điện thoại này đã bị khóa vĩnh viễn";
                            return RedirectToAction("LoadAddMaid", "MaidManager");
                        }
                        var maid = new Maid();
                        var managerId = (int)Session["AccId"];
                        if (Session["Role"].Equals("MaidMediator"))
                        {
                            maid.MaidMediatorId = managerId;
                        }
                        else
                        {
                            maid.StaffId = managerId;
                        }

                        maid.MaidName = fullname;
                        maid.Experience = exp;
                        maid.Phone = phone;
                        maid.BirthDate = DateTime.Parse(birthdate.ToString(CultureInfo.InvariantCulture));
                        maid.Gender = gender;
                        maid.English = english != null;
                        maid.Japanese = jap != null;
                        maid.Chinese = chinese != null;
                        maid.Korean = korean != null;
                        maid.Hometown = hometown;
                        maid.Address = addr;
                        maid.Married = married;
                        maid.Description = desc;
                        maid.PersonalImage = "../Content/Image/default-avatar.png";
						maid.NumOfReport = 0;
                        db.Maids.Add(maid);
                        db.SaveChanges();
                        maid = Session["Role"].Equals("MaidMediator") ? db.Maids.OrderByDescending(m => m.MaidId).FirstOrDefault(m => m.MaidMediatorId == managerId) : db.Maids.OrderByDescending(m => m.MaidId).FirstOrDefault(m => m.StaffId == managerId);
                        if (maid != null)
                        {
                            return RedirectToAction("ManageMaidProfile", new { maidId = maid.MaidId });
                        }
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult EditMaidProfile(int maidId, string fullname, double exp, string phone, string birthdate, bool gender,
            string english, string jap, string chinese, string korean, string hometown, string addr, bool married,
            string desc)
        {
            if (Session["AccId"] != null)
            {
                var loggedId = (int)Session["AccId"];
                using (var db = new MSEntities())
                {
                    var bannedMaid = db.Maids.SingleOrDefault(m => m.Phone.Equals(phone) && m.NumOfReport > 3);
                    if (bannedMaid != null)
                    {
                        ViewBag.BannedMaid = "Người giúp việc có số điện thoại này đã bị khóa vĩnh viễn";
                        return RedirectToAction("MaidEdit", "MaidManager", new { maidId });
                    }
                    var maid = db.Maids.SingleOrDefault(m => m.MaidId == maidId);
                    HttpPostedFileBase avatar = Request.Files["avatar"];
                    string picExt = ".png";
                    if (avatar != null)
                    {
                        picExt = System.IO.Path.GetExtension(avatar.FileName);
                        string path = System.IO.Path.Combine(Server.MapPath("~/Content/Image/Maid"), maid.MaidId.ToString() + picExt);
                        avatar.SaveAs(path);
                    }
                    if (maid.MaidMediatorId == loggedId || maid.StaffId == loggedId)
                    {
                        maid.MaidName = fullname;
                        maid.Experience = exp;
                        maid.Phone = phone;
                        maid.BirthDate = DateTime.Parse(birthdate.ToString(CultureInfo.InvariantCulture));
                        maid.Gender = gender;
                        maid.English = english != null;
                        maid.Japanese = jap != null;
                        maid.Chinese = chinese != null;
                        maid.Korean = korean != null;
                        maid.Hometown = hometown;
                        maid.Address = addr;
                        maid.Married = married;
                        maid.Description = desc;
                        //maid.RateAvg = 0;
                        if (avatar != null && avatar.FileName != "")
                        {
                            maid.PersonalImage = "../Content/Image/Maid/" + maid.MaidId.ToString() + picExt;
                        }
                        db.SaveChanges();
                        return RedirectToAction("ManageMaidProfile", new { maidId });
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult ManageMaidProfile(int maidId)
        {
            if (Session["AccId"] != null)
            {
                using (var db = new MSEntities())
                {
                    var maid = db.Maids.FirstOrDefault(m => m.MaidId == maidId);
                    if (maid != null)
                    {
                        var notApplJobList =
                            db.JobRequests.Where(
                                job => job.Maid.MaidId == maidId && job.Status.Equals("Waiting") && job.IsActive).ToList
                                ();
                        var applJobList =
                            db.JobRequests.Where(
                                job => job.Maid.MaidId == maidId && job.Status.Equals("Applied") && job.IsActive).ToList
                                ();
                        var apprJobList =
                            db.JobRequests.Where(
                                job => job.Maid.MaidId == maidId && job.Status.Equals("Approved") && job.IsActive).
                                ToList();
                        var expiredJobList =
                            db.JobRequests.Where(
                                job => job.Maid.MaidId == maidId && job.Status.Equals("Expired") && job.IsActive).ToList
                                ();
                        var hideJobList =
                            db.JobRequests.Where(
                                job => job.Maid.MaidId == maidId && job.Status.Equals("Hide") && job.IsActive).ToList();
                        var notActiveJobList =
                            db.JobRequests.Where(job => job.Maid.MaidId == maidId && job.IsActive == false).ToList();
                        ViewBag.NotApplList =
                            notApplJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null, null, null)).
                                ToList();
                        ViewBag.ApplList = (from jobRequest in applJobList
                                            let apply =
                                                db.Applies.SingleOrDefault(
                                                    a => a.JobRequestId == jobRequest.JobRequestId)
                                            let recruit =
                                                db.Recruitments.SingleOrDefault(
                                                    r => r.RecruitmentId == apply.RecruitmentId)
                                            select new JobRequestTemp(jobRequest, maid, null, recruit, apply, null)).ToList();
                        ViewBag.ApprList = (from jobRequest in apprJobList
                                            let apply =
                                                db.Applies.SingleOrDefault(
                                                    a => a.JobRequestId == jobRequest.JobRequestId)
                                            let recruit =
                                                db.Recruitments.SingleOrDefault(
                                                    r => r.RecruitmentId == apply.RecruitmentId)
                                            select new JobRequestTemp(jobRequest, maid, null, recruit, apply, null)).ToList();
                        ViewBag.ExpiredList =
                            expiredJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null, null, null)).
                                ToList();
                        ViewBag.HideList =
                            hideJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null, null, null)).
                                ToList();
                        ViewBag.NotActiveList =
                            notActiveJobList.Select(jobRequest => new JobRequestTemp(jobRequest, maid, null, null, null, null))
                                .ToList();
                        if (Session["AccId"] != null)
                        {
                            if (maid.MaidMediatorId != null)
                            {
                                if (maid.MaidMediatorId == (int) Session["AccId"])
                                {
                                    ViewBag.Manage = "true";
                                }
                            }
                            else
                            {
                                if (maid.StaffId == (int) Session["AccId"])
                                {
                                    ViewBag.Manage = "true";
                                }
                            }
                        }
                        if (maid.MaidMediatorId != null)
                        {
                            var accId = maid.MaidMediatorId;
                            var mUsername = maid.MaidMediator.Account.Username;
                            var isActive = maid.MaidMediator.Account.IsActive;
                            var joinDate = maid.MaidMediator.Account.JoinDate;
                            var role = maid.MaidMediator.Account.Role;
                            var avatar = maid.MaidMediator.Account.Avatar;
                            var email = maid.MaidMediator.Account.Email;
                            var phone = maid.MaidMediator.Account.Phone;
                            var fullname = maid.MaidMediator.Account.FullName;
                            var mm = new MaidManager(accId, mUsername, isActive, joinDate, role, avatar, email, phone,
                                                     fullname);
                            ViewBag.MaidManager = mm;
                        }
                        else
                        {
                            var accId = maid.StaffId;
                            var mUsername = maid.Staff.Account.Username;
                            var isActive = maid.Staff.Account.IsActive;
                            var joinDate = maid.Staff.Account.JoinDate;
                            var role = maid.Staff.Account.Role;
                            var avatar = maid.Staff.Account.Avatar;
                            var email = maid.Staff.Account.Email;
                            var phone = maid.Staff.Account.Phone;
                            var fullname = maid.Staff.Account.FullName;
                            var mm = new MaidManager(accId, mUsername, isActive, joinDate, role, avatar, email, phone,
                                                     fullname);
                            ViewBag.MaidManager = mm;
                        }
                    }
                    return View("MaidProfile", maid);
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult HideJobRequest(int jobId)
        {
            if (Session["AccId"] != null)
            {
                using (var db = new MSEntities())
                {
                    var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                    if (job != null)
                    {
                        if (!job.IsActive)
						{
							TempData["Alert"] = "Công việc không tồn tại";
						}
						else
						{
							if (job.Status.Equals("Expired"))
							{
								TempData["Alert"] = "Công việc đã hết hạn";
							}
							else if (job.Status.Equals("Applied") || job.Status.Equals("Approved"))
							{
								TempData["Alert"] = "Công việc đã được thuê";
							}
							else if (job.Status.Equals("Waiting"))
							{
								job.Status = "Hide";
                                var register = db.Registers.SingleOrDefault(r => r.JobRequestId == job.JobRequestId);
                                if (register != null)
                                {
                                    var recruit =
                                        db.Recruitments.SingleOrDefault(r => r.RecruitmentId == register.RecruitmentId);
                                    recruit.NumOfReg -= 1;
                                    db.Registers.Remove(register);
                                    job.IsRegistered = false;
                                }
								db.SaveChanges();
							}
						}
                    }
                    return RedirectToAction("GetJobRequest", "Post", new {jobId});
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult PublicJobRequest(int jobId)
        {
            if (Session["AccId"] != null)
            {
                using (var db = new MSEntities())
                {
                    var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                    if (job != null)
                    {
						if (!job.IsActive)
						{
							TempData["Alert"] = "Công việc không tồn tại";
						}
						else
						{
							if (job.Status.Equals("Expired"))
							{
								TempData["Alert"] = "Công việc đã hết hạn";
							}
							else if (job.Status.Equals("Applied") || job.Status.Equals("Approved"))
							{
								TempData["Alert"] = "Công việc đã được thuê";
							}
							else if (job.Status.Equals("Hide"))
							{
								job.Status = "Waiting";
								db.SaveChanges();
							}
						}
                    }
                    return RedirectToAction("GetJobRequest", "Post", new {jobId});
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult PostRequest()
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            if (!Session["Role"].Equals("MaidMediator") && !Session["Role"].Equals("Staff"))
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                LoadItems(db);
            }
            return View("PostRequest");
        }

        public ActionResult AddRequest(string title, string stay, string salary, string work, string SickCare,
            string OldCare, string BabySister, string DisabilityCare, string BonsaiCare, string Cooking,
            string Washing, string CleanHouse, int maidId, string time)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                var skillRef = new SkillReference();
                skillRef.Type = 2;
                var maid = db.Maids.SingleOrDefault(m => m.MaidId == maidId);
                if ((bool)maid.Gender)
                {
                    skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("Nam") && si.SkillName.Equals("Gender")).SkillId;
                }
                else
                {
                    skillRef.Gender = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("Nữ") && si.SkillName.Equals("Gender")).SkillId;
                }
                if (maid.BirthDate != null)
                {
                    var skillRefAge = DateTime.Now.Year - DateTime.Parse(maid.BirthDate.ToString()).Year;
                    if (skillRefAge >= 15 && skillRefAge <= 20)
                    {
                        skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("15-20") && si.SkillName.Equals("Age")).SkillId;
                    }
                    else if (skillRefAge > 20 && skillRefAge <= 30)
                    {
                        skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("21-30") && si.SkillName.Equals("Age")).SkillId;
                    }
                    else if (skillRefAge > 30 && skillRefAge <= 40)
                    {
                        skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("31-40") && si.SkillName.Equals("Age")).SkillId;
                    }
                    else if (skillRefAge > 40 && skillRefAge <= 50)
                    {
                        skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("41-50") && si.SkillName.Equals("Age")).SkillId;
                    }
                    else if (skillRefAge > 50 && skillRefAge <= 60)
                    {
                        skillRef.Age = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("51-60") && si.SkillName.Equals("Age")).SkillId;
                    }
                }
                if ((bool)maid.English)
                {
                    skillRef.LanguageEnglish = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageEnglish")).SkillId;
                }
                if ((bool)maid.Chinese)
                {
                    skillRef.LanguageChinese = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageChinese")).SkillId;
                }
                if ((bool)maid.Japanese)
                {
                    skillRef.LanguageJapanese = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageJapanese")).SkillId;
                }
                if ((bool)maid.Korean)
                {
                    skillRef.LanguageKorean = db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("LanguageKorean")).SkillId;
                }
                if (maid.Experience < 1)
                {
                    skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("<1 năm") && si.SkillName.Equals("Experience")).SkillId;
                }
                else if (maid.Experience >= 1 && maid.Experience <= 3)
                {
                    skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals("1-3 năm") && si.SkillName.Equals("Experience")).SkillId;
                }
                else if (maid.Experience > 3)
                {
                    skillRef.Experience = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(">3 năm") && si.SkillName.Equals("Experience")).SkillId;
                }
                if (maid.Hometown != null)
                {
                    skillRef.Hometown = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(maid.Hometown) && si.SkillName.Equals("Hometown")).SkillId;
                }
                if (maid.Address != null)
                {
                    skillRef.Address = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(maid.Address) && si.SkillName.Equals("Address")).SkillId;
                }
                if (!stay.Equals("null"))
                {
                    skillRef.Stay = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(stay) && si.SkillName.Equals("Stay")).SkillId;
                }
                if (!salary.Equals("null"))
                {
                    skillRef.Salary = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(salary) && si.SkillName.Equals("Salary")).SkillId;
                }
                if (!work.Equals("null"))
                {
                    skillRef.Work = db.SkillInstances.SingleOrDefault(si => si.SkillString.Equals(work) && si.SkillName.Equals("Work")).SkillId;
                }
                if (SickCare != null)
                {
                    skillRef.SickCare =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(SickCare)).SkillId;
                }
                if (OldCare != null)
                {
                    skillRef.OldCare =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(OldCare)).SkillId;
                }
                if (BabySister != null)
                {
                    skillRef.BabySister =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BabySister)).SkillId;
                }
                if (DisabilityCare != null)
                {
                    skillRef.DisabilityCare =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(DisabilityCare)).SkillId;
                }
                if (BonsaiCare != null)
                {
                    skillRef.BonsaiCare =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BonsaiCare)).SkillId;
                }
                if (Cooking != null)
                {
                    skillRef.Cooking =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Cooking)).SkillId;
                }
                if (Washing != null)
                {
                    skillRef.Washing =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Washing)).SkillId;
                }
                if (CleanHouse != null)
                {
                    skillRef.CleanHouse =
                        db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(CleanHouse)).SkillId;
                }
                skillRef.Group = PostController.GetGroup(skillRef);
                skillRef.Distance = PostController.GetDistance(skillRef);
                db.SkillReferences.Add(skillRef);
                db.SaveChanges();
                skillRef = db.SkillReferences.SingleOrDefault(sr => sr.Type == 2);
                var jobRequest = new JobRequest();
                jobRequest.SkillRefId = skillRef.SkillRefId;
                if (Session["Role"].Equals("MaidMediator"))
                {
                    jobRequest.MaidMediatorId = (int)Session["AccId"];
                }
                else if (Session["Role"].Equals("Staff"))
                {
                    jobRequest.StaffId = (int)Session["AccId"];
                }
                jobRequest.Status = "Waiting";
                jobRequest.PostTime = DateTime.Now;
                jobRequest.ExpiredTime = DateTime.Now.AddDays(1 + 7 * int.Parse(time));
                int price = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["PriceJR"]);
                jobRequest.Price = price * int.Parse(time);
                jobRequest.MaidId = maidId;
                jobRequest.Title = title;
                jobRequest.IsActive = false;
                jobRequest.IsRegistered = false;
				jobRequest.IsReported = false;
                skillRef.Type = 0;
				skillRef.Distance = 1;
                db.JobRequests.Add(jobRequest);
                db.SaveChanges();
                var newJobId = db.JobRequests.SingleOrDefault(j => j.SkillRefId == skillRef.SkillRefId).JobRequestId;
                return RedirectToAction("GetJobRequest", "Post", new { jobId = newJobId });
            }
        }

        public ActionResult JobRequestEdit(int jobId)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                LoadItems(db);
                var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                if (jobRequest.IsActive)
                {
                    TempData["Alert"] = "Công việc đã hết hạn cho sửa";
                    return RedirectToAction("GetJobRequest", "Post", new { jobId });
                }
                var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == jobRequest.SkillRefId);
                skillRef.Gender = null;
                skillRef.Age = null;
                skillRef.LanguageChinese = null;
                skillRef.LanguageEnglish = null;
                skillRef.LanguageJapanese = null;
                skillRef.LanguageKorean = null;
                skillRef.Experience = null;
                skillRef.Hometown = null;
                skillRef.Address = null;
                skillRef.Married = null;
                List<string> skillList = new List<string>();
                PostController.LoadSkillList(skillRef, skillList, db);
                ViewBag.SkillStrList = skillList;
                if (skillRef.Stay != null)
                {
                    ViewBag.StayValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Stay") && si.SkillId == skillRef.Stay).SkillString;
                }
                if (skillRef.Salary != null)
                {
                    ViewBag.SalaryValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Salary") && si.SkillId == skillRef.Salary).SkillString;
                }
                if (skillRef.Work != null)
                {
                    ViewBag.WorkValue =
                        db.SkillInstances.SingleOrDefault(si => si.SkillName.Equals("Work") && si.SkillId == skillRef.Work).SkillString;
                }
                if (skillRef.SickCare != null)
                {
                    ViewBag.SickCareValue = true;
                }
                if (skillRef.OldCare != null)
                {
                    ViewBag.OldCareValue = true;
                }
                if (skillRef.BabySister != null)
                {
                    ViewBag.BabySisterValue = true;
                }
                if (skillRef.DisabilityCare != null)
                {
                    ViewBag.DisabilityCareValue = true;
                }
                if (skillRef.BonsaiCare != null)
                {
                    ViewBag.BonsaiCareValue = true;
                }
                if (skillRef.Cooking != null)
                {
                    ViewBag.CookingValue = true;
                }
                if (skillRef.Washing != null)
                {
                    ViewBag.WashingValue = true;
                }
                if (skillRef.CleanHouse != null)
                {
                    ViewBag.CleanHouseValue = true;
                }
                return View("EditJobRequest", jobRequest);
            }
        }

        public ActionResult EditJobRequest(int jobId, string title, string stay, string salary, string work, string SickCare,
            string OldCare, string BabySister, string DisabilityCare, string BonsaiCare, string Cooking,
            string Washing, string CleanHouse, int maidId)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                if (jobRequest.IsActive)
                {
                    TempData["Alert"] = "Công việc đã hết hạn cho sửa";
                }
                else
                {
                    jobRequest.Title = title;
                    jobRequest.MaidId = maidId;
                    var skillRef = db.SkillReferences.SingleOrDefault(sr => sr.SkillRefId == jobRequest.SkillRefId);
                    if (!stay.Equals("null"))
                    {
                        skillRef.Stay =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(stay) && si.SkillName.Equals("Stay")).SkillId;
                    }
                    else
                    {
                        skillRef.Stay = null;
                    }
                    if (!salary.Equals("null"))
                    {
                        skillRef.Salary =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(salary) && si.SkillName.Equals("Salary")).SkillId;
                    }
                    else
                    {
                        skillRef.Salary = null;
                    }
                    if (!work.Equals("null"))
                    {
                        skillRef.Work =
                            db.SkillInstances.SingleOrDefault(
                                si => si.SkillString.Equals(work) && si.SkillName.Equals("Work")).SkillId;
                    }
                    else
                    {
                        skillRef.Work = null;
                    }
                    if (SickCare != null)
                    {
                        skillRef.SickCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(SickCare)).SkillId;
                    }
                    else
                    {
                        skillRef.SickCare = null;
                    }
                    if (OldCare != null)
                    {
                        skillRef.OldCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(OldCare)).SkillId;
                    }
                    else
                    {
                        skillRef.OldCare = null;
                    }
                    if (BabySister != null)
                    {
                        skillRef.BabySister =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BabySister)).SkillId;
                    }
                    else
                    {
                        skillRef.BabySister = null;
                    }
                    if (DisabilityCare != null)
                    {
                        skillRef.DisabilityCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(DisabilityCare)).SkillId;
                    }
                    else
                    {
                        skillRef.DisabilityCare = null;
                    }
                    if (BonsaiCare != null)
                    {
                        skillRef.BonsaiCare =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(BonsaiCare)).SkillId;
                    }
                    else
                    {
                        skillRef.BonsaiCare = null;
                    }
                    if (Cooking != null)
                    {
                        skillRef.Cooking =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Cooking)).SkillId;
                    }
                    else
                    {
                        skillRef.Cooking = null;
                    }
                    if (Washing != null)
                    {
                        skillRef.Washing =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(Washing)).SkillId;
                    }
                    else
                    {
                        skillRef.Washing = null;
                    }
                    if (CleanHouse != null)
                    {
                        skillRef.CleanHouse =
                            db.SkillInstances.SingleOrDefault(si => si.SkillNameVietnam.Equals(CleanHouse)).SkillId;
                    }
                    else
                    {
                        skillRef.CleanHouse = null;
                    }
                    skillRef.Group = PostController.GetGroup(skillRef);
                    db.SaveChanges();
                }
                return RedirectToAction("GetJobRequest", "Post", new { jobId });
            }
        }

        public ActionResult ExtendJobRequest(int jobId, int extend)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
                if (job.Status.Equals("Applied") || job.Status.Equals("Approved"))
                {
                    TempData["Alert"] = "Công việc đã được thuê";
                }
                else if (!job.IsActive)
                {
                    TempData["Alert"] = "Công việc không tồn tại";
                }
                else
                {
                    var expiredTime = job.ExpiredTime.AddDays(7 * extend);
                    job.ExpiredTime = expiredTime;
                    job.Price += (int)Session["PriceJR"] * extend;
                    if (job.Status.Equals("Expired"))
                    {
                        job.Status = "Waiting";
                    }
                    db.SaveChanges();
                }
                return RedirectToAction("GetJobRequest", "Post", new { jobId });
            }
        }

        public ActionResult Register(int jobId, int recruitId)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
				var recruit = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == recruitId);
				if (recruit.Status.Equals("Applied") || recruit.Status.Equals("Approved"))
				{
					TempData["Alert"] = "Đơn tuyển việc đã thuê được người";
				}
				else if (recruit.Status.Equals("Expired"))
				{
					TempData["Alert"] = "Đơn tuyển việc đã hết hạn";
				}
				else if (recruit.Status.Equals("Hide") || !recruit.IsActive)
				{
					TempData["Alert"] = "Đơn tuyển việc không tồn tại";
				}
				else
				{
					var register = new Register();
					register.JobRequestId = jobId;
					register.RecruitmentId = recruitId;
					register.RegisteredDate = DateTime.Now.Date;
					db.Registers.Add(register);
					var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobId);
					recruit.NumOfReg += 1;
					job.IsRegistered = true;
					db.SaveChanges();
				}
                return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });  
            }
        }

        public ActionResult RegisterMultiple(int[] jobIdList, int recruitId)
        {
            if (Session["AccId"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            using (var db = new MSEntities())
            {
                var recruit = db.Recruitments.SingleOrDefault(r => r.RecruitmentId == recruitId);
				if (recruit.Status.Equals("Applied") || recruit.Status.Equals("Approved"))
				{
					TempData["Alert"] = "Đơn tuyển việc đã thuê được người";
				}
				else if (recruit.Status.Equals("Expired"))
				{
					TempData["Alert"] = "Đơn tuyển việc đã hết hạn";
				}
				else if (recruit.Status.Equals("Hide") || !recruit.IsActive)
				{
					TempData["Alert"] = "Đơn tuyển việc không tồn tại";
				}
				else
				{
					recruit.NumOfReg += jobIdList.Length;
					foreach (var i in jobIdList)
					{
						var register = new Register();
						register.JobRequestId = i;
						register.RecruitmentId = recruitId;
						register.RegisteredDate = DateTime.Now.Date;
						db.Registers.Add(register);
						var job = db.JobRequests.SingleOrDefault(j => j.JobRequestId == i);
						job.IsRegistered = true;
					}
					db.SaveChanges();
				}
            }
            return RedirectToAction("GetRecruitment", "Post", new { recruitmentId = recruitId });   
        }

        public void LoadItems(MSEntities db)
        {
            var maidManagerId = (int)Session["AccId"];
            var role = Session["Role"];
            Session["StayList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Stay")).ToList();
            Session["SalaryList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Salary")).ToList();
            Session["WorkList"] = db.SkillInstances.Where(si => si.SkillName.Equals("Work")).ToList();
            if (Session["SkillList"] == null)
            {
                Session["SkillList"] = db.SkillInstances.Where(si => si.CategoryId == 2).ToList();
            }
            if (role.Equals("MaidMediator"))
            {
                var maidList = db.Maids.Where(m => m.MaidMediatorId == maidManagerId && m.NumOfReport < 4).ToList();
                Session["MaidList"] = maidList;
            }
            else if (role.Equals("Staff"))
            {
                var maidList = db.Maids.Where(m => m.StaffId == maidManagerId && m.NumOfReport < 4).ToList();
                Session["MaidList"] = maidList;
            }
            ViewBag.StayList = Session["StayList"];
            ViewBag.SalaryList = Session["SalaryList"];
            ViewBag.WorkList = Session["WorkList"];
            ViewBag.SkillList = Session["SkillList"];
            ViewBag.MaidList = Session["MaidList"];
        }

        public ActionResult ManageJobRequest()
        {
            if (Session["AccId"] != null)
            {
                List<JobRequestTemp> jobRequestTemps = new List<JobRequestTemp>();
                using (var db = new MSEntities())
                {
                    var jobRequests = db.JobRequests.Where(j => !j.IsActive && j.Maid.NumOfReport < 4).ToList();
                    foreach (var jobRequest in jobRequests)
                    {
                        var acc =
                            db.Accounts.SingleOrDefault(
                                a => a.AccountId == jobRequest.StaffId || a.AccountId == jobRequest.MaidMediatorId);
                        var maid = db.Maids.SingleOrDefault(m => m.MaidId == jobRequest.MaidId);
                        var jobRequestTemp = new JobRequestTemp(jobRequest, maid, acc, null, null, null);
                        jobRequestTemps.Add(jobRequestTemp);

                    }
                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    //var jobList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    return View(jobRequestTemps);
                }
            }
            return RedirectToAction("Login", "Home");
        }

        [HttpGet]
        public ActionResult MarkActiveJobRequest(int jobRequestId)
        {
            if (Session["AccId"] != null)
            {
                var db = new MSEntities();

                using (db)
                {
                    var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobRequestId);
                    if (jobRequest != null)
                    {
                        jobRequest.IsActive = true;
                        jobRequest.ExpiredTime += DateTime.Now - jobRequest.PostTime;
                        db.SaveChanges();
                        //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                        return RedirectToAction("ManageJobRequest", "MaidManager");
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult ManageRecruitment()
        {
            if (Session["AccId"] != null)
            {
                List<RecruitmentTemp> recruitmentTemps = new List<RecruitmentTemp>();
                using (var db = new MSEntities())
                {
                    var recruiments = db.Recruitments.Where(j => j.IsActive == false).ToList();
                    foreach (var recruitment in recruiments)
                    {
                        var acc = db.Accounts.SingleOrDefault(a => a.AccountId == recruitment.RecruitmentId);
                        var recruitmentTemp = new RecruitmentTemp(recruitment, null, acc, null, null, null);
                        
                        recruitmentTemps.Add(recruitmentTemp);
                    }
                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    //var jobList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    return View(recruitmentTemps);
                }
            }
            return RedirectToAction("Login", "Home");
        }

        [HttpGet]
        public ActionResult MarkActiveRecruitment(int recruitmentId)
        {
            if (Session["AccId"] != null)
            {
                var db = new MSEntities();

                using (db)
                {
                    var recruitment = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitmentId);
                    if (recruitment != null)
                    {
                        recruitment.IsActive = true;
                        recruitment.ExpiredTime += DateTime.Now - recruitment.PostTime;
                        db.SaveChanges();
                        //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                        //Remove notifier
                        var notifiers =
                            db.Notifiers.Where(
                                n =>
                                n.Content == "Kiểm tra lại thanh toán" &&
                                n.Link == "/Post/GetRecruitment?recruitmentId=" + recruitmentId && n.View == false).
                                ToList();
                        foreach (var notifier in notifiers)
                        {
                            notifier.View = true;
                            db.SaveChanges();
                        }
                        if (notifiers.Count > 0)
                        {
                            var num = (int) Session["NumberNotifier"];
                            Session["NumberNotifier"] = num - 1;
                        }
                        return RedirectToAction("ManageRecruitment", "MaidManager");
                    }
                }
            }
            return RedirectToAction("Login", "Home");
        }

        [HttpGet]
        public ActionResult MarkActiveRecruitmentOnRCPage(int recruitmentId)
        {
            if (Session["AccId"] != null)
            {
                var db = new MSEntities();
                using (db)
                {
                    var recruitment = db.Recruitments.SingleOrDefault(j => j.RecruitmentId == recruitmentId);
                    if (recruitment != null) recruitment.IsActive = true;
                    db.SaveChanges();
                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    //Remove notifier
                    string link = "/Post/GetRecruitment?recruitmentId=" + recruitmentId;
                    var notifiers =
                        db.Notifiers.Where(
                            n =>
                            n.Content == "Kiểm tra lại thanh toán" &&
                            n.Link == link && n.View == false).ToList();
                    foreach (var notifier in notifiers)
                    {
                        notifier.View = true;
                        db.SaveChanges();
                    }
                    if (notifiers.Count > 0)
                    {
                        var num = (int)Session["NumberNotifier"];
                        Session["NumberNotifier"] = num - 1;
                    }
                    return RedirectToAction("GetRecruitment", "Post", new { recruitmentId });
                }
            }
            return RedirectToAction("Login", "Home");
        }

        public ActionResult ManageAppliedJobRequest()
        {
            if (Session["AccId"] != null)
            {
                List<JobRequestTemp> jobRequestTemps = new List<JobRequestTemp>();
                using (var db = new MSEntities())
                {
                    var jobRequests = db.JobRequests.Where(j => j.Status.Equals("Applied")).ToList();
                    foreach (var jobRequest in jobRequests)
                    {

                        var jobRequestTemp = new JobRequestTemp
                        {
                            Job = jobRequest,
                            SkillList = null,
                            Account = db.Accounts.FirstOrDefault(j => j.AccountId == jobRequest.MaidMediatorId || j.AccountId==jobRequest.StaffId),

                            Maid = null,
                            Recruitment = null,
                        };
                        if (jobRequestTemp.Job.MaidMediatorId != null || jobRequestTemp.Job.StaffId!=null)
                        {
                            jobRequestTemps.Add(jobRequestTemp);
                        }

                    }


                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    //var jobList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    return View(jobRequestTemps);
                }


            }
            return RedirectToAction("Login", "Home");
        }

        [HttpGet]
        public ActionResult MarkApproved(int jobRequestId)
        {
            if (Session["AccId"] != null)
            {
                var db = new MSEntities();

                using (db)
                {
                    var jobRequest = db.JobRequests.SingleOrDefault(j => j.JobRequestId == jobRequestId);
                    jobRequest.Status = "Approved";
                    db.SaveChanges();
                    //jobRequestList = db.JobRequests.Where(j => j.Status == "NotActive").ToList();
                    return RedirectToAction("ManageAppliedJobRequest", "MaidManager");
                }
            }
            return RedirectToAction("Login", "Home");
        }
    }
}
