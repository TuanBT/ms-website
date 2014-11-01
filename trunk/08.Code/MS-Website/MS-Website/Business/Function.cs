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
                message = twilio.SendMessage(phoneServer, phoneMaid, "Người giúp việc: Có người thuê yêu cầu của bạn. Sau khi kết thúc hãy đến trung tâm để nhận lại tiền báo việc.");
            }
            if (phoneStaff != "")
            {
                message = twilio.SendMessage(phoneServer, phoneStaff, "Nhân viên: Có người đã thuê người mà bạn đại diện. Hãy báo với họ ngay để bắt đầu làm việc.");
            }
            if (phoneMaidMediator != "")
            {
                message = twilio.SendMessage(phoneServer, phoneMaidMediator, "Người đại diện: Có người đã thuê người mà bạn đại diện. Hãy báo với họ ngay để bắt đầu làm việc.");
            }
            if (phoneCustomer != "")
            {
                message = twilio.SendMessage(phoneServer, phoneCustomer, "Khách hàng: Bạn đã thuê thành công người giúp việc. Sau khi kết thúc hãy đánh giá người mà bạn thuê.");
            }
            

            if (message.RestException != null)
            {
                var error = message.RestException.Message;
                // handle the error ...
            }
        }

        public string RegionPhone(string phone)
        {
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