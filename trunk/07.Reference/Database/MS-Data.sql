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
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (1,N'thangnv','123456','True','2014-02-10 9:00:00','Staff','False','../Content/Image/Staff/1.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Văn Thắng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (2,N'tainv','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/2.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Văn Tài')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (3,N'trangbt','123456','True','2014-09-28 9:00:00','Staff','False','../Content/Image/Staff/3.jpg','bttvn.4t@gmail.com','0978754416',N'Bùi Thùy Trang')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (4,N'dunghc','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/4.jpg','bttvn.4t@gmail.com','0978754416',N'Hồ Cẩm Dung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (5,N'tuannm','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/5.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Mậu Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (6,N'trunghv','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/6.JPG','bttvn.4t@gmail.com','0978754416',N'Hoàng Văn Trung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (7,N'hongqc','123456','True','2014-10-04 9:00:00','Staff','False','../Content/Image/Staff/7.jpg','bttvn.4t@gmail.com','0978754416',N'Quách Cẩm Hồng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (8,N'nhunt','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/8.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Thị Như')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (9,N'nhuttm','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/9.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Minh Nhựt')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (10,N'longlq','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/10.JPG','bttvn.4t@gmail.com','0978754416',N'Lưu Quang Long')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (11,N'DangTH','123456','True','2014-02-10 9:00:00','Customer','False','../Content/Image/Profile/11.jpg','bttvn.4t@gmail.com','0978754416',N'Trương Hải Đăng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (12,N'DanhTC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/12.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Cao danh')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (13,N'SuTNT','123456','True','2014-09-28 9:00:00','Customer','False','../Content/Image/Profile/13.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Nguyễn Tiến Sứ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (14,N'CuongNC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/14.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Cao Cường')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (15,N'TuanBT','123456','True','2014-10-03 9:00:00','Admin','True','../Content/Image/Profile/15.jpg','bttvn.4t@gmail.com','0978754416',N'Bùi Tiến Tuân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (16,N'HueTT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/16.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Thị Huệ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (17,N'TuanTQ','123456','True','2014-10-04 9:00:00','Customer','False','../Content/Image/Profile/17.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Quốc Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (18,N'LanNT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/18.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Thị Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (19,N'VuTT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/19.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Thị Vũ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (20,N'NhuVT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/20.jpg','bttvn.4t@gmail.com','0978754416',N'Võ Thị Như')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (21,N'LanHT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/21.jpg','bttvn.4t@gmail.com','0978754416',N'Hoàng Thị Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (22,N'QuanKM','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/22.jpg','bttvn.4t@gmail.com','0978754416',N'Khương Mạnh Quân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (23,N'LanVTN','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/23.jpg','bttvn.4t@gmail.com','0978754416',N'Vũ Thị Như Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (24,N'NinhQT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/24.jpg','bttvn.4t@gmail.com','0978754416',N'Quách Thị Ninh')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (25,N'HaoTC','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/25.jpg','bttvn.4t@gmail.com','0978754416',N'Tăng Công hảo')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (26,N'DuyK','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/26.jpg','bttvn.4t@gmail.com','0978754416',N'Khương Duy')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (27,N'LocTQ','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/27.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Quang Lộc')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (28,N'MyPT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/28.jpg','bttvn.4t@gmail.com','0978754416',N'Phan Thế Mỹ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (29,N'HoanAV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/29.jpg','bttvn.4t@gmail.com','0978754416',N'Âu Văn Hoàn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (30,N'DongTD','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/30.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Đình Đồng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (31,N'TuanLQ','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/31.jpg','bttvn.4t@gmail.com','0978754416',N'Lê Quang Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (32,N'PhiTP','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/32.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Phú Phi')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (33,N'HienNP','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/33.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Phú hiển')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (34,N'HienDB','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/34.jpg','bttvn.4t@gmail.com','0978754416',N'Đào Bá Diệp')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (35,N'HaiDV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/35.jpg','bttvn.4t@gmail.com','0978754416',N'Duy Van Hai')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (36,N'DiepBV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/36.jpg','bttvn.4t@gmail.com','0978754416',N'Bùi Bá Diệp')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (37,N'CongTV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/37.jpg','bttvn.4t@gmail.com','0978754416',N'Trần Văn Công')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (38,N'HaiHV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/38.jpg','bttvn.4t@gmail.com','0978754416',N'Hoàng Vũ hải')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (39,N'LapBT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/39.jpg','bttvn.4t@gmail.com','0978754416',N'Bùi Trần Lập')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (40,N'MaiMT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/40.jpg','bttvn.4t@gmail.com','0978754416',N'Minh Thị Mai')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (41,N'TuyenMQ','123456','True','2014-10-05 9:00:01','MaidMediator','False','../Content/Image/MaidMediator/41.jpg','bttvn.4t@gmail.com','0978754416',N'Mạnh Quang Tuyến')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (42,N'TuanBTT','123456','True','2014-10-05 9:00:02','MaidMediator','False','../Content/Image/MaidMediator/42.jpg','bttvn.4t@gmail.com','0978754416',N'Bùi TIến Tuân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (43,N'ThoTP','123456','True','2014-10-05 9:00:03','MaidMediator','False','../Content/Image/MaidMediator/43.jpg','bttvn.4t@gmail.com','0978754416',N'Trịnh Phúc Thọ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (44,N'HieuHT','123456','True','2014-10-05 9:00:04','MaidMediator','False','../Content/Image/MaidMediator/44.jpg','bttvn.4t@gmail.com','0978754416',N'Hoàng Trung Hiếu')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (45,N'DangNH','123456','True','2014-10-05 9:00:05','MaidMediator','False','../Content/Image/MaidMediator/45.jpg','bttvn.4t@gmail.com','0978754416',N'Nguyễn Hải Đăng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (46,N'CongNT','123456','True','2014-10-05 9:00:06','MaidMediator','False','../Content/Image/default-avatar.png','bttvn.4t@gmail.com','0978754416',N'Nguyễn Tấn Công')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (47,N'TuanTM','123456','True','2014-10-05 9:00:07','MaidMediator','False','../Content/Image/default-avatar.png','bttvn.4t@gmail.com','0978754416',N'Trần Minh Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (48,N'TaiHV','123456','True','2014-10-05 9:00:08','MaidMediator','False','../Content/Image/default-avatar.png','bttvn.4t@gmail.com','0978754416',N'Hà Văn Tài')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (49,N'HieuNH','123456','True','2014-10-05 9:00:09','MaidMediator','False','../Content/Image/default-avatar.png','bttvn.4t@gmail.com','0978754416',N'Nguyễn Hoàng Hiếu')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (50,N'TraDT','123456','True','2014-10-05 9:00:10','MaidMediator','False','../Content/Image/default-avatar.png','bttvn.4t@gmail.com','0978754416',N'Dương Thị Trà')
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
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (1,N'Nguyễn Hải Nam',41,NULL,N'../Content/Image/Maid/1.jpg',3,N'Cần việc ổn định lương thỏa thuận',5,'0978754416','True','1989-08-20','True','False','False','False',N'Miền bắc',N'Quận 1','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (2,N'Trần Thị Tú',42,NULL,N'../Content/Image/Maid/2.jpg',2,N'Cần việc làm và chỗ ở',7,'0978754416','False','1991-07-02','False','False','True','False',N'Miền trung',N'Quận 2','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (3,N'Lê Văn Hải',43,NULL,N'../Content/Image/Maid/3.jpg',5,N'Đã tốt nghiệp cấp 3 cần kiếm tiền học đại học',8,'0978754416','True','1998-04-30','False','True','False','True',N'Miền nam',N'Quận 3','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (4,N'Nguyễn Thị Cam',42,NULL,N'../Content/Image/Maid/4.jpg',3,N'Yêu cầu chủ thuê từ 30 - 40 tuổi',5.5,'0978754416','False','1987-02-26','True','True','True','True',N'Miền tây',N'Quận 4','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (5,N'Bùi Văn Bé',44,NULL,N'../Content/Image/Maid/5.jpg',4,N'Cần tạm ứng trước 50% mức lương',7,'0978754416','True','1988-07-15','False','False','False','False',N'Miền bắc',NULL,'False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (6,N'Trương Minh Hải',45,NULL,N'../Content/Image/Maid/6.jpg',1,NULL,6,'0978754416','True','1985-08-17','False','True','False','False',N'Miền trung',N'Quận 6','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (7,N'Trần Thị Bưởi',NULL,1,N'../Content/Image/Maid/7.jpg',1.5,N'Có nhiều kinh nghiệm trong việc chăm sóc trẻ',6.5,'0978754416','False','1991-05-22','True','True','True','True',N'Miền nam',N'Quận 7','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (8,N'Ngô Minh Thiện',46,NULL,N'../Content/Image/Maid/8.jpg',2,N'Sẽ cố gắng hết sức làm vừa lòng chủ nhà',4,'0978754416','True','1990-08-24','False','False','False','False',NULL,N'Quận 8','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (9,N'Vũ Minh Quân',47,NULL,N'../Content/Image/Maid/9.jpg',3.5,N'Thứ 7 Chủ nhật ko làm',6,'0978754416','True','1985-02-23','True','True','True','True',N'Miền bắc',N'Quận 9','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (10,N'Hoàng Thế Hải ',NULL,2,N'../Content/Image/Maid/10.jpg',4.5,N'Yêu cầu tạm trú chỗ ở 1 phòng có máy lạnh',8.5,'0978754416','True','1987-01-20','True','False','False','True',N'Miền trung',N'Quận 10','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (11,N'Lưu Thị Kim Mai',48,NULL,N'../Content/Image/Maid/11.jpg',2,NULL,5.5,'0978754416','False','1984-07-10','False','True','True','False',N'Miền nam',NULL,'True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (12,N'Ngô Hải Đăng',49,NULL,N'../Content/Image/Maid/12.jpg',1,N'Là người hòa đồng, thân thiện, dễ gần',1.5,'0978754416','True','1983-05-10','False','True','True','True',N'Miền tây',N'Quận 12','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (13,N'Nguyễn Minh Vương',NULL,3,N'../Content/Image/Maid/13.jpg',6,NULL,3,'0978754416','True','1970-05-18','True','True','False','False',N'Miền bắc',N'Quận Bình Tân','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (14,N'Lê Thị Thúy Vân',50,NULL,N'../Content/Image/Maid/14.jpg',5,NULL,4,'0978754416','False','1988-09-25','True','True','True','True',N'Miền trung',N'Quận Bình Thạnh','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (15,N'Trịnh Hải Hoàng',41,NULL,N'../Content/Image/Maid/15.jpg',3,N'Còn nhiều thiếu sót nhưng sẽ cố gắng học hỏi thêm',3,'0978754416','True','1989-03-29','False','True','True','False',NULL,N'Quận Gò Vấp','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (16,N'Bùi Thị Thuyết',NULL,1,N'../Content/Image/Maid/16.jpg',4,NULL,7,'0978754416','False','1988-06-19','True','False','False','True',N'Miền tây',N'Quận Phú Nhuận','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (17,N'Nguyễn Vân Anh',NULL,5,N'../Content/Image/Maid/17.jpg',1,N'Đang còn đi học mong chủ nhà thông cảm nếu có sai sót',5,'0978754416','False','1985-04-26','False','True','False','True',N'Miền bắc',N'Quận Tân Bình','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (18,N'Vũ Thị Thúy Lan',NULL,4,N'../Content/Image/Maid/18.jpg',2,NULL,5.5,'0978754416','False','1984-09-25','False','True','False','False',N'Miền trung',N'Quận Tân Phú','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (19,N'Bùi Văn Bánh',42,NULL,N'../Content/Image/Maid/19.jpg',3.5,NULL,6,'0978754416','True','1983-08-10','True','True','False','True',N'Miền nam',N'Quận Thủ Đức','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (20,N'Nguyễn Thị Cẩm Tú',NULL,2,N'../Content/Image/Maid/20.jpg',4,NULL,7,'0978754416','False','1991-07-15','False','False','False','True',NULL,NULL,'True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (21,N'Lê Thị Ánh Tuyết',NULL,3,N'../Content/Image/Maid/21.jpg',0.5,N'Mới vào nghề mong chủ nhà thông cảm',4,'0978754416','False','1985-02-11','False','False','False','False',N'Miền bắc',N'Quận 1','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (22,N'Trịnh Công Thành',43,NULL,N'../Content/Image/Maid/22.jpg',2,N'Rất tự tin vào năng lực của bản thân',8,'0978754416','True','1984-09-15','True','True','False','True',N'Miền trung',N'Quận 2','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (23,N'Trương Bình Minh',44,NULL,N'../Content/Image/Maid/23.jpg',4,N'Yêu cầu nhà ko nuôi chó',6,'0978754416','True','1985-04-10','False','True','True','True',N'Miền nam',N'Quận 3','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (24,N'Nguyễn Thị Thúy Vy',45,NULL,N'../Content/Image/Maid/24.jpg',3,N'Dễ thương, dễ gần, dễ nói chuyện',5.5,'0978754416','False','1990-04-28','False','False','False','True',N'Miền tây',N'Quận 4','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (25,N'Lê Thị Cẩm Lan',46,NULL,N'../Content/Image/Maid/25.jpg',2,N'Ko làm được những việc nặng nhọc',6,'0978754416','False','1987-06-18','True','False','False','True',N'Miền bắc',N'Quận 5','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (26,N'Bùi Quốc Huy',47,NULL,N'../Content/Image/Maid/26.jpg',3,NULL,5,'0978754416','True','1988-03-29','False','True','False','False',N'Miền trung',N'Quận 6','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (27,N'Nguyễn Thị Ánh',NULL,3,N'../Content/Image/Maid/27.jpg',0.5,NULL,3,'0978754416','False','1986-06-16','True','True','False','True',N'Miền nam',N'Quận 7','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (28,N'Lê Thị Thảo',48,NULL,N'../Content/Image/Maid/28.jpg',2,N'Rất giỏi trong việc bếp núc',8,'0978754416','False','1991-06-17','False','False','True','True',N'Miền tây',N'Quận 8','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (29,N'Hoàng Văn Trung',NULL,1,N'../Content/Image/Maid/29.jpg',3,NULL,4.5,'0978754416','True','1980-02-14','False','True','False','True',N'Miền bắc',N'Quận 9','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (30,N'Lê Công Đình',49,NULL,N'../Content/Image/Maid/30.jpg',2,NULL,7,'0978754416','True','1975-07-26','False','True','False','True',N'Miền trung',N'Quận 10','True')
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
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (1,2,4,null,null,10,null,13,16,20,40,46,48,56,60,null,62,63,null,65,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (2,2,4,null,null,10,null,13,16,20,40,47,49,56,null,null,null,null,null,65,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (3,1,4,null,null,null,null,14,17,21,41,46,51,55,null,null,null,null,64,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (4,1,4,8,null,null,null,13,15,19,40,47,50,55,60,61,62,63,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (5,1,4,null,null,null,null,14,17,21,41,46,51,55,null,null,null,null,64,null,66,67,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (6,1,4,null,null,null,null,14,17,21,41,46,51,55,null,null,null,null,64,65,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (7,1,4,8,null,null,null,13,15,19,40,46,50,55,60,null,null,null,64,null,66,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (8,2,5,null,9,10,null,13,17,null,41,47,50,56,null,null,62,null,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (9,1,6,null,9,null,11,13,16,28,41,46,50,56,null,61,62,null,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (10,1,4,8,null,null,11,13,15,19,40,46,49,55,null,null,null,null,null,null,66,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (11,1,4,null,null,null,null,14,17,21,41,46,51,55,null,null,null,null,64,65,66,67,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (12,1,4,null,null,null,null,13,16,20,40,47,49,56,60,61,62,63,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (13,1,6,8,9,null,null,14,15,31,41,47,51,55,60,null,null,null,64,65,66,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (14,1,4,null,null,null,null,14,15,null,40,46,48,55,null,61,62,null,64,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (15,1,5,8,null,10,null,14,17,37,40,46,51,56,60,61,null,63,null,65,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (16,2,4,8,null,null,11,14,18,34,41,47,51,55,null,null,62,63,null,null,66,67,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (17,2,4,null,null,10,null,13,15,35,40,46,50,56,60,null,62,null,null,null,null,67,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (18,2,4,8,null,null,null,13,16,36,41,46,49,55,null,null,null,null,64,65,66,67,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (19,1,3,null,9,null,null,13,null,33,41,47,50,56,60,61,null,null,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (20,2,3,null,null,null,11,14,null,null,41,47,51,56,60,61,62,63,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (21,2,4,null,null,null,null,12,15,19,41,46,49,55,61,null,62,null,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (22,1,4,8,null,null,null,13,15,19,40,47,50,55,60,61,62,63,null,65,66,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (23,1,5,8,null,10,null,14,17,37,40,46,51,56,60,61,null,63,64,65,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (24,1,3,null,9,null,null,13,null,33,41,47,50,56,null,61,null,63,null,null,null,67,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (25,1,5,8,null,10,null,14,17,37,40,46,51,56,60,61,null,63,null,65,null,67,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (26,2,4,null,null,10,null,13,16,20,40,46,48,56,60,null,null,null,null,65,66,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (27,2,4,null,null,10,null,12,17,25,41,47,50,56,60,61,62,63,64,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (28,1,4,8,null,null,null,13,15,19,40,47,50,55,60,61,null,63,null,null,66,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (29,1,5,null,9,null,null,13,15,27,41,46,48,56,60,null,null,null,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (30,1,4,null,null,null,11,13,16,24,40,46,50,56,60,61,null,63,null,null,null,null,0,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (31,2,4,null,null,10,null,13,16,20,40,46,48,56,null,null,62,null,null,65,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (32,2,4,null,null,10,null,13,16,20,40,47,49,56,null,null,null,63,null,65,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (33,1,4,null,null,null,null,14,17,21,41,46,51,55,null,null,62,null,64,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (34,1,4,8,null,null,null,13,15,19,40,47,50,55,60,61,62,63,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (35,1,4,null,null,null,null,14,17,21,41,46,51,55,null,null,null,null,64,null,66,67,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (36,1,4,null,null,null,null,14,17,21,41,46,51,55,60,null,null,null,null,65,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (37,1,4,8,null,null,null,13,15,19,40,46,50,55,60,null,null,null,64,null,66,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (38,2,5,null,9,10,null,13,17,null,41,47,50,56,null,null,62,null,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (39,1,6,null,9,null,11,13,16,28,41,46,50,56,null,61,62,null,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (40,1,4,8,null,null,11,13,15,19,40,46,49,55,null,null,null,null,null,null,66,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (41,1,4,null,null,null,null,14,17,21,41,46,51,55,null,null,null,null,64,65,66,67,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (42,1,4,null,null,null,null,13,16,20,40,47,49,56,60,61,62,63,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (43,1,6,8,9,null,null,14,15,31,41,47,51,55,60,null,null,null,64,65,66,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (44,1,4,null,null,null,null,14,15,null,40,46,48,55,null,61,62,null,64,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (45,1,5,8,null,10,null,14,17,37,40,46,51,56,60,61,null,63,null,65,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (46,2,4,8,null,null,11,14,18,34,41,47,51,55,null,null,62,63,null,null,66,67,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (47,2,4,null,null,10,null,13,15,35,40,46,50,56,60,null,62,null,null,null,null,67,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (48,2,4,8,null,null,null,13,16,36,41,46,49,55,null,null,null,null,64,65,66,67,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (49,1,3,null,9,null,null,13,null,33,41,47,50,56,60,61,null,null,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (50,2,3,null,null,null,11,14,null,null,41,47,51,56,60,61,62,63,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (51,2,4,null,null,null,null,12,15,19,41,46,49,55,61,null,62,null,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (52,1,4,8,null,null,null,13,15,19,40,47,50,55,60,61,62,63,null,65,66,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (53,1,5,8,null,10,null,14,17,37,40,46,51,56,60,61,null,63,64,65,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (54,1,3,null,9,null,null,13,null,33,41,47,50,56,null,61,null,63,null,null,null,67,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (55,1,5,8,null,10,null,14,17,37,40,46,51,56,60,61,null,63,null,65,null,67,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (56,2,4,null,null,10,null,13,16,20,40,46,48,56,60,null,null,null,null,65,66,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (57,2,4,null,null,10,null,12,17,25,41,47,50,56,60,61,62,63,64,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (58,1,4,8,null,null,null,13,15,19,40,47,50,55,60,61,null,63,null,null,66,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (59,1,5,null,9,null,null,13,15,27,41,46,48,56,60,null,null,null,null,null,null,null,1,null,null)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (60,1,4,null,null,null,11,13,16,24,40,46,50,56,60,61,null,63,null,null,null,null,1,null,null)
SET IDENTITY_INSERT [dbo].[SkillReference] OFF






































SET IDENTITY_INSERT [dbo].[JobRequest] ON
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (1,1,41,NULL,N'Applied','2014-08-13 11:00:00','2014-08-21 11:00:00','2014-08-15 10:00:00',2,N'Cần việc làm ổn định','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (2,2,42,NULL,N'Expired','2014-02-03 10:00:00','2014-02-11 10:00:00',NULL,2,N'Cần việc lương cao','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (3,3,43,NULL,N'Hide','2014-04-22 16:20:00','2014-04-30 16:20:00',NULL,3,N'Làm việc chăm sóc cây cảnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (4,4,NULL,1,N'Approved','2014-05-20 5:00:00','2014-05-28 5:00:00','2014-08-15 10:00:00',1,N'Có thể chăm sóc người bệnh','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (5,5,43,NULL,N'Applied','2014-05-12 8:00:00','2014-05-20 8:00:00','2014-05-15 8:00:00',3,N'Nhận rửa chén, lau nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (6,6,43,NULL,N'Expired','2014-01-15 6:00:00','2014-01-23 6:00:00',NULL,3,N'Nấu ăn, chăm sóc cây','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (7,7,NULL,1,N'Waiting','2014-03-20 15:30:00','2014-03-28 15:30:00',NULL,1,N'Rửa chén và làm các việc chăm sóc','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (8,8,43,NULL,N'Approved','2014-02-02 12:00:00','2014-02-10 12:00:00','2014-08-15 10:00:00',11,N'Chăm sóc trẻ','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (9,9,49,NULL,N'Applied','2014-09-17 8:00:00','2014-09-25 8:00:00','2014-09-19 8:00:00',30,N'Chăm sóc người già và trẻ nhỏ','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (10,10,NULL,1,N'Hide','2014-05-12 18:00:00','2014-05-20 18:00:00',NULL,1,N'Nhận rửa chén','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (11,11,43,NULL,N'Waiting','2014-04-20 10:00:00','2014-04-28 10:00:00',NULL,3,N'Rửa chén, nấu ăn, lau nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (12,12,43,NULL,N'Approved','2014-08-02 10:30:00','2014-08-10 10:30:00','2014-08-15 10:00:00',22,N'Dịch vụ chăm sóc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (13,13,NULL,3,N'Applied','2014-07-11 9:00:00','2014-07-19 9:00:00','2014-07-13 12:00:00',13,N'Dịch vụ chăm sóc và nấu ăn','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (14,14,44,NULL,N'Waiting','2014-11-20 8:20:00','2014-11-28 8:20:00',NULL,5,N'Dịch vụ chăm sóc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (15,15,42,NULL,N'Applied','2014-03-13 9:00:00','2014-03-21 9:00:00','2014-03-18 17:00:00',19,N'Chăm sóc người già và trẻ nhỏ','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (16,16,NULL,1,N'Applied','2014-05-22 19:10:00','2014-05-30 19:10:00','2014-05-25 22:30:00',16,N'Rửa chén và lau nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (17,17,NULL,5,N'Waiting','2014-01-04 15:00:00','2014-01-12 15:00:00',NULL,17,N'Chăm sóc người bệnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (18,18,NULL,4,N'Approved','2014-03-21 13:10:00','2014-03-29 13:10:00','2014-08-15 10:00:00',18,N'Giúp việc gia đình','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (19,19,41,NULL,N'Hide','2014-05-10 14:00:00','2014-05-18 14:00:00',NULL,15,N'Chăm sóc sức khỏe','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (20,20,NULL,2,N'Approved','2014-09-21 7:30:00','2014-09-29 7:30:00','2014-08-15 10:00:00',20,N'Chăm sóc sức khỏe','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (21,21,NULL,3,N'Waiting','2014-05-10 9:00:00','2014-05-18 9:00:00',NULL,21,N'Chăm sóc trẻ em và người bệnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (22,22,41,NULL,N'Expired','2014-02-11 16:00:00','2014-02-18 16:00:00',NULL,1,N'Chăm sóc và làm việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (23,23,42,NULL,N'Expired','2014-05-20 11:00:00','2014-05-28 11:00:00',NULL,19,N'Chăm sóc và nấu ăn','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (24,24,41,NULL,N'Waiting','2014-11-10 19:00:00','2014-11-18 19:00:00',NULL,15,N'Nhận lau nhà','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (25,25,42,NULL,N'Applied','2014-09-12 18:00:00','2014-09-20 18:00:00','2014-09-15 14:00:00',19,N'Có thể rửa chén, nấu ăn','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (26,26,42,NULL,N'Expired','2014-08-02 17:00:00','2014-08-10 17:00:00',NULL,2,N'Nấu ăn và rửa chén','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (27,27,NULL,3,N'Expired','2014-06-14 11:20:00','2014-06-22 11:20:00',NULL,27,N'Dịch vụ chăm sóc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (28,28,41,NULL,N'Expired','2014-01-11 17:50:00','2014-01-19 17:50:00',NULL,1,N'Chăm sóc và rửa chén','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (29,29,NULL,1,N'Waiting','2014-03-08 16:40:00','2014-03-16 16:40:00',NULL,29,N'Chăm sóc người bệnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (30,30,47,NULL,N'Applied','2014-05-03 19:20:00','2014-05-11 19:20:00','2014-05-09 12:30:00',26,N'Chăm sóc người bệnh','True')
SET IDENTITY_INSERT [dbo].[JobRequest] OFF




































































SET IDENTITY_INSERT [dbo].[Recruitment] ON
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (1,31,11,'Applied','2014-08-13 10:00:00','2014-08-21 10:00:00',N'Tìm người làm ổn định','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (2,32,12,'Payment','2014-08-13 10:00:01','2014-08-21 10:00:01',N'Tìm người giỏi, trả lương cao','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (3,33,13,'Hide','2014-08-13 10:00:02','2014-08-21 10:00:02',N'Tìm người chăm sóc cây cảnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (4,34,14,'Payment','2014-08-13 10:00:03','2014-08-21 10:00:03',N'Tìm người chăm sóc người bệnh','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (5,35,15,'Applied','2014-08-13 10:00:04','2014-08-21 10:00:04',N'Tìm người rửa chén, lau nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (6,36,16,'Expired','2014-09-01 07:20:00','2014-09-09 07:20:00',N'Tìm người nấu ăn, chăm sóc cây','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (7,37,17,'Waiting','2014-09-01 08:00:00','2014-09-09 08:00:00',N'Tìm người rửa chén và làm các việc chăm sóc','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (8,38,18,'Approved','2014-09-01 08:00:01','2014-09-09 08:00:01',N'Tìm người chăm sóc trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (9,39,19,'Hide','2014-09-01 08:00:02','2014-09-09 08:00:02',N'Tìm người chăm sóc người già và trẻ nhỏ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (10,40,20,'Expired','2014-09-01 08:00:04','2014-09-09 08:00:04',N'Tìm người rửa chén','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (11,41,21,'Waiting','2014-09-01 08:00:05','2014-09-09 08:00:05',N'Tìm người rửa chén, nấu ăn, lau nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (12,42,22,'Approved','2014-09-01 08:00:04','2014-09-09 08:00:04',N'Tìm người chăm sóc','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (13,43,23,'Applied','2014-09-01 08:00:05','2014-09-09 08:00:05',N'Tìm người chăm sóc và nấu ăn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (14,44,24,'Waiting','2014-09-01 08:00:06','2014-09-09 08:00:06',N'Tìm người chăm sóc','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (15,45,25,'Payment','2014-09-01 08:00:05','2014-09-09 08:00:05',N'Tìm người chăm sóc người già và trẻ nhỏ','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (16,46,26,'Applied','2014-09-01 08:00:06','2014-09-09 08:00:06',N'Tìm người rửa chén và lau nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (17,47,27,'Waiting','2014-09-01 08:00:07','2014-09-09 08:00:07',N'Tìm người chăm sóc người bệnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (18,48,28,'Approved','2014-09-01 08:00:09','2014-09-09 08:00:09',N'Tìm người giúp việc gia đình','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (19,49,29,'Waiting','2014-09-01 08:00:10','2014-09-09 08:00:10',N'Tìm người chăm sóc sức khỏe','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (20,50,30,'Payment','2014-09-01 08:00:11','2014-09-09 08:00:11',N'Tìm người chăm sóc sức khỏe','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (21,51,31,'Waiting','2014-09-01 08:00:12','2014-09-09 08:00:12',N'Tìm người chăm sóc trẻ em và người bệnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (22,52,32,'Expired','2014-09-02 08:00:12','2014-09-10 08:00:12',N'Tìm người chăm sóc và làm việc nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (23,53,33,'Expired','2014-09-02 08:00:14','2014-09-10 08:00:14',N'Tìm người chăm sóc và nấu ăn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (24,54,34,'Payment','2014-09-02 08:00:15','2014-09-10 08:00:15',N'Tìm người lau nhà','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (25,55,35,'Payment','2014-09-02 08:00:16','2014-09-10 08:00:16',N'Tìm người rửa chén, nấu ăn, lau nhà','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (26,56,36,'Expired','2014-09-02 08:00:17','2014-09-10 08:00:17',N'Tìm người nấu ăn và rửa chén','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (27,57,37,'Expired','2014-09-02 08:00:20','2014-09-10 08:00:20',N'Tìm người chăm sóc','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (28,58,38,'Expired','2014-09-02 08:00:25','2014-09-10 08:00:25',N'Tìm người chăm sóc và rửa chén','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (29,59,39,'Waiting','2014-09-02 08:00:26','2014-09-10 08:00:26',N'Tìm người chăm sóc người bệnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title],[IsActive]) VALUES (30,60,40,'Applied','2014-09-02 08:00:27','2014-09-10 08:00:27',N'Tìm người chăm sóc người bệnh','True')
SET IDENTITY_INSERT [dbo].[Recruitment] OFF





































































INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (1,1,N'Description1')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (4,4,N'Description2')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (5,5,N'Description3')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (8,8,N'Description4')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (9,9,N'Description5')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (12,12,N'Description6')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (13,13,N'Description7')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (15,15,N'Description8')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (16,16,N'Description9')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (18,18,N'Description10')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (20,20,N'Description11')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (25,25,N'Description12')
INSERT [dbo].[Apply] ([RecruitmentId], [JobRequestId],[Description]) VALUES (30,30,N'Description13')






















































































SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (1,14,4,'2014-08-13 10:00:00',N'Làm việc không cẩn thận, lười biếng')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (2,18,8,'2014-08-13 10:00:01',N'Tốt, nấu ăn ngon')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (3,22,12,'2014-08-13 10:00:02',N'Làm việc tạm ổn')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (4,28,18,'2014-08-13 10:00:03',N'Nấu ăn ngon, làm việc sạch sẽ')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (5,30,20,'2014-08-13 10:00:04',N'Kĩ năng chăm sóc khá')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (6,14,4,'2014-08-13 10:00:05',N'Kĩ năng chăm sóc khá tệ')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (7,18,8,'2014-08-13 10:00:06',N'Rất tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (8,22,12,'2014-08-13 10:00:07',N'Tạm ổn')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (9,28,18,'2014-08-13 10:00:08',N'Thân thiện, vui vẻ')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (10,30,20,'2014-08-13 10:00:09',N'Làm việc khá tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (11,11,1,'2014-08-13 10:00:09',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (12,12,2,'2014-10-09 10:00:09',N'Chưa chăm chỉ')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (13,13,3,'2014-10-09 10:00:09',N'Thái độ làm việc tốt, chịu khó')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (14,12,4,'2014-10-09 10:00:09',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (15,12,5,'2014-10-09 10:00:10',N'CÒn làm thiếu việc')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (16,12,6,'2014-10-09 10:00:11',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (17,13,7,'2014-10-09 10:00:12',N'Chất lượng công việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (18,35,8,'2014-10-09 10:00:13',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (19,36,9,'2014-10-09 10:00:14',N'Chất lượng công việc chưa tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (20,37,10,'2014-10-09 10:00:15',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (21,35,11,'2014-10-09 10:00:16',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (22,36,12,'2014-10-09 10:00:17',N'Hay đi muộn')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (23,37,13,'2014-10-09 10:00:18',N'Hay đi muộn')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (24,35,14,'2014-10-09 10:00:19',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (25,36,15,'2014-10-09 10:00:20',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (26,37,16,'2014-10-09 10:00:21',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (27,12,17,'2014-10-09 10:00:22',N'Cìn đi trễ')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (28,12,18,'2014-10-09 10:00:23',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (29,13,19,'2014-10-09 10:00:24',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (30,22,20,'2014-10-09 10:00:25',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (31,23,21,'2014-10-09 10:00:26',N'Chưa làm hết việc')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (32,24,22,'2014-10-09 10:00:27',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (33,25,23,'2014-10-09 10:00:28',N'Hay đi muộn')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (34,26,24,'2014-10-09 10:00:29',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (35,27,25,'2014-10-09 10:00:30',N'Chất lượng tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (36,28,26,'2014-10-09 10:00:31',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (37,29,27,'2014-10-09 10:00:32',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (38,30,28,'2014-10-09 10:00:33',N'Hay đi làm trễ')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (39,31,29,'2014-10-09 10:00:34',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (40,32,30,'2014-10-09 10:00:35',N'Làm việc chưa được tốt')
SET IDENTITY_INSERT [dbo].[Comment] OFF


























































SET IDENTITY_INSERT [dbo].[Rating] ON
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (1,14,4,4)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (2,18,8,9)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (3,22,12,5)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (4,28,18,9)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (5,30,20,7)
SET IDENTITY_INSERT [dbo].[Rating] OFF





























































































SET IDENTITY_INSERT [dbo].[Notifier] ON
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (1,9,'2014-08-13 10:00:00','Content1',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (2,10,'2014-08-13 10:00:00','Content2',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (3,11,'2014-08-13 10:00:00','Content3',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (4,12,'2014-08-13 10:00:00','Content4',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (5,13,'2014-08-13 10:00:00','Content5',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (6,14,'2014-08-13 10:00:00','Content6',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (7,15,'2014-08-13 10:00:00','Content7',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (8,16,'2014-08-13 10:00:00','Content8',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (9,17,'2014-08-13 10:00:00','Content9',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (10,18,'2014-08-13 10:00:00','Content10',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (11,31,'2014-08-13 10:00:00','Content11',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (12,32,'2014-08-13 10:00:00','Content12',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (13,33,'2014-08-13 10:00:00','Content13',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (14,34,'2014-08-13 10:00:00','Content14',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (15,35,'2014-08-13 10:00:00','Content15',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (16,36,'2014-08-13 10:00:00','Content16',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (17,37,'2014-08-13 10:00:00','Content17',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (18,38,'2014-08-13 10:00:00','Content18',NULL,'False')
INSERT [dbo].[Notifier] ([Id], [AccId],[Date],[Content],[Link],[View]) VALUES (19,39,'2014-08-13 10:00:00','Content19',NULL,'False')
SET IDENTITY_INSERT [dbo].[Notifier] OFF














































































