//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MS_Website.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Recruitment
    {
        public Recruitment()
        {
            this.Applies = new HashSet<Apply>();
        }
    
        public int RecruitmentId { get; set; }
        public int SkillRefId { get; set; }
        public int CustomerId { get; set; }
        public string Status { get; set; }
        public System.DateTime PostRequestedTime { get; set; }
        public System.DateTime ExpiredTime { get; set; }
    
        public virtual ICollection<Apply> Applies { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual SkillReference SkillReference { get; set; }
    }
}
