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
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (1,N'staff1','123456','True','2014-02-10 9:00:00','Staff','False','../Content/Image/Staff/1.jpg','staff1@gmail.com','0978754416',N'Staff 1')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (2,N'thangnv','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/2.jpg','thangnv@gmail.com','0978754416',N'Nguyễn Văn Thắng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (3,N'trangbt','123456','True','2014-09-28 9:00:00','Staff','False','../Content/Image/Staff/3.jpg','trangbt@gmail.com','0978754416',N'Bùi Thùy Trang')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (4,N'dunghc','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/4.jpg','dunghc@gmail.com','0978754416',N'Hồ Cẩm Dung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (5,N'tuannm','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/5.jpg','tuannm@gmail.com','0978754416',N'Nguyễn Mậu Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (6,N'trunghv','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/6.jpg','trunghv@gmail.com','0978754416',N'Hoàng Văn Trung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (7,N'hongqc','123456','True','2014-10-04 9:00:00','Staff','False','../Content/Image/Staff/7.jpg','hongqc@gmail.com','0978754416',N'Quách Cẩm Hồng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (8,N'nhunt','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/8.jpg','nhunt@gmail.com','0978754416',N'Nguyễn Thị Như')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (9,N'nhuttm','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/9.jpg','nhuttm@gmail.com','0978754416',N'Trần Minh Nhựt')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (10,N'longlq','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/10.jpg','longlq@gmail.com','0978754416',N'Lưu Quang Long')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (11,N'customer1','123456','True','2014-02-10 9:00:00','Customer','False','../Content/Image/Profile/11.jpg','customer1@gmail.com','0978754416',N'Customer 1')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (12,N'DanhTC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/12.jpg','DanhTC@gmail.com','0978754416',N'Trần Cao danh')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (13,N'SuTNT','123456','True','2014-09-28 9:00:00','Customer','False','../Content/Image/Profile/13.jpg','SuTNT@gmail.com','0978754416',N'Trần Nguyễn Tiến Sứ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (14,N'CuongNC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/14.jpg','CuongNC@gmail.com','0978754416',N'Nguyễn Cao Cường')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (15,N'admin','123456','True','2014-10-03 9:00:00','Admin','True','../Content/Image/Profile/15.jpg','admin@gmail.com','0978754416',N'Admin')
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
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (41,N'maidMediator1','123456','True','2014-10-05 9:00:01','MaidMediator','False','../Content/Image/MaidMediator/41.jpg','maidMediator1@gmail.com','0978754416',N'Maid Mediator 1')
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








































INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (11,N'270 Tô Ký, Quận 12',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (12,N'11A Trần Phú, Quận 1',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (13,N'77/4 Lê Đại Hành, Quận 10',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (14,N'22/14 Lê Xí, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (15,N'22/14 Lê Xí, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (16,N'35/14 Phan Xích Long, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (17,N'22/14/28 Lê Xí, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (18,N'22/14 Lê Văn Lương, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (19,N'440 Lê Xí, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (20,N'1a Quang Trung, Q.Gò Vấp',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (21,N'114/7a Lê Đại Hành, Q.10',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (22,N'55b Trương Định, Q.1',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (23,N'120 Tô Ký, Q.12',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (24,N'22/14 Tô Ký, Q.12',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (25,N'240 Phan Xích Long, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (26,N'22/18 Âu Cơ, Q.11',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (27,N'22/19 Âu Cơ, Q.11',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (28,N'22/27 An Dương Vương, Q.11',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (29,N'33-12 Phạm Hùng, Q.8',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (30,N'22/14 Lê Văn Khiêm, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (31,N'22/14 Nguyễn Kiệm, Q.Bình Thạnh',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (32,N'17b Trần Hưng Đạo, Q.10',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (33,N'22/14 Lê Bình, Q.Tân Bình',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (34,N'330 CMT8, Q.Tân Bình',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (35,N'12 Lý Thường Kiệt, Q.Tân Bình',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (36,N'150 Nguyễn Siêu, Q.11',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (37,N'22/14 Lê Bình, Q.Tân Bình',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (38,N'22/14 CMT8, Q.10',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (39,N'1 Lê Bình, Q.Tân Bình',NULL)
INSERT [dbo].[Customer] ([AccountId],[Address],[isSaleOff]) VALUES (40,N'22/14/23 Lê Đại Hành, Q.10',NULL)




















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
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (1,N'Nguyễn Hải Nam',NULL,1,N'../Content/Image/Maid/1.jpg',2,N'Cần việc ổn định lương thỏa thuận','0978754416','True','1989-08-20','True','False','False','False',N'Miền bắc',N'Quận 1','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (2,N'Trần Thị Tú',41,NULL,N'../Content/Image/Maid/2.jpg',2,N'Cần việc làm và chỗ ở','0978754416','False','1991-07-02','False','False','False','False',N'Miền trung',N'Quận 2','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (3,N'Lê Văn Hải',NULL,1,N'../Content/Image/Maid/3.jpg',4,N'Đã tốt nghiệp cấp 3 cần kiếm tiền học đại học','0978754416','True','1988-04-30','False','False','False','False',N'Miền nam',N'Quận 3','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (4,N'Nguyễn Thị Cam',41,NULL,N'../Content/Image/Maid/4.jpg',2,N'Yêu cầu chủ thuê từ 30 - 40 tuổi','0978754416','False','1987-02-26','False','False','False','False',N'Miền tây',N'Quận 4','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (5,N'Bùi Văn Bé',NULL,1,N'../Content/Image/Maid/5.jpg',4,N'Cần tạm ứng trước 50% mức lương','0978754416','True','1988-07-15','True','False','False','False',N'Miền bắc',NULL,'False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (6,N'Trương Minh Hải',41,NULL,N'../Content/Image/Maid/6.jpg',0,NULL,'0978754416','True','1985-08-17','False','False','False','False',N'Miền trung',N'Quận 6','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (7,N'Trần Thị Bưởi',NULL,1,N'../Content/Image/Maid/7.jpg',2,N'Có nhiều kinh nghiệm trong việc chăm sóc trẻ','0978754416','False','1991-05-22','False','False','False','False',N'Miền nam',N'Quận 7','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (8,N'Ngô Minh Thiện',41,NULL,N'../Content/Image/Maid/8.jpg',2,N'Sẽ cố gắng hết sức làm vừa lòng chủ nhà','0978754416','True','1990-08-24','False','False','False','False',NULL,N'Quận 8','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (9,N'Vũ Minh Quân',NULL,1,N'../Content/Image/Maid/9.jpg',4,N'Thứ 7 Chủ nhật ko làm','0978754416','True','1985-02-23','False','False','False','False',N'Miền bắc',N'Quận 9','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (10,N'Hoàng Thế Hải ',41,NULL,N'../Content/Image/Maid/10.jpg',4,N'Yêu cầu tạm trú chỗ ở 1 phòng có máy lạnh','0978754416','True','1987-01-20','False','False','False','False',N'Miền trung',N'Quận 10','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (11,N'Lưu Thị Kim Mai',NULL,1,N'../Content/Image/Maid/11.jpg',2,NULL,'0978754416','False','1984-07-10','False','False','False','False',N'Miền nam',NULL,'True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (12,N'Ngô Hải Đăng',41,NULL,N'../Content/Image/Maid/12.jpg',0,N'Là người hòa đồng, thân thiện, dễ gần','0978754416','True','1983-05-10','False','False','False','False',N'Miền tây',N'Quận 12','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (13,N'Nguyễn Minh Vương',NULL,1,N'../Content/Image/Maid/13.jpg',4,NULL,'0978754416','True','1970-05-18','False','False','False','False',N'Miền bắc',N'Quận Bình Tân','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (14,N'Lê Thị Thúy Vân',41,NULL,N'../Content/Image/Maid/14.jpg',4,NULL,'0978754416','False','1988-09-25','False','True','True','False',N'Miền trung',N'Quận Bình Thạnh','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (15,N'Trịnh Hải Hoàng',NULL,1,N'../Content/Image/Maid/15.jpg',2,N'Còn nhiều thiếu sót nhưng sẽ cố gắng học hỏi thêm','0978754416','True','1989-03-29','False','False','False','False',NULL,N'Quận Gò Vấp','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (16,N'Bùi Thị Thuyết',41,NULL,N'../Content/Image/Maid/16.jpg',4,NULL,'0978754416','False','1988-06-19','False','False','False','False',N'Miền tây',N'Quận Phú Nhuận','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (17,N'Nguyễn Vân Anh',NULL,3,N'../Content/Image/Maid/17.jpg',0,N'Đang còn đi học mong chủ nhà thông cảm nếu có sai sót','0978754416','False','1985-04-26','False','False','False','False',N'Miền bắc',N'Quận Tân Bình','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (18,N'Vũ Thị Thúy Lan',41,NULL,N'../Content/Image/Maid/18.jpg',2,NULL,'0978754416','False','1984-09-25','False','False','False','False',N'Miền trung',N'Quận Tân Phú','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (19,N'Bùi Văn Bánh',NULL,5,N'../Content/Image/Maid/19.jpg',4,NULL,'0978754416','True','1983-08-10','False','False','False','False',N'Miền nam',N'Quận Thủ Đức','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (20,N'Nguyễn Thị Cẩm Tú',46,NULL,N'../Content/Image/Maid/20.jpg',4,NULL,'0978754416','False','1991-07-15','False','False','False','False',NULL,NULL,'True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (21,N'Lê Thị Ánh Tuyết',NULL,6,N'../Content/Image/Maid/21.jpg',0,N'Mới vào nghề mong chủ nhà thông cảm','0978754416','False','1985-02-11','False','False','False','False',N'Miền bắc',N'Quận 1','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (22,N'Trịnh Công Thành',45,NULL,N'../Content/Image/Maid/22.jpg',2,N'Rất tự tin vào năng lực của bản thân','0978754416','True','1984-09-15','True','False','False','False',N'Miền trung',N'Quận 2','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (23,N'Trương Bình Minh',NULL,7,N'../Content/Image/Maid/23.jpg',4,N'Yêu cầu nhà ko nuôi chó','0978754416','True','1985-04-10','False','False','False','False',N'Miền nam',N'Quận 3','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (24,N'Nguyễn Thị Thúy Vy',48,NULL,N'../Content/Image/Maid/24.jpg',2,N'Dễ thương, dễ gần, dễ nói chuyện','0978754416','False','1990-04-28','False','False','False','False',N'Miền tây',N'Quận 4','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (25,N'Lê Thị Cẩm Lan',NULL,8,N'../Content/Image/Maid/25.jpg',2,N'Ko làm được những việc nặng nhọc','0978754416','False','1987-06-18','False','False','False','False',N'Miền bắc',N'Quận 5','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (26,N'Bùi Quốc Huy',42,NULL,N'../Content/Image/Maid/26.jpg',4,NULL,'0978754416','True','1988-03-29','False','True','False','False',N'Miền trung',N'Quận 6','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (27,N'Nguyễn Thị Ánh',NULL,9,N'../Content/Image/Maid/27.jpg',0,NULL,'0978754416','False','1986-06-16','False','False','False','False',N'Miền nam',N'Quận 7','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (28,N'Lê Thị Thảo',43,NULL,N'../Content/Image/Maid/28.jpg',2,N'Rất giỏi trong việc bếp núc','0978754416','False','1991-06-17','False','False','False','False',N'Miền tây',N'Quận 8','False','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (29,N'Hoàng Văn Trung',NULL,10,N'../Content/Image/Maid/29.jpg',4,NULL,'0978754416','True','1980-02-14','False','False','False','False',N'Miền bắc',N'Quận 9','True','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married],[isReport]) VALUES (30,N'Lê Công Đình',50,NULL,N'../Content/Image/Maid/30.jpg',2,NULL,'0978754416','True','1975-07-26','False','False','False','True',N'Miền trung',N'Quận 10','True','False')
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
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (1,1,4,8,NULL,NULL,NULL,13,17,22,40,47,49,56,NULL,NULL,NULL,NULL,NULL,65,66,67,1,11.588680712710865,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (2,2,5,NULL,NULL,NULL,NULL,13,16,22,41,47,51,55,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,13.909685073464994,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (3,2,4,NULL,NULL,NULL,NULL,13,NULL,22,41,47,49,55,NULL,NULL,62,NULL,NULL,65,NULL,NULL,1,18.286290759803219,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,50,56,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,1,23.774658252012792,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (5,NULL,NULL,8,NULL,10,NULL,14,NULL,NULL,NULL,47,52,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,15.374122295716136,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (6,2,5,NULL,NULL,NULL,NULL,NULL,18,23,40,47,50,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,1,15.235343858257332,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (7,NULL,4,NULL,NULL,NULL,NULL,13,18,21,NULL,46,50,55,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,1,11.978286139635141,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (8,2,4,NULL,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,65,66,67,1,20.068242947502902,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (9,NULL,4,NULL,NULL,NULL,11,13,15,NULL,NULL,47,52,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,10.812450735568262,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (10,2,5,NULL,NULL,NULL,NULL,14,NULL,19,41,47,50,55,NULL,61,62,NULL,NULL,NULL,NULL,NULL,1,15.553426982793576,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (11,2,3,NULL,NULL,NULL,NULL,NULL,NULL,20,NULL,47,49,55,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,1,16.773789077009404,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (12,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,1,14.365235814284429,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (13,2,4,8,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,52,NULL,60,NULL,NULL,63,NULL,NULL,NULL,NULL,1,15.225576567676573,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (14,2,4,NULL,NULL,NULL,NULL,13,15,NULL,41,46,50,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,1,14.650473154009879,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (15,1,7,NULL,NULL,NULL,NULL,NULL,NULL,30,NULL,46,52,NULL,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,1,31.168644099479206,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,67,1,21.2452347598232,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (17,2,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,1,10.552724766618335,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (18,2,4,NULL,NULL,NULL,NULL,13,NULL,28,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,67,1,15.296547813150522,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (19,2,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,NULL,NULL,NULL,63,NULL,65,66,67,1,13.651373557265218,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (20,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,1,10.067770358922575,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,63,NULL,NULL,NULL,NULL,1,12.302845199383759,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (22,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,49,56,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (23,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,50,56,NULL,NULL,NULL,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (24,2,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,47,50,55,60,61,62,63,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (25,NULL,5,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,46,50,56,60,61,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (26,1,5,NULL,NULL,10,NULL,13,15,23,40,47,53,55,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,1,22.163181440629149,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (27,1,4,NULL,NULL,NULL,NULL,14,18,NULL,41,47,52,55,60,61,NULL,63,64,NULL,NULL,NULL,1,20.081651507600828,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (28,2,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,47,NULL,55,NULL,NULL,NULL,NULL,NULL,65,66,67,1,14.190137420053409,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (29,1,5,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,46,51,56,NULL,NULL,62,NULL,NULL,65,66,67,1,14.177446878757836,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (30,1,4,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,46,51,56,60,NULL,NULL,NULL,NULL,65,66,67,1,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (31,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,1,13.422369388450013,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (32,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (33,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (34,1,4,8,NULL,NULL,NULL,13,15,19,NULL,46,51,55,60,61,62,63,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (35,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,66,67,0,11.294699993088992,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (36,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,NULL,49,NULL,NULL,61,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (37,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,61,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (38,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,49,NULL,NULL,NULL,62,NULL,NULL,65,66,67,0,7.2618437741389066,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (39,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,46,50,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (40,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,65,NULL,67,0,10.734727523323542,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (41,1,4,8,NULL,NULL,NULL,13,15,19,NULL,46,51,56,60,NULL,62,NULL,64,65,66,67,0,13.483997249264855,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (42,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,0,10.444659357341898,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (43,1,4,8,NULL,NULL,NULL,13,15,19,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (44,1,4,8,NULL,NULL,NULL,13,15,19,NULL,46,51,55,60,61,62,63,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (45,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (46,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,NULL,49,NULL,NULL,61,NULL,NULL,NULL,65,66,67,0,15.530827781230718,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (47,1,3,NULL,NULL,NULL,NULL,14,17,21,NULL,47,50,55,NULL,61,NULL,NULL,NULL,65,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (48,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,49,NULL,NULL,NULL,62,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (49,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,46,50,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,9.82264602843857,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (50,1,4,NULL,NULL,NULL,NULL,13,NULL,26,NULL,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,65,NULL,67,0,10.734727523323542,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (51,2,4,NULL,NULL,NULL,NULL,13,16,20,NULL,46,NULL,NULL,60,61,NULL,NULL,NULL,65,66,NULL,0,17.359723500102184,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (52,2,4,NULL,NULL,NULL,NULL,13,16,20,NULL,NULL,52,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (53,2,4,NULL,NULL,NULL,NULL,13,16,20,NULL,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (54,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,47,52,55,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (55,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,18.957542819470717,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (56,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,47,52,55,60,61,NULL,63,NULL,NULL,NULL,NULL,0,16.315839284886614,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (57,1,4,8,NULL,NULL,NULL,14,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (58,1,4,8,NULL,NULL,NULL,14,15,NULL,NULL,47,52,NULL,NULL,NULL,NULL,NULL,NULL,65,NULL,NULL,0,10.871146130092159,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (59,1,4,8,NULL,NULL,NULL,14,15,NULL,NULL,47,52,NULL,NULL,NULL,NULL,NULL,64,65,NULL,NULL,0,11.180339887498926,3)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (60,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,47,52,55,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Distance], [Group]) VALUES (61,2,4,NULL,NULL,NULL,NULL,13,18,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,65,66,67,0,18.957542819470717,1)
SET IDENTITY_INSERT [dbo].[SkillReference] OFF





































SET IDENTITY_INSERT [dbo].[JobRequest] ON
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (1,32,NULL,1,N'Applied','2014-11-23 16:47:44','2014-12-08 16:47:44',240,'2014-11-28 16:47:44',7,N'Có thể chăm sóc cây,cần ứng trước 50% lương','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (2,33,NULL,1,N'Hide','2014-11-22 16:47:44','2014-12-14 16:47:44',360,NULL,7,N'Cần việc lâu dài, biết nấu ăn','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (3,34,NULL,1,N'Hide','2014-11-27 16:47:44','2014-12-26 16:47:44',480,NULL,7,N'Có thể chăm sóc người bệnh, trẻ em...','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (4,35,NULL,1,N'Waiting','2014-11-25 16:47:44','2014-12-10 16:47:44',240,NULL,3,N'Có thể làm việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (5,36,NULL,1,N'Hide','2014-11-25 16:47:44','2014-12-03 16:47:44',120,NULL,3,N'Có thể giúp việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (6,37,NULL,1,N'Hide','2014-11-22 16:47:44','2014-11-30 16:47:44',120,NULL,3,N'Nấu ăn ngon, có thể chăm sóc người bệnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (7,38,41,NULL,N'Waiting','2014-11-25 16:47:44','2014-12-03 16:47:44',120,NULL,8,N'Biết nấu ăn, cần ứng trước 50% lương','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (8,39,41,NULL,N'Hide','2014-11-24 16:47:44','2014-12-02 16:47:44',120,NULL,8,N'Có khả năng chăm sóc cây cảnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (9,40,41,NULL,N'Waiting','2014-11-23 16:47:44','2014-12-01 16:47:44',120,NULL,8,N'Biết trông nhà, nấu ăn, chăm sóc người bệnh','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (10,41,NULL,1,N'Waiting','2014-11-22 16:47:44','2014-12-07 16:47:44',240,NULL,1,N'Cần tiền học lại','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (11,42,NULL,1,N'Waiting','2014-11-23 16:47:44','2014-12-15 16:47:44',360,NULL,1,N'Cần tạm ứng 50% lương','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (12,43,NULL,1,N'Applied','2014-11-25 16:47:44','2014-12-24 16:47:44',480,'2014-11-30 16:47:44',1,N'Cái gì cũng biết','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (13,44,NULL,1,N'Hide','2014-11-23 16:47:44','2014-12-29 16:47:44',600,NULL,1,N'Có kinh nghiệm chăm sóc trẻ','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (14,45,NULL,1,N'Expired','2014-11-14 16:47:44','2014-11-22 16:47:44',120,NULL,1,N'Còn nhiều thiếu sót mong chủ nhà thông cảm','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (15,46,NULL,1,N'Waiting','2014-11-24 16:47:44','2014-12-09 16:47:44',240,NULL,1,N'Cần việc làm ổn định','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (16,47,NULL,1,N'Hide','2014-11-27 16:47:44','2014-12-12 16:47:44',240,NULL,1,N'Cần tiền cưới vợ','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (17,48,NULL,1,N'Hide','2014-11-23 16:47:44','2014-12-15 16:47:44',360,NULL,1,N'Nhà nghèo nhưng chịu khó','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (18,49,NULL,1,N'Waiting','2014-11-26 16:47:44','2014-12-04 16:47:44',120,NULL,1,N'Chào chủ nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (19,50,NULL,1,N'Waiting','2014-11-26 16:47:44','2014-12-18 16:47:44',360,NULL,1,N'Đi làm thêm kiếm tiền nuôi con','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (20,51,41,NULL,N'Waiting','2014-11-27 16:47:44','2014-12-05 16:47:44',120,NULL,2,N'Giỏi việc nhà','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (21,52,41,NULL,N'Hide','2014-11-23 16:47:44','2014-12-22 16:47:44',480,NULL,2,N'Có kinh nghiệm chăm sóc trẻ em','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (22,53,41,NULL,N'Approved','2014-11-23 16:47:44','2014-12-22 16:47:44',480,'2014-11-28 16:47:44',2,N'Giỏi việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (23,54,41,NULL,N'Hide','2014-11-27 16:47:44','2014-12-26 16:47:44',480,NULL,2,N'Việc lâu dài, chủ nhà lớn tuổi','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (24,55,41,NULL,N'Waiting','2014-11-27 16:47:44','2014-12-26 16:47:44',480,NULL,2,N'Làm tốt việc nhà','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (25,56,41,NULL,N'Waiting','2014-11-26 16:47:44','2014-12-25 16:47:44',480,NULL,2,N'Kỹ tính, thích công việc chăm sóc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (26,57,NULL,1,N'Hide','2014-11-22 16:47:44','2014-12-21 16:47:44',480,NULL,5,N'Có năng khiếu chăm bonsai','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (27,58,NULL,1,N'Waiting','2014-11-27 16:47:44','2014-12-26 16:47:44',480,NULL,5,N'Cần chỗ ở, chuyên làm món ăn Bắc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (28,59,NULL,1,N'Waiting','2014-11-25 16:47:44','2014-12-24 16:47:44',480,NULL,5,N'Chuyên chăm Bonsai và nấu món Bắc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (29,60,41,NULL,N'Expired','2014-11-14 16:47:44','2014-11-22 16:47:44',120,NULL,2,N'Việc lâu dài, chịu khó làm việc','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[Price],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (30,61,41,NULL,N'Waiting','2014-11-26 16:47:44','2014-12-25 16:47:44',480,NULL,2,N'Làm tốt việc nhà cơ bản','True')
SET IDENTITY_INSERT [dbo].[JobRequest] OFF




































































SET IDENTITY_INSERT [dbo].[Recruitment] ON
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (1,1,13,'Waiting','2014-11-25 16:47:44','2014-12-02 16:47:44',100,N'Cần tìm người giúp việc nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (2,2,13,'Waiting','2014-11-27 16:47:44','2014-12-04 16:47:44',100,N'Tìm người chăm sóc người già','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (3,3,13,'Waiting','2014-11-28 16:47:44','2014-12-26 16:47:44',370,N'Tìm người trông trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (4,4,13,'Waiting','2014-11-26 16:47:44','2014-12-17 16:47:44',280,N'Tìm người chăm sóc cây cảnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (5,5,13,'Waiting','2014-11-25 16:47:44','2014-12-30 16:47:44',460,N'Tìm người giỏi ngoại ngữ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (6,6,13,'Waiting','2014-11-28 16:47:44','2014-12-12 16:47:44',190,N'Tuyển người dọn nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (7,7,14,'Waiting','2014-11-27 16:47:44','2014-12-04 16:47:44',100,N'Tìm người miền tây nấu ăn ngon','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (8,8,14,'Waiting','2014-11-24 16:47:44','2014-12-08 16:47:44',190,N'Tìm người giúp việc nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (9,9,14,'Waiting','2014-11-23 16:47:44','2014-11-30 16:47:44',100,N'Cần người biết tiếng Hàn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (10,10,14,'Waiting','2014-11-24 16:47:44','2014-12-08 16:47:44',190,N'Tìm người chăm sóc trẻ, người già','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (11,11,11,'Waiting','2014-11-24 16:47:44','2014-12-01 16:47:44',100,N'Tìm người trẻ tuổi biết chăm sóc trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (12,12,12,'Waiting','2014-11-28 16:47:44','2014-12-19 16:47:44',280,N'Tìm người làm việc nhà','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (13,13,12,'Waiting','2014-11-26 16:47:44','2014-12-17 16:47:44',280,N'Tìm người nói chuyện với người ngoại quốc','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (14,14,12,'Waiting','2014-11-26 16:47:44','2014-12-24 16:47:44',370,N'Con 6 tháng cần người chăm','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (15,15,12,'Waiting','2014-11-25 16:47:44','2014-12-23 16:47:44',370,N'Tìm người Q12, giỏi chăm cây','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (16,16,12,'Waiting','2014-11-26 16:47:44','2014-12-24 16:47:44',370,N'Tìm người hay làm chịu khó','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (17,17,16,'Waiting','2014-11-23 16:47:44','2014-12-28 16:47:44',460,N'Tìm người trẻ tuổi biết nấu ăn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (18,18,16,'Waiting','2014-11-23 16:47:44','2014-12-21 16:47:44',370,N'Cần người làm việc nhẹ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (19,19,16,'Waiting','2014-11-22 16:47:44','2014-12-27 16:47:44',460,N'Cần người làm việc gia đình','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (20,20,16,'Waiting','2014-11-25 16:47:44','2014-12-16 16:47:44',280,N'Nhà nhiều bosai, cần người chăm','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (21,21,16,'Waiting','2014-11-23 16:47:44','2014-12-21 16:47:44',370,N'Mẹ liệt, cần chăm sóc','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (22,22,11,'Applied','2014-11-24 16:47:44','2014-12-22 16:47:44',370,N'Tuyển người chăm sóc trẻ','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (23,23,11,'Approved','2014-11-27 16:47:44','2014-12-04 16:47:44',100,N'Chủ nhà dễ tính','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (24,24,11,'Applied','2014-11-24 16:47:44','2014-12-01 16:47:44',100,N'Cần tìm nữ trẻ tuổi','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (25,25,11,'Hide','2014-11-24 16:47:44','2014-12-29 16:47:44',460,N'Cần người trung niên','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (26,26,11,'Waiting','2014-11-27 16:47:44','2014-12-04 16:47:44',100,N'Cần người làm','False')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (27,27,11,'Waiting','2014-11-24 16:47:44','2014-12-15 16:47:44',280,N'Cần người khỏe mạnh','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (28,28,11,'Waiting','2014-11-26 16:47:44','2014-12-10 16:47:44',190,N'Tìm người làm việc lâu dài','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (29,29,11,'Waiting','2014-11-27 16:47:44','2014-12-11 16:47:44',190,N'Yêu cầu chịu khó biết nghe lời','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (30,30,11,'Expired','2014-11-14 16:47:44','2014-11-21 16:47:44',100,N'Tuyển người biết tiếng Hàn','True')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Price],[Title],[IsActive]) VALUES (31,31,11,'Waiting','2014-11-24 16:47:44','2014-12-01 16:47:44',100,N'Tuyển người biết tiếng Anh','True')
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














































































