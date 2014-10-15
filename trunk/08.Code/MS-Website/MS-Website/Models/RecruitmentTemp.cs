using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class RecruitmentTemp
    {
        public RecruitmentTemp(Recruitment recruitment, Customer customer, JobRequest jobRequest, List<string> skillList)
        {
            this.Recruitment = recruitment;
            this.Customer = customer;
            this.JobRequest = jobRequest;
            this.SkillList = skillList;
        }

        public Recruitment Recruitment { get; set; }
        public Customer Customer { get; set; }
        public JobRequest JobRequest { get; set; }
        public List<string> SkillList { get; set; }
    }
}