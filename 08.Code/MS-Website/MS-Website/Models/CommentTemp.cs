using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS_Website.Models
{
    public class CommentTemp
    {
        public CommentTemp(JobRequest job, Account account,Comment comment, Customer customer)
        {
            this.Job = job;
            this.Account = account;
            this.Comment = comment;
            this.Customer = customer;
        }
        public CommentTemp()
        {
            
        }
        public Account Account { get; set; }
        public JobRequest Job { get; set; }
        public Comment Comment { get; set; }
        public Customer Customer { get; set; }
    }
}