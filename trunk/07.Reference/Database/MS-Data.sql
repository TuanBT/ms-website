DELETE FROM Notifier; DELETE FROM Rating;
DELETE FROM Comment;
DELETE FROM Apply;
DELETE FROM Recruitment;
DELETE FROM JobRequest;
DELETE FROM SkillReference;
DELETE FROM SkillInstance;
DELETE FROM SkillCategory;
DELETE FROM Maid;
DELETE FROM Staff;
DELETE FROM Customer;
DELETE FROM MaidMediator;
DELETE FROM Account;

SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (1,N'congnt','123456','True','2014-02-10 9:00:00','Staff','False','../Content/Image/Staff/1.jpg','congnt@gmail.com','0978754416',N'Nguyễn Tấn Công')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (2,N'thangnv','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/2.jpg','thangnv@gmail.com','0978754416',N'Nguyễn Văn Thắng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (3,N'trangbt','123456','True','2014-09-28 9:00:00','Staff','False','../Content/Image/Staff/3.jpg','trangbt@gmail.com','0978754416',N'Bùi Thùy Trang')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (4,N'dunghc','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/4.jpg','dunghc@gmail.com','0978754416',N'Hồ Cẩm Dung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (5,N'tuannm','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/5.jpg','tuannm@gmail.com','0978754416',N'Nguyễn Mậu Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (6,N'trunghv','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/6.jpg','trunghv@gmail.com','0978754416',N'Hoàng Văn Trung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (7,N'hongqc','123456','True','2014-10-04 9:00:00','Staff','False','../Content/Image/Staff/7.jpg','hongqc@gmail.com','0978754416',N'Quách Cẩm Hồng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (8,N'nhunt','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/8.jpg','nhunt@gmail.com','0978754416',N'Nguyễn Thị Như')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (9,N'nhuttm','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/9.jpg','nhuttm@gmail.com','0978754416',N'Trần Minh Nhựt')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (10,N'longlq','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/10.jpg','longlq@gmail.com','0978754416',N'Lưu Quang Long')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (11,N'DangTH','123456','True','2014-02-10 9:00:00','Customer','False','../Content/Image/Profile/11.jpg','DangTH@gmail.com','0978754416',N'Trương Hải Đăng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (12,N'DanhTC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/12.jpg','DanhTC@gmail.com','0978754416',N'Trần Cao danh')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (13,N'SuTNT','123456','True','2014-09-28 9:00:00','Customer','False','../Content/Image/Profile/13.jpg','SuTNT@gmail.com','0978754416',N'Trần Nguyễn Tiến Sứ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (14,N'CuongNC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/14.jpg','CuongNC@gmail.com','0978754416',N'Nguyễn Cao Cường')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (15,N'TuanBT','123456','True','2014-10-03 9:00:00','Admin','True','../Content/Image/Profile/15.jpg','TuanBT@gmail.com','0978754416',N'Bùi Tiến Tuân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (16,N'HueTT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/16.jpg','HueTT@gmail.com','0978754416',N'Trần Thị Huệ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (17,N'TuanTQ','123456','True','2014-10-04 9:00:00','Customer','False','../Content/Image/Profile/17.jpg','TuanTQ@gmail.com','0978754416',N'Trần Quốc Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (18,N'LanNT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/18.jpg','LanNT@gmail.com','0978754416',N'Nguyễn Thị Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (19,N'VuTT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/19.jpg','VuTT@gmail.com','0978754416',N'Trần Thị Vũ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (20,N'NhuVT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/20.jpg','NhuVT@gmail.com','0978754416',N'Võ Thị Như')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (21,N'LanHT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/21.jpg','LanHT@gmail.com','0978754416',N'Hoàng Thị Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (22,N'QuanKM','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/22.jpg','QuanKM@gmail.com','0978754416',N'Khương Mạnh Quân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (23,N'LanVTN','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/23.jpg','LanVTN@gmail.com','0978754416',N'Vũ Thị Như Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (24,N'NinhQT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/24.jpg','NinhQT@gmail.com','0978754416',N'Quách Thị Ninh')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (25,N'HaoTC','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/25.jpg','HaoTC@gmail.com','0978754416',N'Tăng Công hảo')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (26,N'DuyK','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/26.jpg','DuyK@gmail.com','0978754416',N'Khương Duy')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (27,N'LocTQ','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/27.jpg','LocTQ@gmail.com','0978754416',N'Trần Quang Lộc')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (28,N'MyPT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/28.jpg','MyPT@gmail.com','0978754416',N'Phan Thế Mỹ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (29,N'HoanAV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/29.jpg','HoanAV@gmail.com','0978754416',N'Âu Văn Hoàn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (30,N'DongTD','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/30.jpg','DongTD@gmail.com','0978754416',N'Trần Đình Đồng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (31,N'TuanLQ','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/31.jpg','TuanLQ@gmail.com','0978754416',N'Lê Quang Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (32,N'PhiTP','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/32.jpg','PhiTP@gmail.com','0978754416',N'Trần Phú Phi')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (33,N'HienNP','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/33.jpg','HienNP@gmail.com','0978754416',N'Nguyễn Phú hiển')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (34,N'HienDB','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/34.jpg','HienDB@gmail.com','0978754416',N'Đào Bá Diệp')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (35,N'HaiDV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/35.jpg','HaiDV@gmail.com','0978754416',N'Duy Van Hai')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (36,N'DiepBV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/36.jpg','DiepBV@gmail.com','0978754416',N'Bùi Bá Diệp')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (37,N'CongTV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/37.jpg','CongTV@gmail.com','0978754416',N'Trần Văn Công')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (38,N'HaiHV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/38.jpg','HaiHV@gmail.com','0978754416',N'Hoàng Vũ hải')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (39,N'LapBT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/39.jpg','LapBT@gmail.com','0978754416',N'Bùi Trần Lập')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (40,N'MaiMT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/40.jpg','MaiMT@gmail.com','0978754416',N'Minh Thị Mai')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (41,N'TuyenMQ','123456','True','2014-10-05 9:00:01','MaidMediator','False','../Content/Image/MaidMediator/41.jpg','TuyenMQ@gmail.com','0978754416',N'Mạnh Quang Tuyến')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (42,N'TuanBTT','123456','True','2014-10-05 9:00:02','MaidMediator','False','../Content/Image/MaidMediator/42.jpg','TuanBTT@gmail.com','0978754416',N'Bùi TIến Tuân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (43,N'ThoTP','123456','True','2014-10-05 9:00:03','MaidMediator','False','../Content/Image/MaidMediator/43.jpg','ThoTP@gmail.com','0978754416',N'Trịnh Phúc Thọ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (44,N'HieuHT','123456','True','2014-10-05 9:00:04','MaidMediator','False','../Content/Image/MaidMediator/44.jpg','HieuHT@gmail.com','0978754416',N'Hoàng Trung Hiếu')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (45,N'DangNH','123456','True','2014-10-05 9:00:05','MaidMediator','False','../Content/Image/MaidMediator/45.jpg','DangNH@gmail.com','0978754416',N'Nguyễn Hải Đăng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (46,N'TaiNV','123456','True','2014-10-05 9:00:06','MaidMediator','False','../Content/Image/default-avatar.png','TaiNV@gmail.com','0978754416',N'Nguyễn Tấn Công')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (47,N'TuanTM','123456','True','2014-10-05 9:00:07','MaidMediator','False','../Content/Image/default-avatar.png','TuanTM@gmail.com','0978754416',N'Trần Minh Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (48,N'TaiHV','123456','True','2014-10-05 9:00:08','MaidMediator','False','../Content/Image/default-avatar.png','TaiHV@gmail.com','0978754416',N'Hà Văn Tài')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (49,N'HieuNH','123456','True','2014-10-05 9:00:09','MaidMediator','False','../Content/Image/default-avatar.png','HieuNH@gmail.com','0978754416',N'Nguyễn Hoàng Hiếu')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (50,N'TraDT','123456','True','2014-10-05 9:00:10','MaidMediator','False','../Content/Image/default-avatar.png','TraDT@gmail.com','0978754416',N'Dương Thị Trà')
SET IDENTITY_INSERT [dbo].[Account] OFF



































INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (41)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (42)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (43)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (44)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (45)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (46)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (47)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (48)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (49)
INSERT [dbo].[MaidMediator] ([AccountId]) VALUES (50)








































INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (11,N'270 Tô Ký, Quận 12')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (12,N'11A Trần Phú, Quận 1')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (13,N'77/4 Lê Đại Hành, Quận 10')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (14,N'22/14 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (15,N'22/14 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (16,N'35/14 Phan Xích Long, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (17,N'22/14/28 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (18,N'22/14 Lê Văn Lương, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (19,N'440 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (20,N'1a Quang Trung, Q.Gò Vấp')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (21,N'114/7a Lê Đại Hành, Q.10')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (22,N'55b Trương Định, Q.1')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (23,N'120 Tô Ký, Q.12')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (24,N'22/14 Tô Ký, Q.12')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (25,N'240 Phan Xích Long, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (26,N'22/18 Âu Cơ, Q.11')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (27,N'22/19 Âu Cơ, Q.11')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (28,N'22/27 An Dương Vương, Q.11')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (29,N'33-12 Phạm Hùng, Q.8')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (30,N'22/14 Lê Văn Khiêm, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (31,N'22/14 Nguyễn Kiệm, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (32,N'17b Trần Hưng Đạo, Q.10')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (33,N'22/14 Lê Bình, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (34,N'330 CMT8, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (35,N'12 Lý Thường Kiệt, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (36,N'150 Nguyễn Siêu, Q.11')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (37,N'22/14 Lê Bình, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (38,N'22/14 CMT8, Q.10')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (39,N'1 Lê Bình, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId],[Address]) VALUES (40,N'22/14/23 Lê Đại Hành, Q.10')




















INSERT [dbo].[Staff] ([AccountId]) VALUES (1)
INSERT [dbo].[Staff] ([AccountId]) VALUES (2)
INSERT [dbo].[Staff] ([AccountId]) VALUES (3)
INSERT [dbo].[Staff] ([AccountId]) VALUES (4)
INSERT [dbo].[Staff] ([AccountId]) VALUES (5)
INSERT [dbo].[Staff] ([AccountId]) VALUES (6)
INSERT [dbo].[Staff] ([AccountId]) VALUES (7)
INSERT [dbo].[Staff] ([AccountId]) VALUES (8)
INSERT [dbo].[Staff] ([AccountId]) VALUES (9)
INSERT [dbo].[Staff] ([AccountId]) VALUES (10)







































SET IDENTITY_INSERT [dbo].[Maid] ON
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (1,N'Nguyễn Hải Nam',NULL,1,N'../Content/Image/Maid/1.jpg',2,N'Cần việc ổn định lương thỏa thuận',0,'0978754416','True','1989-08-20','True','False','False','False',N'Miền bắc',N'Quận 1','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (2,N'Trần Thị Tú',41,NULL,N'../Content/Image/Maid/2.jpg',2,N'Cần việc làm và chỗ ở',0,'0978754416','False','1991-07-02','False','False','False','False',N'Miền trung',N'Quận 2','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (3,N'Lê Văn Hải',NULL,1,N'../Content/Image/Maid/3.jpg',4,N'Đã tốt nghiệp cấp 3 cần kiếm tiền học đại học',0,'0978754416','True','1988-04-30','False','False','False','False',N'Miền nam',N'Quận 3','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (4,N'Nguyễn Thị Cam',41,NULL,N'../Content/Image/Maid/4.jpg',2,N'Yêu cầu chủ thuê từ 30 - 40 tuổi',0,'0978754416','False','1987-02-26','False','False','False','False',N'Miền tây',N'Quận 4','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (5,N'Bùi Văn Bé',NULL,1,N'../Content/Image/Maid/5.jpg',4,N'Cần tạm ứng trước 50% mức lương',0,'0978754416','True','1988-07-15','True','False','False','False',N'Miền bắc',NULL,'False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (6,N'Trương Minh Hải',41,NULL,N'../Content/Image/Maid/6.jpg',0,NULL,0,'0978754416','True','1985-08-17','False','False','False','False',N'Miền trung',N'Quận 6','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (7,N'Trần Thị Bưởi',NULL,1,N'../Content/Image/Maid/7.jpg',2,N'Có nhiều kinh nghiệm trong việc chăm sóc trẻ',0,'0978754416','False','1991-05-22','False','False','False','False',N'Miền nam',N'Quận 7','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (8,N'Ngô Minh Thiện',41,NULL,N'../Content/Image/Maid/8.jpg',2,N'Sẽ cố gắng hết sức làm vừa lòng chủ nhà',0,'0978754416','True','1990-08-24','False','False','False','False',NULL,N'Quận 8','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (9,N'Vũ Minh Quân',NULL,1,N'../Content/Image/Maid/9.jpg',4,N'Thứ 7 Chủ nhật ko làm',0,'0978754416','True','1985-02-23','False','False','False','False',N'Miền bắc',N'Quận 9','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (10,N'Hoàng Thế Hải ',41,NULL,N'../Content/Image/Maid/10.jpg',4,N'Yêu cầu tạm trú chỗ ở 1 phòng có máy lạnh',0,'0978754416','True','1987-01-20','False','False','False','False',N'Miền trung',N'Quận 10','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (11,N'Lưu Thị Kim Mai',NULL,1,N'../Content/Image/Maid/11.jpg',2,NULL,0,'0978754416','False','1984-07-10','False','False','False','False',N'Miền nam',NULL,'True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (12,N'Ngô Hải Đăng',41,NULL,N'../Content/Image/Maid/12.jpg',0,N'Là người hòa đồng, thân thiện, dễ gần',0,'0978754416','True','1983-05-10','False','False','False','False',N'Miền tây',N'Quận 12','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (13,N'Nguyễn Minh Vương',NULL,1,N'../Content/Image/Maid/13.jpg',4,NULL,0,'0978754416','True','1970-05-18','False','False','False','False',N'Miền bắc',N'Quận Bình Tân','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (14,N'Lê Thị Thúy Vân',41,NULL,N'../Content/Image/Maid/14.jpg',4,NULL,0,'0978754416','False','1988-09-25','False','True','True','False',N'Miền trung',N'Quận Bình Thạnh','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (15,N'Trịnh Hải Hoàng',NULL,1,N'../Content/Image/Maid/15.jpg',2,N'Còn nhiều thiếu sót nhưng sẽ cố gắng học hỏi thêm',0,'0978754416','True','1989-03-29','False','False','False','False',NULL,N'Quận Gò Vấp','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (16,N'Bùi Thị Thuyết',41,NULL,N'../Content/Image/Maid/16.jpg',4,NULL,0,'0978754416','False','1988-06-19','False','False','False','False',N'Miền tây',N'Quận Phú Nhuận','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (17,N'Nguyễn Vân Anh',NULL,3,N'../Content/Image/Maid/17.jpg',0,N'Đang còn đi học mong chủ nhà thông cảm nếu có sai sót',0,'0978754416','False','1985-04-26','False','False','False','False',N'Miền bắc',N'Quận Tân Bình','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (18,N'Vũ Thị Thúy Lan',41,NULL,N'../Content/Image/Maid/18.jpg',2,NULL,0,'0978754416','False','1984-09-25','False','False','False','False',N'Miền trung',N'Quận Tân Phú','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (19,N'Bùi Văn Bánh',NULL,5,N'../Content/Image/Maid/19.jpg',4,NULL,0,'0978754416','True','1983-08-10','False','False','False','False',N'Miền nam',N'Quận Thủ Đức','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (20,N'Nguyễn Thị Cẩm Tú',46,NULL,N'../Content/Image/Maid/20.jpg',4,NULL,0,'0978754416','False','1991-07-15','False','False','False','False',NULL,NULL,'True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (21,N'Lê Thị Ánh Tuyết',NULL,6,N'../Content/Image/Maid/21.jpg',0,N'Mới vào nghề mong chủ nhà thông cảm',0,'0978754416','False','1985-02-11','False','False','False','False',N'Miền bắc',N'Quận 1','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (22,N'Trịnh Công Thành',45,NULL,N'../Content/Image/Maid/22.jpg',2,N'Rất tự tin vào năng lực của bản thân',0,'0978754416','True','1984-09-15','True','False','False','False',N'Miền trung',N'Quận 2','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (23,N'Trương Bình Minh',NULL,7,N'../Content/Image/Maid/23.jpg',4,N'Yêu cầu nhà ko nuôi chó',0,'0978754416','True','1985-04-10','False','False','False','False',N'Miền nam',N'Quận 3','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (24,N'Nguyễn Thị Thúy Vy',48,NULL,N'../Content/Image/Maid/24.jpg',2,N'Dễ thương, dễ gần, dễ nói chuyện',0,'0978754416','False','1990-04-28','False','False','False','False',N'Miền tây',N'Quận 4','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (25,N'Lê Thị Cẩm Lan',NULL,8,N'../Content/Image/Maid/25.jpg',2,N'Ko làm được những việc nặng nhọc',0,'0978754416','False','1987-06-18','False','False','False','False',N'Miền bắc',N'Quận 5','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (26,N'Bùi Quốc Huy',42,NULL,N'../Content/Image/Maid/26.jpg',4,NULL,0,'0978754416','True','1988-03-29','False','True','False','False',N'Miền trung',N'Quận 6','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (27,N'Nguyễn Thị Ánh',NULL,9,N'../Content/Image/Maid/27.jpg',0,NULL,0,'0978754416','False','1986-06-16','False','False','False','False',N'Miền nam',N'Quận 7','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (28,N'Lê Thị Thảo',43,NULL,N'../Content/Image/Maid/28.jpg',2,N'Rất giỏi trong việc bếp núc',0,'0978754416','False','1991-06-17','False','False','False','False',N'Miền tây',N'Quận 8','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (29,N'Hoàng Văn Trung',NULL,10,N'../Content/Image/Maid/29.jpg',4,NULL,0,'0978754416','True','1980-02-14','False','False','False','False',N'Miền bắc',N'Quận 9','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (30,N'Lê Công Đình',50,NULL,N'../Content/Image/Maid/30.jpg',2,NULL,0,'0978754416','True','1975-07-26','False','False','False','True',N'Miền trung',N'Quận 10','True')
SET IDENTITY_INSERT [dbo].[Maid] OFF




































































SET IDENTITY_INSERT [dbo].[SkillCategory] ON
INSERT [dbo].[SkillCategory] ([CategoryId], [CategoryName]) VALUES (1,N'Cá nhân')
INSERT [dbo].[SkillCategory] ([CategoryId], [CategoryName]) VALUES (2,N'Kỹ năng')
INSERT [dbo].[SkillCategory] ([CategoryId], [CategoryName]) VALUES (3,N'Yêu cầu')
SET IDENTITY_INSERT [dbo].[SkillCategory] OFF













































SET IDENTITY_INSERT [dbo].[SkillInstance] ON
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (1,1,'Gender',N'Nam',5,0,N'Giới tính')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (2,1,'Gender',N'Nữ',10,1,N'Giới tính')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (3,1,'Age',N'15-20',5,0,N'Tuổi')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (4,1,'Age',N'21-30',10,1,N'Tuổi')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (5,1,'Age',N'31-40',15,2,N'Tuổi')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (6,1,'Age',N'41-50',20,3,N'Tuổi')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (7,1,'Age',N'51-60',25,4,N'Tuổi')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (8,1,'LanguageEnglish',NULL,5,0,N'Biết tiếng Anh')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (9,1,'LanguageChinese',NULL,5,0,N'Biết tiếng Trung')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (10,1,'LanguageJapanese',NULL,5,0,N'Biết tiếng Nhật')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (11,1,'LanguageKorean',NULL,5,0,N'Biết tiếng Hàn')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (12,1,'Experience',N'<1 năm',5,0,N'Kinh nghiệm')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (13,1,'Experience',N'1-3 năm',10,1,N'Kinh nghiệm')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (14,1,'Experience',N'>3 năm',15,2,N'Kinh nghiệm')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (15,1,'Hometown',N'Miền bắc',5,0,N'Nguyên quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (16,1,'Hometown',N'Miền trung',10,1,N'Nguyên quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (17,1,'Hometown',N'Miền nam',15,2,N'Nguyên quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (18,1,'Hometown',N'Miền tây',20,3,N'Nguyên quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (19,1,'Address',N'Quận 1',5,0,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (20,1,'Address',N'Quận 2',10,1,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (21,1,'Address',N'Quận 3',15,2,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (22,1,'Address',N'Quận 4',20,3,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (23,1,'Address',N'Quận 5',25,4,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (24,1,'Address',N'Quận 6',30,5,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (25,1,'Address',N'Quận 7',35,6,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (26,1,'Address',N'Quận 8',40,7,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (27,1,'Address',N'Quận 9',45,8,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (28,1,'Address',N'Quận 10',50,9,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (29,1,'Address',N'Quận 11',55,10,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (30,1,'Address',N'Quận 12',60,11,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (31,1,'Address',N'Quận Bình Tân',65,12,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (32,1,'Address',N'Quận Bình Thạnh',70,13,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (33,1,'Address',N'Quận Gò Vấp',75,14,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (34,1,'Address',N'Quận Phú Nhuận',80,15,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (35,1,'Address',N'Quận Tân Bình',85,16,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (36,1,'Address',N'Quận Tân Phú',90,17,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (37,1,'Address',N'Quận Thủ Đức',95,18,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (38,1,'Address',N'Khác',100,19,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (39,1,'Address',N'Không',105,20,N'Ở tại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (40,1,'Married',N'Không',5,0,N'Kết hôn')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (41,1,'Married',N'Có',10,1,N'Kết hôn')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (42,1,'Health',N'Bình thường',5,0,N'Sức khỏe')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (43,1,'Health',N'Tốt',10,1,N'Sức khỏe')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (46,3,'Stay',N'Không',5,0,N'Lưu trú')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (47,3,'Stay',N'Có',10,1,N'Lưu trú')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (48,3,'Salary',N'<1 tr',5,0,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (49,3,'Salary',N'1-2 tr',10,1,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (50,3,'Salary',N'2-3 tr',15,2,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (51,3,'Salary',N'3-5 tr',20,3,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (52,3,'Salary',N'>5 tr',25,4,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (53,3,'Salary',N'Chưa biết',30,5,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (55,3,'Work',N'Lâu dài',10,1,N'Kiểu công việc')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (56,3,'Work',N'Ngắn hạn',15,2,N'Kiểu công việc')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (60,2,'SickCare',NULL,5,0,N'Chăm sóc người bệnh')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (61,2,'OldCare',NULL,5,0,N'Chăm sóc người già')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (62,2,'BabySister',NULL,5,0,N'Chăm sóc trẻ em')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (63,2,'DisabilityCare',NULL,5,0,N'Chăm sóc người khuyết tật')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (64,2,'BonsaiCare',NULL,5,0,N'Chăm sóc cây cảnh')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (65,2,'Cooking',NULL,5,0,N'Biết nấu ăn')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (66,2,'Washing',NULL,5,0,N'Biết giặt giũ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (67,2,'CleanHouse',NULL,5,0,N'Biết dọn nhà')
SET IDENTITY_INSERT [dbo].[SkillInstance] OFF





































SET IDENTITY_INSERT [dbo].[SkillReference] ON
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (1,1,4,8,NULL,NULL,NULL,13,17,22,40,47,49,56,NULL,NULL,NULL,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (2,2,5,NULL,NULL,NULL,NULL,13,16,22,41,47,51,55,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (3,2,4,NULL,NULL,NULL,NULL,13,NULL,22,41,47,49,55,NULL,NULL,62,NULL,NULL,65,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,50,56,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (5,NULL,NULL,8,NULL,10,NULL,14,NULL,NULL,NULL,47,52,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (6,2,5,NULL,NULL,NULL,NULL,NULL,18,23,40,47,50,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (7,NULL,4,NULL,NULL,NULL,NULL,13,18,21,NULL,46,50,55,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (8,2,4,NULL,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (9,NULL,4,NULL,NULL,NULL,11,13,15,NULL,NULL,47,52,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (10,2,5,NULL,NULL,NULL,NULL,14,NULL,19,41,47,50,55,NULL,61,62,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (11,2,3,NULL,NULL,NULL,NULL,NULL,NULL,20,NULL,47,49,55,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (12,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (13,2,4,8,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,52,NULL,60,NULL,NULL,63,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (14,2,4,NULL,NULL,NULL,NULL,13,15,NULL,41,46,50,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (15,1,7,NULL,NULL,NULL,NULL,NULL,NULL,30,NULL,46,52,NULL,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (17,2,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (18,2,4,NULL,NULL,NULL,NULL,13,NULL,28,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (19,2,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,63,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (20,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (22,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,49,56,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (23,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,50,56,NULL,NULL,NULL,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (24,2,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,47,50,55,60,61,62,63,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (25,NULL,5,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,46,50,56,60,61,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (26,1,5,NULL,NULL,10,NULL,13,15,23,40,47,53,55,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (27,1,4,NULL,NULL,NULL,NULL,14,18,NULL,41,47,52,55,60,61,NULL,63,64,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (28,2,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,47,NULL,55,NULL,NULL,NULL,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (29,1,5,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,46,51,56,NULL,NULL,62,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (30,1,4,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,46,51,56,60,NULL,NULL,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (31,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (32,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (33,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (34,1,4,8,NULL,NULL,NULL,13,15,19,NULL,46,51,55,60,61,62,63,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (35,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (36,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,NULL,49,NULL,NULL,61,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (37,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,61,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (38,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,49,NULL,NULL,NULL,62,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (39,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,46,50,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (40,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,65,NULL,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (41,1,4,8,NULL,NULL,NULL,13,15,19,NULL,46,51,56,60,NULL,62,NULL,64,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (42,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (43,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (44,1,4,8,NULL,NULL,NULL,13,15,19,NULL,46,51,55,60,61,62,63,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (45,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (46,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,NULL,49,NULL,NULL,61,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (47,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,61,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (48,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,49,NULL,NULL,NULL,62,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (49,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,46,50,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (50,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,65,NULL,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (51,2,4,NULL,NULL,NULL,NULL,13,16,20,NULL,46,NULL,NULL,60,61,NULL,NULL,NULL,65,66,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (52,2,4,NULL,NULL,NULL,NULL,13,16,20,NULL,NULL,52,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (53,2,4,NULL,NULL,NULL,NULL,13,16,20,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (54,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,47,52,55,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (55,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (56,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,47,52,55,60,61,NULL,63,NULL,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (57,1,4,8,NULL,NULL,NULL,14,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (58,1,4,8,NULL,NULL,NULL,14,15,NULL,NULL,47,52,NULL,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (59,1,4,8,NULL,NULL,NULL,14,15,NULL,NULL,47,52,NULL,NULL,NULL,NULL,NULL,64,65,NULL,NULL,0,NULL,NULL)

SET IDENTITY_INSERT [dbo].[SkillReference] OFF






































SET IDENTITY_INSERT [dbo].[JobRequest] ON
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (1,32,NULL,1,N'Applied','2014-11-10 10:41:13.873','2014-11-25 10:41:13.873','2014-11-10 13:52:15.593',7,N'Có thể chăm sóc cây,cần ứng trước 50% lương','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (2,33,NULL,1,N'Hide','2014-11-10 10:42:27.710','2014-12-02 10:42:27.710',NULL,7,N'Cần việc lâu dài, biết nấu ăn','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (3,34,NULL,1,N'Hide','2014-11-10 10:43:31.370','2014-12-09 10:43:31.370',NULL,7,N'Có thể chăm sóc người bệnh, trẻ em...','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (4,35,NULL,1,N'Waiting','2014-11-10 10:45:04.207','2014-11-25 10:45:04.207',NULL,3,N'Có thể làm việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (5,36,NULL,1,N'Hide','2014-11-10 10:48:45.363','2014-11-18 10:48:45.363',NULL,3,N'Có thể giúp việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (6,37,NULL,1,N'Hide','2014-11-10 10:49:49.177','2014-11-18 10:49:49.177',NULL,3,N'Nấu ăn ngon, có thể chăm sóc người bệnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (7,38,41,NULL,N'Waiting','2014-11-10 10:54:43.907','2014-11-18 10:54:43.907',NULL,8,N'Biết nấu ăn, cần ứng trước 50% lương','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (8,39,41,NULL,N'Hide','2014-11-10 10:55:17.800','2014-11-18 10:55:17.800',NULL,8,N'Có khả năng chăm sóc cây cảnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (9,40,41,NULL,N'Waiting','2014-11-10 10:56:53.213','2014-11-18 10:56:53.213',NULL,8,N'Biết trông nhà, nấu ăn, chăm sóc người bệnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (10,41,NULL,1,N'Waiting','2014-11-10 10:40:08.967','2014-11-25 10:40:08.967',NULL,1,N'Cần tiền học lại','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (11,42,NULL,1,N'Waiting','2014-11-10 10:43:25.967','2014-12-02 10:43:25.967',NULL,1,N'Cần tạm ứng 50% lương','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (12,43,NULL,1,N'Applied','2014-11-10 10:44:22.317','2014-12-09 10:44:22.317','2014-11-10 13:54:56.677',1,N'Cái gì cũng biết','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (13,44,NULL,1,N'Hide','2014-11-10 10:47:27.503','2014-12-16 10:47:27.503',NULL,1,N'Có kinh nghiệm chăm sóc trẻ','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (14,45,NULL,1,N'Waiting','2014-11-10 10:49:06.997','2014-11-25 10:49:06.997',NULL,1,N'Còn nhiều thiếu sót mong chủ nhà thông cảm','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (15,46,NULL,1,N'Waiting','2014-11-10 10:51:06.177','2014-11-25 10:51:06.177',NULL,1,N'Cần việc làm ổn định','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (16,47,NULL,1,N'Hide','2014-11-10 10:52:02.897','2014-11-25 10:52:02.897',NULL,1,N'Cần tiền cưới vợ','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (17,48,NULL,1,N'Hide','2014-11-10 10:53:38.210','2014-12-02 10:53:38.210',NULL,1,N'Nhà nghèo nhưng chịu khó','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (18,49,NULL,1,N'Waiting','2014-11-10 10:55:17.377','2014-11-18 10:55:17.377',NULL,1,N'Chào chủ nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (19,50,NULL,1,N'Waiting','2014-11-10 10:57:55.080','2014-12-02 10:57:55.080',NULL,1,N'Đi làm thêm kiếm tiền nuôi con','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (20,51,41,NULL,N'Waiting','2014-11-10 10:43:16.990','2014-11-18 10:43:16.990',NULL,2,N'Giỏi việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (21,52,41,NULL,N'Hide','2014-11-10 10:44:12.897','2014-12-09 10:44:12.897',NULL,2,N'Có kinh nghiệm chăm sóc trẻ em','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (22,53,41,NULL,N'Applied','2014-11-10 10:44:41.540','2014-12-09 10:44:41.540','2014-11-10 14:37:25.990',2,N'Giỏi việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (23,54,41,NULL,N'Waiting','2014-11-10 10:48:14.577','2014-12-09 10:48:14.577',NULL,4,N'Việc lâu dài, chủ nhà lớn tuổi','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (24,55,41,NULL,N'Waiting','2014-11-10 10:48:40.327','2014-12-09 10:48:40.327',NULL,4,N'Làm tốt việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (25,56,41,NULL,N'Waiting','2014-11-10 10:49:26.150','2014-12-09 10:49:26.150',NULL,4,N'Kỹ tính, thích công việc chăm sóc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (26,57,NULL,1,N'Hide','2014-11-10 10:53:30.837','2014-12-09 10:53:30.837',NULL,5,N'Có năng khiếu chăm bonsai','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (27,58,NULL,1,N'Waiting','2014-11-10 10:54:42.240','2014-12-09 10:54:42.240',NULL,5,N'Cần chỗ ở, chuyên làm món ăn Bắc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (28,59,NULL,1,N'Waiting','2014-11-10 10:56:18.747','2014-12-09 10:56:18.747',NULL,5,N'Chuyên chăm Bonsai và nấu món Bắc','True')


SET IDENTITY_INSERT [dbo].[JobRequest] OFF




































































SET IDENTITY_INSERT [dbo].[Recruitment] ON
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (1,1,13,'Waiting','2014-11-10 09:28:34.210','2014-11-17 09:28:34.210',N'Cần tìm người giúp việc nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (2,2,13,'Waiting','2014-11-10 09:31:43.767','2014-11-17 09:31:43.767',N'Tìm người chăm sóc người già','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (3,3,13,'Waiting','2014-11-10 09:32:56.147','2014-12-08 09:32:56.147',N'Tìm người trông trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (4,4,13,'Waiting','2014-11-10 09:34:29.027','2014-12-01 09:34:29.027',N'Tìm người chăm sóc cây cảnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (5,5,13,'Waiting','2014-11-10 09:37:25.510','2014-12-15 09:37:25.510',N'Tìm người giỏi ngoại ngữ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (6,6,13,'Waiting','2014-11-10 09:38:40.980','2014-11-24 09:38:40.980',N'Tuyển người dọn nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (7,7,14,'Waiting','2014-11-10 09:43:27.663','2014-11-17 09:43:27.663',N'Tìm người miền tây nấu ăn ngon','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (8,8,14,'Waiting','2014-11-10 09:44:33.367','2014-11-24 09:44:33.367',N'Tìm người giúp việc nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (9,9,14,'Waiting','2014-11-10 09:45:50.727','2014-11-17 09:45:50.727',N'Cần người biết tiếng Hàn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (10,10,14,'Waiting','2014-11-10 09:47:32.417','2014-12-01 09:47:32.417',N'Tìm người chăm sóc trẻ, người già','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (11,11,14,'Waiting','2014-11-10 09:48:54.707','2014-11-17 09:48:54.707',N'Tìm người trẻ tuổi biết chăm sóc trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (12,12,12,'Waiting','2014-11-10 09:29:27.327','2014-12-08 09:29:27.327',N'Tìm người làm việc nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (13,13,12,'Waiting','2014-11-10 09:32:28.350','2014-12-08 09:32:28.350',N'Tìm người nói chuyện với người ngoại quốc','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (14,14,12,'Waiting','2014-11-10 09:38:26.333','2014-12-08 09:38:26.333',N'Con 6 tháng cần người chăm','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (15,15,12,'Waiting','2014-11-10 09:42:59.550','2014-12-15 09:42:59.550',N'Tìm người Q12, giỏi chăm cây','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (16,16,12,'Waiting','2014-11-10 09:44:14.297','2014-12-08 09:44:14.297',N'Tìm người hay làm chịu khó','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (17,17,16,'Waiting','2014-11-10 09:47:52.050','2014-12-15 09:47:52.050',N'Tìm người trẻ tuổi biết nấu ăn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (18,18,16,'Waiting','2014-11-10 09:53:34.720','2014-12-15 09:53:34.720',N'Cần người làm việc nhẹ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (19,19,16,'Waiting','2014-11-10 09:55:02.717','2014-12-01 09:55:02.717',N'Cần người làm việc gia đình','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (20,20,16,'Waiting','2014-11-10 09:55:49.157','2014-12-08 09:55:49.157',N'Nhà nhiều bosai, cần người chăm','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (21,21,16,'Waiting','2014-11-10 09:56:42.113','2014-12-08 09:56:42.113',N'Mẹ liệt, cần chăm sóc','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (22,22,11,'Applied','2014-11-06 13:15:11.320','2014-11-13 13:15:11.320',N'Tuyển người chăm sóc trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (23,23,11,'Applied','2014-11-06 13:50:48.460','2014-11-13 13:50:48.460',N'Chủ nhà dễ tính','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (24,24,11,'Applied','2014-11-06 14:07:57.757','2014-12-11 14:07:57.757',N'Cần tìm gái trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (25,25,11,'Hide','2014-11-09 19:06:59.060','2014-11-16 19:06:59.060',N'Cần người trung niên','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (26,26,11,'Waiting','2014-11-10 09:37:51.527','2014-12-01 09:37:51.527',N'Cần người làm','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (27,27,11,'Waiting','2014-11-10 09:45:30.313','2014-11-24 09:45:30.313',N'Cần người khỏe mạnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (28,28,11,'Waiting','2014-11-10 09:58:09.133','2014-11-24 09:58:09.133',N'Tìm người làm việc lâu dài','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (29,29,11,'Waiting','2014-11-10 10:03:30.973','2014-12-01 10:03:30.973',N'Yêu cầu chịu khó biết nghe lời','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (30,30,11,'Waiting','2014-11-10 10:05:29.113','2014-11-17 10:05:29.113',N'Tuyển người biết tiếng Hàn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (31,31,11,'Waiting','2014-11-10 10:06:40.073','2014-12-01 10:06:40.073',N'Tuyển người biết tiếng Anh','True')
SET IDENTITY_INSERT [dbo].[Recruitment] OFF




































































INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (22,1,N'NULL')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (23,12,N'NULL')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (24,22,N'NULL')
































































































SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (1,11,1,'2014-11-10 13:53:55.547',N'Làm tốt, nhiệt tình')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (2,11,22,'2014-11-10 14:37:54.127',N'Làm việc tuy nhiệt tình, nhưng chưa sáng tạo')






































SET IDENTITY_INSERT [dbo].[Comment] OFF


























































SET IDENTITY_INSERT [dbo].[Rating] ON
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (1,11,1,8)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (2,11,12,0)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (3,11,22,7)


SET IDENTITY_INSERT [dbo].[Rating] OFF





























































































SET IDENTITY_INSERT [dbo].[Notifier] ON
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (1,1,'2014-11-10 13:52:16.187',N'Yêu cầu của bạn đã được thuê','/Post/GetJobRequest?jobId=1','False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (2,1,'2014-11-10 13:54:56.767',N'Yêu cầu của bạn đã được thuê','/Post/GetJobRequest?jobId=12','False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (3,41,'2014-11-10 14:37:27.330',N'Yêu cầu của bạn đã được thuê','/Post/GetJobRequest?jobId=22','False')
















SET IDENTITY_INSERT [dbo].[Notifier] OFF














































































