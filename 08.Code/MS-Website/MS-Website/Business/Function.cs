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
            string AccountSid = "AC439137c82934e09c6e8120d9ee085b2b";
            string AuthToken = "b145152a0db201fe0e624f0205f66734";

            var twilio = new TwilioRestClient(AccountSid, AuthToken);
            var message = new Message();
            if(phoneMaid!="")
            {
                 message = twilio.SendMessage("+14172024103", phoneMaid, "Có khách hàng đã thuê!");
            }
            if (phoneStaff != "")
            {
                message = twilio.SendMessage("+14172024103", phoneStaff, "Có khách hàng đã thuê!");
            }
            if (phoneMaidMediator != "")
            {
                message = twilio.SendMessage("+14172024103", phoneMaidMediator, "Có khách hàng đã thuê!");
            }
            if (phoneCustomer != "")
            {
                message = twilio.SendMessage("+14172024103", phoneCustomer, "Bạn đã thuê thành công!");
            }
            

            if (message.RestException != null)
            {
                var error = message.RestException.Message;
                // handle the error ...
            }
        }
    }
}