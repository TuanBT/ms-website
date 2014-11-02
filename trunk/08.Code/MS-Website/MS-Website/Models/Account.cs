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
    
    public partial class Account
    {
        public Account()
        {
            this.Notifiers = new HashSet<Notifier>();
        }
    
        public int AccountId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool IsActive { get; set; }
        public System.DateTime JoinDate { get; set; }
        public string Role { get; set; }
        public bool IsWebmaster { get; set; }
        public string Avatar { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string FullName { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual MaidMediator MaidMediator { get; set; }
        public virtual ICollection<Notifier> Notifiers { get; set; }
        public virtual Staff Staff { get; set; }
    }
}
