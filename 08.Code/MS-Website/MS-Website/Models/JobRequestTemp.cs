using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class JobRequestTemp
    {
        public JobRequestTemp(int jobRequestId, int skillRedId, Nullable<int> maidMediatorId, Nullable<int> staffId, string status, DateTime postTime, DateTime expiredTime, Nullable<System.DateTime> applyTime, int maidId, string maidName, string maidImg, Nullable<int> customerId, String customerName)
        {
            this.JobRequestId = jobRequestId;
            this.SkillRefId = skillRedId;
            this.MaidMediatorId = maidMediatorId;
            this.StaffId = staffId;
            this.Status = status;
            this.PostTime = postTime;
            this.ExpiredTime = expiredTime;
            this.ApplyTimes = applyTime;
            this.MaidId = maidId;
            this.MaidName = maidName;
            this.MaidImg = maidImg;
            this.CustomerID = customerId;
            this.CustomerName = customerName;
        }
        public int JobRequestId { get; set; }
        public int SkillRefId { get; set; }
        public Nullable<int> MaidMediatorId { get; set; }
        public Nullable<int> StaffId { get; set; }
        public string Status { get; set; }
        public DateTime PostTime { get; set; }
        public DateTime ExpiredTime { get; set; }
        public Nullable<System.DateTime> ApplyTimes { get; set; }
        public int MaidId { get; set; }
        public String MaidName { get; set; }
        public String MaidImg { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public string CustomerName { get; set; }
    }
}