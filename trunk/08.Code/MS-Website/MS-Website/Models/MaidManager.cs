using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class MaidManager
    {
        public MaidManager(System.Nullable<int> accId, string username, bool isActive, DateTime joinDate, string role, string avatar, string email, string phone, string fullname)
        {
            this.AccId = accId;
            this.Username = username;
            this.IsActive = isActive;
            this.JoinDate = joinDate;
            this.Role = role;
            this.Avatar = avatar;
            this.Email = email;
            this.Phone = phone;
            this.Fullname = fullname;
        }
        public System.Nullable<int> AccId { get; set; }
        public string Username { get; set; }
        public bool IsActive { get; set; }
        public DateTime JoinDate { get; set; }
        public string Role { get; set; }
        public string Avatar { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Fullname { get; set; }
    }
}