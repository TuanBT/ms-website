//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MS_Website
{
    using System;
    using System.Collections.Generic;
    
    public partial class Rating
    {
        public int RatingId { get; set; }
        public int CustomerId { get; set; }
        public int JobRequestId { get; set; }
        public double Rate { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual JobRequest JobRequest { get; set; }
    }
}
