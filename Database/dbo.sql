/*
Navicat SQL Server Data Transfer

Source Server         : PhuDX
Source Server Version : 140000
Source Host           : localhost:1433
Source Database       : DATN
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 140000
File Encoding         : 65001

Date: 2019-05-31 23:30:34
*/
Create Database DATN
Go
Use DATN
go

-- ----------------------------
-- Table structure for Answer
-- ----------------------------
DROP TABLE [dbo].[Answer]
GO
CREATE TABLE [dbo].[Answer] (
[AnswerId] int NOT NULL IDENTITY(1,1) ,
[AnswerContent] nvarchar(2000) NOT NULL ,
[AskId] int NULL ,
[UserId] int NULL ,
[CountVote] int NULL ,
[DateCreated] datetime2(7) NULL ,
[Status] int NULL ,
[IsConfirm] int NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[Answer]', RESEED, 24)
GO

-- ----------------------------
-- Records of Answer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Answer] ON
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'1', N'<p>Bạn tìm số mol của muối rồi suy ra khối lượng anilin</p>', N'2', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'2', N'<p>Gọi T = \(\dfrac{n_{OH^-}}{n_{CO2}}=\dfrac{0,5+0,5\times0,02\times2}{0,5}=\dfrac{0,52}{0,5}=1,04\)</p> <p>Có 1<T<2 => Tạo 2 muối </p> <p>CO2 + 2OH\(^-\) ==-> \(CO^{2-}_3\) + H2O</p> <p>CO2 + OH\(^-\) ==--> HC\(O_3^-\)</p> <p>Lập hệ phương trình: => n\(_{CO3^{2-}}\) = n\(CO2_{\left(1\right)}\) = 0,02 (mol) </p> <p>n\(_{Ba^{2+}}\) = 0,01 ( mol) => m\(_{BaCO_3}\) = 0,01\(\times\) 197 = 1,97 (g)</p>', N'2', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'3', N'<p>\(n_{CuSO_4}=n_{CuSO_4.5H_2O}=\dfrac{5}{250}=0,02mol\)</p> <p>Zn+CuSO4\(\rightarrow\)ZnSO4+Cu</p> <p>\(n_{Cu}=n_{CuSO_4}=0,02mol\)</p> <p>mCu=0,02.64=1,28 gam</p>', N'3', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'4', N'<p>nCa(OH)2 = 0.1 x 0.2 = 0.02 (mol) </p> <p>nCaCO3 = 1.6/100=0.016(mol) </p> <p> nCa(OH)2 > n CaCO3 → tạo 2 muối</p> <p>CO2 + Ca(OH)2 → CaCO3 + H2O (1)</p> <p>===-0.02==-0.016</p> <p>0.016←0.016←0.016</p> <p>0.016=-0.004=-0</p> <p>2CO2 + Ca(OH)2 → Ca(HCO3)2 (2)</p> <p>0.008← 0.004 → 0.004</p> <p>từ 1 và 2 : nCO2 = 0.024 (mol)</p> <p>VmaxCO2 = 0.024 x 22.4= 0.5376(l)</p>', N'3', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'5', N'<p>- Trích lần lượt các chất ra làm mẫu thử</p> <p>- Cho dung dịchk HCl qua lần lượt các mẫu thử ; mẫu nào có khí bay ra là CaCO3 và Na2CO3 ; phản úng được nhưng không có hiện tượng đặc biệt là NaOH</p> <p>CaCO3 + 2HCl \(\rightarrow\) CaCl2 + CO2\(\uparrow\) + H2O</p> <p>Na2CO3 + 2HCl \(\rightarrow\) 2NaCl + CO2\(\uparrow\) + H2O</p> <p>NaOH + HCl \(\rightarrow\) NaCl + H2O</p> <p>- Chia làm hai nhóm </p> <p> + Nhóm 1 : CaCO3 ; Na2CO3</p> <p> + Nhóm 2 : Na2SO4 ; NaCl</p> <p>- Cho dung dịch BaCl2 qua lần lượt các mẫu thử ở nhóm 2 ; mẫu nào tạo ra kết tủa trắng là Na2SO4</p> <p>Na2SO4 + BaCl2 \(\rightarrow\) BaSO4\(\downarrow\) + 2NaCl</p> <p>- Còn lại là NaCl</p> <p>- Đem hai mẫu thử ở nhóm 1 đi đốt trên ngọn lửa đèn cồn , muối của Ca cháy với ngọn lửa màu cam còn muối của Na cháy với ngọn lửa vàng</p> <p> </p>', N'5', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'6', N'<p>%65Cu=100%-73%=27%</p> <p>\(\overline{M_{Cu}}=\dfrac{17.65+73.64}{100}=64,27gam\)</p> <p>\(m_{Cu}=n.\overline{M}=0,5.64,27=32,135gam\)</p>', N'5', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'7', N'<p>Đối với bài này thì các thầy cô thường hướng dẫn các em xét theo tỉ số T.</p> <p>\(T=\dfrac{n_{NaOH}}{n_{CO2}}=\left(\dfrac{b}{\dfrac{a}{22,4}}=\dfrac{22,4b}{a}\right)\)</p> <p>+ T>2: sp chứa muối trung hòa.</p> <p>+ 2\(\ge\)T\(\ge\)1: sp gồm cả muối trung hòa và axit.</p> <p>+ T<1: sp chứa muối axit.</p> <p>Nếu muốn xét tỉ số a/b thì em lấy đảo ngược lại nhé</p>', N'4', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'8', N'<p>(1)Fe+2HCl -> FeCl2+H2</p> <p>(2)FeCl2 +Ba(OH)2->Fe(OH)2+BaCl2</p> <p>(3)Fe(OH)2->(to)FeO+H2O</p> <p>(4)FeO+H2->Fe+H2O</p> <p>(5)3Fe+2O2->Fe3O4</p> <p>(6)Fe3O4+4CO->3Fe+4CO2</p> <p>(7)2Fe+3Cl2->(to)2FeCL3</p> <p>(8)FeCl3+3NaOH->Fe(OH)3+3NaCl</p> <p>(9)2Fe(OH)3+3H2SO4->Fe2(SO4)3+6H2O</p>', N'6', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'9', N'<p>\(n_{AgNO_3}=\dfrac{250.4}{100.170}=\dfrac{1}{17}\left(mol\right)\)</p> Sau phản ứng, lượng AgNO3 giảm đi là khối lượng AgNO3 đã tác dụng \(\Rightarrow n_{AgNO_3}\left(pứ\right)=17\%.\dfrac{1}{17}=0,01\left(mol\right)\) \(Cu\left(0,005\right)+2AgNO_3\left(0,01\right)\rightarrow Cu\left(NO_3\right)_2+2Ag\left(0,01\right)\) Theo PTHH: \(\left\{{}\begin{matrix}n_{Cu\left(tan-ra\right)}=0,005\left(mol\right)\_{Ag\left(tao-thanh\right)}=0,01\left(mol\right)\end{matrix}\right.\)\(\Rightarrow\left\{{}\begin{matrix}m_{Cu\left(tan-ra\right)}=0,32\left(g\right)\\m_{Ag\left(tao-thanh\right)}=1,08\left(g\right)\end{matrix}\right.\) => Sau phản ứng khối lượng thanh kim loại tăng: \(=1,08-0,32=0,76\left(g\right)\) \(\Rightarrow m_{c.ran-sau-pứ}=20+0,76=10,76\left(g\right)\)', N'7', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'10', N'<p>nNa = 2,3 : 23 = 0,1 mol <br> 2Na +2 H2O =--> 2NaOH + H2 <br> 1mol =- 1mol =-- 1mol == 0.5mol <br> Theo PT nNa = n NaOH = 0,1mol <br> n H2 = 1/2 n Na =0,1/2 = 0,05 mol <br> mNaOH = 0,1 . 40 = 4 gam <br> mH2 = 0,05 , 2 = 0,1 gam <br> m H2O = 47,8 gam <br> m dd = mH2O + mNa - mH2 =47,8 +2,3 - 0,1 = 50 gam <br> C% = \(\dfrac{4}{50}\) .100% = 8% </p>', N'8', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'11', N'<p>Phải </p> <p> </p>', N'9', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'12', N'<p>a. Sơ đồ pin: (-) Ni-Ag (+)</p> <p>Thế của cặp oxi/khử nào lớn hơn thì kim loại đó là cực dương của pin điện.</p> <p>b. Epin = E (+) - E (-) = E0 Ag+/Ag - E0 Ni2+/Ni = 1,029</p>', N'10', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'13', N'<p>PTHH : H2 + CuO --> Cu + H2O</p> <p>a) nCuO=40/80=0,2(mol)</p> <p>nCu=33,6/64=0,525(mol)</p> <p>theo PTHH ta có : </p> <p>nCuO=nCu=0,525(mol)</p> <p>=> h=0,2/0,525 . 100=38,09%</p> <p>b) theo PTHH ta có : </p> <p>nH2=nCuO=0,2(mol)</p> <p>=> số phân tử hidro là :</p> <p>0,2 . 6.1023=1,2.1023(phân tử)</p>', N'11', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'14', N'<p>Thứ nhất nhiệt độ nồi chì để đúc ( múc rót) trên 450 tốt nhất 500. Ở nhiệt độ 380 chì vẫn nóng chảy nhưng khi vừa múc lên đã đông rồi,</p><p>Thứ hai khuôn để rót chì vào miệng khuôn cần sơn để tránh mất nhiệt nếu không có sơn có thể khò muội cả khuôn. muội đèn dầu màu đen ấy, dùng đèn khò thêm chút gió có thể tạo muội.</p><p> </p>', N'12', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'15', N'<p>a/ Cu + AgNO\(_3\)=--> Ag + Cu(NO\(_3\))\(_2\)</p><p> </p>', N'10', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'16', N'<p>a; Cu+2AgNO3=>2Ag+Cu(NO3)2</p> <p>b;mkim loại tăng=mag-mcu=13,6-6=7,6</p> <ol> <li>2*Mag-Mcu=108*2-64=152</li> <li>số mol cu phản ứng 7,6:152=0,05</li> </ol>', N'12', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'17', N'<p>\(\frac{m_O}{m_H}=\frac{7,936}{1}\approx8\)</p><p>Vậy khối lượng một nguyên tử O nặng gần bằng 8 lần khối lượng một nguyên tử H</p><p> </p>', N'12', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'18', N'<p> Trong phản ứng hóa học , phản ứng nào có sự chuyển dịch electron điều liên quan đến "điện hóa". Khi này phản ứng nào có chênh lệch thế điện hóa (ΔE)càng lớn càng dễ dàng phán ứng, tức ưu tiên xảy ra trước. <br>Vậy thì trong hệ có bao nhiêu cặp có thể sinh ra chênh lệch thế điện hóa cứ liệt kê ra. Ở mỗi cặp phải có một tác nhân cho electron và một tác nhân nhận electron thì mới tạo thành một phản ứng điện hóa. Trường hợp này có 3 cặp : <br><br>Cặp 1 : Fe3+ + 1 e --> Fe2+ Eo = 0.771 <br>--...Zn - 2e --> Zn2+ Eo = -0.763 <br>=> ΔE = 0.771 - (-0.763) = 1.534 <br><br>Cặp 2 : Fe2+ + 2 e --> Fe Eo = -0.44 <br>=Zn - 2e => Zn2+ Eo = -0.763 <br>=> ΔE = -0.44 - (-0.763) = 0.296 <br><br>Cặp 3 : 2H+ + 2 e => H2 Eo = 0 <br>= Zn - 2 e --> Zn2+ Eo = -0.763 <br>=> ΔE = 0 - (-0.763) = 0.763 <br><br>Xếp từ lớn tới bé : Cặp 1 > Cặp 3 > Cặp 2 <br><br>Vậy cặp 1 xảy ra trước nhất, khi không còn tác nhân đảm bảo cho cặp 1 , đến cặp 3, tương tự cho đến cặp 2 . Nghĩa là Zn phản ứng với Fe3+ để tạo thành Fe2+, sau đó hết Fe3+ mà vẫn còn kẻm thì Zn tác dụng với H+ tạo thành H2 , khi hết H+ mà vẫn còn Zn, Zn tác dụng với Fe2+ tạo thành Fe. Bạn đã nghĩ đúng. <br><br>~~~~~~~~~~~~~~~~~~~ <br>Bài giải trên chỉ đúng trong trường hợp tất cả các tác nhân điều có nồng độ 1 mol/l <br><br>Nếu nồng độ các tác nhân khác nhau , lúc này phải tích chênh lệch thế điện hóa cân bằng, ký hiệu Ecb. Với Ecb được tính bằng công thức : <br><br>Ecb = Eo + 0.059/n . log ([Ox]/[Kh]) <br><br>trong đó n là cái số trong phương trình này: Kh - n e --> Ox <br>[Ox] - nồng độ tác nhân Oxi hóa <br>[Kh] - nồng độ tác nhân khử <br><br>Theo công thức trên khi [Ox] = [Kh] = 1 mol/l thì log([Ox]/[Kh]) = log(1) = 0 vậy Ecb = Eo </p>', N'13', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'19', N'<p>câu này bạn lấy ở đâu mà khó quá!</p>', N'12', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'20', N'<p>1,</p><p>pthh</p><p>C+O2=>CO2</p><p>C+CO2=>2CO</p><p>cho hồn hợp khí đi qua nước vôi trong nếu xuất hiện kết tủa thì hồn hợp chứa CO2</p><p>cho hồn hợ khí đi qua CuO nung nóng nếu chất rắn từ màu đen chuyển sang đỏ thì hồn hợp chứa CO</p><p>othh</p><p>Ca(OH)2+CO2=>CaCO3+H2O</p><p>CuO+CO--> Cu +CO2</p>', N'14', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'21', N'<p>cho các mt tác dụng lần lượt vs nhau</p> <p>Mẫu thử nào cho kết quả ứng với 1↑ => HCl</p> <p>Mẫu thử nào cho kết quả ứng với 1↓ => NaOH</p> <p>Mẫu thử nào cho kết quả ứng với 2↓ => Ba(OH)2</p> <p>Mẫu thử nào cho kết quả ứng với 2↓ và 1↑ => K2CO3</p> <p>Mẫu thử nào cho kết quả ứng với 3↓ => MgSO4</p> <p>Các PTHH:</p> <p>2HCl + K2CO3 → 2KCl + H2O</p> <p>2NaOH + MgSO4 → Na2SO4 + Mg(OH)2</p> <p>Ba(OH)2 + K2CO3 → BaCO3 + 2KOH</p> <p>Ba(OH)2 + MgSO4 → Mg(OH)2 + BaSO4</p> <p>K2CO3 + MgSO4 → MgCO3 + K2SO4</p>', N'16', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'22', N'<p>8Al+30HNO3=>8Al(NO3)3+9H2O+3NH4NO3</p> <p>5Mg+12HNO3=->5Mg(NO3)2+N2+6H2O</p> <p>3Cu+8HNO3=>3Cu(NO3)2+4H2O+2NO</p>', N'15', N'3', N'1', N'2019-05-29 15:18:37.1300000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'23', N'<p>dsdsdsdsdsdsd</p>', N'2', N'3', N'0', N'2019-05-31 16:09:39.6700000', N'1', N'0')
GO
GO
INSERT INTO [dbo].[Answer] ([AnswerId], [AnswerContent], [AskId], [UserId], [CountVote], [DateCreated], [Status], [IsConfirm]) VALUES (N'24', N'<p>fdfdfdf</p>', N'2', N'3', N'0', N'2019-05-31 16:09:59.7670000', N'1', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO

-- ----------------------------
-- Table structure for AnswerVote
-- ----------------------------
DROP TABLE [dbo].[AnswerVote]
GO
CREATE TABLE [dbo].[AnswerVote] (
[AnswerId] int NOT NULL ,
[UserId] int NOT NULL ,
[UserName] varchar(2048) NULL ,
[DateCreated] datetime2(7) NULL 
)


GO

-- ----------------------------
-- Records of AnswerVote
-- ----------------------------
INSERT INTO [dbo].[AnswerVote] ([AnswerId], [UserId], [UserName], [DateCreated]) VALUES (N'1', N'3', N'admin', N'2019-05-31 10:33:49.0000000')
GO
GO
INSERT INTO [dbo].[AnswerVote] ([AnswerId], [UserId], [UserName], [DateCreated]) VALUES (N'2', N'3', N'admin', N'2019-05-31 10:33:48.2370000')
GO
GO

-- ----------------------------
-- Table structure for Ask
-- ----------------------------
DROP TABLE [dbo].[Ask]
GO
CREATE TABLE [dbo].[Ask] (
[AskId] int NOT NULL IDENTITY(1,1) ,
[Content] nvarchar(2000) NULL ,
[CategoryId] int NULL ,
[UserId] int NULL ,
[CountLike] int NULL ,
[CountAnswer] int NULL ,
[Coin] int NULL ,
[SlugUrl] varchar(1024) NULL ,
[DateCreated] datetime NULL ,
[Status] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Ask]', RESEED, 28)
GO

-- ----------------------------
-- Records of Ask
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Ask] ON
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'2', N'<p>Cho m gam anilin phản ứng vừa đủ với dung dịch HCl thu được 12,95 g muối tìm m 1</p>', N'3', N'3', N'1', N'1', N'1', N'p-cho-m-gam-anilin-phan-ung-vua-du-voi-dung-dich-hcl-thu-duoc-12-95-g-muoi-tim-m-1-p', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'3', N'<p>Dung dịch X chứa NaOH 1M và Ba(OH)2 0,02M. Hấp thụ 0,5mol khí CO2 vào 500ml dung dịch X. Thu được bao nhiêu gam kết tủa 12</p>', N'1', N'3', N'1', N'1', N'1', N'p-dung-dich-chua-naoh-1m-va-ba-oh-2-0-02m-hap-thu-0-5mol-khi-co2-vao-500ml-dung-dich-thu-duoc', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'4', N'<p>trong một ống nghiệm, người ta đã hòa tan 5g CuSO4.5H2O rồi thả vào đó một miếng kẽm. Có bao nhiêu gam đồng nguyên chất thoát ra sau phản ứng, biết rằng đã lấy thừa kẽm</p> <p> </p>', N'1', N'3', N'1', N'1', N'1', N'trong-mot-ong-nghiem-nguoi-ta-da-hoa-tan-5g-cuso4-5h2o-roi-tha-vao-do-mot-mieng-kem-co-bao-nhieu', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'5', N'<p> sục V lít CO2 vào 100 ml dd Ca(OH)2 0.2M thu được 1.6g kết tủa . giá trị lớn nhất của V là bao nhiêu </p>', N'1', N'3', N'1', N'1', N'1', N'suc-v-lit-co2-vao-100-ml-dd-ca-oh-2-0-2m-thu-duoc-1-6g-ket-tua-gia-tri-lon-nhat-cua-v-la-bao-nhi', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'6', N'<p>phân biệt các chất rắn bột riêng biệt sau bằng phương pháp hóa học :</p> <p>caco3, na2co3, na2so4, nacl, naoh </p>', N'1', N'3', N'1', N'1', N'1', N'phan-biet-cac-chat-ran-bot-rieng-biet-sau-bang-phuong-phap-hoa-hoc-caco3-na2co3-na2so4-nacl-naoh', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'7', N'<p>đồng có hai đồng vị 65Cu và 63Cu (chiếm 73%). Tính khối lượng của 0,5 mol Cu</p>', N'1', N'3', N'1', N'1', N'1', N'dong-co-hai-dong-vi-65cu-va-63cu-chiem-73-tinh-khoi-luong-cua-0-5-mol-cu', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'8', N'<p>Dẫn toàn bộ a(l) CO2 vào dung dịch chứa b(mol)NaOH. Xét tỉ lệ a/b để tạo ra</p> <p>a) Muối axit</p> <p>b) Muối trung hòa </p> <p>c) Cả hai muối </p> <p> </p>', N'1', N'3', N'1', N'1', N'1', N'dan-toan-bo-a-l-co2-vao-dung-dich-chua-b-mol-naoh-et-ti-le-a-b-de-tao-ra-a-muoi-ait-b-muoi-trung', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'9', N'<p>Fe => FeCl2 => Fe(OH)2 => FeO => Fe => Fe3O4 => Fe => FeCl3 => Fe(OH)3 => Fe2(SO4)3 </p>', N'1', N'3', N'1', N'1', N'1', N'fe-fecl2-fe-oh-2-feo-fe-fe3o4-fe-fecl3-fe-oh-3-fe2-so4-3', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'10', N'<p>Ngâm 1 vật bằng đồng có khối lượng 10g trong 250g dung dịch AgNO3 4%. Khi lấy vật ra khỏi dung dịch thì khối lượng AgNO3 trong dung dịch giảm 17%. Khối lượng của vật sau phản ứng là bao nhiêu?</p>', N'1', N'3', N'1', N'1', N'1', N'ngam-1-vat-bang-dong-co-khoi-luong-10g-trong-250g-dung-dich-agno3-4-khi-lay-vat-ra-khoi-dung-dic', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'11', N'<p>cho 2,3g Na hòa tan hết trong 47,8ml nước thu được dung dịch NaOH và có khí H2 thoát ra. Tính nồng dộ phần trăm của dung dịch NaOH</p>', N'1', N'3', N'1', N'1', N'1', N'cho-2-3g-na-hoa-tan-het-trong-47-8ml-nuoc-thu-duoc-dung-dich-naoh-va-co-khi-h2-thoat-ra-tinh-non', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'12', N'<p> </p> <p>Mọi người cho mình hỏi anilin có phải amin không nhỉ???</p>', N'1', N'3', N'1', N'1', N'1', N'moi-nguoi-cho-minh-hoi-anilin-co-phai-amin-khong-nhi', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'13', N'<p>cho E\(^0\) Ag\(^+\)/Ag =0.799v; E\(^0\) Ni\(^{2+}\)/Ni =-0.23</p> <p>a) viết sơ đồ pin dùng để xác định E\(^0\).chỉ rõ cực âm dương</p> <p>b) cho biết sức điện độngcủa pin, phản ứng xảy ra trong pin theo quy ước và thực tế</p> <p>c)nếu ghép hai điện cực tiêu chuẩn Ag và Ni thì sức điện động của Epin =? phản ứng pin như thế nào</p> <p>giúp em với ạ!!!! </p> <p> </p>', N'1', N'3', N'1', N'1', N'1', N'cho-e-0-ag-ag-0-799v-e-0-ni-2-ni-0-23-a-viet-so-do-pin-dung-de-ac-dinh-e-0-chi-ro-cuc-am-duong-b', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'14', N'<p>Hòa tan m g Al vào dd HCl thu được dd X trong suốt. Thêm từ từ dd NaOH 0,1 M vào X khi hết 100 ml thì bắt đầu xuất hiện kết tủa. khi hết 1000ml hoặc 1400 ml đều thu được a g kết tủa. a,m???</p>', N'1', N'3', N'1', N'1', N'1', N'hoa-tan-m-g-al-vao-dd-hcl-thu-duoc-dd-trong-suot-them-tu-tu-dd-naoh-0-1-m-vao-khi-het-100-ml-thi', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'15', N'<p>1 hh x gồm 2 amin no đơn chức đồng đẳngkế tiếp phản ứng vừa đủ với 0,1 lít dd h2so4 1 m cho ra 1 hỗn hợp 2 muối có khối lượng la 17,68 g xác định ctpt và khối lượng mỗi amin </p>', N'1', N'3', N'1', N'1', N'1', N'1-hh-gom-2-amin-no-don-chuc-dong-dangke-tiep-phan-ung-vua-du-voi-0-1-lit-dd-h2so4-1-m-cho-ra-1-h', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'16', N'<p><b>Cho luong khi hidro di qua ong thuy tinh chua 40g bot dong oxit sau phan ung thu duoc 33,6 g chat ran a) Tinh hieu suat phan ung b) tinh so phan tu hidro da than gia khu dong oxit</b>', N'1', N'3', N'1', N'1', N'1', N'cho-luong-khi-hidro-di-qua-ong-thuy-tinh-chua-40g-bot-dong-oit-sau-phan-ung-thu-duoc-33-6-g-chat', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'17', N'<p>tính khối lượng pe thu được khi tổng hợp 3kg alen h=6,1%</p>', N'1', N'3', N'1', N'1', N'1', N'tinh-khoi-luong-pe-thu-duoc-khi-tong-hop-3kg-alen-h-6-1', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'18', N'<p>Chào mọi người ạ.</p><p>Xin mọi người giúp em chút vấn đề về kim loại chì.</p><p>Làm cách nào để khi nung nóng chì lên đổ vào khuôn tạo mẫu "khuôn đúc chì câu" chì vẫn mềm, có thể nói là rất mềm ạ. Em có thử làm nhưng khi chì nóng chảy e cho nhỏ lửa đủ duy trì lượng chì nóng chảy. Nhưng khi đổ vào khuôn chì nguội rất nhanh và sau đó khá cứng chứ ko mềm ạ.</p>', N'1', N'3', N'1', N'1', N'1', N'chao-moi-nguoi-a-in-moi-nguoi-giup-em-chut-van-de-ve-kim-loai-chi-lam-cach-nao-de-khi-nung-nong', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'19', N'<p>Bạn nào trả lời giúp mình câu này với:</p><p>Cho 1 lá đồng có khối lượng là 6g vào dd AgNO3. Phản ứng xong, đem KL ra rửa nhẹ, làm khô cân được 13,6g</p><p>a) Viết PTHH</p><p>b) Tính khối lượng Cu đã phản ứng?</p>', N'1', N'3', N'1', N'1', N'1', N'ban-nao-tra-loi-giup-minh-cau-nay-voi-cho-1-la-dong-co-khoi-luong-la-6g-vao-dd-agno3-phan-ung-on', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'20', N'<p>Khi điện phân nước, người ta xác định được là ứng với 1 g hiđro sẽ thu được 7,936 g oxi. Vậy khối lượng 1 ngtử oxi nặng gấp bao nhiêu lần khối lượng 1 ngtử hiđro</p>', N'1', N'3', N'1', N'1', N'1', N'khi-dien-phan-nuoc-nguoi-ta-ac-dinh-duoc-la-ung-voi-1-g-hidro-se-thu-duoc-7-936-g-oi-vay-khoi-lu', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'21', N'<p>nếu cho oxit feo va zn cùng vào dung dịch hcl thi cái nào phản ứng trước? <br>và nếu là cho fe2o3 và zn vào phản úng với hcl thì fe2o3 phản ứng trước <br>fe2o3+hcl->fecl3 +h2o <br>khi đó zn đẩy fe3+ trong muối thành fe2+ rồi lại đảy xuống fe còn dư thì zn mới phản ứng với hcl mà không phair là sau khi fe3+ thanhf fe2+ thì zn phải phản ứng với h+ xong còn dư mới phản ứng với fe2+ . mình nghĩ là fe2+ đứng trước h+ trong dãy điện hóa thì phải như mình nghĩ mới đúng chứ nhỉ</p>', N'1', N'3', N'1', N'1', N'1', N'neu-cho-oit-feo-va-zn-cung-vao-dung-dich-hcl-thi-cai-nao-phan-ung-truoc-va-neu-la-cho-fe2o3-va-z', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'22', N'<p>Dung dịch X chứa HCl, CuSO4, Fe2(SO4)3. Lấy 400ml dung dịch X đem điện phân bằng điện cực trơ, cường độ dòng điện 7,72A, đến khi ở katot thu được 5,12g Cu thì dừng lại. Khi đó ở anot có 2,24 lit một chất khí bay ra (đktc). Dung dịch sau điện phân tác dụng vừa đủ với 1,25 lit dung dịch Ba(OH)2 0,2M và đun nóng dung dịch trong không khí cho các phản ứng xảy ra hoàn toàn thì thu được 56,76g kết tủa.</p><ol><li>Tính thời gian điện phân.</li><li>Tính CM của các chất trong dung dịch ban đầu</li></ol>', N'1', N'3', N'1', N'1', N'1', N'dung-dich-chua-hcl-cuso4-fe2-so4-3-lay-400ml-dung-dich-dem-dien-phan-bang-dien-cuc-tro-cuong-do', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'23', N'<p>1/. khi đốt cháy cacbon trong một lượng oxi xác định người ta thu được hh A. xác định A và chứng tỏa sự tồn tại của các khí trongA</p><p>2/. hãy nêu phương pháp tách hh gồm:</p><p> a). bột than, I2 và cuo</p><p> b). propilen và axetilen</p><p>3/. từ quặng bôxit hãy nêu phương trình tổng hợp các chất dẻo P.E , P.V.C, cao su buna</p><p> </p>', N'1', N'3', N'1', N'1', N'1', N'1-khi-dot-chay-cacbon-trong-mot-luong-oi-ac-dinh-nguoi-ta-thu-duoc-hh-a-ac-dinh-a-va-chung-toa-s', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'24', N'<p>Không dùng thêm hóa chất nào khác, bằng phương pháp hóa học hãy phân biệt các dung dịch sau đựng trong các lọ riêng biệt bị mất nhãn là: HCl, NaOH, Ba(OH)2, K2CO3, MgSO4.', N'1', N'3', N'1', N'1', N'1', N'khong-dung-them-hoa-chat-nao-khac-bang-phuong-phap-hoa-hoc-hay-phan-biet-cac-dung-dich-sau-dung', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'25', N'<p>Viết phương trình phân tử , ion rút gọn</p> <p>AL+HNO3 loãng -> NH4NO3 </p> <p>Mg+HNO3 loãng -> N2</p> <p>Cu+HNO3 loãng -> NO</p> <p> </p>', N'1', N'3', N'1', N'1', N'1', N'viet-phuong-trinh-phan-tu-ion-rut-gon-al-hno3-loang-nh4no3-mg-hno3-loang-n2-cu-hno3-loang-no', N'2019-05-29 15:15:49.197', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'26', N'<p>dsdsdsdsdsd</p>', N'1', N'3', N'0', N'0', N'0', N'p-dsdsdsdsdsd-p', N'2019-05-31 02:09:21.380', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'27', N'<p>dsdsdsdsdsd</p>', N'1', N'3', N'0', N'0', N'0', N'p-dsdsdsdsdsd-p', N'2019-05-31 02:09:52.907', N'1')
GO
GO
INSERT INTO [dbo].[Ask] ([AskId], [Content], [CategoryId], [UserId], [CountLike], [CountAnswer], [Coin], [SlugUrl], [DateCreated], [Status]) VALUES (N'28', N'<p>dsdsdsdsdsd</p>', N'1', N'3', N'0', N'0', N'0', N'p-dsdsdsdsdsd-p', N'2019-05-31 02:10:32.900', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Ask] OFF
GO

-- ----------------------------
-- Table structure for AskLike
-- ----------------------------
DROP TABLE [dbo].[AskLike]
GO
CREATE TABLE [dbo].[AskLike] (
[AskId] int NOT NULL ,
[UserId] int NOT NULL ,
[UserName] varchar(256) NULL ,
[DateCreated] datetime2(7) NULL 
)


GO

-- ----------------------------
-- Records of AskLike
-- ----------------------------
INSERT INTO [dbo].[AskLike] ([AskId], [UserId], [UserName], [DateCreated]) VALUES (N'2', N'3', N'admin', N'2019-05-30 01:27:00.7500000')
GO
GO

-- ----------------------------
-- Table structure for Category
-- ----------------------------
DROP TABLE [dbo].[Category]
GO
CREATE TABLE [dbo].[Category] (
[CategoryId] int NOT NULL IDENTITY(1,1) ,
[CategoryName] nvarchar(2048) NULL ,
[Status] int NULL DEFAULT ((1)) ,
[Alias] varchar(256) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[Category]', RESEED, 3)
GO

-- ----------------------------
-- Records of Category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Category] ON
GO
INSERT INTO [dbo].[Category] ([CategoryId], [CategoryName], [Status], [Alias]) VALUES (N'1', N'Hóa học 12', N'1', N'hoa-hoc')
GO
GO
INSERT INTO [dbo].[Category] ([CategoryId], [CategoryName], [Status], [Alias]) VALUES (N'3', N'Toán học 12', N'1', N'toan-hoc-12')
GO
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO

-- ----------------------------
-- Table structure for LogHistory
-- ----------------------------
DROP TABLE [dbo].[LogHistory]
GO
CREATE TABLE [dbo].[LogHistory] (
[LogHistoryId] int NOT NULL IDENTITY(1,1) ,
[UserId] int NOT NULL ,
[Content] nvarchar(MAX) NULL ,
[Status] tinyint NOT NULL ,
[DateCreated] datetime NULL ,
[DateModified] datetime NULL 
)


GO

-- ----------------------------
-- Records of LogHistory
-- ----------------------------
SET IDENTITY_INSERT [dbo].[LogHistory] ON
GO
SET IDENTITY_INSERT [dbo].[LogHistory] OFF
GO

-- ----------------------------
-- Table structure for Notification
-- ----------------------------
DROP TABLE [dbo].[Notification]
GO
CREATE TABLE [dbo].[Notification] (
[NotificationID] int NOT NULL IDENTITY(1,1) ,
[UserID] int NOT NULL ,
[Content] nvarchar(MAX) NULL ,
[CreatedAt] datetime NOT NULL ,
[Status] tinyint NOT NULL 
)


GO

-- ----------------------------
-- Records of Notification
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Notification] ON
GO
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO

-- ----------------------------
-- Table structure for Role
-- ----------------------------
DROP TABLE [dbo].[Role]
GO
CREATE TABLE [dbo].[Role] (
[RoleId] int NOT NULL ,
[RoleName] nvarchar(128) NULL 
)


GO

-- ----------------------------
-- Records of Role
-- ----------------------------

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE [dbo].[User]
GO
CREATE TABLE [dbo].[User] (
[UserId] int NOT NULL IDENTITY(1,1) ,
[UserName] varchar(128) NULL ,
[PasswordHash] varchar(128) NULL ,
[FullName] nvarchar(360) NULL ,
[Email] varchar(128) NULL ,
[Phone] varchar(128) NULL ,
[DateCreated] datetime NULL ,
[Experience] int NULL ,
[Coin] int NULL ,
[RoleId] int NULL ,
[Avatar] varchar(1028) NULL ,
[Status] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[User]', RESEED, 3)
GO

-- ----------------------------
-- Records of User
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User] ON
GO
INSERT INTO [dbo].[User] ([UserId], [UserName], [PasswordHash], [FullName], [Email], [Phone], [DateCreated], [Experience], [Coin], [RoleId], [Avatar], [Status]) VALUES (N'1', N'hieult', N'4297f44b13955235245b2497399d7a93', N'Hiếu', N'hieu@gmail.com', N'0966899888', null, null, null, N'1', null, N'1')
GO
GO
INSERT INTO [dbo].[User] ([UserId], [UserName], [PasswordHash], [FullName], [Email], [Phone], [DateCreated], [Experience], [Coin], [RoleId], [Avatar], [Status]) VALUES (N'2', N'hieult1', N'4297f44b13955235245b2497399d7a93', N'Hiếu LT', N'hieult1@gmail.com', N'0966899888', null, null, null, N'2', null, N'1')
GO
GO
INSERT INTO [dbo].[User] ([UserId], [UserName], [PasswordHash], [FullName], [Email], [Phone], [DateCreated], [Experience], [Coin], [RoleId], [Avatar], [Status]) VALUES (N'3', N'admin', N'4297f44b13955235245b2497399d7a93', N'Quản trị viên', N'admin12@gmail.com', N'0966899888', null, null, null, N'2', null, N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO

-- ----------------------------
-- Procedure structure for sp_Answer_CheckViewConfirmAnswer
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Answer_CheckViewConfirmAnswer]
GO
CREATE PROCEDURE [dbo].[sp_Answer_CheckViewConfirmAnswer]
@AskId INT,
@AnswerId INT,
@UserId INT
AS
BEGIN
	IF EXISTS(SELECT 1 FROM Ask WHERE UserId=@UserId AND AskId=@AskId)
		BEGIN
			IF EXISTS(SELECT 1 FROM Answer WHERE AnswerId=@AnswerId AND IsConfirm=0)
				BEGIN
					SELECT 1
				END
			ELSE
				BEGIN
					SELECT 0
				END
		END
	ELSE
		BEGIN
			SELECT 0
		END
END


GO

-- ----------------------------
-- Procedure structure for sp_Answer_ConfirmAnswer
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Answer_ConfirmAnswer]
GO
CREATE PROCEDURE [dbo].[sp_Answer_ConfirmAnswer]
@AskId INT,
@AnswerId INT,
@UserId INT
AS
BEGIN
	IF EXISTS(SELECT 1 FROM Ask WHERE UserId=@UserId AND AskId=@AskId)
		BEGIN
			IF EXISTS(SELECT 1 FROM Answer WHERE AnswerId=@AnswerId AND IsConfirm=0)
				BEGIN
					UPDATE Answer SET IsConfirm=0 WHERE AskId=@AskId
					UPDATE Answer SET IsConfirm=1 WHERE AnswerId=@AnswerId
				END
			ELSE
				BEGIN
					SELECT 0
				END
		END
	ELSE
		BEGIN
			SELECT 0
		END
END



GO

-- ----------------------------
-- Procedure structure for sp_Answer_FillByAskId
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Answer_FillByAskId]
GO
CREATE PROCEDURE [dbo].[sp_Answer_FillByAskId]
@AskId INT
AS
BEGIN
  SELECT a.*,u.FullName
	FROM Answer a LEFT JOIN [User] u ON a.UserId = u.UserId
	WHERE (@AskId=0 OR a.AskId = @AskId)
	ORDER BY a.IsConfirm DESC,a.CountVote DESC,a.AnswerId DESC
END

GO

-- ----------------------------
-- Procedure structure for sp_Answer_Insert
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Answer_Insert]
GO
CREATE PROCEDURE [dbo].[sp_Answer_Insert]
@AskId INT,
@UserId INT,
@AnswerContent nvarchar(2000)
AS
BEGIN
	INSERT INTO Answer(AskId,UserId,AnswerContent,CountVote,DateCreated,Status,IsConfirm)
	VALUES(@AskId,@UserId,@AnswerContent,0,GETDATE(),1,0)
END




GO

-- ----------------------------
-- Procedure structure for sp_Answer_UnConfirmAnswer
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Answer_UnConfirmAnswer]
GO
CREATE PROCEDURE [dbo].[sp_Answer_UnConfirmAnswer]
@AskId INT,
@AnswerId INT,
@UserId INT
AS
BEGIN
	IF EXISTS(SELECT 1 FROM Ask WHERE UserId=@UserId AND AskId=@AskId)
		BEGIN
			IF EXISTS(SELECT 1 FROM Answer WHERE AnswerId=@AnswerId AND IsConfirm=1)
				BEGIN
					UPDATE Answer SET IsConfirm=0 WHERE AnswerId=@AnswerId
				END
			ELSE
				BEGIN
					SELECT 0
				END
		END
	ELSE
		BEGIN
			SELECT 0
		END
END




GO

-- ----------------------------
-- Procedure structure for sp_Ask_Add
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_Add]
GO
CREATE PROCEDURE [dbo].[sp_Ask_Add]
@Content nvarchar(2000),
@CategoryId int,
@UserId int,
@SlugUrl varchar(2000)
AS
BEGIN
	INSERT INTO Ask(Content,CategoryId,UserId,CountLike,CountAnswer,Coin,DateCreated,Status,SlugUrl)
	VALUES(@Content,@CategoryId,@UserId,0,0,0,GETDATE(),1,@SlugUrl)
	SELECT * FROM Ask WHERE AskId=SCOPE_IDENTITY()
END
GO

-- ----------------------------
-- Procedure structure for sp_Ask_Count
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_Count]
GO
CREATE PROCEDURE [dbo].[sp_Ask_Count]
@CategoryId INT
AS
BEGIN
  SELECT COUNT(1)
	FROM Ask
	WHERE (@CategoryId=0 OR CategoryId = @CategoryId)
END

GO

-- ----------------------------
-- Procedure structure for sp_Ask_CountSearchContent
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_CountSearchContent]
GO
CREATE PROCEDURE [dbo].[sp_Ask_CountSearchContent]
@SearchContent NVARCHAR(2048)
AS
BEGIN
  SELECT COUNT(1)
	FROM Ask
	WHERE (@SearchContent='' OR Content LIKE N'%'+@SearchContent+'%')
END


GO

-- ----------------------------
-- Procedure structure for sp_Ask_Delete
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_Delete]
GO
CREATE PROCEDURE [dbo].[sp_Ask_Delete]
@AskId INT
AS
BEGIN
  DELETE FROM Ask WHERE AskId=@AskId
END
GO

-- ----------------------------
-- Procedure structure for sp_Ask_Detail
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_Detail]
GO
CREATE PROCEDURE [dbo].[sp_Ask_Detail]
@AskId INT
AS
BEGIN
  SELECT a.*,u.FullName,c.CategoryName
	FROM Ask a LEFT JOIN [User] u ON a.UserId = u.UserId
						 LEFT JOIN Category c ON c.CategoryId = a.CategoryId
	WHERE (@AskId=0 OR a.AskId = @AskId)
	ORDER BY a.AskId DESC
END

GO

-- ----------------------------
-- Procedure structure for sp_Ask_GetPaging
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_GetPaging]
GO
CREATE PROCEDURE [dbo].[sp_Ask_GetPaging]
@Page INT, --Trang hiện tại
@PageSize INT, --Số bản ghi của 1 trang
@CategoryId INT
AS
BEGIN
  SELECT a.*,u.FullName,c.CategoryName
	FROM Ask a LEFT JOIN [User] u ON a.UserId = u.UserId
						 LEFT JOIN Category c ON c.CategoryId = a.CategoryId
	WHERE (@CategoryId=0 OR a.CategoryId = @CategoryId)
	ORDER BY a.CategoryId DESC --Sắp xếp theo trường
	OFFSET @PageSize * (@Page - 1) ROWS
  FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE)
END
GO

-- ----------------------------
-- Procedure structure for sp_Ask_GetPagingSearchContent
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_GetPagingSearchContent]
GO
CREATE PROCEDURE [dbo].[sp_Ask_GetPagingSearchContent]
@Page INT, --Trang hiện tại
@PageSize INT, --Số bản ghi của 1 trang
@SearchContent NVARCHAR(2048)
AS
BEGIN
  SELECT a.*,u.FullName,c.CategoryName
	FROM Ask a LEFT JOIN [User] u ON a.UserId = u.UserId
						 LEFT JOIN Category c ON c.CategoryId = a.CategoryId
	WHERE (@SearchContent='' OR a.Content LIKE N'%'+@SearchContent+'%')
	ORDER BY a.CategoryId DESC --Sắp xếp theo trường
	OFFSET @PageSize * (@Page - 1) ROWS
  FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE)
END

GO

-- ----------------------------
-- Procedure structure for sp_Ask_Update
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Ask_Update]
GO
CREATE PROCEDURE [dbo].[sp_Ask_Update]
@Content nvarchar(2000),
@CategoryId int,
@UserId int,
@AskId int,
@SlugUrl varchar(2000)
AS
BEGIN
	UPDATE Ask
	SET Content=@Content,CategoryId=@CategoryId,UserId=@UserId,SlugUrl=@SlugUrl WHERE AskId=@AskId
	SELECT * FROM Ask WHERE AskId=@AskId
END

GO

-- ----------------------------
-- Procedure structure for sp_AskLike_CheckExists
-- ----------------------------
DROP PROCEDURE [dbo].[sp_AskLike_CheckExists]
GO
CREATE PROCEDURE [dbo].[sp_AskLike_CheckExists]
@AskId INT,
@UserId INT
AS
BEGIN
	IF EXISTS(SELECT 1 FROM AskLike WHERE UserId=@UserId AND AskId=@AskId)
	SELECT 1
	ELSE
	SELECT 0
END
GO

-- ----------------------------
-- Procedure structure for sp_AskLike_DisLike
-- ----------------------------
DROP PROCEDURE [dbo].[sp_AskLike_DisLike]
GO
CREATE PROCEDURE [dbo].[sp_AskLike_DisLike]
@AskId INT,
@UserId INT,
@UserName VARCHAR(50)
AS
BEGIN
	--Thêm mới dữ liệu vào AskLike
	DELETE AskLike WHERE AskId=@AskId AND UserId=@UserId
	--Đến só lượng Like theo câu hỏi
	DECLARE @CountLike INT = (SELECT COUNT(1) FROM AskLike WHERE AskId=@AskId);
	--Cập nhật só lượng Like theo câu hỏi
	UPDATE Ask
	SET CountLike=@CountLike
	WHERE AskId=@AskId
	--Trả về só lượng Like theo câu hỏi
	SELECT @CountLike;
END

GO

-- ----------------------------
-- Procedure structure for sp_AskLike_Like
-- ----------------------------
DROP PROCEDURE [dbo].[sp_AskLike_Like]
GO
CREATE PROCEDURE [dbo].[sp_AskLike_Like]
@AskId INT,
@UserId INT,
@UserName VARCHAR(50)
AS
BEGIN
	--Thêm mới dữ liệu vào AskLike
	INSERT INTO AskLike(AskId,UserId,UserName,DateCreated)
	VALUES (@AskId,@UserId,@UserName,GETDATE())
	--Đến só lượng Like theo câu hỏi
	DECLARE @CountLike INT = (SELECT COUNT(1) FROM AskLike WHERE AskId=@AskId);
	--Cập nhật só lượng Like theo câu hỏi
	UPDATE Ask
	SET CountLike=@CountLike
	WHERE AskId=@AskId
	--Trả về só lượng Like theo câu hỏi
	SELECT @CountLike;
END
GO

-- ----------------------------
-- Procedure structure for sp_Category_Count
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_Count]
GO
CREATE PROCEDURE [dbo].[sp_Category_Count]
@CategoryName NVARCHAR(1024)
AS
BEGIN
	SELECT COUNT(1) FROM Category WHERE CategoryName LIKE N'%'+@CategoryName+'%'
END

GO

-- ----------------------------
-- Procedure structure for sp_Category_Delete
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_Delete]
GO
CREATE PROCEDURE [dbo].[sp_Category_Delete]
@CategoryId INT
AS
BEGIN
  DELETE Category
	WHERE CategoryId=@CategoryId
END

GO

-- ----------------------------
-- Procedure structure for sp_Category_FillByAlias
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_FillByAlias]
GO
CREATE PROCEDURE [dbo].[sp_Category_FillByAlias]
@Alias VARCHAR(256)
AS
BEGIN
  SELECT * FROM Category WHERE Alias=@Alias
END
GO

-- ----------------------------
-- Procedure structure for sp_Category_GetAll
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_GetAll]
GO
CREATE PROCEDURE [dbo].[sp_Category_GetAll]
AS
BEGIN
  SELECT * FROM Category
END

GO

-- ----------------------------
-- Procedure structure for sp_Category_GetById
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_GetById]
GO
CREATE PROCEDURE [dbo].[sp_Category_GetById]
@CategoryId INT
AS
BEGIN
	SELECT * FROM Category WHERE CategoryId=@CategoryId
END
GO

-- ----------------------------
-- Procedure structure for sp_Category_GetTable
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_GetTable]
GO
CREATE PROCEDURE [dbo].[sp_Category_GetTable]
@Page INT, --Trang hiện tại
@PageSize INT, --Số bản ghi của 1 trang
@CategoryName NVARCHAR(1024)
AS
BEGIN
	SELECT *
	FROM Category
	WHERE (@CategoryName='' OR CategoryName LIKE '%'+@CategoryName+'%') --Tên danh mục rỗng thì lấy ra tất cả, ngược lại thì tìm kiếm LIKE
	ORDER BY CategoryId DESC --Sắp xếp theo trường
	OFFSET @PageSize * (@Page - 1) ROWS
  FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE)
END

GO

-- ----------------------------
-- Procedure structure for sp_Category_Insert
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_Insert]
GO
CREATE PROCEDURE [dbo].[sp_Category_Insert]
@CategoryName NVARCHAR(1024),
@Alias VARCHAR(1024)
AS
BEGIN
  INSERT INTO Category(CategoryName,Alias)
	VALUES (@CategoryName,@Alias)
END
GO

-- ----------------------------
-- Procedure structure for sp_Category_Update
-- ----------------------------
DROP PROCEDURE [dbo].[sp_Category_Update]
GO
CREATE PROCEDURE [dbo].[sp_Category_Update]
@CategoryId INT,
@CategoryName NVARCHAR(1024),
@Alias VARCHAR(1024)
AS
BEGIN
	UPDATE Category
	SET CategoryName=@CategoryName,
			Alias=@Alias
	WHERE CategoryId=@CategoryId
END
GO

-- ----------------------------
-- Procedure structure for sp_User_Count
-- ----------------------------
DROP PROCEDURE [dbo].[sp_User_Count]
GO
CREATE PROCEDURE [dbo].[sp_User_Count]
@UserName VARCHAR(256)
AS
BEGIN
	SELECT COUNT(1) FROM [User] WHERE (@UserName='' OR UserName LIKE '%'+@UserName+'%')
END

GO

-- ----------------------------
-- Procedure structure for sp_User_Delete
-- ----------------------------
DROP PROCEDURE [dbo].[sp_User_Delete]
GO
CREATE PROCEDURE [dbo].[sp_User_Delete]
@UserId INT
AS
BEGIN
 DELETE [User] WHERE UserId=@UserId
END

GO

-- ----------------------------
-- Procedure structure for sp_User_GetById
-- ----------------------------
DROP PROCEDURE [dbo].[sp_User_GetById]
GO
CREATE PROCEDURE [dbo].[sp_User_GetById]
@UserId INT
AS
BEGIN
	SELECT * FROM [User] WHERE UserId=@UserId
END

GO

-- ----------------------------
-- Procedure structure for sp_User_GetTable
-- ----------------------------
DROP PROCEDURE [dbo].[sp_User_GetTable]
GO
CREATE PROCEDURE [dbo].[sp_User_GetTable]
@Page INT, --Trang hiện tại
@PageSize INT, --Số bản ghi của 1 trang
@UserName VARCHAR(256)
AS
BEGIN
  SELECT *
	FROM [User]
	WHERE (@UserName='' OR UserName LIKE '%'+@UserName+'%') --Tên danh mục rỗng thì lấy ra tất cả, ngược lại thì tìm kiếm LIKE
	ORDER BY UserId DESC --Sắp xếp theo trường
	OFFSET @PageSize * (@Page - 1) ROWS
  FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE)
END

GO

-- ----------------------------
-- Procedure structure for sp_User_Login
-- ----------------------------
DROP PROCEDURE [dbo].[sp_User_Login]
GO
CREATE PROCEDURE [dbo].[sp_User_Login]
@UserName VARCHAR(128),
@PasswordHash VARCHAR(1024)
AS
BEGIN
	IF EXISTS(SELECT 1 FROM [User] WHERE UserName=@UserName AND PasswordHash=@PasswordHash)
	BEGIN
		--Đăng nhập thành công
		SELECT * FROM [User] WHERE UserName=@UserName AND PasswordHash=@PasswordHash
	END
	ELSE
	BEGIN
		RETURN;
		--Tên tài khoản hoặc mật khẩu không đúng
	END
END

GO

-- ----------------------------
-- Procedure structure for sp_User_Register
-- ----------------------------
DROP PROCEDURE [dbo].[sp_User_Register]
GO
CREATE PROCEDURE [dbo].[sp_User_Register]
@UserName varchar(512),
@PasswordHash varchar(1024),
@FullName nvarchar(512),
@Phone varchar(15),
@Email varchar(128)
AS
BEGIN
	--Kiểm tra trùng UserName
	IF EXISTS(SELECT 1 FROM [User] WHERE UserName = @UserName)
	BEGIN
		SELECT 0;
	END
	ELSE --Không trùng UserName
	BEGIN
		INSERT INTO [User](UserName,PasswordHash,FullName,Phone,Email,RoleId,Status)
		VALUES (@UserName,@PasswordHash,@FullName,@Phone,@Email,2,1);
		SELECT 1;
	END
END

GO

-- ----------------------------
-- Procedure structure for sp_User_Update
-- ----------------------------
DROP PROCEDURE [dbo].[sp_User_Update]
GO
CREATE PROCEDURE [dbo].[sp_User_Update]
@UserId INT,
@UserName varchar(512),
@FullName nvarchar(512),
@Phone varchar(15),
@Email varchar(128),
@RoleId int
AS
BEGIN
  --Kiểm tra trùng UserName
	IF EXISTS(SELECT 1 FROM [User] WHERE UserName = @UserName AND UserId <> @UserId) --Kiểm tra UserName trùng với các username khác trong BD
	BEGIN
		SELECT 0;
	END
	ELSE --Không trùng UserName
	BEGIN
		UPDATE [User]
		SET	UserName=@UserName,
				FullName=@FullName,
				Phone=@Phone,
				Email=@Email,
				RoleId=@RoleId
		WHERE UserId=@UserId
		SELECT 1;
	END
END

GO

-- ----------------------------
-- Procedure structure for sp_VoteAnswer_CheckExists
-- ----------------------------
DROP PROCEDURE [dbo].[sp_VoteAnswer_CheckExists]
GO
CREATE PROCEDURE [dbo].[sp_VoteAnswer_CheckExists]
@AnswerId INT,
@UserId INT
AS
BEGIN
	IF EXISTS(SELECT 1 FROM AnswerVote WHERE UserId=@UserId AND AnswerId=@AnswerId)
	SELECT 1
	ELSE
	SELECT 0
END

GO

-- ----------------------------
-- Procedure structure for sp_VoteAnswer_UnVote
-- ----------------------------
DROP PROCEDURE [dbo].[sp_VoteAnswer_UnVote]
GO
CREATE PROCEDURE [dbo].[sp_VoteAnswer_UnVote]
@AnswerId INT,
@UserId INT,
@UserName VARCHAR(50)
AS
BEGIN
	--Thêm mới dữ liệu vào AskLike
	DELETE AnswerVote WHERE AnswerId=@AnswerId AND UserId=@UserId
	--Đến só lượng Like theo câu hỏi
	DECLARE @CountVote INT = (SELECT COUNT(1) FROM AnswerVote WHERE AnswerId=@AnswerId);
	--Cập nhật só lượng Like theo câu hỏi
	UPDATE Answer
	SET CountVote=@CountVote
	WHERE AnswerId=@AnswerId
	--Trả về só lượng Like theo câu hỏi
	SELECT @CountVote;
END


GO

-- ----------------------------
-- Procedure structure for sp_VoteAnswer_Vote
-- ----------------------------
DROP PROCEDURE [dbo].[sp_VoteAnswer_Vote]
GO
CREATE PROCEDURE [dbo].[sp_VoteAnswer_Vote]
@AnswerId INT,
@UserId INT,
@UserName VARCHAR(50)
AS
BEGIN
	--Thêm mới dữ liệu vào AskLike
	INSERT INTO AnswerVote(AnswerId,UserId,UserName,DateCreated)
	VALUES (@AnswerId,@UserId,@UserName,GETDATE())
	--Đến só lượng Like theo câu hỏi
	DECLARE @CountVote INT = (SELECT COUNT(1) FROM AnswerVote WHERE AnswerId=@AnswerId);
	--Cập nhật só lượng Like theo câu hỏi
	UPDATE Answer
	SET CountVote=@CountVote
	WHERE AnswerId=@AnswerId
	--Trả về só lượng Like theo câu hỏi
	SELECT @CountVote;
END

GO

-- ----------------------------
-- Indexes structure for table Answer
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Answer
-- ----------------------------
ALTER TABLE [dbo].[Answer] ADD PRIMARY KEY ([AnswerId])
GO

-- ----------------------------
-- Indexes structure for table AnswerVote
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AnswerVote
-- ----------------------------
ALTER TABLE [dbo].[AnswerVote] ADD PRIMARY KEY ([AnswerId], [UserId])
GO

-- ----------------------------
-- Indexes structure for table Ask
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Ask
-- ----------------------------
ALTER TABLE [dbo].[Ask] ADD PRIMARY KEY ([AskId])
GO

-- ----------------------------
-- Indexes structure for table AskLike
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AskLike
-- ----------------------------
ALTER TABLE [dbo].[AskLike] ADD PRIMARY KEY ([AskId], [UserId])
GO

-- ----------------------------
-- Indexes structure for table Category
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Category
-- ----------------------------
ALTER TABLE [dbo].[Category] ADD PRIMARY KEY ([CategoryId])
GO

-- ----------------------------
-- Indexes structure for table LogHistory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table LogHistory
-- ----------------------------
ALTER TABLE [dbo].[LogHistory] ADD PRIMARY KEY ([LogHistoryId])
GO

-- ----------------------------
-- Indexes structure for table Notification
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Notification
-- ----------------------------
ALTER TABLE [dbo].[Notification] ADD PRIMARY KEY ([NotificationID])
GO

-- ----------------------------
-- Indexes structure for table Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [dbo].[Role] ADD PRIMARY KEY ([RoleId])
GO

-- ----------------------------
-- Indexes structure for table User
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table User
-- ----------------------------
ALTER TABLE [dbo].[User] ADD PRIMARY KEY ([UserId])
GO
