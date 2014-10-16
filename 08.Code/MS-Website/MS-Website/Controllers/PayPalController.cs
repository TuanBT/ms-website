using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS_Website.Models;

namespace MS_Website.Controllers
{
    public class PayPalController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult RedirectFromPaypal()
        {
            return View();
        }
        public ActionResult CancelFromPaypal()
        {
            return View();
        }
        public ActionResult NotifyFromPaypal()
        {
            return View();
        }
        public ActionResult ValidateCommand(string product, double totalPrice)
        {
            bool useSandbox = Convert.ToBoolean(ConfigurationManager.AppSettings["IsSandbox"]);
            var paypal = new PayPalModel(useSandbox);
            paypal.item_name = product;
            double remainder = totalPrice % 20000;
            if (remainder > 0.5)
            {
                totalPrice = totalPrice / 20000 + 1;
            }
            else
            {
                totalPrice = totalPrice / 20000;
            }

            paypal.amount = totalPrice.ToString();
            return View(paypal);
        }
    }
}
