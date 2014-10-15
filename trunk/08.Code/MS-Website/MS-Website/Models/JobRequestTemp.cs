using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class JobRequestTemp
    {
        public JobRequestTemp(JobRequest job, Maid maid, Recruitment recruitment, List<string> skillList)
        {
            this.Job = job;
            this.Maid = maid;
            this.Recruitment = recruitment;
            this.SkillList = skillList;
        }

        public JobRequest Job { get; set; }
        public Maid Maid { get; set; }
        public Recruitment Recruitment { get; set; }
        public List<string> SkillList { get; set; }
    }
}