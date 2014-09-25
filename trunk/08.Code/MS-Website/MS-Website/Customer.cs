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
    
    public partial class Customer
    {
        public Customer()
        {
            this.Comments = new HashSet<Comment>();
            this.Ratings = new HashSet<Rating>();
            this.Recruitments = new HashSet<Recruitment>();
        }
    
        public int AccountId { get; set; }
        public double Payment { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public Nullable<int> RatingId { get; set; }
        public Nullable<int> CommentId { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<Rating> Ratings { get; set; }
        public virtual ICollection<Recruitment> Recruitments { get; set; }
    }
}
