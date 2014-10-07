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
    
    public partial class Maid
    {
        public Maid()
        {
            this.JobRequests = new HashSet<JobRequest>();
        }
    
        public int MaidId { get; set; }
        public string MaidName { get; set; }
        public Nullable<int> MaidMediatorId { get; set; }
        public Nullable<int> StaffId { get; set; }
        public string PersonalImage { get; set; }
        public Nullable<double> Experience { get; set; }
        public string Description { get; set; }
        public Nullable<double> RateAvg { get; set; }
        public string Phone { get; set; }
        public string Gender { get; set; }
    
        public virtual ICollection<JobRequest> JobRequests { get; set; }
        public virtual MaidMediator MaidMediator { get; set; }
        public virtual Staff Staff { get; set; }
    }
}
