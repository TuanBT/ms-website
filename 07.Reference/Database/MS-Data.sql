DELETE FROM Rating;
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
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (1,N'thangnv2015','123456','True','2014-02-10 9:00:00','Staff','False','../Content/Image/Staff/1234590861_anh_the.jpg','thangnv@gmail.com','0903125875',N'Nguyễn Văn Thắng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (2,N'tainv2015','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/anh_the9112.jpg','tainv@gmail.com','0128059362',N'Nguyễn Văn Tài')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (3,N'trangbt2504','123456','True','2014-09-28 9:00:00','Staff','False','../Content/Image/Staff/anh-the.jpg','trangbt@gmai.com','0908040554',N'Bùi Thùy Trang')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (4,N'dunghc1234','123456','True','2014-10-02 9:00:00','Staff','False','../Content/Image/Staff/dfd.jpg','dunghc@gmai.com','0122659599',N'Hồ Cẩm Dung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (5,N'tuannm2817','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/gialonggroup.jpg','tuannm@gmail.com','0809157566',N'Nguyễn Mậu Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (6,N'trunghv1719','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/Hinh_3_x_4.JPG','trunghv@gmail.com','0598112669',N'Hoàng Văn Trung')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (7,N'hongqc5544','123456','True','2014-10-04 9:00:00','Staff','False','../Content/Image/Staff/images.jpg','hongqc@gmail.com','0807988499',N'Quách Cẩm Hồng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (8,N'nhunt1245','123456','False','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/tahotien.jpg','nhuqc@gmail.com','0904821566',N'Nguyễn Thị Như')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (9,N'nhuttm7822','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/tahotien.jpg','nhuttm@gmail.com','0938616456',N'Trần Minh Nhựt')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (10,N'longlq12421','123456','True','2014-10-03 9:00:00','Staff','False','../Content/Image/Staff/sic1375243254.JPG','longlq@gmail.com','0907698999',N'Lưu Quang Long')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (11,N'DangTH','123456','True','2014-02-10 9:00:00','Customer','False','../Content/Image/Profile/dangth.jpg','dangth@gmail.com','01656927438',N'Trương Hải Đăng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (12,N'DanhTC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/danhtc.jpg','danhtc@gmail.com','01674282104',N'Trần Cao danh')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (13,N'SuTNT','123456','True','2014-09-28 9:00:00','Customer','False','../Content/Image/Profile/sutnt.jpg','sutnt@gmail.com','01724389112',N'Trần Nguyễn Tiến Sứ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (14,N'CuongNC','123456','True','2014-10-02 9:00:00','Customer','False','../Content/Image/Profile/cuongnc.jpg','cuongnc@gmail.com','01987689320',N'Nguyễn Cao Cường')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (15,N'TuanBT','123456','True','2014-10-03 9:00:00','Admin','True','../Content/Image/Profile/tuanbt.jpg','tuanbtt@gmail.com','01756914328',N'Bùi Tiến Tuân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (16,N'HueTT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/huett.jpg','huett@gmail.com','0175691478',N'Trần Thị Huệ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (17,N'TuanTQ','123456','True','2014-10-04 9:00:00','Customer','False','../Content/Image/Profile/tuantq.jpg','tuantq@gmail.com','01756914319',N'Trần Quốc Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (18,N'LanNT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/lannt.jpg','lannt@gmail.com','01756914356',N'Nguyễn Thị Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (19,N'VuTT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/vutt.jpg','vutt@gmail.com','0175691410',N'Trần Thị Vũ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (20,N'NhuVT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/nhuvt.jpg','nhuvt@gmail.com','01756914323',N'Võ Thị Như')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (21,N'LanHT','123456','True','2014-10-03 9:00:00','Customer','False','../Content/Image/Profile/lanht.jpg','lanht@gmail.com','01756914345',N'Hoàng Thị Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (22,N'QuanKM','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/quankm.jpg','quankm@gmail.com','0175691412',N'Khương Mạnh Quân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (23,N'LanVTN','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/lanvtn.jpg','lanvtn@gmail.com','01756914313',N'Vũ Thị Như Lan')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (24,N'NinhQT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/ninhqt.jpg','ninhqt@gmail.com','01756914315',N'Quách Thị Ninh')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (25,N'HaoTC','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/haotc.jpg','haotc@gmail.com','01756914332',N'Tăng Công hảo')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (26,N'DuyK','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/duyk.jpg','duyk@gmail.com','0175471412',N'Khương Duy')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (27,N'LocTQ','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/loctq.jpg','loctq@gmail.com','0175691412',N'Trần Quang Lộc')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (28,N'MyPT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/mypt.jpg','mypt@gmail.com','0175691222',N'Phan Thế Mỹ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (29,N'HoanAV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/hoanav.jpg','hoanav@gmail.com','0175691412',N'Âu Văn Hoàn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (30,N'DongTD','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/dongtd.jpg','dongtd@gmail.com','0175691412',N'Trần Đình Đồng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (31,N'TuanLQ','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/tuanlq.jpg','tuanlq@gmail.com','0175691412',N'Lê Quang Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (32,N'PhiTP','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/phitp.jpg','phitp@gmail.com','0175691412',N'Trần Phú Phi')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (33,N'HienNP','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/hiennp.jpg','hiennp@gmail.com','0175691412',N'Nguyễn Phú hiển')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (34,N'HienDB','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/hiendb.jpg','hiendb@gmail.com','0175691412',N'Đào Bá Diệp')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (35,N'HaiDV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/haidv.jpg','haidv@gmail.com','0175691412',N'Duy Van Hai')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (36,N'DiepBV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/diepbv.jpg','diepbv@gmail.com','0175691412',N'Bùi Bá Diệp')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (37,N'CongTV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/congtv.jpg','congtv@gmail.com','0175691412',N'Trần Văn Công')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (38,N'HaiHV','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/haihv.jpg','haihv@gmail.com','0175691412',N'Hoàng Vũ hải')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (39,N'LapBT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/lapbt.jpg','lapbt@gmail.com','0175691412',N'Bùi Trần Lập')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (40,N'MaiMT','123456','True','2014-10-05 9:00:00','Customer','False','../Content/Image/Profile/maimt.jpg','maimt@gmail.com','0175691412',N'Minh Thị Mai')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (41,N'TuyenMQ','123456','True','2014-10-05 9:00:01','MaidMediator','False','../Content/Image/Profile/danhth.png','tuyenmq@gmail.com','0175691413',N'Mạnh Quang Tuyến')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (42,N'TuanBT','123456','True','2014-10-05 9:00:02','MaidMediator','False','../Content/Image/Profile/danhth.png','tuanbt@gmail.com','0175691414',N'Bùi TIến Tuân')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (43,N'ThoTP','123456','True','2014-10-05 9:00:03','MaidMediator','False','../Content/Image/Profile/danhth.png','thotp@gmail.com','0175691415',N'Trịnh Phúc Thọ')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (44,N'HieuHT','123456','True','2014-10-05 9:00:04','MaidMediator','False','../Content/Image/Profile/danhth.png','hieuht@gmail.com','0175691416',N'Hoàng Trung Hiếu')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (45,N'DangNH','123456','True','2014-10-05 9:00:05','MaidMediator','False','../Content/Image/Profile/danhth.png','dangnh@gmail.com','0175691417',N'Nguyễn Hải Đăng')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (46,N'CongNT','123456','True','2014-10-05 9:00:06','MaidMediator','False','../Content/Image/Profile/danhth.png','congnt@gmail.com','0175691418',N'Nguyễn Tấn Công')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (47,N'TuanTM','123456','True','2014-10-05 9:00:07','MaidMediator','False','../Content/Image/Profile/danhth.png','tuantm@gmail.com','0175691419',N'Trần Minh Tuấn')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (48,N'TaiHV','123456','True','2014-10-05 9:00:08','MaidMediator','False','../Content/Image/Profile/danhth.png','taihv@gmail.com','0175691420',N'Hà Văn Tài')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (49,N'HieuNH','123456','True','2014-10-05 9:00:09','MaidMediator','False','../Content/Image/Profile/danhth.png','hieunh@gmail.com','0175691421',N'Nguyễn Hoàng Hiếu')
INSERT [dbo].[Account] ([AccountId], [Username], [Password], [IsActive], [JoinDate], [Role], [IsWebmaster], [Avatar], [Email], [Phone], [FullName]) VALUES (50,N'TraDT','123456','True','2014-10-05 9:00:10','MaidMediator','False','../Content/Image/Profile/danhth.png','tradt@gmail.com','0175691422',N'Dương Thị Trà')
SET IDENTITY_INSERT [dbo].[Account] OFF



































INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (41,5000000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (42,7000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (43,500000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (44,1000000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (45,50000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (46,100000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (47,200000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (48,2000000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (49,500000)
INSERT [dbo].[MaidMediator] ([AccountId], [Payment]) VALUES (50,50000)








































INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (11,50000,N'270 Tô Ký, Quận 12')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (12,50000,N'11A Trần Phú, Quận 1')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (13,50000,N'77/4 Lê Đại Hành, Quận 10')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (14,20000,N'22/14 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (15,30000,N'22/14 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (16,40000,N'35/14 Phan Xích Long, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (17,100000,N'22/14/28 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (18,200000,N'22/14 Lê Văn Lương, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (19,30000,N'440 Lê Xí, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (20,30000,N'1a Quang Trung, Q.Gò Vấp')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (21,30000,N'114/7a Lê Đại Hành, Q.10')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (22,20000,N'55b Trương Định, Q.1')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (23,70000,N'120 Tô Ký, Q.12')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (24,20000,N'22/14 Tô Ký, Q.12')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (25,50000,N'240 Phan Xích Long, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (26,50000,N'22/18 Âu Cơ, Q.11')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (27,50000,N'22/19 Âu Cơ, Q.11')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (28,50000,N'22/27 An Dương Vương, Q.11')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (29,50000,N'33-12 Phạm Hùng, Q.8')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (30,60000,N'22/14 Lê Văn Khiêm, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (31,60000,N'22/14 Nguyễn Kiệm, Q.Bình Thạnh')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (32,50000,N'17b Trần Hưng Đạo, Q.10')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (33,130000,N'22/14 Lê Bình, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (34,80000,N'330 CMT8, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (35,60000,N'12 Lý Thường Kiệt, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (36,30000,N'150 Nguyễn Siêu, Q.11')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (37,30000,N'22/14 Lê Bình, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (38,20000,N'22/14 CMT8, Q.10')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (39,20000,N'1 Lê Bình, Q.Tân Bình')
INSERT [dbo].[Customer] ([AccountId], [Payment],[Address]) VALUES (40,60000,N'22/14/23 Lê Đại Hành, Q.10')




















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
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (1,N'Nguyễn Hải Nam',41,NULL,N'../Content/Image/Maid/001.jpg',3,N'Cần việc ổn định lương thỏa thuận',5,'0935648789','True','1991-08-20','True','True','False','True',N'Miền bắc',N'Quận 1','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (2,N'Trần Thị Tú',42,NULL,N'../Content/Image/Maid/002.jpg',2,N'Cần việc làm và chỗ ở',7,'0936184792','False','1991-08-20','False','False','True','False',N'Miền trung',N'Quận 2','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (3,N'Lê Văn Hải',43,NULL,N'../Content/Image/Maid/003.jpg',5,N'Đã tốt nghiệp cấp 3 cần kiếm tiền học đại học',8,'0914678293','True','1991-08-20','False','True','False','True',N'Miền nam',N'Quận 3','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (4,N'Nguyễn Thị Cam',NULL,2,N'../Content/Image/Maid/004.jpg',3,N'Yêu cầu chủ thuê từ 30 - 40 tuổi',5.5,'0901284962','False','1991-08-20','True','True','True','True',N'Miền tây',N'Quận 4','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (5,N'Bùi Văn Bé',44,NULL,N'../Content/Image/Maid/005.jpg',4,N'Cần tạm ứng trước 50% mức lương',7,'0901234987','True','1991-08-20','False','False','False','False',N'Miền bắc',NULL,'False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (6,N'Trương Minh Hải',45,NULL,N'../Content/Image/Maid/006.jpg',1,NULL,6,'0916826490','True','1991-08-20','False','True','False','False',N'Miền trung',N'Quận 6','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (7,N'Trần Thị Bưởi',NULL,1,N'../Content/Image/Maid/007.jpg',1.5,N'Có nhiều kinh nghiệm trong việc chăm sóc trẻ',6.5,'0962856391','False','1991-08-20','True','True','True','True',N'Miền nam',N'Quận 7','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (8,N'Ngô Minh Thiện',46,NULL,N'../Content/Image/Maid/008.jpg',2,N'Sẽ cố gắng hết sức làm vừa lòng chủ nhà',4,'0987615478','True','1991-08-20','False','False','False','False',NULL,N'Quận 8','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (9,N'Vũ Minh Quân',47,NULL,N'../Content/Image/Maid/009.jpg',3.5,N'Thứ 7 Chủ nhật ko làm',6,'0917492647','True','1991-08-20','True','True','True','True',N'Miền bắc',N'Quận 9','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (10,N'Hoàng Thế Hải ',NULL,2,N'../Content/Image/Maid/010.jpg',4.5,N'Yêu cầu tạm trú chỗ ở 1 phòng có máy lạnh',8.5,'0900184724','True','1991-08-20','True','False','False','True',N'Miền trung',N'Quận 10','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (11,N'Lưu Thị Kim Mai',48,NULL,N'../Content/Image/Maid/011.jpg',2,NULL,5.5,'0942426572','False','1991-08-20','False','True','True','False',N'Miền nam',NULL,'True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (12,N'Ngô Hải Đăng',49,NULL,N'../Content/Image/Maid/012.jpg',1,N'Là người hòa đồng, thân thiện, dễ gần',1.5,'0988425932','True','1991-08-20','False','True','True','True',N'Miền tây',N'Quận 12','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (13,N'Nguyễn Minh Vương',NULL,3,N'../Content/Image/Maid/013.jpg',6,NULL,3,'0974819583','True','1991-08-20','True','True','False','False',N'Miền bắc',N'Quận Bình Tân','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (14,N'Lê Thị Thúy Vân',50,NULL,N'../Content/Image/Maid/014.jpg',5,NULL,4,'0959150264','False','1991-08-20','True','True','True','True',N'Miền trung',N'Quận Bình Thạnh','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (15,N'Trịnh Hải Hoàng',41,NULL,N'../Content/Image/Maid/015.jpg',3,N'Còn nhiều thiếu sót nhưng sẽ cố gắng học hỏi thêm',3,'0977324681','True','1991-08-20','False','True','True','False',NULL,N'Quận Gò Vấp','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (16,N'Bùi Thị Thuyết',NULL,1,N'../Content/Image/Maid/016.jpg',4,NULL,7,'0945974503','False','1991-08-20','True','False','False','True',N'Miền tây',N'Quận Phú Nhuận','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (17,N'Nguyễn Vân Anh',NULL,5,N'../Content/Image/Maid/017.jpg',1,N'Đang còn đi học mong chủ nhà thông cảm nếu có sai sót',5,'0964389134','False','1991-08-20','False','True','False','True',N'Miền bắc',N'Quận Tân Bình','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (18,N'Vũ Thị Thúy Lan',NULL,4,N'../Content/Image/Maid/018.jpg',2,NULL,5.5,'0998435865','False','1991-08-20','False','True','False','False',N'Miền trung',N'Quận Tân Phú','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (19,N'Bùi Văn Bánh',42,NULL,N'../Content/Image/Maid/019.jpg',3.5,NULL,6,'0923846143','True','1991-08-20','True','True','False','True',N'Miền nam',N'Quận Thủ Đức','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (20,N'Nguyễn Thị Cẩm Tú',NULL,2,N'../Content/Image/Maid/020.jpg',4,NULL,7,'0934758791','False','1991-08-20','False','False','False','True',NULL,NULL,'True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (21,N'Lê Thị Ánh Tuyết',NULL,3,N'../Content/Image/Maid/021.jpg',0.5,N'Mới vào nghề mong chủ nhà thông cảm',4,'0995746113','False','1991-08-20','False','False','False','False',N'Miền bắc',N'Quận 1','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (22,N'Trịnh Công Thành',43,NULL,N'../Content/Image/Maid/022.jpg',2,N'Rất tự tin vào năng lực của bản thân',8,'0917353795','True','1991-08-20','True','True','False','True',N'Miền trung',N'Quận 2','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (23,N'Trương Bình Minh',44,NULL,N'../Content/Image/Maid/023.jpg',4,N'Yêu cầu nhà ko nuôi chó',6,'0987243586','True','1991-08-20','False','True','True','True',N'Miền nam',N'Quận 3','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (24,N'Nguyễn Thị Thúy Vy',45,NULL,N'../Content/Image/Maid/024.jpg',3,N'Dễ thương, dễ gần, dễ nói chuyện',5.5,'0911343295','False','1991-08-20','False','False','False','True',N'Miền tây',N'Quận 4','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (25,N'Lê Thị Cẩm Lan',46,NULL,N'../Content/Image/Maid/0025.jpg',2,N'Ko làm được những việc nặng nhọc',6,'0932823611','False','1991-08-20','True','False','False','True',N'Miền bắc',N'Quận 5','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (26,N'Bùi Quốc Huy',47,NULL,N'../Content/Image/Maid/026.jpg',3,NULL,5,'0945014722','True','1991-08-20','False','True','False','False',N'Miền trung',N'Quận 6','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (27,N'Nguyễn Thị Ánh',NULL,3,N'../Content/Image/Maid/027.jpg',0.5,NULL,3,'0903475853','False','1991-08-20','True','True','False','True',N'Miền nam',N'Quận 7','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (28,N'Lê Thị Thảo',48,NULL,N'../Content/Image/Maid/028.jpg',2,N'Rất giỏi trong việc bếp núc',8,'0987528103','False','1991-08-20','False','False','True','True',N'Miền tây',N'Quận 8','False')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (29,N'Hoàng Văn Trung',NULL,1,N'../Content/Image/Maid/029.jpg',3,NULL,4.5,'0988132581','True','1991-08-20','False','True','False','True',N'Miền bắc',N'Quận 9','True')
INSERT [dbo].[Maid] ([MaidId], [MaidName], [MaidMediatorId], [StaffId], [PersonalImage], [Experience], [Description], [RateAvg], [Phone],[Gender],[BirthDate], [English],[Korean],[Japanese],[Chinese],[Hometown],[Address],[Married]) VALUES (30,N'Lê Công Đình',49,NULL,N'../Content/Image/Maid/030.jpg',2,NULL,7,'0928991433','True','1991-08-20','False','True','False','True',N'Miền trung',N'Quận 10','True')
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
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (15,1,'Hometown',N'Miền bắc',5,0,N'Quê quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (16,1,'Hometown',N'Miền trung',10,1,N'Quê quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (17,1,'Hometown',N'Miền nam',15,2,N'Quê quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (18,1,'Hometown',N'Miền tây',20,3,N'Quê quán')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (19,1,'Address',N'Quận 1',5,0,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (20,1,'Address',N'Quận 2',10,1,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (21,1,'Address',N'Quận 3',15,2,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (22,1,'Address',N'Quận 4',20,3,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (23,1,'Address',N'Quận 5',25,4,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (24,1,'Address',N'Quận 6',30,5,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (25,1,'Address',N'Quận 7',35,6,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (26,1,'Address',N'Quận 8',40,7,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (27,1,'Address',N'Quận 9',45,8,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (28,1,'Address',N'Quận 10',50,9,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (29,1,'Address',N'Quận 11',55,10,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (30,1,'Address',N'Quận 12',60,11,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (31,1,'Address',N'Quận Bình Tân',65,12,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (32,1,'Address',N'Quận Bình Thạnh',70,13,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (33,1,'Address',N'Quận Gò Vấp',75,14,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (34,1,'Address',N'Quận Phú Nhuận',80,15,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (35,1,'Address',N'Quận Tân Bình',85,16,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (36,1,'Address',N'Quận Tân Phú',90,17,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (37,1,'Address',N'Quận Thủ Đức',95,18,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (38,1,'Address',N'Khác',100,19,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (39,1,'Address',N'Không',105,20,N'Địa chỉ')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (40,1,'Married',N'Không',5,0,N'Kết hôn')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (41,1,'Married',N'Có',10,1,N'Kết hôn')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (42,1,'Health',N'Bình thường',5,0,N'Sức khỏe')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (43,1,'Health',N'Tốt',10,1,N'Sức khỏe')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (46,3,'Stay',N'Không',5,0,N'Ngủ lại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (47,3,'Stay',N'Có',10,1,N'Ngủ lại')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (48,3,'Salary',N'<1 tr',5,0,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (49,3,'Salary',N'1-2 tr',10,1,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (50,3,'Salary',N'2-3 tr',15,2,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (51,3,'Salary',N'3-5 tr',20,3,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (52,3,'Salary',N'>5 tr',25,4,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (53,3,'Salary',N'Chưa biết',30,5,N'Mức lương')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (55,3,'Work',N'Lâu dài',10,1,N'Công việc')
INSERT [dbo].[SkillInstance] ([SkillId], [CategoryId], [SkillName], [SkillString], [SkillNormallized], [SkillStringValue], [SkillNameVietnam]) VALUES (56,3,'Work',N'Ngắn hạn',15,2,N'Công việc')
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
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (1,NULL,NULL,8,NULL,10,11,13,15,19,NULL,46,NULL,NULL,60,NULL,62,63,64,NULL,66,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (2,2,4,NULL,9,10,NULL,13,NULL,NULL,41,46,49,55,NULL,61,NULL,NULL,NULL,65,NULL,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (3,1,3,8,NULL,NULL,11,14,16,23,40,47,49,55,60,NULL,NULL,63,64,NULL,66,NULL,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (4,NULL,3,NULL,NULL,NULL,NULL,13,17,21,NULL,NULL,NULL,56,NULL,NULL,62,NULL,NULL,65,66,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (5,1,NULL,NULL,9,10,11,14,NULL,NULL,40,46,50,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (6,1,5,NULL,NULL,NULL,NULL,NULL,17,23,40,47,48,55,60,NULL,NULL,63,64,NULL,NULL,67,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (7,NULL,3,8,NULL,NULL,11,13,18,22,NULL,47,NULL,55,NULL,NULL,62,NULL,NULL,NULL,66,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (8,1,NULL,NULL,9,10,NULL,13,NULL,NULL,41,NULL,48,56,NULL,61,NULL,NULL,NULL,NULL,NULL,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (9,1,4,NULL,NULL,NULL,NULL,13,16,21,40,47,50,NULL,60,NULL,NULL,63,64,65,66,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (10,1,3,NULL,NULL,NULL,11,NULL,16,NULL,40,46,50,55,NULL,NULL,NULL,63,NULL,NULL,NULL,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (11,2,3,NULL,NULL,10,NULL,13,NULL,28,NULL,47,NULL,56,NULL,61,62,NULL,64,NULL,NULL,NULL,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (12,NULL,3,8,9,NULL,11,13,18,25,41,NULL,50,56,60,NULL,NULL,63,NULL,65,66,67,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (13,1,NULL,NULL,NULL,10,NULL,14,NULL,33,41,46,50,55,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,0,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (14,2,4,NULL,NULL,NULL,NULL,NULL,15,31,NULL,47,51,NULL,NULL,NULL,62,NULL,NULL,NULL,66,67,0,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (15,1,5,NULL,9,10,11,13,16,NULL,40,47,NULL,56,NULL,61,NULL,63,NULL,65,NULL,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (16,NULL,3,NULL,NULL,NULL,NULL,14,16,26,40,46,51,55,60,NULL,NULL,NULL,64,NULL,66,67,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (17,2,5,NULL,NULL,NULL,NULL,13,NULL,27,41,NULL,51,55,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (18,2,NULL,8,9,10,NULL,13,17,21,NULL,47,NULL,NULL,NULL,NULL,NULL,63,NULL,65,66,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (19,1,3,NULL,NULL,NULL,11,NULL,17,NULL,41,46,51,55,60,61,NULL,NULL,64,NULL,NULL,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (20,NULL,4,NULL,NULL,NULL,NULL,14,18,35,41,47,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,66,67,0,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (21,2,4,8,NULL,10,NULL,13,18,37,41,NULL,48,56,NULL,NULL,62,63,64,65,66,NULL,0,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (22,1,NULL,NULL,NULL,NULL,11,13,17,31,NULL,46,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,0,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (23,1,5,8,9,NULL,NULL,14,16,NULL,41,46,51,55,60,61,NULL,NULL,NULL,NULL,66,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (24,NULL,3,NULL,NULL,10,NULL,13,16,26,40,46,51,56,NULL,NULL,62,63,64,65,66,67,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (25,2,NULL,NULL,NULL,NULL,NULL,NULL,15,27,40,NULL,51,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (26,1,4,NULL,9,NULL,11,13,15,NULL,NULL,47,48,NULL,60,61,NULL,63,64,NULL,66,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (27,NULL,5,NULL,NULL,10,NULL,12,NULL,34,41,46,49,56,NULL,NULL,62,NULL,NULL,65,NULL,NULL,0,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (28,2,NULL,8,NULL,NULL,NULL,13,17,20,41,NULL,51,56,60,NULL,NULL,NULL,NULL,65,NULL,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (29,1,5,NULL,9,10,NULL,NULL,17,NULL,40,46,51,55,NULL,61,NULL,63,64,NULL,66,NULL,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (30,NULL,NULL,8,NULL,NULL,11,13,NULL,19,NULL,47,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,67,0,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (31,NULL,NULL,8,NULL,10,11,13,15,19,NULL,46,NULL,NULL,60,NULL,62,63,64,NULL,66,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (32,2,4,NULL,9,10,NULL,13,NULL,NULL,41,46,49,55,NULL,61,NULL,NULL,NULL,65,NULL,67,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (33,1,3,8,NULL,NULL,11,14,16,23,40,47,49,55,60,NULL,NULL,63,64,NULL,66,NULL,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (34,NULL,3,NULL,NULL,NULL,NULL,13,17,21,NULL,NULL,NULL,56,NULL,NULL,62,NULL,NULL,65,66,67,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (35,1,NULL,NULL,9,10,11,14,NULL,NULL,40,46,50,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (36,1,5,NULL,NULL,NULL,NULL,NULL,17,23,40,47,48,55,60,NULL,NULL,63,64,NULL,NULL,67,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (37,NULL,3,8,NULL,NULL,11,13,18,22,NULL,47,NULL,55,NULL,NULL,62,NULL,NULL,NULL,66,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (38,1,NULL,NULL,9,10,NULL,13,NULL,NULL,41,NULL,48,56,NULL,61,NULL,NULL,NULL,NULL,NULL,67,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (39,1,4,NULL,NULL,NULL,NULL,13,16,21,40,47,50,NULL,60,NULL,NULL,63,64,65,66,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (40,1,3,NULL,NULL,NULL,11,NULL,16,NULL,40,46,50,55,NULL,NULL,NULL,63,NULL,NULL,NULL,67,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (41,2,3,NULL,NULL,10,NULL,13,NULL,28,NULL,47,NULL,56,NULL,61,62,NULL,64,NULL,NULL,NULL,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (42,NULL,3,8,9,NULL,11,13,18,25,41,NULL,50,56,60,NULL,NULL,63,NULL,65,66,67,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (43,1,NULL,NULL,NULL,10,NULL,14,NULL,33,41,46,50,55,NULL,NULL,NULL,NULL,64,NULL,NULL,NULL,1,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (44,2,4,NULL,NULL,NULL,NULL,NULL,15,31,NULL,47,51,NULL,NULL,NULL,62,NULL,NULL,NULL,66,67,1,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (45,1,5,NULL,9,10,11,13,16,NULL,40,47,NULL,56,NULL,61,NULL,63,NULL,65,NULL,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (46,NULL,3,NULL,NULL,NULL,NULL,14,16,26,40,46,51,55,60,NULL,NULL,NULL,64,NULL,66,67,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (47,2,5,NULL,NULL,NULL,NULL,13,NULL,27,41,NULL,51,55,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (48,2,NULL,8,9,10,NULL,13,17,21,NULL,47,NULL,NULL,NULL,NULL,NULL,63,NULL,65,66,67,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (49,1,3,NULL,NULL,NULL,11,NULL,17,NULL,41,46,51,55,60,61,NULL,NULL,64,NULL,NULL,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (50,NULL,4,NULL,NULL,NULL,NULL,14,18,35,41,47,NULL,56,NULL,NULL,NULL,NULL,NULL,NULL,66,67,1,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (51,2,4,8,NULL,10,NULL,13,18,37,41,NULL,48,56,NULL,NULL,62,63,64,65,66,NULL,1,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (52,1,NULL,NULL,NULL,NULL,11,13,17,31,NULL,46,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,67,1,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (53,1,5,8,9,NULL,NULL,14,16,NULL,41,46,51,55,60,61,NULL,NULL,NULL,NULL,66,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (54,NULL,3,NULL,NULL,10,NULL,13,16,26,40,46,51,56,NULL,NULL,62,63,64,65,66,67,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (55,2,NULL,NULL,NULL,NULL,NULL,NULL,15,27,40,NULL,51,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (56,1,4,NULL,9,NULL,11,13,15,NULL,NULL,47,48,NULL,60,61,NULL,63,64,NULL,66,67,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (57,NULL,5,NULL,NULL,10,NULL,12,NULL,34,41,46,49,56,NULL,NULL,62,NULL,NULL,65,NULL,NULL,1,1)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (58,2,NULL,8,NULL,NULL,NULL,13,17,20,41,NULL,51,56,60,NULL,NULL,NULL,NULL,65,NULL,67,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (59,1,5,NULL,9,10,NULL,NULL,17,NULL,40,46,51,55,NULL,61,NULL,63,64,NULL,66,NULL,1,2)
INSERT [dbo].[SkillReference] ([SkillRefId],[Gender],[Age],[LanguageEnglish],[LanguageChinese],[LanguageJapanese],[LanguageKorean],[Experience],[Hometown],[Address],[Married],[Stay],[Salary],[Work],[SickCare],[OldCare],[BabySister],[DisabilityCare],[BonsaiCare],[Cooking],[Washing],[CleanHouse],[Type],[Group]) VALUES (60,NULL,NULL,8,NULL,NULL,11,13,NULL,19,NULL,47,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,NULL,67,1,2)
SET IDENTITY_INSERT [dbo].[SkillReference] OFF






































SET IDENTITY_INSERT [dbo].[JobRequest] ON
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (1,1,41,NULL,N'Applied','2014-08-13 11:00:00','2014-08-20 11:00:00','2014-08-15 10:00:00',1,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (2,2,42,NULL,N'Expired','2014-02-03 10:00:00','2014-02-10 10:00:00',NULL,2,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (3,3,43,NULL,N'Waiting','2014-04-22 16:20:00','2014-04-29 16:20:00',NULL,3,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (4,4,NULL,2,N'Approved','2014-05-20 5:00:00','2014-05-27 5:00:00','2014-08-15 10:00:00',4,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (5,5,45,NULL,N'Applied','2014-05-12 8:00:00','2014-05-19 8:00:00','2014-05-15 8:00:00',6,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (6,6,46,NULL,N'Expired','2014-01-15 6:00:00','2014-01-22 6:00:00',NULL,8,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (7,7,NULL,1,N'Waiting','2014-03-20 15:30:00','2014-03-27 15:30:00',NULL,7,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (8,8,48,NULL,N'Approved','2014-02-02 12:00:00','2014-02-09 12:00:00','2014-08-15 10:00:00',11,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (9,9,49,NULL,N'Applied','2014-09-17 8:00:00','2014-09-24 8:00:00','2014-09-19 8:00:00',30,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (10,10,NULL,2,N'Expired','2014-05-12 18:00:00','2014-05-17 18:00:00',NULL,10,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (11,11,43,NULL,N'Waiting','2014-04-20 10:00:00','2014-04-27 10:00:00',NULL,3,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (12,12,43,NULL,N'Approved','2014-08-02 10:30:00','2014-08-09 10:30:00','2014-08-15 10:00:00',22,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (13,13,NULL,3,N'Applied','2014-07-11 9:00:00','2014-07-18 9:00:00','2014-07-13 12:00:00',13,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (14,14,44,NULL,N'Waiting','2014-11-20 8:20:00','2014-11-27 8:20:00',NULL,5,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (15,15,42,NULL,N'Applied','2014-03-13 9:00:00','2014-03-20 9:00:00','2014-03-18 17:00:00',19,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (16,16,NULL,1,N'Applied','2014-05-22 19:10:00','2014-05-29 19:10:00','2014-05-25 22:30:00',16,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (17,17,NULL,5,N'Waiting','2014-01-04 15:00:00','2014-01-11 15:00:00',NULL,17,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (18,18,NULL,4,N'Approved','2014-03-21 13:10:00','2014-03-28 13:10:00','2014-08-15 10:00:00',18,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (19,19,41,NULL,N'Waiting','2014-05-10 14:00:00','2014-05-17 14:00:00',NULL,15,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (20,20,NULL,2,N'Approved','2014-09-21 7:30:00','2014-09-28 7:30:00','2014-08-15 10:00:00',20,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (21,21,NULL,3,N'Waiting','2014-05-10 9:00:00','2014-05-17 9:00:00',NULL,21,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (22,22,41,NULL,N'Expired','2014-02-11 16:00:00','2014-02-18 16:00:00',NULL,1,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (23,23,42,NULL,N'Expired','2014-05-20 11:00:00','2014-05-27 11:00:00',NULL,19,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (24,24,41,NULL,N'Waiting','2014-11-10 19:00:00','2014-11-17 19:00:00',NULL,15,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (25,25,42,NULL,N'Applied','2014-09-12 18:00:00','2014-09-19 18:00:00','2014-09-15 14:00:00',19,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (26,26,42,NULL,N'Expired','2014-08-02 17:00:00','2014-08-09 17:00:00',NULL,2,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (27,27,NULL,3,N'Expired','2014-06-14 11:20:00','2014-06-21 11:20:00',NULL,27,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (28,28,41,NULL,N'Expired','2014-01-11 17:50:00','2014-01-18 17:50:00',NULL,1,N'Muốn việc này','False')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (29,29,NULL,1,N'Waiting','2014-03-08 16:40:00','2014-03-15 16:40:00',NULL,29,N'Muốn việc này','True')
INSERT [dbo].[JobRequest] ([JobRequestId], [SkillRefId], [MaidMediatorId],[StaffId],[Status],[PostTime],[ExpiredTime],[ApplyTimes],[MaidId],[Title],[IsActive]) VALUES (30,30,47,NULL,N'Applied','2014-05-03 19:20:00','2014-05-10 19:20:00','2014-05-09 12:30:00',26,N'Muốn việc này','True')
SET IDENTITY_INSERT [dbo].[JobRequest] OFF




































































SET IDENTITY_INSERT [dbo].[Recruitment] ON
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (1,31,11,'Applied','2014-08-13 10:00:00','2014-08-14 10:00:00',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (2,32,12,'Expired','2014-08-13 10:00:01','2014-08-14 10:00:01',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (3,33,13,'Waiting','2014-08-13 10:00:02','2014-08-14 10:00:02',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (4,34,14,'Approved','2014-08-13 10:00:03','2014-08-14 10:00:03',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (5,35,15,'Applied','2014-08-13 10:00:04','2014-08-14 10:00:04',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (6,36,16,'Expired','2014-09-01 07:20:00','2014-11-01 07:20:00',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (7,37,17,'Waiting','2014-09-01 08:00:00','2014-11-01 08:00:00',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (8,38,18,'Approved','2014-09-01 08:00:01','2014-11-01 08:00:01',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (9,39,19,'Applied','2014-09-01 08:00:02','2014-11-01 08:00:02',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (10,40,20,'Expired','2014-09-01 08:00:04','2014-11-01 08:00:04',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (11,41,21,'Waiting','2014-09-01 08:00:05','2014-11-01 08:00:05',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (12,42,22,'Approved','2014-09-01 08:00:04','2014-09-01 08:00:04',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (13,43,23,'Applied','2014-09-01 08:00:05','2014-09-01 08:00:05',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (14,44,24,'Waiting','2014-09-01 08:00:06','2014-11-01 08:00:06',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (15,45,25,'Applied','2014-09-01 08:00:05','2014-11-01 08:00:05',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (16,46,26,'Applied','2014-09-01 08:00:06','2014-11-01 08:00:06',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (17,47,27,'Waiting','2014-09-01 08:00:07','2014-11-01 08:00:07',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (18,48,28,'Approved','2014-09-01 08:00:09','2014-09-01 08:00:09',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (19,49,29,'Waiting','2014-09-01 08:00:10','2014-11-01 08:00:10',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (20,50,30,'Approved','2014-09-01 08:00:11','2014-11-01 08:00:11',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (21,51,31,'Waiting','2014-09-01 08:00:12','2014-11-01 08:00:12',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (22,52,32,'Expired','2014-09-02 08:00:12','2014-11-02 08:00:12',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (23,53,33,'Expired','2014-09-02 08:00:14','2014-11-02 08:00:14',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (24,54,34,'Waiting','2014-09-02 08:00:15','2014-11-02 08:00:15',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (25,55,35,'Applied','2014-09-02 08:00:16','2014-10-02 08:00:16',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (26,56,36,'Expired','2014-09-02 08:00:17','2014-11-02 08:00:17',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (27,57,37,'Expired','2014-09-02 08:00:20','2014-11-02 08:00:20',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (28,58,38,'Expired','2014-09-02 08:00:25','2014-11-02 08:00:25',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (29,59,39,'Waiting','2014-09-02 08:00:26','2014-11-02 08:00:26',N'Cần người làm việc này')
INSERT [dbo].[Recruitment] ([RecruitmentId], [SkillRefId], [CustomerId],[Status],[PostTime],[ExpiredTime],[Title]) VALUES (30,60,40,'Applied','2014-09-02 08:00:27','2014-11-02 08:00:27',N'Cần người làm việc này')
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
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (1,14,4,'2014-08-13 10:00:00',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (2,18,8,'2014-08-13 10:00:01',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (3,22,12,'2014-08-13 10:00:02',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (4,28,18,'2014-08-13 10:00:03',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (5,30,20,'2014-08-13 10:00:04',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (6,14,4,'2014-08-13 10:00:05',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (7,18,8,'2014-08-13 10:00:06',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (8,22,12,'2014-08-13 10:00:07',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (9,28,18,'2014-08-13 10:00:08',N'Thò chắng đo')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (10,30,20,'2014-08-13 10:00:09',N'Thò chắng đo')
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
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (31,23,21,'2014-10-09 10:00:26',N'Chưa lam hết việc')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (32,24,22,'2014-10-09 10:00:27',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (33,25,23,'2014-10-09 10:00:28',N'Hay đi muộn')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (34,26,24,'2014-10-09 10:00:29',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (35,27,25,'2014-10-09 10:00:30',N'Chất lượng tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (36,28,26,'2014-10-09 10:00:31',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (37,29,27,'2014-10-09 10:00:32',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (38,30,28,'2014-10-09 10:00:33',N'Hya đi làm trễ')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (39,31,29,'2014-10-09 10:00:34',N'Thái độ làm việc tốt')
INSERT [dbo].[Comment] ([CommentId], [CustomerId], [JobRequestId],[PostTime],[CommentContent]) VALUES (40,32,30,'2014-10-09 10:00:35',N'Làm việc chưa được tốt')
SET IDENTITY_INSERT [dbo].[Comment] OFF


























































SET IDENTITY_INSERT [dbo].[Rating] ON
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (1,14,4,3.5)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (2,18,8,9.5)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (3,22,12,4.5)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (4,28,18,5)
INSERT [dbo].[Rating] ([RatingId], [CustomerId], [JobRequestId],[Rate]) VALUES (5,30,20,7)
SET IDENTITY_INSERT [dbo].[Rating] OFF




























































































