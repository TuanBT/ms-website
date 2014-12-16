using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Twilio;

namespace MS_Website.Business
{
    public class Function
    {
        public Function(){}

        public void SentMessage(string phoneMaid, string phoneStaff, string phoneMaidMediator, string phoneCustomer)
        {
            //return; //Bỏ dòng này khi chạy thật
            string phoneServer = "+14172024103";

            string AccountSid = "AC439137c82934e09c6e8120d9ee085b2b";
            string AuthToken = "b145152a0db201fe0e624f0205f66734";

            phoneMaid = RegionPhone(phoneMaid);
            phoneStaff = RegionPhone(phoneStaff);
            phoneMaidMediator = RegionPhone(phoneMaidMediator);
            phoneCustomer = RegionPhone(phoneCustomer);

            var twilio = new TwilioRestClient(AccountSid, AuthToken);
            var message = new Message();
            if(phoneMaid!="")
            {
                message = twilio.SendMessage(phoneServer, phoneMaid, "Nguoi giup viec: So 0978754416 da thue ban.");
            }
            if (phoneStaff != "")
            {
                message = twilio.SendMessage(phoneServer, phoneStaff, "Nhan vien: Da co nguoi thue.");
            }
            if (phoneMaidMediator != "")
            {
                message = twilio.SendMessage(phoneServer, phoneMaidMediator, "Nguoi dai dien: So 0978754416 da thue nguoi giup viec ban dai dien.");
            }
            if (phoneCustomer != "")
            {
                message = twilio.SendMessage(phoneServer, phoneCustomer, "Khach hang: So 0978754416 la nguoi giup viec ban da thue.");
            }
            

            if (message.RestException != null)
            {
                var error = message.RestException.Message;
                // handle the error ...
            }
        }

        public string RegionPhone(string phone)
        {
            if (phone == "") return "";
            string phoneTemp = "+84";
            if (phone[0] == '0')
            {
                for (int i = 1; i < phone.Length; i++)
                {
                    phoneTemp += phone[i];
                }
                return phoneTemp;
            }
            return phone;
        }
    }
}