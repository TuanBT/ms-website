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
    
    public partial class SkillReference
    {
        public SkillReference()
        {
            this.JobRequests = new HashSet<JobRequest>();
            this.Recruitments = new HashSet<Recruitment>();
        }
    
        public int SkillRefId { get; set; }
        public Nullable<int> Gender { get; set; }
        public Nullable<int> Age { get; set; }
        public Nullable<int> LanguageEnglish { get; set; }
        public Nullable<int> LanguageChina { get; set; }
        public Nullable<int> LanguageJapanese { get; set; }
        public Nullable<int> LanguageKorean { get; set; }
        public Nullable<int> Experience { get; set; }
        public Nullable<int> Hometown { get; set; }
        public Nullable<int> Address { get; set; }
        public Nullable<int> Health { get; set; }
        public Nullable<int> Stay { get; set; }
        public Nullable<int> Salary { get; set; }
        public Nullable<int> Work { get; set; }
        public Nullable<int> SickCare { get; set; }
        public Nullable<int> OldCare { get; set; }
        public Nullable<int> BabySister { get; set; }
        public Nullable<int> DisabilityCare { get; set; }
        public Nullable<int> BonsaiCare { get; set; }
        public Nullable<int> Cooking { get; set; }
        public Nullable<int> Washing { get; set; }
        public Nullable<int> CleanHouse { get; set; }
        public Nullable<int> Group { get; set; }
    
        public virtual ICollection<JobRequest> JobRequests { get; set; }
        public virtual ICollection<Recruitment> Recruitments { get; set; }
        public virtual SkillInstance SkillInstance { get; set; }
        public virtual SkillInstance SkillInstance1 { get; set; }
        public virtual SkillInstance SkillInstance2 { get; set; }
        public virtual SkillInstance SkillInstance3 { get; set; }
        public virtual SkillInstance SkillInstance4 { get; set; }
        public virtual SkillInstance SkillInstance5 { get; set; }
        public virtual SkillInstance SkillInstance6 { get; set; }
        public virtual SkillInstance SkillInstance7 { get; set; }
        public virtual SkillInstance SkillInstance8 { get; set; }
        public virtual SkillInstance SkillInstance9 { get; set; }
        public virtual SkillInstance SkillInstance10 { get; set; }
        public virtual SkillInstance SkillInstance11 { get; set; }
        public virtual SkillInstance SkillInstance12 { get; set; }
        public virtual SkillInstance SkillInstance13 { get; set; }
        public virtual SkillInstance SkillInstance14 { get; set; }
        public virtual SkillInstance SkillInstance15 { get; set; }
        public virtual SkillInstance SkillInstance16 { get; set; }
        public virtual SkillInstance SkillInstance17 { get; set; }
        public virtual SkillInstance SkillInstance18 { get; set; }
        public virtual SkillInstance SkillInstance19 { get; set; }
        public virtual SkillInstance SkillInstance20 { get; set; }
    }
}
