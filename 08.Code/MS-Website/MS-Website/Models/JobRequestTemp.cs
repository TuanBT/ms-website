using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class JobRequestTemp
    {
        public JobRequestTemp(JobRequest job, Maid maid, Account account, Recruitment recruitment, Apply apply, List<string> skillList)
        {
            this.Job = job;
            this.Maid = maid;
            this.Account = account;
            this.Recruitment = recruitment;
            this.Apply = apply;
            this.SkillList = skillList;

        }

        public JobRequestTemp()
        {
            
        }

        public Account Account { get; set; }
        public JobRequest Job { get; set; }
        public Maid Maid { get; set; }
        public Recruitment Recruitment { get; set; }
        public Apply Apply { get; set; }
        public List<string> SkillList { get; set; }
    }
}