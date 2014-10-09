using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class RecruitmentTemp
    {
        public RecruitmentTemp(int recruitmentId, int skillRefId, int customerId, string status, DateTime postTime, DateTime expiredTime, string custImg, string customerName, List<string> skillList)
        {
            this.RecruitmentId = recruitmentId;
            this.SkillRefId = skillRefId;
            this.CustomerId = customerId;
            this.Status = status;
            this.PostTime = postTime;
            this.ExpiredTime = expiredTime;
            this.CustImg = custImg;
            this.CustomerName = customerName;
            this.SkillList = skillList;
        }
        public int RecruitmentId { get; set; }
        public int SkillRefId { get; set; }
        public int CustomerId { get; set; }
        public string Status { get; set; }
        public DateTime PostTime { get; set; }
        public DateTime ExpiredTime { get; set; }
        public string CustImg { get; set; }
        public string CustomerName { get; set; }
        public List<string> SkillList { get; set; }
    }
}