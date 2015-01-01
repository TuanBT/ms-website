using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class RecruitmentTemp
    {
        public RecruitmentTemp(Recruitment recruitment, Customer customer, Account account, JobRequest jobRequest, Apply apply, List<string> skillList)
        {
            this.Recruitment = recruitment;
            this.Customer = customer;
            this.Account = account;
            this.JobRequest = jobRequest;
            this.Apply = apply;
            this.SkillList = skillList;
        }

        public Account Account { get; set; }
        public Recruitment Recruitment { get; set; }
        public Customer Customer { get; set; }
        public JobRequest JobRequest { get; set; }
        public Apply Apply { get; set; }
        public List<string> SkillList { get; set; }

        public RecruitmentTemp(){}
    }
}