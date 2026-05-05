  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
-- <Summary>  
---- Do nguon Don hang (man hinh D05F1602.Net)  
-- <Param>  
---- @Mode = 0: Load sua; =1: Load khi them moi dieu chinh  
---- D05 \ Nghiep vu \Duyet don hang \ Popup Menu Duyet (Load du lieu cho man hinh D84F2010 @Mode = 0)(Detail)  
---- D05 \ Truy van \ Don hang ve \ Dieu chinh tang, giam, them moi mat hang  
-- <Return>  
----   
-- <Reference>  
---- Mode 0 : Do nguon Don hang tai D17  
---- D05/ Don hang - D05F1602.net/ Ke Thua - D05F1600/ Chon  
-- @Mode = 3 & @SimType = 2  & @QuotationID = 'QuotationD11'  
---- D11/Truy van/Du toan gia thanh/Menu Bao gia  
-- <History>  
---- Create on 04/05/2009 by Dang Hong Trang   
----   
---- Modified on 13 Jul 2009 by Nguyen Hoang Tuan: Bo sung truong Dieu chinh  
---- Modified on 15 Oct 2009 by Dang Hong Trang : Them cac truong de do nguon cho grid cua man hinh VB6  
---- Modified on 27/11/2009 by Bui Huu Le them mode = 2  
---- Modified on 03/12/2009 by Phan Kim Linh: Them mode = 3  
---- Modified on 23/12/2009 by Phan Kim Linh: chuyen quy cach tu D11 qua D05  
---- Modified on 30/12/2009 by Thu Trang : bo sung Order by  
---- Modified on 11/01/2010 by Phan Kim Linh: Ko chuyen dien giai D11 qua D05 (ID 30793)  
---- Modified on 14/01/2010 by Thu Trang : bo sung conversionFactor tai Mode dieu chinh  
---- Modified on 25/01/2010 by Phan Kim Linh: Bo Sung @UserID, Lay nhieu phieu du toan D11 qua D05 (ID 30854)  
---- Modified on 05/03/2010 by Phan Kim Linh: Lien ket Dinh muc D11 voi Thong tin phu cua bao gia D05 (ID 31431)  
---- Modified on 25/03/2010 by Phan Kim Linh: chuyen dien giai D11 qua D05 (ID 31819)  
---- Modified on 30/03/2010 By Bui Huu Le, Bo sung ke thua theo tung mat hang (ID 31903)  
---- Modified on 10/05/2010 By Nguyen Thi Lan Huong: Bo sung AdjustTypeID  
---- Modified on 01/06/2010 By Nguyen Thi Lan Huong: ISNULL(Key03ID,'')  
---- Modified on 30/03/2010 By Bui Huu Le, Bo sung ke thua theo tung mat hang (ID 31903)  
---- Modified on 13/08/2010 By Bui Huu Le, Update truong OrderQTY = Quantity neu no = 0  
---- Modified on 06/06/2011 By Thu Trang , bo sung 2 truong UseConversionFormula,ConversionFormula  
---- Modified on 15/09/2011 By Thu Trang , Bo sung them truoc AdjustmentListID ( ID 41265 )  
---- Modified on 13/10/2011 By Thu Trang , Bo sung them don gia sau dieu chinh ( ID 41234 )  
---- Modified on 16/02/2012 By Lai Van Duy: Chuyen Unicode(Dung cho Web) (ID 46431)  
---- Modified on 23/02/2012 By Le Thi Ni: Bo sung Order By (ID 46613)  
---- Modified on 15/05/2012 by Bao Chi : (ID 48401) Bo sung truong Profit, MinProfit (Du lich Bay)vao Mode 0  
---- Modified on 27/05/2012 by Bao Chi : (ID 49771) (ID 49781) sua lai cach lay giu lieu cua man hinh dieu chinh DU LICH BAY  
---- Modified on 20/08/2012 by Bao Chi (ID 50512) : Truong hop them moi don hang dieu chinh cua Du lich bay thi khong thay mat hang phi  
---- Modified on 15/11/2012 by Hoang Ngu (ID 51770): bo sung @SimType = 2: truong hop Lap Chao gia tu D11 cho nhieu phieu du toan  tai @Mode = 3  
---- Modified on 26/11/2012 by Hoang Ngu (ID 52590): bo sung D11.ProductID as LinkMasterID tai @Mode = 0  
---- Modified on 29/01/2013 By Ngoc Lan (54098): Bo sung chuyen Chao gia cho Du toan gia thanh SimType = 9  
---- Modified on 19/02/2013 by Bao Tran (53289): Convert IsPromotion kieu Bit  
---- Modified on 17/04/2013 by Bao Tran (55520): Bo sung DeliveryMethodID (Phuong thuc giao hang) tai mode 2  
---- Modified on 18/04/2013 by Bao Chi (54878): Mat hang dieu chinh them moi khong hien thi tren don hang goc, luu y Mode Du lich bay thi van hien thi binh thuong  
---- Modified on 21/05/2013 by Bao Chi (56625): Chinh lai sap xep thu tu mode ke thua tu Chao gia, Don hang  
---- Modified on 23/05/2013 by Bao Tran (56627): Bo sung 5 thong tin tham chieu (Ref1~5) tai mode ke thua chao gia, don hang  
---- Modified on 03/06/2013 by Bao Tran (57034): BS loi Unicode truong QuotationHeader, TradeTerms, QuotationFooter tai Mode = 2  
---- Modified on 03/06/2013 by Nguyen Xuan Tien (55876): chinh sua D91T9009 -> D11T9009 khi SimType = 9  
---- Modified on 27/06/2013 By Lai Van Duy(ID 56589): Add PriceListID, CurrencyOnPriceList, DExchangeRate  
---- Modified on 24/07/2013 by Bao Tran (58419): Cap nhat lai 3 cot thong ke tai mode SimType = 9  
---- Modified on 25/07/2013 by Thu Trang (56920):Bo sung IsBOM   
---- Modified on 26/07/2013 By Lai Van Duy(ID 58020): Add PriceListLineID, PriceBreakID  
---- Modified on 26/07/2013 By Bao chi (59117) : Lay ten hang theo thiet lap trong bang D91T1003 neu co   
---- Modified on 26/07/2013 By Bao chi (59084) : Lay them truong InventoryRefInfoD05/InventoryRefInfoD05U  
---- Modified on 01/11/2013 by Bao Tran (60841): Bo sung 1 so cot tai Tab 6 (Mode 0, 2)  
---- Modified on 20/11/2013 by Bao Chi (59829):  Bao gia duoc lap don hang thi luu LinkMasterID, LinkDetailID dan den dung tinh nang cua ID 54878 : rem doan xu ly trong ID 54878  
---- Modified on 28/11/2013 by Bao Chi (60934): Sap xep theo OrderNum  
---- Modified on 13/12/2013 by Hoang Nam: bo sung NOLOCK  
---- Modified on 18/12/2013 by Bao Chi (62214): Loi lay sai ten Don vi tinh UnitName  
---- Modified on 16/01/2014 by Le Thi Ni (62288): Bo sung Thong tin bo sung Ma tham chieu  
---- Modified on 18/02/2014 by Le Thi Ni (63278): Sum lai khi co Tach dong don hang chi tiet (Viet Trung)  
---- Modified on 12/03/2014 by Pham Thi Thanh Nhan (629269) : Bo sung ngay giao hang, ngay xuat xuong  
---- Modified on 24/03/2014 by Le Thi Ni (62628) : Bo sung AdjustmentLineID  
---- Modified on 04/04/2014 by Le Thi Ni (64593): Chinh sua cach load theo quy trinh moi cua Viet Trung  
---- Modified on 20/05/2014 by Bao Lam (65410): Bo sung BidQty, BidAcceptQty  
---- Modified on 04/06/2014 by Bao Tran (66170): Bo sung TempUnitPrice tai mode Dieu chinh  
---- Modified on 12/03/2014 by Pham Thi Thanh Nhan (66333) : Bo sung ORDER BY InventoryID  
---- Modified on 04/07/2014 by Le Thi Ni (67089): bo sung IsUsed = 1 (truong hop DH da lap KQSX)  
---- Modified on 28/07/2014 by Bao Tran (67553): Fix loi trong truong hop Ke thua  
---- Modified on 12/08/2014 by Thanh Truc (67917): Sua cach lay truong OInventoryName  
---- Modified on 12/08/2014 by LETHINI (68039): Bo sung them IsInvoice - man hinh D05F2009, neu IsInvoice = 1 thi ko cho sua don gia, nguoc lai thi cho sua.  
---- Modified on 13/08/2014 by Vu Thi Tho (66514): Them cot so luong sau dc, so luong da thuc hien, so luong con lai khi dieu chinh don hang  
---- Modified on 09/09/2014 by Vu Thi Tho (68502): Bo sung lay them cac cot ty le dieu chinh tai man hinh don hang  
---- Modified on 09/09/2014 by Vu Thi Tho (62480): Bo sung lay them cac cot QuotaLineID, QuotaID  
---- Modified on 23/09/2014 by Le Thi Ni (65781): Bo sung lay SL da xuat kho   
---- Modified on 23/09/2014 by Vu Thi Tho (65781): Khi ke thua don hang, bo dieu kien xet theo don vi  
---- Modified on 10/12/2014 by Lai Van Duy(ID 71238): Bo sung don gia chuan va ty le chenh lech gia  
---- Modified on 25/12/2014 by Vu Thi Tho (71657): Bo sung load thong tin PO   
---- Modified on 29/12/2014 by Vu Thi Tho (71652): Bo sung thue NK va thong tin PO tren bao gia them truong  SupplierTypeID, SupplierID, SupplierName tai @Mode = 0  
---- Modified on 14/01/2015 by Vu Thi Tho (71660): Bo sung lay them truong IsVATPrice, ProfessionKind  
---- Modified on 06/03/2015 by LETHINI (73489): Fix loi khong len mat hang khi SO tao tu D49  
---- Modified on 25/05/2015 by Vu Thi Tho (75941): Bo sung truyen @FormID. Neu goi man hinh D84F2010 thi lay cot SL trung thau  
---- Modified on 10/07/2015 by Le Thi Ni (ID 77470): Quy trinh duyet Honda. Bo sung SOQtyPerInvQtyRate: ty le SL don hang/ SL ton kho  
---- Modified on 09/12/2015 by Luu Hoang Hai (82675): Loi thu tu con hang tai don hang khong dung  
---- Modified on 17/12/2015 by Luu Hoang Hai (82258): Bo sung tong ty le dieu chinh tren don hang  
---- Modified on 23/12/2015 by Thanh Truc: Lap don hang tu bao gia neu khong su dung quan ly chao thau thi lay BidAcceptQty = Quantity  
---- Modified ON 07/01/2015 by Thanh TRuc (83244) : Bo sung them mode ke thua tu don hang mua D06  
---- Modified on 27/01/2016 by Luu Hoang Hai (83360): Bo sung han muc chiet khau toi da  
---- Modified ON 25/02/2016 by Thanh TRuc (84686) : Bo sung them truong ReCalculate tinh lai gia khi ke thua don hang mua  
---- Modified ON 06/04/2016 by Thanh TRuc (86071) : Fix loi UPDATE gia tri NULL truong ReCalculate  
---- Modified ON 13/05/2016 by Ngoc Chau (85771): Bo sung them truong ProjectID, ProjectName, TaskID, TaskName  
---- Modified ON 30/05/2016 by Ngoc Chau (87723): Lay truong ProjectName, TaskName truc tiep tu D05T0017  
---- Modified on 17/06/2016 by Luu Hoang Hai (87486): Cai tien toc do - Sua dieu kien update OrderQTY  
---- Modified on 20/06/2016 by Luu Hoang Hai (87106): Bo sung don hang ke thua hoa don mua  
---- Modified on 20/06/2016 by Thu Thao (87822): Bo sung OBatchID, OTranID, OTransTypeID, STransTypeID,  
---- Modified on 24/06/2016 by Thanh Truc (88336): Bo sung SBatchID,STransID  
---- Modified on 28/06/2016 by Thanh Hien (88540;88541): Bo sung WarrantyTime trường hợp SO có dự án và không dự án  
---- Modified on 15/07/2016 by Luu Hoang Hai (88579): Sua loi trung IGE khi ke thua don hang (Phat hien va sua loi trong ID nay)  
---- Modified on 26/06/2016 by Kim Loan (89129):Load lai luoi sau khi quet barcode  
---- Modified on 15/08/2016 by Kim Loan (89026):Bo sung them truong QuantityStock  
---- Modified on 21/09/2016 by Luu Hoang Hai (87991): Bo sung thong tin quy cach dong goi PackingID  
---- Modified on 13/10/2016 by Luu Hoang Hai (91602):Nang do dai truong LocationNo  
---- Modified on 17/10/2016 by Le Thu Hien (90655):Bo sung ke thua tu phieu nhap, phieu xuat  
---- Modified on 24/11/2016 by Thanh Nhan (93020): Sua lai lay quy cach theo phieu nhap xuat khi ke thua DH tu phieu nhap xuat  
---- Modified on 24/11/2016 by Luu Hoang Hai (90905): Bo sung chiet khau thanh toan  
---- Modified on 06/12/2016 by Thanh Hien (90485): Bo sung goi tu D54F2130 Bang tinh gia  
---- Modified on 06/12/2016 by Luu Hoang Hai (93729): Sua loi tran chuoi @SQL111  
---- Modified on 24/02/2016 by Luu Hoang Hai (): Sua loi mode VIET TRUNG (SimType = 9)  
---- Modified on 12/07/2017 by Hong Tram (98470): Fix loi double du lieu  
---- Modified on 12/08/2017 by Thanh Hien (101496): bo sung @FormID = 'D54F2160'\ Tach bao gia  
---- Modified on 22/08/2017 by Anh Nga (101328): Sua loi lien ket bang cua WarrantyTime  
---- Modified on 23/09/2017 by Luu Hoang Hai (103587): Bo sung @AdjustType  
---- Modified on 05/10/2017 by Anh Nga (101330): Bo sung Link voi don hang  
---- Modified on 27/11/2017 by Minh Tai (105076): Sua loi SL thuc hien khi dieu chinh (SL xuat kho don hang)  
---- Modified on 27/11/2017 by Dan Tam (96871): Bo sung Loai nghiệp vụ  
---- Modified on 28/11/2017 by Luu Hoang Hai (103597): Bo sung dieu chinh don hang cho Link voi don hang  
---- Modified on 01/02/2018 by Luu Hoang Hai (106044): Bo sung PolicyRate, ProRate, TotalSalesQTY, ProUseQuantity  
---- Modified on 10/05/2018 by Thi Thu (107569):  Bo sung AdjustmentAM  
---- Modified on 01/06/2018 by Quoc Khuong (108340): Loi SL da thuc hien   
---- Modified on 16/07/2018 by Quynh Nhu (109025): Loi hien thi sai thoi gian bao hanh, Rem doan Update thoi gian bao hanh theo du an  
---- Modified on 30/05/2018 by LuongHuyen(ID 120263): Loi khong load so luong tai D05/Don hang/ke thua : @Mode = 2,sua lai chi update khi hai truong OrderQTY va OrderCQTY khac 0  
---- Modified on 14/06/2019 by Han Nguyen(ID 120588): Loi man hinh bao gia chua len thong tin thue GTGT tung mat hang  
---- Modified on 11/11/2019 by Thanh Tuyen(ID 123394): Bo sung OUnitPrice, QuotationTypeID  
---- Modified on 08/02/2020 by Thanh Tuyen(131845): bo sung ServiceTypeID  
---- Modified on 29/07/2020 by GIANGLAM (): Bo sung them qui trinh yeu cau xuat kho cho don hang khi tao moi dieu chinh  
---- Modified on 08/01/2021 by TRITHONG (151701): do nguon thong tin quy cach dong goi o bao gia OTransType in (QT)  
---- Modified on 04/02/2021 by Thanh Tuyen (150651): mo rong  @QuotationID  
---- Modified on 18/06/2021 by THIENNHI (167426): Bo sung IsContract  
---- Modified on 22/06/2021 by VanTinh (171742): fix cham, tai OADJ them WHERE C.QuotationID = ''' + @QuotationID + '''  
---- Modified on 28/06/2021 by Minh Tai: Bo sung cap nhat gia dac thu Cong Thanh  
---- Modified on 30/06/2021 by MYLAI (165320): Bo sung ke thua Mode = 2, Key01ID='D05F1602_CO'  
---- Modified on 30/08/2021 by HOAILAM (178115): Bo sung Mode = 6  
---- Modified on 04/11/2021 by Thanh Tuyen (193883): Bo sung khoa thong tin ke thua tu Du toan theo thiet lap LNV  
---- Modified on 12/11/2021 by DINHKHANH (204490): Bo sung D05T0017.Date01, D05T0017.Date02, D05T0017.Date03 tại Mode = 0  
---- Modified on 18/11/2021 by MYLAI: Bo sung D05T0017.LinkMasterID like ''49%''  
---- Modified on 03/12/2021 by MYLAI (207921): Sua loi double du lieu don hang Mode = 0  
---- Modified on 20/12/2021 by Thi Thu (180300): bo sung Dung sai chi tiet ExceedDetailQty  
---- Modified on 07/01/2022 by TANCUONG (204534): Bo sung lap bao gia tu Du toan(D11F2060)  
---- Modified on 17/01/2022 by TANCUONG(211495): Bo sung do nguon Loai gia lap du toan  
---- Modified on 12/01/2021 by MYLAI (212612): Bo sung cot So hop dong BH, So chung tu HĐ DocNo, ContractNo  
---- Modified on 13/01/2022 by DINHKHANH (211513): Bo sung 30 cot thong tin phu cua D05T0117  
---- Modified on 22/2/2022 by THI THU (216012): Load form khi them moi dieu chinh bo sung dieu kien T16.Closed = 0  
---- Modified on 28/04/2022 by TANCUONG(237202): fix loi khi goi tu d11f2060  
---- Modified on 05/05/2022 by TANCUONG(204676): Bo sung goi tu D11F2070  
---- Modified on 13/05/2022 by MYLAI (23512): Bo sung cot BidAccept  
---- Modified on 23/05/2022 by NGUYENLUAN(238309): Ho tro xoa du lieu sau khi load ra luoi don hang D05F1602 (@Mode = 0)  
---- Modified on 01/06/2022 by TUYEN (236200) : bo sung lap don hang tu bao gia ma hang dai dien  
---- Modified on 13/06/2022 by TUYEN (234070) : bo sung D05T0017.IsPick (giu cho chi tiet theo mat hang)  
---- Modified on 14/06/2022 by MYLAI (242755): Bo sung truong IsLocation  
---- Modified on 28/07/2022 by NGUYENLUAN(244379): Sua loi khi ke thua tai D05F1601 (Mode = 2, Thay doi care Key01ID='D05F1602_CO' thanh D91T9009.Key01ID = 'D05F1621_Inherit' AND D91T9009.FormID = 'D05F1621_Inherit')   
---- Modified on 12/08/2022 by THUYTRANG (242484): Bo sung cot thanh tien sau thue tren bao gia (OAmountTmpTax, CAmountTmpTax)  
---- Modified on 15/08/2022 by HOANGKHANH(244600): Bo sung 30 cot thong tin phu D05T0117 (Mode = 2)  
---- Modified on 26/08/2022 by NGOCTHAO (244499): Bo sung cot gia tri trung thau tren bao gia (BidAcceptOAmount, BidAcceptCAmount)  
---- Modified on 12/09/2022 by NGOCTHAO (248915): Sua loi khi ke thua don hang   
---- Modified on 06/10/2022 by DuongKhanhLinh (249241): Ke thua thong tin bao bi cho bao gia  
---- Modified on 20/10/2022 by THAONGUYEN (247869): Bo sung QAStatusDetail  
---- Modified on 20/10/2022 by NGOCTHAO (250423): Bo sung cot Noi nhan hang (ShipAddressID)  
---- Modified on 04/11/2022 by HIEUNGAN (250428): Bo sung cot Noi nhan hang (ShipAddressID) & cac cot thong tin phu @Mode = 1;  Bo sung cot Noi nhan hang (ShipAddressID)  @Mode = 2   
---- Modified on 17/11/2021 by MYLAI (250885): Sua loi cot So luong thuc hien ActOQuantity  
---- Modified on 05/12/2021 by HIEUNGAN (251221): Bo sung cot Noi nhan hang (ShipAddressID)  @Mode = 2   
---- Modified on 03/01/2022 by THAONGUYEN (252505): Bo sung QAStatusDetail tai mode dieu chinh  
---- Modified on 01/03/2023 by NGOCTHAO (254087 ): Bo sung Acol01_UnitPrice - Acol05_UnitPrice  
---- Modified on 31/03/2023 by MYLAI (254198): Bo sung KeyOrderNum   
---- Modified on 21/04/2023 by HAN (254269): Bo sung BreakGroupID   
---- Modified on 22/05/2023 by HAN (256072): Bo sung cac cot OriAColxx, OriAColxxRate, Ori.. ListID/LineID  
---- Modified on 12/06/2023 by THAONGUYEN (255887): Bo sung thong tin quy cach dong goi tai @Mode = 1 khi xem   
---- Modified on 21/06/2023 by MYLAI (258712): Bo sung load so luong cua don hang dieu chinh  
---- Modified on 11/07/2023 by HAN (258753): Bo sung cac cot DisAColxxRate, DisQtyxx  
---- Modified on 11/07/2023 by HAN (259986): Chinh lai cach lay PriceListID khi ke thua   
---- Modified on 05/10/2023 by TANCUONG (255607): Dieu chinh lap bao gia tu du toan D11F2060  
---- Modified on 10/11/2023 by TRUONGGIANG (264513): Bo sung thong tin ke thua lo tu phieu nhap, xuat, don hang mua, hoa don mua  
---- Modified on 15/12/2023 by MYLAI (265970): Bo sung mac dinh load cac cot thong tin phu theo tab 1.3 bao bi  
---- Modified on 01/02/2024 by KIMKIEU (269493): Bo sung load don gia sau dieu chinh len man hinh duyet chung tu  
---- Modified on 21/03/2024 by THAONGUYEN (275146): Bo sung Weight, tinh InventoryRefInfoD05 neu co thiet lap  
---- Modified on 19/03/2024 by MYLAI (274998): Bo sung cot thong so ky thuat  
---- Modified on 11/04/2024 by KIMKIEU (275203): Bo sung cot an Don gia IsUnitPrice  
---- Modified on 01/07/2024 by MYLAI (280360): Bo sung tach lo man hinh D05F1602  
---- Modified on 29/07/2024 by MYLAI (281642): Bo sung update khoan muc cho dong dieu chinh  
---- Modified on 28/09/2024 by MINHTAI: Sua loi mode 7 tach lo don hang  
---- Modified on 28/09/2024 by TRUNGKIEN (284632): Sua loi load sai gia tri dieu chinh sau khi sua khac  
---- Modified on 02/10/2024 by TRUNGKIEN (284412): Bo sung ExpireDate - Ngay het han lo  
---- Modified on 13/01/2025 by MINHTAI (284634): Bo sung dieu chinh gia tri  
---- Modified on 20/02/2025 by HAN (294272): Bo sung thong tin quy cach dong goi o @Mode = 1 ( Dieu chinh don hang)  
---- Modified on 04/03/2025 by THAONGUYEN (294385): Bo sung update quy cach dong goi TH dieu chinh them moi mat hang tai @Mode = 0  
---- Modified on 14/03/2025 by TRUONGGIANG (294461): Bo sung Specifications  
---- Modified on 17/03/2025 by KIMKIEU (294276): Bo sung cho phep sua khoan muc khi sua khac  
---- Modified on 23/04/2025 by THAONGUYEN (294538): Sua cach lay ten hang theo phieu nhap xuat khi ke thua DH tu phieu nhap xuat  
---- Modified on 12/05/2025 by DUCTIN (297143): Bo sung khong load du toan co SL = 0  
---- Modified on 23/05/2025 by TRUNGKIEN (294580): Bo sung Bao gia dac thu cho CONGTHANH  
---- Modified on 07/07/2025 by TRUNGKIEN (297106): Bo sung D05T0017.IsAdjustPrice - Check dung de kiem tra ĐC gia tri nhung khong lam tang so luong don hang  
---- Modified on 03/10/2025 by TRUNGKIEN (302543): Sua IsAdjustPrice se duoc check mac dinh khi lam them moi dieu chinh theo dac thu   
---- Modified on 20/10/2025 by MINHTAI (330039): Sua loi dieu chinh   
---- Modified on 03/12/2025 by DUCTIN (303348): Bo sung dac thu QM  
  
-- <Example>  
  
---- EXEC D05P1612 'TUONGAN', '',0  
---- EXEC D05P1612 'DIGINET', 'QuotationD11', 3, 'LEMONADMIN', '84', 0, 'DRD199'  
---- EXEC D05P1612 'DIGINET', 'QuotationD11', 1, 'LEMONADMIN', '84', 1, 'DRD242'  
---- EXEC D05P1612 'TUONGAN', '05MO0N000001094', 0, 'LEMONADMIN', '84', 1, 'DRD242'  
---- Exec D05P1612 'DIGINET', '05MO0N000000369', 0, 'LEMONADMIN', '84', 1   
---- Exec D05P1612 'DIGINET', '', 2, '', '84', 1, '', '', 'HIENTESSSST', '10/17/2016'  
  
CREATE PROCEDURE D05P1612  
(  
     @DivisionID AS VARCHAR(20),  
     @QuotationID AS VARCHAR(50),  
     @Mode AS TINYINT = 0,  
     @UserID  VARCHAR(20) = '',  
     @Language VARCHAR(2) = '84',  
     @CodeTable TINYINT = 0,  
     @HostID  VARCHAR(20)='',  
     @FormID VARCHAR(20) = '',  
     @TranTypeID VARCHAR(50)='' ,  
     @VoucherDate DATETIME =NULL,  
     @ProjectID VARCHAR(50) = '',  
     @AdjustType TINYINT = 0  
)  
AS   
SET NOCOUNT ON  
DECLARE @U CHAR(1), @SimType TINYINT, @BaseCurrencyID Varchar(20),@IsLockInfEstimate TINYINT=0  
DECLARE   @SQL0 VARCHAR(MAX),  
    @SQL01 VARCHAR(MAX),  
    @SQL AS VARCHAR(MAX),  
    @SQL10 AS VARCHAR(MAX),  
    @SQL1 AS VARCHAR(MAX),  
    @SQL11 AS VARCHAR(max),  
    @SQL2 AS VARCHAR(MAX),  
    @SQL21 AS VARCHAR(MAX),  
    @SQL3 AS VARCHAR(MAX),  
    @SQL31 AS VARCHAR(MAX),  
    @SQL31_1 AS VARCHAR(MAX),  
    @SQL02 AS VARCHAR(MAX),  
    @SQL12 AS VARCHAR(MAX),  
    @SQL22 AS VARCHAR(MAX),  
    @SQL32 AS VARCHAR(MAX),  
    @StrSort AS VARCHAR(MAX),  
    @Sort1 AS VARCHAR(50),  
    @Sort2 AS VARCHAR(50),  
    @Sort3 AS VARCHAR(50),  
    @Sort4 AS VARCHAR(50),  
    @Sort5 AS VARCHAR(50),  
    @SQL111 AS VARCHAR(MAX),  
    @SQL111_1 AS VARCHAR(MAX),  
    @SQL112 AS VARCHAR(MAX),  
    @SQL112_0 AS VARCHAR(MAX),  
    @SQL112_1 AS VARCHAR(MAX),  
    @SQL1111 AS VARCHAR(MAX),  
    @SQL113 AS VARCHAR(MAX),  
    @SQL114 AS VARCHAR(MAX),  
    @D90_ConvertedDecimals TINYINT,  
    @D07_QuantityDecimals TINYINT = 0,  
    @D07_UnitCostDecimals TINYINT  
    , @IsAutoCheckIsAdjustPrice BIT = 0  
  
 SET @SQL = ''  
 SET @SQL10 = ''  
 SET @SQL1 = ''  
 SET @SQL2 = ''  
 SET @SQL3 = ''  
 SET @StrSort =''  
 SET @Sort1 =''  
 SET @Sort2 =''  
 SET @Sort3 =''  
 SET @Sort4 =''  
 SET @Sort5 =''  
 SELECT @SQL0 = '', @SQL01 = '', @SQL11 = '', @SQL21 = '', @SQL31 = '', @SQL31_1 = '', @SQL02 = '', @SQL12 = '', @SQL22 = '', @SQL32 = '', @SQL111='', @SQL111_1='', @SQL1111='',  
   @SQL112 = '', @SQL112_0 = '',@SQL112_1 = '',@SQL113 = '',@SQL114 = ''  
   
SET @U = CASE WHEN @CodeTable = 0 THEN '' ELSE 'U' END  
  
SELECT  @SimType = SimType, @BaseCurrencyID = BaseCurrencyID, @D90_ConvertedDecimals =  D90_ConvertedDecimals, @D07_QuantityDecimals = D07_QuantityDecimals,  
@D07_UnitCostDecimals = [D07_UnitCostDecimals]  
FROM D91T0025 WITH(NOLOCK)  
  
SELECT @IsAutoCheckIsAdjustPrice = ISNULL(Value, 0) FROM D91T9130 WHERE Customize = 'AllowDeleteValueAdjust'  
  
DECLARE @D05F1810 TINYINT  
SELECT @D05F1810 = ISNULL(Value, 0) FROM D91T9130 WHERE Customize = 'Specific_D05F1601CT'   
  
IF @FormID = 'D54F2080'  
BEGIN  
 SET @SQL0 = '  
 EXEC D05P1664 '''+@DivisionID+''', '''+@UserID+''', '''+@Language+''', '+STR(@CodeTable,1)+', '''+@HostID+''', '+STR(@Mode,1)+', '''+@FormID+''', '''+@TranTypeID+''', '''+@ProjectID+''', 0'  
 --PRINT (@SQL0)  
 EXEC (@SQL0)  
 RETURN  
END  
  
SELECT @IsLockInfEstimate= 1 FROM D05T1022 WHERE IsLockInfEstimate=1 AND TranTypeID=(SELECT TranTypeID FROM D05T0016 WITH(NOLOCK) WHERE QuotationID=@QuotationID)  
  
DECLARE @PriceOnDefaultUnit_D05 TINYINT   
SELECT @PriceOnDefaultUnit_D05 = ISNULL(PriceOnDefaultUnit,0) FROM D05T1020 WHERE TranTypeID = @TranTypeID  
---- Modified on 26/05/2016 by Luu Hoang Hai (87486) cai tien toc do: Sua dieu kien update OrderQTY  
IF @QuotationID <> '' AND EXISTS (SELECT TOP 1 1 FROM D05T0017 WITH(NOLOCK) WHERE (OrderQTY = 0 OR OrderCQTY = 0)  AND QuotationID = @QuotationID)  
BEGIN  
 UPDATE D05T0017  
 SET  OrderQTY = Isnull(Quantity,0),  
   OrderCQTY = Isnull(CQuantity,0)  
 WHERE (OrderQTY = 0 OR OrderCQTY = 0)  
   AND QuotationID = @QuotationID  
END  
  
SELECT DISTINCT ISNULL(D91T1003.InventoryID, '' ) AS InventoryID,  
  CASE WHEN @CodeTable = 0 THEN MAX(ISNULL(D91T1003.InvNameObject,'')) ELSE MAX(ISNULL(D91T1003.InvNameObjectU,'')) END AS InvNameObject  
INTO #D05P1612_D91T1003  
FROM D91T1003 WITH(NOLOCK)  
INNER JOIN (SELECT ObjectTypeID, CustomerID  
    FROM D05T0016 WITH(NOLOCK)  
    WHERE QuotationID = @QuotationID AND @QuotationID <> ''  
    ) D05T0016 ON  D05T0016.ObjectTypeID = D91T1003.ObjectTypeID   
      AND  D05T0016.CustomerID = D91T1003.ObjectID   
GROUP BY InventoryID  
  
  
  
   
  
  
IF @Mode = 0  
BEGIN  
 SET @SQL01 = '  
 SELECT  ' + CASE WHEN @QuotationID = '' THEN ' TOP 0 ' ELSE '' END + 'D05T0017.DivisionID, D05T0017.QuotationID, D05T0017.QuotationItemID, D05T0017.OrderNum,   
    D05T0017.InventoryID, ItemName'+@U+'  AS ItemName,   
    D05T0017.ShortName'+@U+'  AS ShortName, D05T0017.UnitID,  
    D05T0017.DeliveryDate, D05T0017.LocationNo, D05T0017.OrderQTY AS Quantity, D05T0017.OrderCQTY AS CQuantity, ReduceQuantity, CReduceQuantity,   
    D05T0017.UnitPrice,   
    OAmountTmp, CAmountTmp, ACol01, C_ACol01, ACol02, C_ACol02, ACol03, C_ACol03, ACol04, C_ACol04, ACol05, C_ACol05,  
    Amount, CAmount, D05T0017.RateReduce, D05T0017.OriginalReduce, D05T0017.CReduce, D05T0017.VATGroupID, D05T0017.VATRate, OVAT, OVAT AS VAT, CVAT, RateTax, OTax, CTax,   
    D05T0017.Notes'+@U+' AS Notes,  
    D05T0017.Ana01ID, D05T0017.Ana02ID, D05T0017.Ana03ID, D05T0017.Ana04ID, D05T0017.Ana05ID,   
    D05T0017.Ana06ID, D05T0017.Ana07ID, D05T0017.Ana08ID, D05T0017.Ana09ID, D05T0017.Ana10ID,   
    D05T0017.NRef1, D05T0017.NRef2, D05T0017.NRef3, D05T0017.NRef4, D05T0017.NRef5,  
    D05T0017.DRef1'+@U+' AS DRef1, D05T0017.DRef2'+@U+' AS DRef2,   
    D05T0017.DRef3'+@U+' AS DRef3, D05T0017.DRef4'+@U+' AS DRef4,   
    D05T0017.DRef5'+@U+' AS DRef5,   
    D05T0017.NDef1, D05T0017.NDef2, D05T0017.NDef3, D05T0017.NDef4, D05T0017.NDef5, StatusDetail, DetailCustomerID,   
    DetailCustomerName'+@U+'  AS DetailCustomerName,  
    ParcelInventoryID, ParcelInventoryName'+@U+'  AS ParcelInventoryName,   
    ParcelQuantity, ParcelPerQuantity, WeightNet, WeightNetTotal, WeightGrossTotal,  
    WeightGross, Measurement, MeasurementTotal, D05T0017.IsService, D05T0017.WareHouseID, CONVERT(BIT,IsPromotion) AS IsPromotion,   
    DateNumber01, D05T0017.Date01, Ratio01, DateNumber02, D05T0017.Date02, Ratio02, DateNumber03, D05T0017.Date03, Ratio03,  
    KitID, KitUnitID, KitQuantity, KitCQuantity, KitNo,   
    D05T0017.Spec01ID, D05T0017.Spec02ID, D05T0017.Spec03ID, D05T0017.Spec04ID, D05T0017.Spec05ID,   
    D05T0017.Spec06ID, D05T0017.Spec07ID, D05T0017.Spec08ID, D05T0017.Spec09ID, D05T0017.Spec10ID,  
    IssueWareHouseID, D05T0017.IsKit, DateRef1, DateRef2, DateRef3, DateRef4, DateRef5, PromotionOnD05, D05T0017.OUnitPrice,   
    T22.OriUnitPrice,D05T0017.QuotationTypeID,D05T0017.ServiceTypeID,  
    D05T0017.TransactionTypeID, ODetailDueDate, IsFromD16, DiscountedUnitPrice,  
    CASE WHEN ISNULL(D11.ProductID,'''') <> ''''   
    THEN D11.ProductID   
    ELSE D05T0017.LinkMasterID   
    END AS LinkMasterID, LinkDetailID, DeliveryQTY,  
    ReturnQTY, TempUnitPrice, IsComponentOfKit, OrderQTY, OrderCQTY, D05T0017.AdjustmentListID, TotalAdjustedAmount,  
    TotalAdjustedCAmount, AdjustedUnitPrice, InvoiceQTY,  
    ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor,   
    ItemName'+@U+'  AS InventoryName,  
    ISNULL(D07T0005.UnitName'+@U+' , '''') as UnitName,  
    D05T0017.VATGroupID AS VATGroupID1,  
    D05T0017.RateReduce * 100 AS RateReduce1,  
    CONVERT(NVARCHAR(500), '''') AS Spec01Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec02Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec03Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec04Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec05Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec06Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec07Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec08Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec09Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec10Name,  
    CASE WHEN ISNULL(D91T1003.InvNameObject,'''') = '''' THEN D07T0002.InventoryName'+@U+' ELSE ISNULL(D91T1003.InvNameObject,'''') END AS OInventoryName,   
    ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
    ISNULL(D07T0004.Formula,'''') AS ConversionFormula ,  
    CONVERT(MONEY,0) AS MinUnitPrice,  
    D07T1011.RDVoucherID,   
    D07T1011.TransactionID,   
    D07T1011.R_D,   
    D07T1011.SplitNo,  
  
    D07T0002.UnitID as BaseUnitID,  
    Case when D07T2230.TransID is null then 0 else 1 end as Flag,  
    isnull(D07T2230.FormulaID, '''') as FormulaID,  
    isnull(D07T2230.Formula, '''') as Formula,  
    isnull(D07T2230.Num01, 0) as Num01, isnull(D07T2230.Num02, 0) as Num02,  
    isnull(D07T2230.Num03, 0) as Num03, isnull(D07T2230.Num04, 0) as Num04,  
    isnull(D07T2230.Num05, 0) as Num05, isnull(D07T2230.Num06, 0) as Num06,  
    isnull(D07T2230.Num07, 0) as Num07, isnull(D07T2230.Num08, 0) as Num08,  
    isnull(D07T2230.Num09, 0) as Num09, isnull(D07T2230.Num10, 0) as Num10,  
    Case when T15.IsAdjusted is null then 0 else 1 end IsAdjust, --Dung cho .NET  
    Case when T15.IsAdjusted is null then 0 else 1 end IsAdjusted, --Dung cho VB  
    Convert(Money,0) As DeliveredQuantity, Isnull(D05T0017.UnitPrice,0) As RefUnitPrice ,   
    Case when D05T0017.Iskit=2 then 1 else 0 end as IsKit1,   
    D05T2030.OModuleID AS LinkModuleID, Convert(tinyint, 0) AS IsUnitPrice ,  
 '  
 SET @SQL11 = '    
    D05T2030.OVoucherID AS LinkQuotationID,  
    D05T2030.OTransID AS LinkQuotationItemID ,  
    Convert(tinyint, 0) AS AdjustTypeID ,  
    Convert(Varchar(20), '''') As AdjustTypeDesc,  
    (D05T0017.Quantity + Isnull(OADJ.Quantity,0)) AS AdjOQuantity,   
    (D05T0017.CQuantity + Isnull(OADJ.CQuantity,0)) As AdjCQuantity,  
    --- Gia ban  - Tong gia mua ---- Trong do Tong gia mua = Textbox gia ve mua + Thue + PXB + PXD  
    D05T0017.Amount  - (ISNULL(D05T0017.NDef1,0) + (ISNULL(D05T0017.VATRate,0)*ISNULL(D05T0017.NDef1,0)) + D05T0017.ACol01 + D05T0017.ACol02 )  AS Profit, ---- Modified on 15/05/2012 by Bao Chi : (ID 48401)  
    D05T0017.ACol04 AS MinProfit,   --- truong ACol04 luu Phi DV  
    D05T0017.PriceListID DPriceListID, D05T0017.CurrencyOnPriceList, D05T0017.DExchangeRate,  
    D07T0002.IsBOM, D05T0017.PriceListLineID, D05T0017.PriceBreakID, D05T0017.PriceListID PriceListID,  
    CASE D05T0000.InventoryRefInfo   
     WHEN ''ShortName'' THEN D07T0002.ShortName'+@U+'   
     WHEN ''I01ID''  THEN D07T0002.ICode01ID  
     WHEN ''I02ID''  THEN D07T0002.ICode02ID  
     WHEN ''I03ID''  THEN D07T0002.ICode03ID  
     WHEN ''I04ID''  THEN D07T0002.ICode04ID  
     WHEN ''I05ID''  THEN D07T0002.ICode05ID  
     WHEN ''I06ID''  THEN D07T0002.ICode06ID  
     WHEN ''I07ID''  THEN D07T0002.ICode07ID  
     WHEN ''I08ID''  THEN D07T0002.ICode08ID  
     WHEN ''I09ID''  THEN D07T0002.ICode09ID  
     WHEN ''I10ID''  THEN D07T0002.ICode10ID  
     WHEN ''Volume''  THEN  CASE WHEN ROUND(D07T0002.Volume,0) = ROUND(D07T0002.Volume,8)  
             THEN CONVERT(varchar(50),CONVERT(DECIMAL(28,0),D07T0002.Volume))  
             ELSE REPLACE(RTRIM(REPLACE(CONVERT(varchar(50),D07T0002.Volume),''0'','' '')),'' '',''0'')  
          END  
     WHEN ''Weight''  THEN  CONVERT(varchar(50),D07T0002.Weight,2)        
     WHEN ''StrRefInfo'' THEN   
            CASE WHEN ROUND(D07T0002.DLength,0) = ROUND(D07T0002.DLength,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DLength),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DLength),''0'','' '')),'' '',''0'') END + ''x'' +  
            CASE WHEN ROUND(D07T0002.DWidth,0) = ROUND(D07T0002.DWidth,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DWidth),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DWidth),''0'','' '')),'' '',''0'') END + ''x'' +   
            CASE WHEN ROUND(D07T0002.DHeight,0) = ROUND(D07T0002.DHeight,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DHeight),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DHeight),''0'','' '')),'' '',''0'') END + '' ''+  
            CONVERT(VARCHAR(250),ISNULL(D07T1016.ComponentID,''''))+ '' '' +  
            CASE WHEN ROUND(D07T0002.Index01,0) = ROUND(D07T0002.Index01,8) THEN REPLACE(CONVERT(VARCHAR(50),D07T0002.Index01),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(50),D07T0002.Index01),''0'','' '')),'' '',''0'') END + '' '' +  
            D07T0002.Str01'+@U+'  + '' '' + D07T0002.Str02'+@U+' + '' '' + D07T0002.Str03'+@U+' + '' '' + D07T0002.Str04'+@U+' + '' '' + D07T0002.Str05'+@U+'  
     WHEN ''RefCode''  THEN D07T0002.RefCode  
    ELSE '''' END AS InventoryRefInfoD05,  
    ISNULL(D05T1017.SuplierTypeID,'''') AS SuplierTypeID, ISNULL(D05T1017.SuplierID,'''') AS SuplierID,   
    CONVERT(NVARCHAR(250),'''') AS SuplierName,  
    ISNULL(D05T1017.CurrencyID,'''') AS POCurrencyID,  
    ISNULL(D05T1017.ExchangeRate,0) AS POExchangeRate, ISNULL(D05T1017.UnitPrice,0) AS POUnitPrice,  
    CASE WHEN (D05T0017.SplitNo = '''' OR D05T0017.SplitNo = ''0'') THEN RTRIM(LTRIM(STR(D05T0017.OrderNum))) Else D05T0017.SplitNo End As D05SplitNo,  
    D05T0017.FactoryOutDate,  
    D05T0017.AdjustmentLineID,'  
    +Case When @SimType = 9 Then '  
    CASE WHEN D05T0017.ShipQTY > 0 or T08.SOItemID <> ''''  THEN 1 ELSE 0 END'   
    Else '0' End +' As IsUsed , --voi IsUsed = 1 thi khong duoc phep sua ma hang, so luong  
    CASE WHEN D05T0017.InvoiceQTY > 0 Then 1 Else 0 End As IsInvoice, --Co hoa don thi khong duoc phep sua don gia  
    D05T0017.BidQty,  CASE WHEN  ISNULL(D05T1022.IsDisplayBidInfo,0) = 1 THEN D05T0017.BidAcceptQty ELSE D05T0017.Quantity END AS BidAcceptQty, ' +  
  
    CASE WHEN @D05F1810 = 0 THEN '  
    D05T0017.ACol01Rate AS ACol01Rate,  
    D05T0017.ACol02Rate AS ACol02Rate,  
    D05T0017.ACol03Rate AS ACol03Rate,  
    D05T0017.ACol04Rate AS ACol04Rate,  
    D05T0017.ACol05Rate AS ACol05Rate,   
    '  
    ELSE '  
    D05T0017.ACol01Rate AS ACol01Rate,  
    D05T0017.ACol02Rate AS ACol02Rate,  
    D05T0017.ACol03Rate AS ACol03Rate,  
    D05T0017.ACol04Rate AS ACol04Rate,  
    D05T0017.ACol05Rate AS ACol05Rate,  
    '  
    END  
    +  
    '  
    CONVERT(VARCHAR(500),'''') AS QuotaLineID,  
    CONVERT(VARCHAR(500),'''') AS QuotaID,  
    D05T0017.UnitPriceOnD14, CASE WHEN D05T0017.UnitPriceOnD14 = 0 AND D05T0017.UnitPrice = 0   
    THEN 0 ELSE CASE WHEN D05T0017.UnitPriceOnD14 = 0 AND D05T0017.UnitPrice <> 0 THEN 100 ELSE  
    ABS(100 * (D05T0017.UnitPriceOnD14 - D05T0017.UnitPrice) / D05T0017.UnitPriceOnD14) END END PriceDiffRate,  
    ISNULL(D05T1017.SuplierTypeID,'''') AS SupplierTypeID,   
    ISNULL(D05T1017.SuplierID,'''') AS SupplierID,   
    CONVERT(NVARCHAR(250),'''') AS SupplierName,  
    D05T0016.TranTypeID, D05T0016.ExchangeRate,  
    Convert(decimal(28,8), 0) As SOQtyPerInvQtyRate, ---ty le SL don hang/ SL ton kho  
    D05T0017.TotalAdjRate * 100 AS TotalAdjRate,  
    D05T0017.QuotaAdjRate * 100 AS QuotaAdjRate, 0 AS ReCalculate,  
    D05T0017.ProjectID, D05T0017.ProjectName'+@U+' AS ProjectName, D05T0017.TaskID, D05T0017.TaskName'+@U+' AS TaskName,  
    CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
    CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
    ISNULL(T22.WarrantyTime, 0 ) AS WarrantyTime, CONVERT(DECIMAL(28,8),0) AS QuantityStock,  
    T25.PackingID, T25.PackQTY AS PackingFactor, T25.Quantity AS PackingQuantity, T25.ItemID AS PackingItemID,  
    ISNULL(D05T1022.IssueTranType,'''') AS IssueTranType,  
    ISNULL(D14T2400.PolicyRate,0) AS PolicyRate, ISNULL(D14T2400.ProRate,0) AS ProRate,  
    ISNULL(D14T2400.TotalSalesQTY,0) AS TotalSalesQTY, ISNULL(D14T2400.ProUseQuantity,0) AS ProUseQuantity,  
    CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  
    CASE WHEN (D05T0017.LinkMasterID <> '''' AND D05T0017.LinkMasterID like ''49%'')  THEN 1 ELSE 0 END AS IsContract,  
    CONVERT(TINYINT,0) IsLockInfEstimate, D05T0017.ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts,  
    CONVERT(VARCHAR(50),'''') AS ContractNo, CONVERT(VARCHAR(50),'''') AS DocNo,  
    D05T0117.Dat01 as DisplayDat01,  D05T0117.Dat02 as DisplayDat02,  D05T0117.Dat03 as DisplayDat03,   
    D05T0117.Dat04 as DisplayDat04,  D05T0117.Dat05 as DisplayDat05,  D05T0117.Dat06 as DisplayDat06,   
    D05T0117.Dat07 as DisplayDat07,  D05T0117.Dat08 as DisplayDat08,  D05T0117.Dat09 as DisplayDat09, D05T0117.Dat10 as DisplayDat10,   
    D05T0117.Num01 as DisplayNum01,  D05T0117.Num02 as DisplayNum02,  D05T0117.Num03 as DisplayNum03,   
    D05T0117.Num04 as DisplayNum04,  D05T0117.Num05 as DisplayNum05,  D05T0117.Num06 as DisplayNum06,   
    D05T0117.Num07 as DisplayNum07,  D05T0117.Num08 as DisplayNum08,  D05T0117.Num09 as DisplayNum09, D05T0117.Num10 as DisplayNum10,   
    D05T0117.Str01 as DisplayStr01,  D05T0117.Str02 as DisplayStr02,  D05T0117.Str03 as DisplayStr03,   
    D05T0117.Str04 as DisplayStr04,  D05T0117.Str05 as DisplayStr05,  D05T0117.Str06 as DisplayStr06,   
    D05T0117.Str07 as DisplayStr07,  D05T0117.Str08 as DisplayStr08,  D05T0117.Str09 as DisplayStr09, D05T0117.Str10 as DisplayStr10, CONVERT(BIT,D05T0017.BidAccept) AS BidAccept,  
    CASE WHEN D07T0002.IsRepresentItem=1 AND D07T0002.Disabled =1  THEN 1 ELSE 0 END IsRepresentItem,   
    CONVERT(BIT,ISNULL(D05T0017.IsPick,0)) AS IsPick, CONVERT(BIT,ISNULL(D05T0017.IsPick,0)) AS IsPickDetail, D07T0002.IsLocation, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax, D05T0016.CurrencyID,  
    CASE WHEN  ISNULL(D05T1022.IsDisplayBidInfo,0) = 1 THEN D05T0017.BidAcceptQty * D05T0017.UnitPrice ELSE 0 END AS BidAcceptOAmount,   
    CASE WHEN  ISNULL(D05T1022.IsDisplayBidInfo,0) = 1 THEN D05T0017.BidAcceptQty * D05T0017.UnitPrice * D05T0016.ExchangeRate  ELSE 0 END AS BidAcceptCAmount,  
    CONVERT(BIT, ISNULL(D05T0017.QAStatusDetail,0)) AS QAStatusDetail,  D05T0017.ShipAddressID, '  
 SET @SQL11 = @SQL11 + '  
    D05T0017.Acol01_UnitPrice AS Acol01_UnitPrice,  
    D05T0017.Acol02_UnitPrice AS Acol02_UnitPrice,  
    D05T0017.Acol03_UnitPrice AS Acol03_UnitPrice,  
    D05T0017.Acol04_UnitPrice AS Acol04_UnitPrice,  
    D05T0017.Acol05_UnitPrice AS Acol05_UnitPrice, D05T0017.OrderNum AS KeyOrderNum  , ISNULL(D05T0017.BreakGroupID,'''') AS BreakGroupID,   
    CONVERT(TINYINT,1) AS IsOldData,CONVERT(DECIMAL(28,8),0) AS OriACol01,CONVERT(DECIMAL(28,8),0) AS OriACol02,CONVERT(DECIMAL(28,8),0) AS OriACol03,CONVERT(DECIMAL(28,8),0) AS OriACol04,CONVERT(DECIMAL(28,8),0) AS OriACol05,  
    CONVERT(DECIMAL(28,8),0) AS OriACol01Rate,CONVERT(DECIMAL(28,8),0) AS OriACol02Rate,CONVERT(DECIMAL(28,8),0) AS OriACol03Rate,CONVERT(DECIMAL(28,8),0) AS OriACol04Rate,CONVERT(DECIMAL(28,8),0) AS OriACol05Rate,  
    CONVERT(VARCHAR(8000),'''') AS OriAdjustmentListID,CONVERT(VARCHAR(8000),'''') AS OriAdjustmentLineID,  
    CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
    CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
    , ISNULL(D07T0002.Weight, 0) AS Weight, D05T0017.Specifications   
    , CONVERT(DATETIME, NULL) AS ExpireDate, CONVERT(TINYINT,0) AS AdjustAmount  
    , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
    ' +  
    CASE WHEN @D05F1810 = 0 THEN ''  
    ELSE ', D05T0017.DiscountRate*100 AS DiscountRate, D05T0017.SellUnitPrice, D05T0017.CalculateUnitPrice, D05T0017.CalculatedUnitPrice  
    , D05T0017.RaisePrice*100 AS RaisePrice, D05T0017.RaiseUnitPrice '  
    END  
 + '  
 INTO  #Edit  
 '  
   
 SET @SQL2 = '  
 FROM  D05T0017 WITH (NOLOCK)  
 INNER JOIN D05T0016 WITH(NOLOCK) ON D05T0017.QuotationID = D05T0016.QuotationID  
 LEFT JOIN D05T2425 T25 WITH(NOLOCK) ON D05T0017.QuotationID = T25.BatchID AND D05T0017.QuotationItemID = T25.TransID AND T25.OTransType in (''SO'', ''QT'')  
 LEFT JOIN D07T0004 WITH(NOLOCK) ON D07T0004.InventoryID = D05T0017.InventoryID AND D07T0004.UnitID = D05T0017.UnitID    
 LEFT JOIN D07T0002 WITH(NOLOCK) ON D07T0002.InventoryID = D05T0017.InventoryID   
 LEFT JOIN D07T0005 WITH(NOLOCK) ON D07T0005.UnitID = D05T0017.UnitID  
  
 LEFT JOIN D07T1011 WITH(NOLOCK) ON D05T0017.QuotationID = D07T1011.RefVoucherID  
    AND D05T0017.QuotationItemID = D07T1011.RefTransID   
    AND D07T1011.RefTransType=''SO''   
 LEFT JOIN D07T2230 WITH (NOLOCK) On D07T2230.TransID = D05T0017.QuotationItemID   
    AND D07T2230.VoucherID = D05T0017.QuotationID  
 LEFT JOIN (   
    SELECT  T15.SalesOrderItemID, 1 as isAdjusted  
    FROM  D05T2025 T05 WITH(NOLOCK)  
    INNER JOIN D05T2125 T15 WITH(NOLOCK)  
       ON T05.AdjSalesOrderID = T15.AdjSalesOrderID  
    WHERE  T05.DivisionID = '''+@DivisionID+'''  
       AND T05.SalesOrderID = '''+@QuotationID+'''  
    GROUP BY T15.SalesOrderItemID  
    ) T15   
   ON D05T0017.QuotationItemID = T15.SalesOrderItemID   
 LEFT JOIN D05T2030 WITH(NOLOCK) ON D05T2030.VoucherID = D05T0017.QuotationID   
    AND D05T2030.TransID = D05T0017.QuotationItemID  
 LEFT JOIN (   
    SELECT  SalesOrderID, SalesOrderItemID,   
       SUM((2*AdjustType-1) * A.OQuantity) as Quantity,  
       SUM((2*AdjustType-1) * A.CQuantity) as CQuantity  
    FROM  D05T2125 A WITH (NOLOCK)  
    INNER JOIN D05T2025 B WITH (NOLOCK)   
      ON  B.AdjSalesOrderID = A.AdjSalesOrderID  
    INNER JOIN D05T0017 C WITH (NOLOCK)   
      ON C.QuotationItemID = A. AdjSalesOrderItemID  
    WHERE C.QuotationID = ''' + @QuotationID + '''  
    GROUP BY SalesOrderID, SalesOrderItemID  
    ) OADJ   
   ON OADJ.SalesOrderItemID = D05T0017.QuotationItemID  
 LEFT JOIN D11T2010 D11 WITH(NOLOCK)  
    ON D05T0017.QuotationID = D11.QuotationID  
    AND D05T0017.QuotationItemID = D11.QuotationItemID  
    AND D05T0017.InventoryID = D11.InventoryID  
 LEFT JOIN #D05P1612_D91T1003  D91T1003 ON D07T0002.InventoryID = D91T1003.InventoryID  
 FULL JOIN (SELECT InventoryRefInfo FROM D05T0000 WITH(NOLOCK)) D05T0000 ON 1=1  
 LEFT JOIN ( SELECT  T2.InventoryID,   
        ISNULL(SUBSTRING(  
          ( SELECT ComponentID + ''+''  
           FROM D07T1016 A WITH(NOLOCK)  
           WHERE A.ExpenseTypeID = ''ExpenseType01''  
             AND A.InventoryID = T2.InventoryID  
             AND A.ComponentID <> ''''  
           ORDER BY A.RowID  
          FOR XML PATH ('''')   
          ),1,  
          LEN((SELECT ComponentID + ''+''  
           FROM D07T1016 A WITH(NOLOCK)  
           WHERE A.ExpenseTypeID = ''ExpenseType01''  
            AND A.InventoryID = T2.InventoryID  
             AND A.ComponentID <> ''''  
           ORDER BY A.RowID  
          FOR XML PATH (''''))) - 1  
          ),'''') AS ComponentID  
  
    FROM  D07T1016 T2 WITH(NOLOCK)  
    WHERE ExpenseTypeID = ''ExpenseType01''  
    GROUP BY T2.InventoryID  
    ) D07T1016 ON D07T0002.InventoryID = D07T1016.InventoryID  
     
 LEFT JOIN D05T1017 WITH(NOLOCK)  
  ON  D05T0017.QuotationID = D05T1017.SOID  
    AND D05T0017.QuotationItemID = D05T1017.SOItemID'  
 +CASE WHEN @SimType = 9 THEN '  
 LEFT JOIN D08T1001 T08 ON D05T0017.QuotationItemID = T08.SOItemID  
 '  
 ELSE '' END+'  
 LEFT JOIN D05T1022  WITH(NOLOCK) ON D05T0016.TranTypeID = D05T1022.TranTypeID  
 LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON D05T0017.QuotationID= T22.QuotationID AND D05T0017.QuotationItemID=T22.QuotationItemID AND T22.WarrantyTime > 0  
 LEFT JOIN D14T2400 WITH(NOLOCK)  
  ON  D05T0017.QuotationID = D14T2400.VoucherID  
    AND D05T0017.QuotationItemID = D14T2400.TransID  
    AND D14T2400.ProType = ''SO''  
 LEFT JOIN D05T0117 D05T0117 WITH(NOLOCK)  
  ON  D05T0017.QuotationID = D05T0117.QuotationID  
  AND  D05T0017.QuotationItemID = D05T0117.QuotationItemID  
 '  
   
 SET @SQL31 = '  
 WHERE  D05T0016.QuotationID = '''+@QuotationID +'''  
    AND D05T0016.DivisionID = '''+@DivisionID+'''  
    AND (D05T0017.SplitNo = '''' OR D05T0017.SplitNo = ''0'' OR D05T0016.ModuleID <> ''05'' )   
  
 ------ Cap nhat gia chuan tu bang gia (gia chuan  = 0)  
 IF EXISTS ( SELECT TOP 1 1 FROM D91T9130 WITH(NOLOCK) WHERE Customize = ''IsCONGTHANHCustomer'' AND Value = 1)   
 BEGIN  
  SELECT  DISTINCT T01.DivisionID, T01.OrderNum, T01.QuotationItemID, T16.QuotationDate AS TranDate,   
     T01.InventoryID, D07T0002.UnitID, T01.UnitID AS ConversionUnitID, T01.UnitPrice, 0 AS UnitPricePriceList,  
     T16.ObjectTypeID, T16.CustomerID AS ObjectID,  
     T01.Quantity AS OQuantity, T01.CQuantity, T16.CurrencyID, T16.PaymentTermID, T16.PaymentMethodID, T16.DeliveryMethodID, T01.PriceListID,  
     T01.Spec01ID, T01.Spec02ID, T01.Spec03ID, T01.Spec04ID, T01.Spec05ID,   
     T01.Spec06ID, T01.Spec07ID, T01.Spec08ID, T01.Spec09ID, T01.Spec10ID,  
     T01.CQuantity AS ConvertedQuantity, T16.TranTypeID AS TransTypeID  
  INTO  #Edit_Giachuan  
  FROM  #Edit T01  
  INNER JOIN D05T0016 T16 WITH(NOLOCK) ON T01.QuotationID = T16.QuotationID  
  INNER JOIN D07T0002 ON T01.InventoryID = D07T0002.InventoryID  
  WHERE  T01.UnitPriceOnD14 = 0  
  
  CREATE TABLE #Price(  
   Result DECIMAL(28, 8), STATUS TINYINT, InventoryStatus TINYINT, PriceListID VARCHAR(50),   
   BasePrice DECIMAL(28, 8), MinUnitPrice DECIMAL(28, 8), PriceOnDefaultUnitOnD14 DECIMAL(28, 8),  
   PLLineType Varchar(50), MinSaleValue DECIMAL(28, 8), PriceListLineID Varchar(50)  
  )  
  
  DECLARE @CUR CURSOR  
  SET @CUR = CURSOR FOR SELECT DISTINCT T01.DivisionID, T01.QuotationItemID, T01.TranDate,   
     T01.InventoryID, T01.UnitID, T01.ConversionUnitID, T01.UnitPrice, T01.UnitPricePriceList,  
     T01.ObjectTypeID, T01.ObjectID,  
     T01.OQuantity, T01.CQuantity, T01.CurrencyID, T01.PaymentTermID, T01.PaymentMethodID, T01.DeliveryMethodID, T01.PriceListID,  
     T01.Spec01ID, T01.Spec02ID, T01.Spec03ID, T01.Spec04ID, T01.Spec05ID,   
     T01.Spec06ID, T01.Spec07ID, T01.Spec08ID, T01.Spec09ID, T01.Spec10ID,  
     T01.ConvertedQuantity, T01.TransTypeID  
  FROM  #Edit_Giachuan T01  
  
  DECLARE  @DivisionID VARCHAR(50), @QuotationItemID VARCHAR(50), @TranDate DATETIME,   
     @InventoryID VARCHAR(50), @UnitID VARCHAR(50), @ConversionUnitID AS VARCHAR(20), @UnitPrice DECIMAL(28, 8), @UnitPricePriceList DECIMAL(28, 8),  
     @ObjectTypeID  VARCHAR(50), @ObjectID VARCHAR(50),  
     @OQuantity DECIMAL(28, 8), @CQuantity DECIMAL(28, 8), @CurrencyID VARCHAR(50), @PaymentTermID VARCHAR(50), @PaymentMethodID VARCHAR(50),   
     @DeliveryMethodID VARCHAR(50), @PriceListID VARCHAR(50),  
     @Spec01ID VARCHAR(50), @Spec02ID VARCHAR(50), @Spec03ID VARCHAR(50), @Spec04ID VARCHAR(50), @Spec05ID VARCHAR(50),   
     @Spec06ID VARCHAR(50), @Spec07ID VARCHAR(50), @Spec08ID VARCHAR(50), @Spec09ID VARCHAR(50), @Spec10ID VARCHAR(50),  
     @ConvertedQuantity DECIMAL(28, 8), @TransTypeID VARCHAR(50)  
  OPEN @CUR  
  FETCH NEXT FROM @CUR INTO @DivisionID , @QuotationItemID , @TranDate,   
         @InventoryID , @UnitID, @ConversionUnitID, @UnitPrice , @UnitPricePriceList ,  
         @ObjectTypeID  , @ObjectID ,  
         @OQuantity,  @CQuantity, @CurrencyID , @PaymentTermID , @PaymentMethodID ,   
         @DeliveryMethodID , @PriceListID ,  
         @Spec01ID , @Spec02ID , @Spec03ID , @Spec04ID , @Spec05ID ,   
         @Spec06ID , @Spec07ID , @Spec08ID , @Spec09ID , @Spec10ID ,  
         @ConvertedQuantity , @TransTypeID   
  WHILE (@@FETCH_STATUS = 0)  
  BEGIN  
   TRUNCATE TABLE #Price  
   INSERT INTO #Price  
   EXEC D14P1001 @DivisionID, @TranDate, @InventoryID, @ConversionUnitID, @ObjectTypeID, @ObjectID, @OQuantity,  
     '''', '''', '''', '''', '''', '''', '''', '''', '''', '''',   
     @CurrencyID, @PaymentTermID, @PaymentMethodID, @DeliveryMethodID, NULL, @PriceListID, 0, @PriceListID,  
     @Spec01ID , @Spec02ID , @Spec03ID , @Spec04ID , @Spec05ID ,   
     @Spec06ID , @Spec07ID , @Spec08ID , @Spec09ID , @Spec10ID ,  
     '''', @TransTypeID, ''05'', '''',  0  
      
   UPDATE #Edit SET #Edit.UnitPriceOnD14 = #Price.Result  
   FROM #Edit INNER JOIN #Price ON #Edit.QuotationItemID = @QuotationItemID  
            AND #Edit.InventoryID = @InventoryID  
            AND #Edit.UnitID = @UnitID  
            AND #Edit.Spec01ID = @Spec01ID  
            AND #Edit.Spec02ID = @Spec02ID  
            AND #Edit.Spec03ID = @Spec03ID  
            AND #Edit.Spec04ID = @Spec04ID  
            AND #Edit.Spec05ID = @Spec05ID  
            AND #Edit.Spec06ID = @Spec06ID  
            AND #Edit.Spec07ID = @Spec07ID  
            AND #Edit.Spec08ID = @Spec08ID  
            AND #Edit.Spec09ID = @Spec09ID  
            AND #Edit.Spec10ID = @Spec10ID  
               
   FETCH NEXT FROM @CUR INTO @DivisionID , @QuotationItemID , @TranDate,   
          @InventoryID , @UnitID, @ConversionUnitID, @UnitPrice , @UnitPricePriceList ,  
          @ObjectTypeID  , @ObjectID ,  
          @OQuantity,  @CQuantity, @CurrencyID , @PaymentTermID , @PaymentMethodID ,   
          @DeliveryMethodID , @PriceListID ,  
          @Spec01ID , @Spec02ID , @Spec03ID , @Spec04ID , @Spec05ID ,   
          @Spec06ID , @Spec07ID , @Spec08ID , @Spec09ID , @Spec10ID ,  
          @ConvertedQuantity , @TransTypeID   
   
  END   
 END  
 '     
  
 SET @SQL31_1 = '  
 UPDATE  T17  
 SET   T17.Spec01Name = ISNULL(A.Description'+@U+' ,''''),  
    T17.Spec02Name = ISNULL(B.Description'+@U+' ,''''),  
    T17.Spec03Name = ISNULL(C.Description'+@U+' ,''''),  
    T17.Spec04Name = ISNULL(D.Description'+@U+' ,''''),  
    T17.Spec05Name = ISNULL(E.Description'+@U+' ,''''),  
    T17.Spec06Name = ISNULL(F.Description'+@U+' ,''''),  
    T17.Spec07Name = ISNULL(G.Description'+@U+' ,''''),  
    T17.Spec08Name = ISNULL(H.Description'+@U+' ,''''),  
    T17.Spec09Name = ISNULL(I.Description'+@U+' ,''''),  
    T17.Spec10Name = ISNULL(J.Description'+@U+' ,'''')  
 FROM #Edit T17   
 LEFT JOIN D07T1410 A WITH(NOLOCK) ON A.SpecID = T17.Spec01ID and A.SpecTypeID = ''01'' AND A.Disabled=0  
 LEFT JOIN D07T1410 B WITH(NOLOCK) ON B.SpecID = T17.Spec02ID and B.SpecTypeID = ''02'' AND B.Disabled=0  
 LEFT JOIN D07T1410 C WITH(NOLOCK) ON C.SpecID = T17.Spec03ID and C.SpecTypeID = ''03'' AND C.Disabled=0  
 LEFT JOIN D07T1410 D WITH(NOLOCK) ON D.SpecID = T17.Spec04ID and D.SpecTypeID = ''04'' AND D.Disabled=0  
 LEFT JOIN D07T1410 E WITH(NOLOCK) ON E.SpecID = T17.Spec05ID and E.SpecTypeID = ''05'' AND E.Disabled=0  
 LEFT JOIN D07T1410 F WITH(NOLOCK) ON F.SpecID = T17.Spec06ID and F.SpecTypeID = ''06'' AND F.Disabled=0  
 LEFT JOIN D07T1410 G WITH(NOLOCK) ON G.SpecID = T17.Spec07ID and G.SpecTypeID = ''07'' AND G.Disabled=0  
 LEFT JOIN D07T1410 H WITH(NOLOCK) ON H.SpecID = T17.Spec08ID and H.SpecTypeID = ''08'' AND H.Disabled=0  
 LEFT JOIN D07T1410 I WITH(NOLOCK) ON I.SpecID = T17.Spec09ID and I.SpecTypeID = ''09'' AND I.Disabled=0  
 LEFT JOIN D07T1410 J WITH(NOLOCK) ON J.SpecID = T17.Spec10ID and J.SpecTypeID = ''10'' AND J.Disabled=0  
 '  
  
 IF @SimType = 9  
 BEGIN  
  SET @SQL0 = '  
  INSERT INTO #Edit  
  SELECT  MAX(D05T0017.DivisionID) As DivisionID, MAX(D05T0017.QuotationID) As QuotationID,   
     MAX(D05T0017.QuotationItemID) As QuotationItemID,   
     D05T0017.SplitNo As OrderNum,   
     MAX(D05T0017.InventoryID) As InventoryID,   
     MAX(ItemName'+@U+')  AS ItemName,   
     MAX(D05T0017.ShortName'+@U+') AS ShortName,   
     MAX(D05T0017.UnitID) As UnitID,  
     MAX(D05T0017.DeliveryDate) As DeliveryDate,   
     MAX(D05T0017.LocationNo) As LocationNo,   
     SUM(D05T0017.Quantity) As Quantity, SUM(D05T0017.CQuantity) As CQuantity,   
     SUM(ReduceQuantity) As ReduceQuantity, SUM(CReduceQuantity) As CReduceQuantity,   
     MAX(D05T0017.UnitPrice) As UnitPrice,  
     SUM(OAmountTmp) As OAmountTmp, SUM(CAmountTmp) As CAmountTmp,   
     SUM(ACol01) As ACol01, SUM(C_ACol01) As C_ACol01,   
     SUM(ACol02) As ACol02, SUM(C_ACol02) As C_ACol02,   
     SUM(ACol03) As ACol03, SUM(C_ACol03) As C_ACol03,   
     SUM(ACol04) As ACol04, SUM(C_ACol04) As C_ACol04,   
     SUM(ACol05) As ACol05, SUM(C_ACol05) As C_ACol05,  
     SUM(Amount) As Amount, SUM(CAmount) As CAmount,   
     MAX(D05T0017.RateReduce) As RateReduce,   
     SUM(D05T0017.OriginalReduce) As OriginalReduce, SUM(D05T0017.CReduce) As CReduce,   
     MAX(D05T0017.VATGroupID) As VATGroupID, MAX(D05T0017.VATRate) As VATRate,   
     SUM(OVAT) As OVAT, SUM(CVAT) As CVAT,   
     MAX(RateTax) As RateTax, SUM(OTax) As OTax, SUM(CTax) As CTax,   
     MAX(D05T0017.Notes'+@U+') AS Notes,  
     MAX(D05T0017.Ana01ID) As Ana01ID, MAX(D05T0017.Ana02ID) As Ana02ID, MAX(D05T0017.Ana03ID) As Ana03ID, MAX(D05T0017.Ana04ID) As Ana04ID, MAX(D05T0017.Ana05ID) As Ana05ID,   
     MAX(D05T0017.Ana06ID) As Ana06ID, MAX(D05T0017.Ana07ID) As Ana07ID, MAX(D05T0017.Ana08ID) As Ana08ID, MAX(D05T0017.Ana09ID) As Ana09ID, MAX(D05T0017.Ana10ID) As Ana10ID,   
     MAX(D05T0017.NRef1) As NRef1, MAX(D05T0017.NRef2) As NRef2, MAX(D05T0017.NRef3) As NRef3, MAX(D05T0017.NRef4) As NRef4, MAX(D05T0017.NRef5) As NRef5,  
     MAX(D05T0017.DRef1'+@U+') AS DRef1,   
     MAX(D05T0017.DRef2'+@U+') AS DRef2,   
     MAX(D05T0017.DRef3'+@U+') AS DRef3,   
     MAX(D05T0017.DRef4'+@U+') AS DRef4,   
     MAX(D05T0017.DRef5'+@U+') AS DRef5,   
     MAX(D05T0017.NDef1) As NDef1, MAX(D05T0017.NDef2) As NDef2, MAX(D05T0017.NDef3) As NDef3,   
     MAX(D05T0017.NDef4) As NDef4, MAX(D05T0017.NDef5) As NDef5,   
     MAX(StatusDetail) As StatusDetail, MAX(DetailCustomerID) As DetailCustomerID,   
     MAX(DetailCustomerName'+@U+') AS DetailCustomerName,       MAX(ParcelInventoryID) As ParcelInventoryID,   
     MAX(ParcelInventoryName'+@U+') AS ParcelInventoryName,   
     SUM(ParcelQuantity) As ParcelQuantity, SUM(ParcelPerQuantity) As ParcelPerQuantity,   
     MAX(WeightNet) As WeightNet, MAX(WeightNetTotal) As WeightNetTotal, MAX(WeightGrossTotal) As WeightGrossTotal,  
     MAX(WeightGross) As WeightGross, MAX(Measurement) As Measurement,   
     MAX(MeasurementTotal) As MeasurementTotal, MAX(D05T0017.IsService) As IsService,   
     MAX(D05T0017.WareHouseID) As WareHouseID, CONVERT(BIT,MAX(IsPromotion)) AS IsPromotion,   
     MAX(DateNumber01) As DateNumber01, MAX(Date01) As Date01, MAx(Ratio01) As Ratio01,   
     MAX(DateNumber02) As DateNumber02, MAX(Date02) As Date02, MAX(Ratio02) As Ratio02,   
     MAX(DateNumber03) As DateNumber03, MAX(Date03) As Date03, MAX(Ratio03) As Ratio03,  
     MAX(KitID) As KitID, MAX(KitUnitID) As KitUnitID,   
     MAX(KitQuantity) As KitQuantity, MAX(KitCQuantity) As KitCQuantity, MAX(KitNo) As KitNo,   
     MAX(D05T0017.Spec01ID) As Spec01ID, MAX(D05T0017.Spec02ID) As Spec02ID,   
     MAX(D05T0017.Spec03ID) As Spec03ID, MAX(D05T0017.Spec04ID) As Spec04ID,   
     MAX(D05T0017.Spec05ID) As Spec05ID, MAX(D05T0017.Spec06ID) As Spec06ID,   
     MAX(D05T0017.Spec07ID) As Spec07ID, MAX(D05T0017.Spec08ID) As Spec08ID,   
     MAX(D05T0017.Spec09ID) As Spec09ID, MAX(D05T0017.Spec10ID) As Spec10ID,  
     MAX(IssueWareHouseID) As IssueWareHouseID, MAX(D05T0017.IsKit) As IsKit,   
     MAX(DateRef1) As DateRef1, MAX(DateRef2) As DateRef2, MAX(DateRef3) As DateRef3, MAX(DateRef4) As DateRef4, MAX(DateRef5) As DateRef5,   
     MAX(PromotionOnD05) As PromotionOnD05,   
     MAX(OUnitPrice) As OUnitPrice,   
     MAX(D05T0017.TransactionTypeID) As TransactionTypeID, MAX(ODetailDueDate) As ODetailDueDate, MAX(IsFromD16) As IsFromD16,   
     MAX(DiscountedUnitPrice) As DiscountedUnitPrice,  
     CASE WHEN MAX(ISNULL(D11.ProductID,'''')) <> ''''   
     THEN MAX(D11.ProductID)  
     ELSE MAX(D05T0017.LinkMasterID )  
     END AS LinkMasterID, MAX(LinkDetailID) As LinkDetailID,   
     SUM(DeliveryQTY) As DeliveryQTY,  
     SUM(ReturnQTY) As ReturnQTY, MAX(TempUnitPrice) As TempUnitPrice,  
     MAX(IsComponentOfKit) As IsComponentOfKit,   
     SUM(OrderQTY) As OrderQTY, SUM(OrderCQTY) As OrderCQTY,   
     MAX(AdjustmentListID) As AdjustmentListID,  
     SUM(TotalAdjustedAmount) As TotalAdjustedAmount,  
     SUM(TotalAdjustedCAmount) As TotalAdjustedCAmount, MAX(AdjustedUnitPrice) As AdjustedUnitPrice,   
     SUM(InvoiceQTY) As InvoiceQTY,  
     MAX(ISNULL(D07T0004.ConversionFactor, 1)) as ConversionFactor,   
     MAX(ItemName'+@U+') AS InventoryName,  
     ISNULL(MAX(D07T0005.UnitName'+@U+'), '''') as UnitName,  
     MAX(D05T0017.VATGroupID) AS VATGroupID1,  
     MAX(D05T0017.RateReduce * 100) AS RateReduce1,  
     ISNULL(MAX(A.Description'+@U+') ,'''') as Spec01Name,  
     ISNULL(MAX(B.Description'+@U+') ,'''') as Spec02Name,  
     ISNULL(MAX(C.Description'+@U+') ,'''') as Spec03Name,  
     ISNULL(MAX(D.Description'+@U+') ,'''') as Spec04Name,  
     ISNULL(MAX(E.Description'+@U+') ,'''') as Spec05Name,  
     ISNULL(MAX(F.Description'+@U+') ,'''') as Spec06Name,  
     ISNULL(MAX(G.Description'+@U+') ,'''') as Spec07Name,  
     ISNULL(MAX(H.Description'+@U+') ,'''') as Spec08Name,  
     ISNULL(MAX(I.Description'+@U+') ,'''') as Spec09Name,  
     ISNULL(MAX(J.Description'+@U+'),'''') as Spec10Name,  
   '  
  SET @SQL1 = '  
     ISNULL( CASE WHEN MAX(D91T1003.InvNameObject) = '''' THEN MAX(D07T0002.InventoryName'+@U+') ELSE MAX(D91T1003.InvNameObject) END   
       ,'''') AS OInventoryName,   
     ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
     MAX(ISNULL(D07T0004.Formula,'''')) AS ConversionFormula ,  
     CONVERT(MONEY,0) AS MinUnitPrice,  
     MAX(D07T1011.RDVoucherID) As RDVoucherID,   
     MAX(D07T1011.TransactionID) As TransactionID,   
     MAX(D07T1011.R_D) As R_D,   
     MAX(D07T1011.SplitNo) As SplitNo,  
     MAX(D07T0002.UnitID) as BaseUnitID,  
     MAX(Case when D07T2230.TransID is null then 0 else 1 end) as Flag,  
     MAX(isnull(D07T2230.FormulaID, '''')) as FormulaID,  
     MAX(isnull(D07T2230.Formula, '''')) as Formula,  
     MAX(isnull(D07T2230.Num01, 0)) as Num01, MAX(isnull(D07T2230.Num02, 0)) as Num02,  
     MAX(isnull(D07T2230.Num03, 0)) as Num03, MAX(isnull(D07T2230.Num04, 0)) as Num04,  
     MAX(isnull(D07T2230.Num05, 0)) as Num05, MAX(isnull(D07T2230.Num06, 0)) as Num06,  
     MAX(isnull(D07T2230.Num07, 0)) as Num07, MAX(isnull(D07T2230.Num08, 0)) as Num08,  
     MAX(isnull(D07T2230.Num09, 0)) as Num09, MAX(isnull(D07T2230.Num10, 0)) as Num10,  
     Case when MAX(T15.IsAdjusted) is null then 0 else 1 end IsAdjust, --Dung cho .NET  
     Case when MAX(T15.IsAdjusted) is null then 0 else 1 end IsAdjusted, --Dung cho VB  
     Convert(Money,0) As DeliveredQuantity,  
     MAX(Isnull(D05T0017.UnitPrice,0)) As RefUnitPrice ,   
     Case when MAX(D05T0017.Iskit) =2 then 1 else 0 end as IsKit1,   
     MAX(D05T2030.OModuleID) AS LinkModuleID,  
      Convert(tinyint, 0) AS IsUnitPrice ,  
     MAX(D05T2030.OVoucherID) AS LinkQuotationID,  
     MAX(D05T2030.OTransID) AS LinkQuotationItemID ,  
     Convert(tinyint, 0) AS AdjustTypeID ,  
     Convert(Varchar(20), '''') As AdjustTypeDesc,  
     SUM((D05T0017.Quantity + Isnull(OADJ.Quantity,0))) AS AdjOQuantity,   
     SUM((D05T0017.CQuantity + Isnull(OADJ.CQuantity,0))) As AdjCQuantity,  
     --- Gia ban  - Tong gia mua ---- Trong do Tong gia mua = Textbox gia ve mua + Thue + PXB + PXD  
     SUM(D05T0017.Amount  - (ISNULL(D05T0017.NDef1,0) + (ISNULL(D05T0017.VATRate,0)*ISNULL(D05T0017.NDef1,0)) + D05T0017.ACol01 + D05T0017.ACol02 ))  AS Profit, ---- Modified on 15/05/2012 by Bao Chi : (ID 48401)  
     SUM(D05T0017.ACol04) AS MinProfit,   --- truong ACol04 luu Phi DV  
     MAX(D05T0017.PriceListID) As DPriceListID,   
     MAX(D05T0017.CurrencyOnPriceList) As CurrencyOnPriceList, MAX(D05T0017.DExchangeRate) As DExchangeRate,  
     MAX(D07T0002.IsBOM) As IsBOM, MAX(D05T0017.PriceListLineID) As PriceListLineID,   
     MAX(D05T0017.PriceBreakID) As PriceBreakID, MAX(D05T0017.PriceListID) As PriceListID,  
      
     CASE MAX(D05T0000.InventoryRefInfo)   
      WHEN ''ShortName'' THEN MAX(D07T0002.ShortName'+@U+')  
      WHEN ''I01ID''  THEN MAX(D07T0002.ICode01ID)  
      WHEN ''I02ID''  THEN MAX(D07T0002.ICode02ID)  
      WHEN ''I03ID''  THEN MAX(D07T0002.ICode03ID)  
      WHEN ''I04ID''  THEN MAX(D07T0002.ICode04ID)  
      WHEN ''I05ID''  THEN MAX(D07T0002.ICode05ID)  
      WHEN ''I06ID''  THEN MAX(D07T0002.ICode06ID)  
      WHEN ''I07ID''  THEN MAX(D07T0002.ICode07ID)  
      WHEN ''I08ID''  THEN MAX(D07T0002.ICode08ID)  
      WHEN ''I09ID''  THEN MAX(D07T0002.ICode09ID)  
      WHEN ''I10ID''  THEN MAX(D07T0002.ICode10ID)  
      WHEN ''Volume''  THEN  CASE WHEN ROUND(MAX(D07T0002.Volume),0) = ROUND(MAX(D07T0002.Volume),8)  
              THEN CONVERT(varchar(50),CONVERT(DECIMAL(28,0),MAX(D07T0002.Volume)))  
              ELSE REPLACE(RTRIM(REPLACE(CONVERT(varchar(50),MAX(D07T0002.Volume)),''0'','' '')),'' '',''0'')  
           END  
      WHEN ''Weight''  THEN CONVERT(varchar(50),MAX(D07T0002.Weight),2)        
      WHEN ''StrRefInfo'' THEN CASE WHEN ROUND(MAX(D07T0002.DLength),0) = ROUND(MAX(D07T0002.DLength),8) THEN REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DLength)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DLength)),'
'0'','' '')),'' '',''0'') END + ''x'' +  
             CASE WHEN ROUND(MAX(D07T0002.DWidth),0) = ROUND(MAX(D07T0002.DWidth),8) THEN REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DWidth)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DWidth)),''0'','' '')),'' '',''0'
') END + ''x'' +   
             CASE WHEN ROUND(MAX(D07T0002.DHeight),0) = ROUND(MAX(D07T0002.DHeight),8) THEN REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DHeight)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DHeight)),''0'','' '')),'' '',
''0'') END + '' ''+  
             CONVERT(VARCHAR(250),ISNULL(MAX(D07T1016.ComponentID),''''))+ '' '' +  
             CASE WHEN ROUND(MAX(D07T0002.Index01),0) = ROUND(MAX(D07T0002.Index01),8) THEN REPLACE(CONVERT(VARCHAR(50),MAX(D07T0002.Index01)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(50),MAX(D07T0002.Index01)),''0'','' '')),'' '',''
0'') END + '' '' +  
             MAX(D07T0002.Str01'+@U+')  + '' '' + MAX(D07T0002.Str02'+@U+') + '' '' + MAX(D07T0002.Str03'+@U+') + '' '' + MAX(D07T0002.Str04'+@U+') + '' '' + MAX(D07T0002.Str05'+@U+')  
      WHEN ''RefCode'' THEN MAX(D07T0002.RefCode)  
     ELSE '''' END AS InventoryRefInfoD05,  
     ISNULL(MAX(D05T1017.SuplierTypeID),'''') AS SuplierTypeID, MAX(ISNULL(D05T1017.SuplierID,'''')) AS SuplierID,   
     CONVERT(NVARCHAR(250),'''') AS SuplierName,  
     MAX(ISNULL(D05T1017.CurrencyID,'''')) AS POCurrencyID,  
     MAX(ISNULL(D05T1017.ExchangeRate,0)) AS POExchangeRate, MAX(ISNULL(D05T1017.UnitPrice,0)) AS POUnitPrice,  
     D05T0017.SplitNo As D05SplitNo,  
     MAX(D05T0017.FactoryOutDate) As FactoryOutDate,  
     MAX(D05T0017.AdjustmentLineID) As AdjustmentLineID,'  
     +CASE WHEN @SimType = 9 THEN '  
     CASE WHEN MAX(D05T0017.ShipQTY) > 0 or Max(T08.SOItemID) <> ''''  THEN 1 ELSE 0 END'  
     ELSE '0' END +' As IsUsed,  
     CASE WHEN MAX(D05T0017.InvoiceQTY) > 0 Then 1 Else 0 End As IsInvoice, --Co hoa don thi khong duoc phep sua don gia  
     MAX(D05T0017.BidQty) AS BidQty, MAX(D05T0017.BidAcceptQty) AS BidAcceptQty,   
     MAX(D05T0017.ACol01Rate) AS ACol01Rate,  
     MAX(D05T0017.ACol02Rate) AS ACol02Rate,  
     MAX(D05T0017.ACol03Rate) AS ACol03Rate,  
     MAX(D05T0017.ACol04Rate) AS ACol04Rate,  
     MAX(D05T0017.ACol05Rate) AS ACol05Rate,  
     CONVERT(VARCHAR(500),'''') AS QuotaLineID,  
     CONVERT(VARCHAR(500),'''') AS QuotaID,  
     0 As UnitPriceOnD14,   
     0 As PriceDiffRate,  
     MAX(ISNULL(D05T1017.SuplierTypeID,'''')) AS SupplierTypeID,  
     MAX(ISNULL(D05T1017.SuplierID,'''')) AS SuplierID,   
     CONVERT(NVARCHAR(250),'''') AS SupplierName,  
     MAX(D05T0016.TranTypeID) AS TranTypeID, MAX(D05T0016.ExchangeRate) AS ExchangeRate, Convert(decimal(28,8), 0) As SOQtyPerInvQtyRate, ---ty le SL don hang/ SL ton kho  
     MAX(D05T0017.TotalAdjRate) * 100 AS TotalAdjRate,  
     MAX(D05T0017.QuotaAdjRate) * 100 AS QuotaAdjRate, 0 AS ReCalculate,  
     MAX(D05T0017.ProjectID) AS ProjectID, MAX(D05T0017.ProjectName'+@U+') AS ProjectName, MAX(D05T0017.TaskID) AS TaskID, MAX(D05T0017.TaskName'+@U+') AS TaskName,  
     CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
     CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
     MAX(ISNULL(T22.WarrantyTime, 0 )) AS WarrantyTime, CONVERT(DECIMAL(28,8),0) AS QuantityStock,  
     MAX(T25.PackingID) AS PackingID, MAX(T25.PackQTY) AS PackingFactor, MAX(T25.Quantity) AS PackingQuantity, MAX(T25.ItemID) AS PackingItemID  
     ,MAX(D05T0017.Specifications) AS Specifications  
     , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
  
       
  '     
  SET @SQL3 = '  
  WHERE  D05T0017.QuotationID = '''+@QuotationID +'''  
     AND D05T0017.DivisionID = '''+@DivisionID+'''  
     AND (D05T0017.SplitNo <> '''' AND D05T0017.SplitNo <> ''0'')  
     AND D05T0017.KitID = ''''  
  GROUP BY D05T0017.DivisionID, D05T0017.SplitNo, D07T0004.UseFormula,D05T0017.BidQty, D05T0017.BidAcceptQty,  
     ACol01Rate,ACol02Rate, ACol03Rate,ACol04Rate,ACol05Rate,D05T0016.TranTypeID, D05T0016.ExchangeRate, D05T0017.TotalAdjRate, D05T0017.QuotaAdjRate  
  
  '  
  SET @SQL02 = '  
  INSERT INTO #Edit  
  SELECT  D05T0017.DivisionID, D05T0017.QuotationID, MAX(D05T0017.QuotationItemID) As QuotationItemID,   
     D05T0017.KitNo As OrderNum,   
     D05T0017.KitID As InventoryID, MAX(D07T0002.InventoryName'+@U+') AS ItemName,   
     MAX(D07T0002.ShortName'+@U+') AS ShortName, MAX(D05T0017.KitUnitID) As UnitID,  
     MAX(D05T0017.DeliveryDate) As DeliveryDate, MAX(D05T0017.LocationNo) As LocationNo,   
     MAX(D05T0017.KitQuantity) As Quantity, MAX(D05T0017.KitCQuantity) As CQuantity,   
     SUM(ReduceQuantity) As ReduceQuantity, SUM(CReduceQuantity) As CReduceQuantity,   
     MAX(D05T0017.KitUnitPrice) As UnitPrice,  
     ROUND(MAX(D05T0017.KitUnitPrice) *  CASE WHEN D07T0002.PricebyCQuantity = 0 THEN MAX(D05T0017.KitQuantity) ELSE  MAX(D05T0017.KitCQuantity) END, V10.OriginalDecimal) As OAmountTmp,   
     ROUND(ROUND(MAX(D05T0017.KitUnitPrice) *  CASE WHEN D07T0002.PricebyCQuantity = 0 THEN MAX(D05T0017.KitQuantity) ELSE  MAX(D05T0017.KitCQuantity) END, V10.OriginalDecimal) * Case When V10.Operator = 0 Then D05T0016.ExchangeRate Else 1.0/D05T0016.Exc
hangeRate End, V10.ConvertedDecimal) As CAmountTmp,   
     SUM(ACol01) As ACol01, SUM(C_ACol01) As C_ACol01, SUM(ACol02) As ACol02, SUM(C_ACol02) As C_ACol02,   
     SUM(ACol03) As ACol03, SUM(C_ACol03) As C_ACol03, SUM(ACol04) As ACol04, SUM(C_ACol04) As C_ACol04,   
     SUM(ACol05) As ACol05, SUM(C_ACol05) As C_ACol05,  
     ROUND(MAX(D05T0017.KitUnitPrice) *  CASE WHEN D07T0002.PricebyCQuantity = 0 THEN MAX(D05T0017.KitQuantity) ELSE  MAX(D05T0017.KitCQuantity) END, V10.OriginalDecimal) As Amount,   
     ROUND(ROUND(MAX(D05T0017.KitUnitPrice) *  CASE WHEN D07T0002.PricebyCQuantity = 0 THEN MAX(D05T0017.KitQuantity) ELSE  MAX(D05T0017.KitCQuantity) END, V10.OriginalDecimal) * Case When V10.Operator = 0 Then D05T0016.ExchangeRate Else 1.0/D05T0016.Exch
angeRate End, V10.ConvertedDecimal) As CAmount,   
     SUM(D05T0017.RateReduce) As RateReduce, SUM(D05T0017.OriginalReduce) As OriginalReduce, SUM(D05T0017.CReduce) As CReduce,   
     MAX(D05T0017.VATGroupID) As VATGroupID, MAX(D05T0017.VATRate) As VATRate,   
     SUM(OVAT) As OVAT, SUM(CVAT) As CVAT, MAX(RateTax) As RateTax, SUM(OTax) As OTax, SUM(CTax) As CTax,   
     MAX(D05T0017.Notes'+@U+') AS Notes,  
     MAX(D05T0017.Ana01ID) As Ana01ID, MAX(D05T0017.Ana02ID) As Ana02ID, MAX(D05T0017.Ana03ID) As Ana03ID, MAX(D05T0017.Ana04ID) As Ana04ID, MAX(D05T0017.Ana05ID) As Ana05ID,   
     MAX(D05T0017.Ana06ID) As Ana06ID, MAX(D05T0017.Ana07ID) As Ana07ID, MAX(D05T0017.Ana08ID) As Ana08ID, MAX(D05T0017.Ana09ID) As Ana09ID, MAX(D05T0017.Ana10ID) As Ana10ID,   
     MAX(D05T0017.NRef1) As NRef1, MAX(D05T0017.NRef2) As NRef2, MAX(D05T0017.NRef3) As NRef3, MAX(D05T0017.NRef4) As NRef4, MAX(D05T0017.NRef5) As NRef5,  
     MAX(D05T0017.DRef1'+@U+') AS DRef1,   
     MAX(D05T0017.DRef2'+@U+') AS DRef2,   
     MAX(D05T0017.DRef3'+@U+') AS DRef3,   
     MAX(D05T0017.DRef4'+@U+') AS DRef4,   
     MAX(D05T0017.DRef5'+@U+') AS DRef5,   
     MAX(D05T0017.NDef1) As NDef1, MAX(D05T0017.NDef2) As NDef2, MAX(D05T0017.NDef3) As NDef3,   
     MAX(D05T0017.NDef4) As NDef4, MAX(D05T0017.NDef5) As NDef5,   
     MAX(StatusDetail) As StatusDetail, MAX(DetailCustomerID) As DetailCustomerID,   
     MAX(DetailCustomerName'+@U+') AS DetailCustomerName,  
     MAX(ParcelInventoryID) As ParcelInventoryID,   
     MAX(ParcelInventoryName'+@U+') AS ParcelInventoryName,   
     SUM(ParcelQuantity) As ParcelQuantity, SUM(ParcelPerQuantity) As ParcelPerQuantity,   
     MAX(WeightNet) As WeightNet, MAX(WeightNetTotal) As WeightNetTotal, MAX(WeightGrossTotal) As WeightGrossTotal,  
     MAX(WeightGross) As WeightGross, MAX(Measurement) As Measurement,   
     MAX(MeasurementTotal) As MeasurementTotal, MAX(D05T0017.IsService) As IsService,   
     MAX(D05T0017.WareHouseID) As WareHouseID, CONVERT(BIT,MAX(IsPromotion)) AS IsPromotion,   
     MAX(DateNumber01) As DateNumber01, MAX(Date01) As Date01, MAx(Ratio01) As Ratio01,   
     MAX(DateNumber02) As DateNumber02, MAX(Date02) As Date02, MAX(Ratio02) As Ratio02,   
     MAX(DateNumber03) As DateNumber03, MAX(Date03) As Date03, MAX(Ratio03) As Ratio03,  
     MAX(KitID) As KitID, MAX(KitUnitID) As KitUnitID,   
     MAX(KitQuantity) As KitQuantity, MAX(KitCQuantity) As KitCQuantity, MAX(KitNo) As KitNo,    
     MAX(D05T0017.Spec01ID) As Spec01ID, MAX(D05T0017.Spec02ID) As Spec02ID,   
     MAX(D05T0017.Spec03ID) As Spec03ID, MAX(D05T0017.Spec04ID) As Spec04ID,   
     MAX(D05T0017.Spec05ID) As Spec05ID, MAX(D05T0017.Spec06ID) As Spec06ID,   
     MAX(D05T0017.Spec07ID) As Spec07ID, MAX(D05T0017.Spec08ID) As Spec08ID,   
     MAX(D05T0017.Spec09ID) As Spec09ID, MAX(D05T0017.Spec10ID) As Spec10ID,  
     MAX(IssueWareHouseID) As IssueWareHouseID, MAX(D05T0017.IsKit) As IsKit,   
     MAX(DateRef1) As DateRef1, MAX(DateRef2) As DateRef2, MAX(DateRef3) As DateRef3, MAX(DateRef4) As DateRef4, MAX(DateRef5) As DateRef5,   
     MAX(PromotionOnD05) As PromotionOnD05,   
     MAX(D05T0017.KitUnitPrice) As OUnitPrice,   
     MAX(D05T0017.TransactionTypeID) As TransactionTypeID, MAX(ODetailDueDate) As ODetailDueDate, MAX(IsFromD16) As IsFromD16,   
     MAX(DiscountedUnitPrice) As DiscountedUnitPrice,  
     CASE WHEN MAX(ISNULL(D11.ProductID,'''')) <> ''''   
     THEN MAX(D11.ProductID)  
     ELSE MAX(D05T0017.LinkMasterID )  
     END AS LinkMasterID, MAX(LinkDetailID) As LinkDetailID,   
     SUM(DeliveryQTY) As DeliveryQTY,  
     SUM(ReturnQTY) As ReturnQTY, MAX(TempUnitPrice) As TempUnitPrice,  
     MAX(IsComponentOfKit) As IsComponentOfKit,   
     MAX(D05T0017.KitQuantity) As OrderQTY, MAX(D05T0017.KitCQuantity) As OrderCQTY,   
     MAX(D05T0017.AdjustmentListID) As AdjustmentListID,  
     SUM(TotalAdjustedAmount) As TotalAdjustedAmount,  
     SUM(TotalAdjustedCAmount) As TotalAdjustedCAmount, MAX(AdjustedUnitPrice) As AdjustedUnitPrice,   
     SUM(InvoiceQTY) As InvoiceQTY,  
     MAX(ISNULL(D07T0004.ConversionFactor, 1)) as ConversionFactor,   
     MAX(D07T0002.InventoryName'+@U+') AS InventoryName,  
     MAX(ISNULL(D07T0005.UnitName'+@U+' , '''')) as UnitName,  
     MAX(D05T0017.VATGroupID) AS VATGroupID1,  
     MAX(D05T0017.RateReduce * 100) AS RateReduce1,  
     MAX(ISNULL(A.Description'+@U+' ,'''')) as Spec01Name,  
     MAX(ISNULL(B.Description'+@U+' ,'''')) as Spec02Name,  
     MAX(ISNULL(C.Description'+@U+' ,'''')) as Spec03Name,  
     MAX(ISNULL(D.Description'+@U+' ,'''')) as Spec04Name,  
     MAX(ISNULL(E.Description'+@U+' ,'''')) as Spec05Name,  
     MAX(ISNULL(F.Description'+@U+' ,'''')) as Spec06Name,  
     MAX(ISNULL(G.Description'+@U+' ,'''')) as Spec07Name,  
     MAX(ISNULL(H.Description'+@U+' ,'''')) as Spec08Name,  
     MAX(ISNULL(I.Description'+@U+' ,'''')) as Spec09Name,  
     MAX(ISNULL(J.Description'+@U+' ,'''')) as Spec10Name,  
       
  '  
  SET @SQL12 = '  
     ISNULL( CASE WHEN MAX(D91T1003.InvNameObject) = '''' THEN MAX(D07T0002.InventoryName'+@U+') ELSE MAX(D91T1003.InvNameObject) END   
       ,'''') AS OInventoryName,   
     ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
     MAX(ISNULL(D07T0004.Formula,'''')) AS ConversionFormula ,  
     CONVERT(MONEY,0) AS MinUnitPrice,  
     MAX(D07T1011.RDVoucherID) As RDVoucherID,   
     MAX(D07T1011.TransactionID) As TransactionID,   
     MAX(D07T1011.R_D) As R_D,   
     MAX(D07T1011.SplitNo) As SplitNo,  
     MAX(D07T0002.UnitID) as BaseUnitID,  
     MAX(Case when D07T2230.TransID is null then 0 else 1 end) as Flag,  
     MAX(isnull(D07T2230.FormulaID, '''')) as FormulaID,  
     MAX(isnull(D07T2230.Formula, '''')) as Formula,  
     MAX(isnull(D07T2230.Num01, 0)) as Num01, MAX(isnull(D07T2230.Num02, 0)) as Num02,  
     MAX(isnull(D07T2230.Num03, 0)) as Num03, MAX(isnull(D07T2230.Num04, 0)) as Num04,  
     MAX(isnull(D07T2230.Num05, 0)) as Num05, MAX(isnull(D07T2230.Num06, 0)) as Num06,  
     MAX(isnull(D07T2230.Num07, 0)) as Num07, MAX(isnull(D07T2230.Num08, 0)) as Num08,  
     MAX(isnull(D07T2230.Num09, 0)) as Num09, MAX(isnull(D07T2230.Num10, 0)) as Num10,  
     0 IsAdjust, --Dung cho .NET  
     0 IsAdjusted, --Dung cho VB  
     Convert(Money,0) As DeliveredQuantity,  
     MAX(Isnull(D05T0017.UnitPrice,0)) As RefUnitPrice ,   
     Case when MAX(D05T0017.Iskit) =2 then 1 else 0 end as IsKit1,   
     MAX(D05T2030.OModuleID) AS LinkModuleID,  
      Convert(tinyint, 0) AS IsUnitPrice ,  
     MAX(D05T2030.OVoucherID) AS LinkQuotationID,  
     MAX(D05T2030.OTransID) AS LinkQuotationItemID ,  
     Convert(tinyint, 0) AS AdjustTypeID ,  
     Convert(Varchar(20), '''') As AdjustTypeDesc,  
     SUM(D05T0017.Quantity) AS AdjOQuantity,   
     SUM(D05T0017.CQuantity) As AdjCQuantity,  
     Convert(Decimal(28,8), 0)  AS Profit,   
     Convert(Decimal(28,8), 0) As MinProfit,  
     MAX(D05T0017.PriceListID) As DPriceListID,   
     MAX(D05T0017.CurrencyOnPriceList) As CurrencyOnPriceList, MAX(D05T0017.DExchangeRate) As DExchangeRate,  
     MAX(D07T0002.IsBOM) As IsBOM, MAX(D05T0017.PriceListLineID) As PriceListLineID,   
     MAX(D05T0017.PriceBreakID) As PriceBreakID, MAX(D05T0017.PriceListID) As PriceListID,  
      
     CASE MAX(D05T0000.InventoryRefInfo)   
      WHEN ''ShortName'' THEN MAX(D07T0002.ShortName'+@U+')  
      WHEN ''I01ID''  THEN MAX(D07T0002.ICode01ID)  
      WHEN ''I02ID''  THEN MAX(D07T0002.ICode02ID)  
      WHEN ''I03ID''  THEN MAX(D07T0002.ICode03ID)  
      WHEN ''I04ID''  THEN MAX(D07T0002.ICode04ID)  
      WHEN ''I05ID''  THEN MAX(D07T0002.ICode05ID)  
      WHEN ''I06ID''  THEN MAX(D07T0002.ICode06ID)  
      WHEN ''I07ID''  THEN MAX(D07T0002.ICode07ID)  
      WHEN ''I08ID''  THEN MAX(D07T0002.ICode08ID)  
      WHEN ''I09ID''  THEN MAX(D07T0002.ICode09ID)  
      WHEN ''I10ID''  THEN MAX(D07T0002.ICode10ID)  
      WHEN ''Volume''  THEN  CASE WHEN ROUND(MAX(D07T0002.Volume),0) = ROUND(MAX(D07T0002.Volume),8)  
              THEN CONVERT(varchar(50),CONVERT(DECIMAL(28,0),MAX(D07T0002.Volume)))  
              ELSE REPLACE(RTRIM(REPLACE(CONVERT(varchar(50),MAX(D07T0002.Volume)),''0'','' '')),'' '',''0'')  
           END  
      WHEN ''Weight''  THEN CONVERT(varchar(50),MAX(D07T0002.Weight),2)        
      WHEN ''StrRefInfo'' THEN CASE WHEN ROUND(MAX(D07T0002.DLength),0) = ROUND(MAX(D07T0002.DLength),8) THEN REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DLength)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DLength)),''
0'','' '')),'' '',''0'') END + ''x'' +  
             CASE WHEN ROUND(MAX(D07T0002.DWidth),0) = ROUND(MAX(D07T0002.DWidth),8) THEN REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DWidth)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DWidth)),''0'','' '')),'' '',''0'
') END + ''x'' +   
             CASE WHEN ROUND(MAX(D07T0002.DHeight),0) = ROUND(MAX(D07T0002.DHeight),8) THEN REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DHeight)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15), MAX(D07T0002.DHeight)),''0'','' '')),'' '',
''0'') END + '' ''+  
             CONVERT(VARCHAR(250),ISNULL(MAX(D07T1016.ComponentID),''''))+ '' '' +  
             CASE WHEN ROUND(MAX(D07T0002.Index01),0) = ROUND(MAX(D07T0002.Index01),8) THEN REPLACE(CONVERT(VARCHAR(50),MAX(D07T0002.Index01)),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(50),MAX(D07T0002.Index01)),''0'','' '')),'' '',''
0'') END + '' '' +  
             MAX(D07T0002.Str01'+@U+')  + '' '' + MAX(D07T0002.Str02'+@U+') + '' '' + MAX(D07T0002.Str03'+@U+') + '' '' + MAX(D07T0002.Str04'+@U+') + '' '' + MAX(D07T0002.Str05'+@U+')  
      WHEN ''RefCode'' THEN MAX(D07T0002.RefCode)  
     ELSE '''' END AS InventoryRefInfoD05,  
     ISNULL(MAX(D05T1017.SuplierTypeID),'''') AS SuplierTypeID, MAX(ISNULL(D05T1017.SuplierID,'''')) AS SuplierID,   
     CONVERT(NVARCHAR(250),'''') AS SuplierName,  
     MAX(ISNULL(D05T1017.CurrencyID,'''')) AS POCurrencyID,  
     MAX(ISNULL(D05T1017.ExchangeRate,0)) AS POExchangeRate, MAX(ISNULL(D05T1017.UnitPrice,0)) AS POUnitPrice,  
     MAX(D05T0017.SplitNo) As D05SplitNo,  
     MAX(D05T0017.FactoryOutDate) As FactoryOutDate,  
     MAX(D05T0017.AdjustmentLineID) As AdjustmentLineID,'  
     +CASE WHEN @SimType = 9 THEN '  
     CASE WHEN MAX(D05T0017.ShipQTY) > 0 or Max(T08.SOItemID) <> '''' THEN 1 ELSE 0 END'  
     ELSE '0' END + ' As IsUsed ,  
     CASE WHEN MAX(D05T0017.InvoiceQTY) > 0 Then 1 Else 0 End As IsInvoice, --Co hoa don thi khong duoc phep sua don gia  
     D05T0017.BidQty, D05T0017.BidAcceptQty,  
     D05T0017.ACol01Rate AS ACol01Rate,  
     D05T0017.ACol02Rate AS ACol02Rate,  
     D05T0017.ACol03Rate AS ACol03Rate,  
     D05T0017.ACol04Rate AS ACol04Rate,  
     D05T0017.ACol05Rate AS ACol05Rate,  
     CONVERT(VARCHAR(500),'''') AS QuotaLineID,  
     CONVERT(VARCHAR(500),'''') AS QuotaID,  
     0 As UnitPriceOnD14,   
     0 As PriceDiffRate,  
     MAX(ISNULL(D05T1017.SuplierTypeID,'''')) AS SupplierTypeID,  
     MAX(ISNULL(D05T1017.SuplierID,'''')) AS SuplierID,   
     CONVERT(NVARCHAR(250),'''') AS SupplierName,  
     MAX(D05T0016.TranTypeID) AS TranTypeID, MAX(D05T0016.ExchangeRate) AS ExchangeRate, Convert(decimal(28,8), 0) As SOQtyPerInvQtyRate, ---ty le SL don hang/ SL ton kho  
     MAX(D05T0017.TotalAdjRate) * 100 AS TotalAdjRate,  
     MAX(D05T0017.QuotaAdjRate) * 100 AS QuotaAdjRate, 0 AS ReCalculate,  
     MAX(D05T0017.ProjectID) AS ProjectID, MAX(D05T0017.ProjectName'+@U+') AS ProjectName, MAX(D05T0017.TaskID) AS TaskID,   
     MAX(D05T0017.TaskName'+@U+') AS TaskName,  
     CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
     CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
     MAX(ISNULL(T22.WarrantyTime, 0 )) AS WarrantyTime, CONVERT(DECIMAL(28,8),0) AS QuantityStock,  
     MAX(T25.PackingID) AS PackingID, MAX(T25.PackQTY) AS PackingFactor, MAX(T25.Quantity) AS PackingQuantity, MAX(T25.ItemID) AS PackingItemID  
     ,MAX(D05T0017.Specifications) AS Specifications  
     , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
  '  
    
  SET @SQL22 = '  
  FROM  D05T0017 WITH(NOLOCK)  
  INNER JOIN D05T0016 WITH(NOLOCK) ON D05T0017.QuotationID = D05T0016.QuotationID  
  LEFT JOIN D05T2425 T25 WITH(NOLOCK) ON D05T0017.QuotationID = T25.BatchID AND D05T0017.QuotationItemID = T25.TransID AND T25.OTransType = ''SO''  
  LEFT JOIN D91V0010 V10 ON D05T0016.CurrencyID = V10.CurrencyID  
  LEFT JOIN D07T0004 WITH(NOLOCK) ON D07T0004.InventoryID = D05T0017.KitID AND D07T0004.UnitID = D05T0017.KitUnitID    
  LEFT JOIN D07T0002 WITH(NOLOCK) ON D07T0002.InventoryID = D05T0017.KitID   
  LEFT JOIN D07T0005 WITH(NOLOCK) ON D07T0005.UnitID = D05T0017.KitUnitID  
  LEFT JOIN D07T1410 A WITH(NOLOCK) ON A.SpecID = D05T0017.Spec01ID and A.SpecTypeID = ''01'' AND A.Disabled=0  
  LEFT JOIN D07T1410 B WITH(NOLOCK) ON B.SpecID = D05T0017.Spec02ID and B.SpecTypeID = ''02'' AND B.Disabled=0  
  LEFT JOIN D07T1410 C WITH(NOLOCK) ON C.SpecID = D05T0017.Spec03ID and C.SpecTypeID = ''03'' AND C.Disabled=0  
  LEFT JOIN D07T1410 D WITH(NOLOCK) ON D.SpecID = D05T0017.Spec04ID and D.SpecTypeID = ''04'' AND D.Disabled=0  
  LEFT JOIN D07T1410 E WITH(NOLOCK) ON E.SpecID = D05T0017.Spec05ID and E.SpecTypeID = ''05'' AND E.Disabled=0  
  LEFT JOIN D07T1410 F WITH(NOLOCK) ON F.SpecID = D05T0017.Spec06ID and F.SpecTypeID = ''06'' AND F.Disabled=0  
  LEFT JOIN D07T1410 G WITH(NOLOCK) ON G.SpecID = D05T0017.Spec07ID and G.SpecTypeID = ''07'' AND G.Disabled=0  
  LEFT JOIN D07T1410 H WITH(NOLOCK) ON H.SpecID = D05T0017.Spec08ID and H.SpecTypeID = ''08'' AND H.Disabled=0  
  LEFT JOIN D07T1410 I WITH(NOLOCK) ON I.SpecID = D05T0017.Spec09ID and I.SpecTypeID = ''09'' AND I.Disabled=0  
  LEFT JOIN D07T1410 J WITH(NOLOCK) ON J.SpecID = D05T0017.Spec10ID and J.SpecTypeID = ''10'' AND J.Disabled=0  
  LEFT JOIN D07T1011 WITH(NOLOCK) ON D05T0017.QuotationID = D07T1011.RefVoucherID  
     AND D05T0017.QuotationItemID = D07T1011.RefTransID   
     AND D07T1011.RefTransType=''SO''   
  LEFT JOIN D07T2230 WITH (NOLOCK) On D07T2230.TransID = D05T0017.QuotationItemID   
     AND D07T2230.VoucherID = D05T0017.QuotationID  
  LEFT JOIN D05T2030 WITH(NOLOCK) ON D05T2030.VoucherID = D05T0017.QuotationID   
     AND D05T2030.TransID = D05T0017.QuotationItemID  
  LEFT JOIN D11T2010 D11 WITH(NOLOCK)  
     ON D05T0017.QuotationID = D11.QuotationID  
     AND D05T0017.QuotationItemID = D11.QuotationItemID  
     AND D05T0017.KitID = D11.InventoryID  
  LEFT JOIN #D05P1612_D91T1003  D91T1003 ON D07T0002.InventoryID = D91T1003.InventoryID   
  FULL JOIN (SELECT InventoryRefInfo FROM D05T0000 WITH(NOLOCK)) D05T0000 ON 1=1  
  LEFT JOIN ( SELECT  T2.InventoryID,   
         ISNULL(SUBSTRING(  
           ( SELECT ComponentID + ''+''  
            FROM D07T1016 A WITH(NOLOCK)  
            WHERE A.ExpenseTypeID = ''ExpenseType01''  
              AND A.InventoryID = T2.InventoryID  
              AND A.ComponentID <> ''''  
            ORDER BY A.RowID  
           FOR XML PATH ('''')   
           ),1,  
           LEN((SELECT ComponentID + ''+''  
            FROM D07T1016 A WITH(NOLOCK)  
            WHERE A.ExpenseTypeID = ''ExpenseType01''  
             AND A.InventoryID = T2.InventoryID  
              AND A.ComponentID <> ''''  
            ORDER BY A.RowID  
           FOR XML PATH (''''))) - 1  
           ),'''') AS ComponentID  
  
     FROM  D07T1016 T2 WITH(NOLOCK)  
     WHERE ExpenseTypeID = ''ExpenseType01''  
     GROUP BY T2.InventoryID  
     ) D07T1016 ON D07T0002.InventoryID = D07T1016.InventoryID  
      
  LEFT JOIN D05T1017 WITH(NOLOCK)  
   ON  D05T0017.QuotationID = D05T1017.SOID  
     AND D05T0017.QuotationItemID = D05T1017.SOItemID'  
  +CASE WHEN @SimType = 9 THEN '  
  LEFT JOIN D08T1001 T08 ON D05T0017.QuotationItemID = T08.SOItemID  
  '  
  ELSE '' END +'  
  LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON D05T0017.QuotationID= T22.QuotationID AND D05T0017.QuotationItemID = T22.QuotationItemID AND T22.WarrantyTime > 0'  
  
  SET @SQL32 = '  
  WHERE  D05T0017.QuotationID = '''+@QuotationID +'''  
     AND D05T0017.DivisionID = '''+@DivisionID+'''  
     AND (D05T0017.SplitNo <> '''' OR D05T0017.SplitNo <> ''0'')  
     AND D05T0017.KitID <> ''''  
  GROUP BY D05T0017.DivisionID, D05T0017.DivisionID, D05T0017.QuotationID, D05T0017.KitNo, D05T0017.KitID, D07T0004.UseFormula, D05T0017.SplitNo, D07T0002.PricebyCQuantity,  
     V10.OriginalDecimal, V10.Operator, D05T0016.ExchangeRate, V10.ConvertedDecimal,D05T0017.BidQty, D05T0017.BidAcceptQty,  
     ACol01Rate, ACol02Rate, ACol03Rate, ACol04Rate, ACol05Rate, D05T0016.TranTypeID, D05T0016.ExchangeRate, D05T0017.TotalAdjRate, D05T0017.QuotaAdjRate  
    
  UPDATE  T1  
  SET   DRef5 = REPLACE(REPLACE(DRef5,'' '', ''''), '','','''')  
  FROM  #Edit T1  
  
  SELECT  QuotationID, QuotationItemID, InventoryID, UnitID,   
     CONVERT(xml,''<root> <s>'' + REPLACE(CASE WHEN DRef5 <> '''' THEN DRef5 ELSE ''0'' END,'';'',''</s><s>'') + ''</s> </root>'') AS SplitStr  
  INTO  #D05P1612_Split  
  FROM  #Edit   
    
    
  SELECT  QuotationID, QuotationItemID, T1.InventoryID, T1.UnitID,   
     ISNULL(T.N.value(''.'',''decimal(28,8)''), 0) AS KitQTY,   
     ISNULL(T.N.value(''.'',''decimal(28,8)''), 0) * T2.ConversionFactor AS KitCQTY  
  INTO  #D05P1612_Kit  
  FROM  #D05P1612_Split T1  
  LEFT JOIN D07T0004 T2   
    ON T1.InventoryID = T2.InventoryID  
     AND T1.UnitID = T2.UnitID  
  CROSS APPLY SplitStr.nodes(''/root/s'') T(N)  
    
       
  UPDATE  T1  
  SET   T1.Quantity = CASE WHEN T2.KitQTY = 0 THEN T1.Quantity ELSE T2.KitQTY END,  
     T1.CQuantity = CASE WHEN T2.KitCQTY = 0 THEN T1.CQuantity ELSE T2.KitCQTY END  
  FROM  #Edit T1  
  LEFT JOIN (SELECT  QuotationID, QuotationItemID, SUM(KitQTY) As KitQTY, SUM(KitCQTY) AS KitCQTY  
     FROM  #D05P1612_Kit  
     GROUP BY QuotationID, QuotationItemID  
     ) T2   
   ON  T1.QuotationID = T2.QuotationID  
   AND  T1.QuotationItemID = T2.QuotationItemID  
    
  '  
 END  
  
 IF @FormID = 'D84F2010'  
 BEGIN  
  SET @SQL32 = @SQL32 +'  
   UPDATE  T1  
   SET   Quantity = CASE WHEN  ISNULL(T22.IsDisplayBidInfo,0) = 1 THEN T1.BidAcceptQty ELSE T1.Quantity END,   
      CQuantity = CASE WHEN  ISNULL(T22.IsDisplayBidInfo,0) = 1 THEN T1.BidAcceptQty*T1.Conversionfactor ELSE T1.CQuantity END,  
      OAmountTmp = CASE WHEN  ISNULL(T22.IsDisplayBidInfo,0) = 1 THEN T1.BidAcceptQty*UnitPrice ELSE T1.OAmountTmp END,   
      CAmountTmp = CASE WHEN  ISNULL(T22.IsDisplayBidInfo,0) = 1 THEN T1.BidAcceptQty*UnitPrice*T1.ExchangeRate ELSE T1.CAmountTmp END   
   FROM  #Edit T1  
   LEFT JOIN D05T1022 T22 WITH(NOLOCK)  
     ON T1.TranTypeID = T22.TranTypeID  
       
   UPDATE  T1  
   SET   T1.SOQtyPerInvQtyRate = round(100 * Isnull(CASE WHEN T2.SignQuantity <= 0 THEN 0 ELSE T1.Quantity / T2.SignQuantity END, 0), 4)  
   FROM  #Edit T1  
   INNER JOIN (Select T1.InventoryID, T2.OUnitID As UnitID, Sum(T2.SignQuantity) As SignQuantity,  
        T1.Spec01ID,  T1.Spec02ID, T1.Spec03ID, T1.Spec04ID, T1.Spec05ID,  
        T1.Spec06ID,  T1.Spec07ID, T1.Spec08ID, T1.Spec09ID, T1.Spec10ID, T1.IssueWarehouseID  
      From #Edit T1  
      Inner join D07V9999 T2 WITH(NOLOCK)  
        ON T1.InventoryID = T2.InventoryID   
        AND T1.UnitID = T2.OUnitID  
        AND T1.Spec01ID = T2.Spec01ID  
        AND T1.Spec02ID = T2.Spec02ID  
        AND T1.Spec03ID = T2.Spec03ID  
        AND T1.Spec04ID = T2.Spec04ID  
        AND T1.Spec05ID = T2.Spec05ID  
        AND T1.Spec06ID = T2.Spec06ID  
        AND T1.Spec07ID = T2.Spec07ID  
        AND T1.Spec08ID = T2.Spec08ID  
        AND T1.Spec09ID = T2.Spec09ID  
        AND T1.Spec10ID = T2.Spec10ID  
        AND T1.IssueWarehouseID = T2.WareHouseID  
      Group By T1.InventoryID, T2.OUnitID,  
         T1.Spec01ID,  T1.Spec02ID, T1.Spec03ID, T1.Spec04ID, T1.Spec05ID,  
         T1.Spec06ID,  T1.Spec07ID, T1.Spec08ID, T1.Spec09ID, T1.Spec10ID, T1.IssueWarehouseID  
     ) T2  
     On T1.InventoryID = T2.InventoryID AND T1.UnitID = T2.UnitID  
       AND T1.Spec01ID = T2.Spec01ID  
        AND T1.Spec02ID = T2.Spec02ID  
        AND T1.Spec03ID = T2.Spec03ID  
        AND T1.Spec04ID = T2.Spec04ID  
        AND T1.Spec05ID = T2.Spec05ID  
        AND T1.Spec06ID = T2.Spec06ID  
        AND T1.Spec07ID = T2.Spec07ID  
        AND T1.Spec08ID = T2.Spec08ID  
        AND T1.Spec09ID = T2.Spec09ID  
        AND T1.Spec10ID = T2.Spec10ID  
        AND T1.IssueWarehouseID = T2.IssueWarehouseID  
    '  
  
 END  
  
 SET @SQL32 = @SQL32 + '            
 UPDATE  T1  
 SET   SuplierName = T2.ObjectName'+@U+'  
 FROM  #Edit T1  
 INNER JOIN [Object] T2 WITH(NOLOCK)  
  ON  T1.SuplierTypeID = T2.ObjectTypeID  
    AND T1.SuplierID = T2.ObjectID  
   
 --- Update OBatchID, OTranID, OTransTypeID, STransTypeID  
 UPDATE  T1   
 SET   T1.OBatchID = T2.OBatchID,   
    T1.OTransID = T2.OTransID,   
    T1.OTransTypeID = T2.OTransTypeID,   
    T1.STransTypeID = T2.STransTypeID,  
    T1.SBatchID = T2.SBatchID,   
    T1.STransID = T2.STransID,  
    T1.IsLockInfEstimate= '+CONVERT(VARCHAR(5),ISNULL(@IsLockInfEstimate,0))+'  
 FROM  #Edit T1  
 INNER JOIN D05T2222 T2 WITH(NOLOCK)  
  ON  T1.QuotationID = T2.QuotationID  
    AND T1.QuotationItemID = T2.QuotationItemID  
 WHERE  T2.ProfessionKind = ''Q''       
   
 Update  #Edit  SET IsLockCommCosts = 1 where exists (select top 1 1 from  D05T2039 T2 where #Edit.QuotationID = T2.QuotationID AND T2.CommFundType =''A'')   
   
 UPDATE  T1  
 SET   T1.ContractNo = D49T2000.ContractNo,  
    T1.DocNo = D49T2000.DocNo  
 FROM  #Edit T1  
 INNER JOIN D49T2000 WITH(NOLOCK)  
   ON T1.LinkMasterID =  D49T2000.ContractID  
  
   
 UPDATE  T1  
 SET   T1.OAmountTmpTax =   ROUND(T1.UnitPrice*T1.Quantity,T10.OriginalDecimal),     
    T1.CAmountTmpTax = ROUND(T1.UnitPrice*T1.Quantity * T1.ExchangeRate,  '+LTRIM(RTRIM(STR(@D90_ConvertedDecimals)))+')  
 FROM  #Edit T1 INNER JOIN  D91V0010 T10 ON   
    T10.CurrencyID = T1.CurrencyID  
   
 --- Bo sung lay them truong Ori  
 UPDATE  T1  
 SET   T1.IsOldData     = ISNULL(T2.IsOldData,0),  
    T1.[OriACol01]     = ISNULL(T2.OriACol01,0),  
    T1.[OriACol02]     = ISNULL(T2.OriACol02,0),  
    T1.[OriACol03]     = ISNULL(T2.OriACol03,0),  
    T1.[OriACol04]     = ISNULL(T2.OriACol04,0),  
    T1.[OriACol05]     = ISNULL(T2.OriACol05,0),  
    T1.[OriACol01Rate]    = ISNULL(T2.OriACol01Rate,0),  
    T1.[OriACol02Rate]    = ISNULL(T2.OriACol02Rate,0),  
    T1.[OriACol03Rate]    = ISNULL(T2.OriACol03Rate,0),  
    T1.[OriACol04Rate]    = ISNULL(T2.OriACol04Rate,0),  
    T1.[OriACol05Rate]    = ISNULL(T2.OriACol05Rate,0),  
    T1.OriAdjustmentListID   = ISNULL(T2.OriAdjustmentListID,''''),  
    T1.OriAdjustmentLineID   = ISNULL(T2.OriAdjustmentLineID,'''')  
 FROM  #Edit T1  
 INNER JOIN  D05T0117 T2 WITH(NOLOCK)  
 ON   T1.QuotationID  = T2.QuotationID  
 AND   T1.QuotationItemID = T2.QuotationItemID  
 WHERE  T2.TableName  = ''D05T0016''  
 AND   T2.KindVoucherID = ''SO''  
 AND   T2.QuotationItemID <> ''''  
 AND   T2.QuotationID =  '''+@QuotationID+'''  
   
   
 -- UPDATE SO LUONG, THANH TIEN CHO DONG DIEU CHINH THEM MOI MAT HANG, DIEU CHINH SO LUONG, DIEU CHINH GIA TRI  
 UPDATE  T1  
 SET   T1.Quantity = T1.Quantity + T2.Quantity,     
    T1.CQuantity = T1.CQuantity + T2.CQuantity,  
    --T1.OAmountTmp = (T1.Quantity + T2.Quantity) * T1.UnitPrice,  
    --T1.CAmountTmp = (T1.Quantity + T2.Quantity) * T1.UnitPrice * T1.ExchangeRate,  
    --T1.Amount = (T1.Quantity + T2.Quantity) * T1.AdjustedUnitPrice ,  
    --T1.CAmount = (T1.Quantity + T2.Quantity) * T1.AdjustedUnitPrice * T1.ExchangeRate,  
    T1.Amount = T1.Amount + ISNULL(T2.OAmount,0),  
    T1.CAmount = T1.CAmount + ISNULL(T2.CAmount,0),  
    T1.TotalAdjustedAmount = T1.Amount + ISNULL(T2.OAmount,0),  
    T1.TotalAdjustedCAmount = T1.CAmount + ISNULL(T2.CAmount,0),  
    --T1.OAmountTmpTax =  T1.UnitPrice*(T1.Quantity + T2.Quantity),     
    --T1.CAmountTmpTax =  T1.UnitPrice*(T1.Quantity + T2.Quantity) * T1.ExchangeRate,      
    T1.OVAT = T1.OVAT+ISNULL(T2.OVAT,0),  
    T1.CVAT = T1.CVAT+ISNULL(T2.CVAT,0)  
 FROM  #Edit T1   
 INNER JOIN (SELECT  SalesOrderID, SalesOrderItemID,   
       SUM((2*A.AdjustType-1) * B.OQuantity) as Quantity,  
       SUM((2*A.AdjustType-1) * B.CQuantity) as CQuantity,  
       SUM((2*A.AdjustType-1) * T17.Amount) AS OAmount,  
       SUM((2*A.AdjustType-1) * T17.CAmount) AS CAmount,  
       SUM((2*A.AdjustType-1) * T17.OVAT) AS OVAT,  
       SUM((2*A.AdjustType-1) * T17.CVAT) AS CVAT,  
       CONVERT(VARCHAR(10),CONVERT(decimal(15, 2), MAX(T17.VATRate) * 100)) + ''%''  AS VATRate,  
       SUM((2*A.AdjustType-1) * T17.OriginalReduce) AS ODiscount,  
       SUM((2*A.AdjustType-1) * T17.CReduce) AS CDiscount  
    FROM  #Edit T1   
    INNER JOIN D05T2025 A WITH (NOLOCK)  
      ON T1.QuotationID = A.SalesOrderID  
    INNER JOIN D05T2125 B WITH (NOLOCK)   
      ON  B.AdjSalesOrderID = A.AdjSalesOrderID  
       AND T1.QuotationItemID = B.SalesOrderItemID  
    INNER JOIN D05T0017 AS T17 WITH (NOLOCK)   
      ON T17.QuotationItemID = B.AdjSalesOrderItemID  
    INNER JOIN D05T0016 T16 WITH (NOLOCK)   
      ON  T17.QuotationID   = T16.QuotationID      
    WHERE  T1.QuotationID = ''' + @QuotationID + '''   
       AND T16.AdjustAmount = 0        
    GROUP BY SalesOrderID, SalesOrderItemID, T16.AdjustAmount) T2  
   ON T1.QuotationID = T2.SalesOrderID  
    AND T1.QuotationItemID = T2.SalesOrderItemID  
'  
SET @SQL32 = @SQL32 + '   
 UPDATE  T1  
 SET   T1.Quantity = T1.Quantity + T2.Quantity,T1.CQuantity = T1.CQuantity + T2.CQuantity,  
    T1.OAmountTmp = T1.OAmountTmp+ISNULL(T2.OAmountTmp,0),T1.CAmountTmp = T1.CAmountTmp+ISNULL(T2.CAmountTmp,0),  
    T1.Amount = T1.Amount+ISNULL(T2.Amount,0),T1.CAmount = T1.CAmount+ISNULL(T2.CAmount,0),  
    T1.TotalAdjustedAmount = T1.TotalAdjustedAmount+ISNULL(T2.TotalAdjustedAmount,0),T1.TotalAdjustedCAmount = T1.TotalAdjustedCAmount+ISNULL(T2.TotalAdjustedCAmount,0),  
    T1.OAmountTmpTax =  T1.OAmountTmpTax+ISNULL(T2.OAmountTmp,0),T1.CAmountTmpTax = T1.CAmountTmpTax+ISNULL(T2.OAmountTmp,0),     
    T1.OVAT = T1.OVAT+ISNULL(T2.OVAT,0),T1.CVAT = T1.CVAT+ISNULL(T2.CVAT,0),  
    T1.OriginalReduce = T1.OriginalReduce+ISNULL(T2.OriginalReduce,0),T1.CReduce = T1.CReduce+ISNULL(T2.CReduce,0),  
    T1.ACol01 = T1.ACol01+ISNULL(T2.ACol01,0), T1.C_ACol01 = T1.C_ACol01+ISNULL(T2.C_ACol01,0),  
    T1.ACol02 = T1.ACol02+ISNULL(T2.ACol02,0), T1.C_ACol02 = T1.C_ACol02+ISNULL(T2.C_ACol02,0),  
    T1.ACol03 = T1.ACol03+ISNULL(T2.ACol03,0), T1.C_ACol03 = T1.C_ACol03+ISNULL(T2.C_ACol03,0),  
    T1.ACol04 = T1.ACol04+ISNULL(T2.ACol04,0), T1.C_ACol04 = T1.C_ACol04+ISNULL(T2.C_ACol04,0),  
    T1.ACol05 = T1.ACol05+ISNULL(T2.ACol05,0), T1.C_ACol05 = T1.C_ACol05+ISNULL(T2.C_ACol05,0),  
    T1.AdjustAmount = 1  
 FROM  #Edit T1   
 INNER JOIN (SELECT  SalesOrderID, SalesOrderItemID,   
       SUM((2*AdjustType-1) * B.OQuantity) as Quantity,  
       SUM((2*AdjustType-1) * B.CQuantity) as CQuantity,  
       SUM((2*AdjustType-1) * T17.OAmountTmp) as OAmountTmp,  
       SUM((2*AdjustType-1) * T17.CAmountTmp) as CAmountTmp,  
       SUM((2*AdjustType-1) * T17.Amount) as Amount,  
       SUM((2*AdjustType-1) * T17.CAmount) as CAmount,  
       SUM((2*AdjustType-1) * T17.TotalAdjustedAmount) as TotalAdjustedAmount,  
       SUM((2*AdjustType-1) * T17.TotalAdjustedCAmount) as TotalAdjustedCAmount,  
       SUM((2*AdjustType-1) * T17.OriginalReduce) as OriginalReduce,  
       SUM((2*AdjustType-1) * T17.CReduce) as CReduce,         
       SUM((2*AdjustType-1) * T17.OVAT) as OVAT,  
       SUM((2*AdjustType-1) * T17.CVAT) as CVAT,  
       SUM((2*AdjustType-1) * T17.ACol01) [ACol01],  
       SUM((2*AdjustType-1) * T17.C_ACol01) [C_ACol01],  
       SUM((2*AdjustType-1) * T17.ACol02) [ACol02],  
       SUM((2*AdjustType-1) * T17.C_ACol02) [C_ACol02],  
       SUM((2*AdjustType-1) * T17.ACol03) [ACol03],  
       SUM((2*AdjustType-1) * T17.C_ACol03) [C_ACol03],  
       SUM((2*AdjustType-1) * T17.ACol04) [ACol04],  
       SUM((2*AdjustType-1) * T17.C_ACol04) [C_ACol04],  
       SUM((2*AdjustType-1) * T17.ACol05) [ACol05],  
       SUM((2*AdjustType-1) * T17.C_ACol05) [C_ACol05]  
    FROM  #Edit T1   
    INNER JOIN D05T2025 A WITH (NOLOCK)  
      ON T1.QuotationID = A.SalesOrderID  
    INNER JOIN D05T2125 B WITH (NOLOCK)   
      ON  B.AdjSalesOrderID = A.AdjSalesOrderID  
       AND T1.QuotationItemID = B.SalesOrderItemID  
    INNER JOIN D05T0016 T16 WITH(NOLOCK)  
      ON T16.QuotationID = A.AdjSalesOrderID  
    INNER JOIN D05T0017 T17 WITH(NOLOCK)  
      ON T17.QuotationID = B.AdjSalesOrderID  
       AND T17.QuotationItemID = B.AdjSalesOrderItemID  
    WHERE  T1.QuotationID = ''' + @QuotationID + '''   
       AND T16.AdjustAmount = 1         
    GROUP BY SalesOrderID, SalesOrderItemID) T2  
   ON T1.QuotationID = T2.SalesOrderID  
    AND T1.QuotationItemID = T2.SalesOrderItemID  
   
 UPDATE #Edit  
 SET  ACol01Rate = CASE WHEN ACol01<>0 AND OAmountTmp <>0 THEN ACol01/OAmountTmp ELSE 0 END,  
   ACol02Rate = CASE WHEN ACol02<>0 AND OAmountTmp <>0 THEN ACol02/OAmountTmp ELSE 0 END,  
   ACol03Rate = CASE WHEN ACol03<>0 AND OAmountTmp <>0 THEN ACol03/OAmountTmp ELSE 0 END,  
   ACol04Rate = CASE WHEN ACol04<>0 AND OAmountTmp <>0 THEN ACol04/OAmountTmp ELSE 0 END,  
   ACol05Rate = CASE WHEN ACol05<>0 AND OAmountTmp <>0 THEN ACol05/OAmountTmp ELSE 0 END,  
   RateReduce = CASE WHEN Amount<>0 AND OriginalReduce <>0 THEN OriginalReduce/Amount ELSE 0 END,  
   UnitPrice = CASE WHEN Quantity = 0 THEN 0 ELSE CASE WHEN '+STR(@PriceOnDefaultUnit_D05)+' = 1 THEN ROUND(OAmountTmp/CQuantity,'+LTRIM(RTRIM(STR(@D07_UnitCostDecimals)))+') ELSE ROUND(OAmountTmp/Quantity,'+LTRIM(RTRIM(STR(@D07_UnitCostDecimals)))+') EN
D END,  
   OUnitPrice = CASE WHEN Quantity = 0 THEN 0 ELSE CASE WHEN '+STR(@PriceOnDefaultUnit_D05)+' = 1 THEN ROUND(OAmountTmp/CQuantity,'+LTRIM(RTRIM(STR(@D07_UnitCostDecimals)))+') ELSE ROUND(OAmountTmp/Quantity,'+LTRIM(RTRIM(STR(@D07_UnitCostDecimals)))+') EN
D END  
 WHERE AdjustAmount = 1  
'  
SET @SQL111 = N'  
 IF EXISTS (SELECT TOP 1 1 FROM D05T0000 WITH(NOLOCK) WHERE InventoryRefInfo = ''WeightByQTY'')  
 BEGIN  
  UPDATE  T1  
  SET   T1.InventoryRefInfoD05 = FORMAT(T1.Weight * T1.CQuantity, ''N'+LTRIM(RTRIM(STR(@D07_QuantityDecimals)))+''')   
  FROM  #Edit T1  
 END  
 -- UPDATE KHOAN MUC CHO DONG DIEU CHINH THEM MOI MAT HANG, DIEU CHINH SO LUONG  
 SELECT  T17.Ana01ID, T17.Ana02ID, T17.Ana03ID, T17.Ana04ID, T17.Ana05ID, T17.Ana06ID, T17.Ana07ID, T17.Ana08ID, T17.Ana09ID, T17.Ana10ID, T17.LinkMasterID, T17.LinkDetailID, ROW_NUMBER() OVER (PARTITION BY T1.QuotationItemID ORDER BY T17.QuotationID) AS 
RowNumber   
 INTO  #TAM_ANA  
 FROM  #Edit T1   
 INNER JOIN D05T0017 T17 WITH(NOLOCK)  
   ON T1.QuotationID = T17.LinkMasterID   
    AND T1.QuotationItemID = T17.LinkDetailID  
 INNER JOIN D05T0016 T16 WITH(NOLOCK)  
   ON T17.QuotationID = T16.QuotationID  
 WHERE  T16.ProfessionKind IN (''AI'', ''AD'') --DC tang, --DC giam  
 ORDER BY T17.QuotationID  
  
 SELECT  *   
 INTO  #TAM_ANA1   
 FROM  #TAM_ANA   
 WHERE  RowNumber = (SELECT MAX(RowNumber) FROM #TAM_ANA)  
  
 UPDATE  T1  
 SET   T1.Ana01ID =  T17.Ana01ID,     
    T1.Ana02ID = T17.Ana02ID,     
    T1.Ana03ID = T17.Ana03ID,     
    T1.Ana04ID = T17.Ana04ID,     
    T1.Ana05ID = T17.Ana05ID,     
    T1.Ana06ID = T17.Ana06ID,     
    T1.Ana07ID = T17.Ana07ID,     
    T1.Ana08ID = T17.Ana08ID,     
    T1.Ana09ID = T17.Ana09ID,     
    T1.Ana10ID = T17.Ana10ID  
 FROM  #Edit T1   
 INNER JOIN #TAM_ANA1 T17   
   ON T1.QuotationID = T17.LinkMasterID   
    AND T1.QuotationItemID = T17.LinkDetailID   
  
 UPDATE  T1  
 SET   T1.ExpireDate = T2.ExpireDate  
 FROM  #Edit T1  
 LEFT JOIN D07T1210 T2  
   ON T1.LocationNo = T2.LocationNo  
   AND T1.InventoryID = T2.InventoryID  
  
 ---- Update Quy cach dong goi TH dieu chinh them moi mat hang  
 UPDATE  T1  
 SET   T1.PackingID = T3.PackingID,   
    T1.PackingFactor = T3.PackQTY,   
    T1.PackingQuantity = T3.Quantity,   
    T1.PackingItemID = T3.ItemID  
 FROM  #Edit T1  
 INNER JOIN  D05T0017 T2 WITH(NOLOCK)  
   ON T1.QuotationID = T2.LinkMasterID   
   AND T1.QuotationItemID = T2.LinkDetailID   
 INNER JOIN D05T2425 T3 WITH(NOLOCK)  
   ON T2.QuotationID = T3.BatchID  
   AND T2.QuotationItemID = T3.TransID  
   AND T3.OTransType = ''SO''  
 WHERE  ISNULL(T1.PackingItemID, '''') = ''''  
  
 --- Bo sung lay them truong statusvoucher  
 SELECT  DISTINCT *  
 FROM  #Edit  
 ORDER BY OrderNum  
 '  
  
 --bo sung luu thong tin bao bi khi ke thua tu bao gia D05F1601  
 IF @QuotationID <> ''  
 BEGIN  
  SET @SQL111 = @SQL111 + '  
  IF EXISTS (SELECT TOP 1 1 FROM D05T1022 T22 INNER JOIN D05T0016 T16 WITH(NOLOCK) ON T22.TranTypeID = T16.TranTypeID WHERE T16.QuotationID = '''+@QuotationID+''' AND T22.IsUsePackagingInfo = 1)  
  BEGIN  
    DELETE FROM D05T9009 WHERE UserID = '''+@UserID+''' AND HostID = '''+@HostID+''' AND FormID = ''D05F1601_Packaging'' AND Key01ID = ''InheritQuotation''  
  
    INSERT INTO D05T9009 (UserID, HostID, FormID, Key01ID, Key02ID, Key03ID, Key04ID, Num01, Key05ID)  
    SELECT  '''+@UserID+''', HOST_NAME(), ''D05F1601_Packaging'', ''InheritQuotation'', T17.QuotationID, T17.QuotationItemID, T17.InventoryID, T17.Quantity, T17.UnitID  
    FROM  D05T0017 T17 WITH (NOLOCK)  
    WHERE  QuotationID = '''+@QuotationID+'''  
  END  
  '  
 END  
  
 IF @SimType = 9  
 BEGIN  
  --PRINT @SQL01  
  --PRINT @SQL11  
  --PRINT @SQL2  
  --PRINT @SQL31  
  --PRINT @SQL31_1  
  --PRINT @SQL0  
  --PRINT @SQL1  
  --PRINT @SQL2  
  --PRINT @SQL3  
  --PRINT @SQL02  
  --PRINT @SQL12  
  --PRINT @SQL22  
  --PRINT @SQL32  
  --PRINT @SQL111  
    
  EXEC (@SQL01 + @SQL11 + @SQL2 + @SQL31 + @SQL31_1 + @SQL0 + @SQL1 + @SQL2 + @SQL3 + @SQL02 + @SQL12 + @SQL22 + @SQL32+@SQL111)  
 END  
 ELSE  
 BEGIN  
  --PRINT @SQL01  
  --PRINT CAST(@SQL11 AS TEXT)  
  --PRINT @SQL2  
  --PRINT @SQL31  
  --PRINT @SQL31_1  
  --PRINT @SQL32  
  --PRINT @SQL111  
    
  EXEC (@SQL01 + @SQL11 + @SQL2 + @SQL31 + @SQL31_1 + @SQL32+@SQL111)  
 END  
  
END  
  
DECLARE @SQLFROM VARCHAR(MAX)   
SET @SQLFROM = ''  
  
---- @Mode = 2: Ke thua don hang (Nghiep vu \ Don hang \ button ke thua)  
---- NOTES: Khi bo sung truong thi phai bo sung tai cac UNION khac (Don hang mua, Hoa don, Nhap xuat kho)  
IF @Mode = 2   
BEGIN   
 SELECT  @Sort1 = ISNULL(Sort1,''),  
    @Sort2 = ISNULL(Sort2,''),  
    @Sort3 = ISNULL(Sort3,'') ,  
    @Sort4 = ISNULL(Sort4,''),  
    @Sort5 = ISNULL(Sort5,'')  
 From  D05T0000 WITH(NOLOCK)  
  
 SET  @StrSort=  
 CASE WHEN @Sort1<> '' THEN 'Order by ' + @Sort1 ELSE '' END +  
 CASE WHEN @Sort2<> '' THEN  ' ,'+ @Sort2 ELSE '' END +  
 CASE WHEN @Sort3<> '' THEN  ' ,'+ @Sort3 ELSE '' END+  
 CASE WHEN @Sort4<> '' THEN  ' ,'+ @Sort4 ELSE '' END+  
 CASE WHEN @Sort5<> '' THEN  ' ,'+ @Sort5 ELSE '' END  
   
 DECLARE @T TINYINT = 0  
 IF EXISTS (SELECT 1 FROM D91T9130 WHERE Value  = 1 AND Customize = 'AddColumnQM') AND EXISTS ( SELECT 1 FROM D05T1020 WHERE UseCostSimulation = 1 AND TranTypeID = @TranTypeID) AND @QuotationID = ''  
 BEGIN  
  SET @T = 1  
 END  
   
 SET @SQL = @SQL + '  
 SELECT  D05T0017.DivisionID, D05T0017.QuotationID, D05T0017.QuotationItemID, D05T0017.OrderNum,  
    D05T0017.InventoryID, ItemName' + @U + ' AS ItemName, D05T0017.ShortName' + @U + ' AS ShortName, D05T0017.UnitID,  
    DeliveryDate, D05T0017.LocationNo, D05T0017.Quantity, D05T0017.CQuantity, ReduceQuantity, CReduceQuantity, D05T0017.UnitPrice,  
    OAmountTmp, CAmountTmp, ACol01, C_ACol01, ACol02, C_ACol02, ACol03, C_ACol03, ACol04, C_ACol04, ACol05, C_ACol05,  
    Amount, CAmount, D05T0017.RateReduce, D05T0017.OriginalReduce, D05T0017.CReduce, D05T0017.VATGroupID, VATRate, OVAT, CVAT, RateTax, OTax, CTax, D05T0017.Notes' + @U + ' AS Notes,  
    Ana01ID, Ana02ID, Ana03ID, Ana04ID, Ana05ID, Ana06ID, Ana07ID, Ana08ID, Ana09ID, Ana10ID, NRef1, NRef2, NRef3, NRef4, NRef5,  
    DRef1' + @U + ' AS DRef1, DRef2' + @U + ' AS DRef2, DRef3' + @U + ' AS DRef3, DRef4' + @U + ' AS DRef4, DRef5' + @U + ' AS DRef5,   
    D05T0017.NDef1, D05T0017.NDef2, D05T0017.NDef3, D05T0017.NDef4, D05T0017.NDef5, StatusDetail, DetailCustomerID, DetailCustomerName' + @U + ' AS DetailCustomerName,  
    ParcelInventoryID, ParcelInventoryName' + @U + ' AS ParcelInventoryName, ParcelQuantity, ParcelPerQuantity, WeightNet, WeightNetTotal, WeightGrossTotal,  
    WeightGross, Measurement, MeasurementTotal, D05T0017.IsService, D05T0017.WareHouseID, CONVERT(BIT,IsPromotion) AS IsPromotion,   
    DateNumber01, Date01, Ratio01, DateNumber02, Date02, Ratio02, DateNumber03, Date03, Ratio03,  
    KitID, KitUnitID, KitQuantity, KitCQuantity, KitNo,   
    D05T0017.Spec01ID, D05T0017.Spec02ID, D05T0017.Spec03ID, D05T0017.Spec04ID, D05T0017.Spec05ID,   
    D05T0017.Spec06ID, D05T0017.Spec07ID, D05T0017.Spec08ID, D05T0017.Spec09ID, D05T0017.Spec10ID,  
    IssueWareHouseID, D05T0017.IsKit, DateRef1, DateRef2, DateRef3, DateRef4, DateRef5, PromotionOnD05, OUnitPrice,   
    D05T0017.TransactionTypeID, ODetailDueDate, IsFromD16, DiscountedUnitPrice,   
    '+CASE WHEN @T = 1 THEN 'D05T0017.QuotationID' ELSE 'CONVERT(VARCHAR(20),'''')' END+' AS LinkMasterID,  
    '+CASE WHEN @T = 1 THEN 'D05T0017.LinkMasterID' ELSE 'CONVERT(VARCHAR(20),'''')' END+'  AS LinkDetailID,   
    DeliveryQTY,  
    ReturnQTY, TempUnitPrice, IsComponentOfKit, OrderQTY, OrderCQTY, D05T0017.AdjustmentListID, UnitPriceOnD14, TotalAdjustedAmount,  
    TotalAdjustedCAmount, AdjustedUnitPrice, InvoiceQTY,   
    ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor,   
    ItemName' + @U + ' AS InventoryName,  
    ISNULL(D07T0005.UnitName' + @U + ', '''') as UnitName,  
    D05T0017.VATGroupID AS VATGroupID1,  
    D05T0017.RateReduce * 100 AS RateReduce1,  
    CONVERT(NVARCHAR(500), '''') AS Spec01Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec02Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec03Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec04Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec05Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec06Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec07Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec08Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec09Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec10Name,  
    ISNULL(D07T0002.InventoryName' + @U + ','''') AS OInventoryName,   
    ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
    ISNULL(D07T0004.Formula,'''') AS ConversionFormula ,   
    CONVERT(MONEY,0) AS DeliveredQuantity,  
    CONVERT(MONEY,0) AS MinUnitPrice,  
    D07T1011.RDVoucherID,   
    D07T1011.TransactionID,   
    D07T1011.R_D,   
    D07T1011.SplitNo, Convert(tinyint, 1) AS IsUnitPrice,'  
      
 SET @SQL10 = @SQL10 + '  
    D07T0002.UnitID as BaseUnitID,  
    Case when D07T2230.TransID is null then 0 else 1 end as Flag,  
    isnull(D07T2230.FormulaID, '''') as FormulaID,  
    isnull(D07T2230.Formula, '''') as Formula,  
    isnull(D07T2230.Num01, 0) as Num01, isnull(D07T2230.Num02, 0) as Num02,  
    isnull(D07T2230.Num03, 0) as Num03, isnull(D07T2230.Num04, 0) as Num04,  
    isnull(D07T2230.Num05, 0) as Num05, isnull(D07T2230.Num06, 0) as Num06,  
    isnull(D07T2230.Num07, 0) as Num07, isnull(D07T2230.Num08, 0) as Num08,  
    isnull(D07T2230.Num09, 0) as Num09, isnull(D07T2230.Num10, 0) as Num10,  
    Case when T15.IsAdjusted is null then 0 else 1 end IsAdjust, --Dung cho .NET  
    Case when T15.IsAdjusted is null then 0 else 1 end IsAdjusted, --Dung cho VB  
    D05T0017.UnitPrice As RefUnitPrice ,   
    Case when D05T0017.Iskit=2 then 1 else 0 end as IsKit1,   
    case when LEFT(D05T0016.QuotationID, 2)=''11'' then ''11'' ELSE D05T0016.ModuleID END AS LinkModuleID,  
    case when LEFT(D05T0016.QuotationID, 2)=''11'' then D05T0017.QuotationID ELSE D05T0017.QuotationID END AS LinkQuotationID,  
    case when LEFT(D05T0016.QuotationID, 2)=''11'' then D05T0017.QuotationItemID ELSE D05T0017.QuotationItemID END AS LinkQuotationItemID,  
    D05T0016.EmployeeID ,D05T0016.ExchangeRate,D05T0016.CurrencyID,  
    D05T0017.PriceListID,D05T0016.QuotationHeader'+@U+' As QuotationHeader,  
    D05T0016.TradeTerms'+@U+' AS TradeTerms,D05T0016.QuotationFooter'+@U+' AS QuotationFooter,  
    Convert(tinyint, 0) AS AdjustTypeID,  
    Convert(Varchar(20), '''') As AdjustTypeDesc,  
    Isnull(ExternalCode,'''') As ExternalCode, Isnull(ExternalName'+@U+', '''') As ExternalName,  
    ICode01ID, ICode02ID, ICode03ID, ICode04ID, ICode05ID,   
    ICode06ID, ICode07ID, ICode08ID, ICode09ID, ICode10ID,  
    D05T0016.ProfessionKind, D05T0016.VoucherNum, D05T0016.VoucherNo,  
    ISNULL(D05T0016.DeliveryMethodID,'''') AS DeliveryMethodID,  
    D05T0016.Ref1'+@U+' As Ref1, D05T0016.Ref2'+@U+' As Ref2, D05T0016.Ref3'+@U+' As Ref3,   
    D05T0016.Ref4'+@U+' As Ref4, D05T0016.Ref5'+@U+' As Ref5,  
    D05T0017.PriceListID DPriceListID, D05T0017.CurrencyOnPriceList, D05T0017.DExchangeRate,  
    D07T0002.IsBOM, D05T0017.PriceListLineID, D05T0017.PriceBreakID,  
    CASE D05T0000.InventoryRefInfo WHEN ''ShortName'' THEN D07T0002.ShortName'+@U+'  
            WHEN ''I01ID''  THEN D07T0002.ICode01ID  
            WHEN ''I02ID''  THEN D07T0002.ICode02ID  
            WHEN ''I03ID''  THEN D07T0002.ICode03ID  
            WHEN ''I04ID''  THEN D07T0002.ICode04ID  
            WHEN ''I05ID''  THEN D07T0002.ICode05ID  
            WHEN ''I06ID''  THEN D07T0002.ICode06ID  
            WHEN ''I07ID''  THEN D07T0002.ICode07ID  
            WHEN ''I08ID''  THEN D07T0002.ICode08ID  
            WHEN ''I09ID''  THEN D07T0002.ICode09ID  
            WHEN ''I10ID''  THEN D07T0002.ICode10ID  
            WHEN ''Volume''  THEN  CASE WHEN ROUND(D07T0002.Volume,0) = ROUND(D07T0002.Volume,8)  
                    THEN CONVERT(varchar(50),CONVERT(DECIMAL(28,0),D07T0002.Volume))  
                    ELSE REPLACE(RTRIM(REPLACE(CONVERT(varchar(50),D07T0002.Volume),''0'','' '')),'' '',''0'')  
                 END  
            WHEN ''Weight''  THEN  CONVERT(varchar(50),D07T0002.Weight,2)        
            WHEN ''StrRefInfo'' THEN   
                   CASE WHEN ROUND(D07T0002.DLength,0) = ROUND(D07T0002.DLength,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DLength),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DLength),''0'','' '')),'' '',''0'') END + ''
x'' +  
                   CASE WHEN ROUND(D07T0002.DWidth,0) = ROUND(D07T0002.DWidth,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DWidth),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DWidth),''0'','' '')),'' '',''0'') END + ''x'' +
   
                   CASE WHEN ROUND(D07T0002.DHeight,0) = ROUND(D07T0002.DHeight,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DHeight),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DHeight),''0'','' '')),'' '',''0'') END + '' 
''+  
                   CONVERT(VARCHAR(250),ISNULL(D07T1016.ComponentID,''''))  
            WHEN ''RefCode'' THEN D07T0002.RefCode  
            ELSE '''' END AS InventoryRefInfoD05,  
    ISNULL(D05T1017.SuplierTypeID,'''') AS SuplierTypeID, ISNULL(D05T1017.SuplierID,'''') AS SuplierID,   
    CONVERT(NVARCHAR(250),'''') AS SuplierName,  
    ISNULL(D05T1017.CurrencyID,'''') AS POCurrencyID,  
    ISNULL(D05T1017.ExchangeRate,0) AS POExchangeRate, ISNULL(D05T1017.UnitPrice,0) AS POUnitPrice,  
    CASE WHEN (D05T0017.SplitNo = '''' OR D05T0017.SplitNo = ''0.00'') THEN Convert(Varchar(50), D05T0017.OrderNum) Else Convert(Varchar(50), D05T0017.SplitNo) End As D05SplitNo,  
    D05T0017.FactoryOutDate, D05T0017.AdjustmentLineID,  
    D05T0017.BidQty, D05T0017.BidAcceptQty,  
    D05T0017.ACol01Rate AS ACol01Rate,  
    D05T0017.ACol02Rate AS ACol02Rate,  
    D05T0017.ACol03Rate AS ACol03Rate,  
    D05T0017.ACol04Rate AS ACol04Rate,  
    D05T0017.ACol05Rate AS ACol05Rate,  
    CONVERT(VARCHAR(500),'''') AS QuotaLineID,  
    CONVERT(VARCHAR(500),'''') AS QuotaID,  
    D05T0017.TotalAdjRate * 100 TotalAdjRate,  
    D05T0017.QuotaAdjRate * 100 AS QuotaAdjRate, 0 AS ReCalculate,  
    D05T0017.ProjectID, D05T0017.ProjectName'+@U+' AS ProjectName, D05T0017.TaskID, D05T0017.TaskName'+@U+' AS TaskName,  
    CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
    CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
    ISNULL(T22.WarrantyTime, 0 ) AS WarrantyTime,  
    T25.PackingID, T25.PackQTY AS PackingFactor, T25.Quantity AS PackingQuantity, T25.ItemID AS PackingItemID,  
    ISNULL(D14T2400.PolicyRate,0) AS PolicyRate, ISNULL(D14T2400.ProRate,0) AS ProRate,  
    ISNULL(D14T2400.TotalSalesQTY,0) AS TotalSalesQTY, ISNULL(D14T2400.ProUseQuantity,0) AS ProUseQuantity,  
    CONVERT(VARCHAR(25),'''') AS AdjustmentAM, D05T0017.ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, D07T0002.IsLocation, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
    , D05T0117.Dat01 as DisplayDat01,  D05T0117.Dat02 as DisplayDat02,  D05T0117.Dat03 as DisplayDat03,   
    D05T0117.Dat04 as DisplayDat04,  D05T0117.Dat05 as DisplayDat05,  D05T0117.Dat06 as DisplayDat06,   
    D05T0117.Dat07 as DisplayDat07,  D05T0117.Dat08 as DisplayDat08,  D05T0117.Dat09 as DisplayDat09, D05T0117.Dat10 as DisplayDat10,   
    D05T0117.Num01 as DisplayNum01,  D05T0117.Num02 as DisplayNum02,  D05T0117.Num03 as DisplayNum03,   
    D05T0117.Num04 as DisplayNum04,  D05T0117.Num05 as DisplayNum05,  D05T0117.Num06 as DisplayNum06,   
    D05T0117.Num07 as DisplayNum07,  D05T0117.Num08 as DisplayNum08,  D05T0117.Num09 as DisplayNum09, D05T0117.Num10 as DisplayNum10,   
    D05T0117.Str01 as DisplayStr01,  D05T0117.Str02 as DisplayStr02,  D05T0117.Str03 as DisplayStr03,   
    D05T0117.Str04 as DisplayStr04,  D05T0117.Str05 as DisplayStr05,  D05T0117.Str06 as DisplayStr06,   
    D05T0117.Str07 as DisplayStr07,  D05T0117.Str08 as DisplayStr08,  D05T0117.Str09 as DisplayStr09, D05T0117.Str10 as DisplayStr10  
    ,D05T0017.ShipAddressID , D05T0017.Acol01_UnitPrice , D05T0017.Acol02_UnitPrice, D05T0017.Acol03_UnitPrice , D05T0017.Acol04_UnitPrice , D05T0017.Acol05_UnitPrice, ISNULL(D05T0017.OrderNum, 0) AS KeyOrderNum, ISNULL(D05T0017.BreakGroupID,'''') AS Brea
kGroupID,  
    ISNULL(D05T0117.IsOldData,1) AS IsOldData, ISNULL(D05T0117.OriACol01,0) AS OriACol01,ISNULL(D05T0117.OriACol02,0) AS OriACol02,ISNULL(D05T0117.OriACol03,0) AS OriACol03,ISNULL(D05T0117.OriACol04,0) AS OriACol04,ISNULL(D05T0117.OriACol05,0) AS OriACol0
5,  
    ISNULL(D05T0117.OriACol01Rate,0) AS OriACol01Rate,ISNULL(D05T0117.OriACol02Rate,0) AS OriACol02Rate,ISNULL(D05T0117.OriACol03Rate,0) AS OriACol03Rate,ISNULL(D05T0117.OriACol04Rate,0) AS OriACol04Rate,ISNULL(D05T0117.OriACol05Rate,0) AS OriACol05Rate, 
 
    ISNULL(D05T0117.OriAdjustmentListID,'''') AS OriAdjustmentListID,ISNULL(D05T0117.OriAdjustmentLineID,'''') AS OriAdjustmentLineID,  
    CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
    CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
    , ISNULL(D07T0002.Weight, 0) AS Weight  
    , CONVERT(DATETIME, NULL) AS ExpireDate ,D05T0017.Specifications  
    , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
 INTO  #TAM  
 '  
  
 SET @SQL1 = @SQL1 + '  
 FROM  D05T0017 WITH (NOLOCK)  
 INNER JOIN  D05T0016 WITH (NOLOCK) ON D05T0016.QuotationID = D05T0017.QuotationID  
 LEFT JOIN D05T2425 T25 WITH(NOLOCK) ON D05T0017.QuotationID = T25.BatchID AND D05T0017.QuotationItemID = T25.TransID AND T25.OTransType = ''SO''  
 LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID = D05T0017.InventoryID AND D07T0004.UnitID = D05T0017.UnitID    
 LEFT JOIN D07T0002 WITH (NOLOCK) ON D07T0002.InventoryID = D05T0017.InventoryID  
 LEFT JOIN D07T0005 WITH (NOLOCK) ON D07T0005.UnitID = D05T0017.UnitID  
 LEFT JOIN D07T1011 WITH (NOLOCK) ON D05T0017.QuotationID = D07T1011.RefVoucherID   
    AND D05T0017.QuotationItemID = D07T1011.RefTransID   
    AND D07T1011.RefTransType=''SO''   
 LEFT JOIN   D07T2230 WITH (NOLOCK) On D07T2230.TransID = D05T0017.QuotationItemID   
    AND D07T2230.VoucherID = D05T0017.QuotationID  
 LEFT JOIN (   
    SELECT  T15.SalesOrderItemID, 1 as isAdjusted  
    FROM  D05T2025 T05 WITH (NOLOCK)   
    INNER JOIN D05T2125 T15 WITH (NOLOCK) ON T05.AdjSalesOrderID = T15.AdjSalesOrderID  
    WHERE  T05.DivisionID = '''+@DivisionID+''' and T05.SalesOrderID = '''+@QuotationID+'''  
    GROUP BY T15.SalesOrderItemID  
    ) T15   
   ON D05T0017.QuotationItemID = T15.SalesOrderItemID   
 LEFT JOIN D05T2030 WITH (NOLOCK) ON D05T2030.VoucherID = D05T0017.QuotationID   
    AND D05T2030.TransID = D05T0017.QuotationItemID  
 LEFT JOIN D12T1100 WITH (NOLOCK)   
   ON  D05T0017.InventoryID = D12T1100.InventoryID  
    AND D05T0016.ObjectTypeID = D12T1100.ObjectTypeID  
    AND D05T0016.CustomerID = D12T1100.ObjectID  
 FULL JOIN (SELECT InventoryRefInfo FROM D05T0000 WITH (NOLOCK)) D05T0000 ON 1=1  
 LEFT JOIN ( SELECT  T2.InventoryID,   
        ISNULL(SUBSTRING(  
           ( SELECT ComponentID + ''+''  
            FROM D07T1016 A WITH (NOLOCK)   
            WHERE A.ExpenseTypeID = ''ExpenseType01''  
              AND A.InventoryID = T2.InventoryID  
              AND A.ComponentID <> ''''  
            ORDER BY A.RowID  
           FOR XML PATH ('''')   
           ),1,  
           LEN((SELECT ComponentID + ''+''  
            FROM D07T1016 A WITH (NOLOCK)   
            WHERE A.ExpenseTypeID = ''ExpenseType01''  
             AND A.InventoryID = T2.InventoryID  
              AND A.ComponentID <> ''''  
            ORDER BY A.RowID  
           FOR XML PATH (''''))) - 1  
           ),'''') AS ComponentID  
  
    FROM  D07T1016 T2 WITH (NOLOCK)  
    WHERE ExpenseTypeID = ''ExpenseType01''  
    GROUP BY T2.InventoryID  
    ) D07T1016 ON D07T0002.InventoryID = D07T1016.InventoryID  
 LEFT JOIN D05T1017 WITH (NOLOCK)   
  ON  D05T0017.QuotationID = D05T1017.SOID  
    AND D05T0017.QuotationItemID = D05T1017.SOItemID  
 LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON D05T0017.QuotationID= T22.QuotationID AND D05T0017.QuotationItemID=T22.QuotationItemID AND T22.WarrantyTime > 0  
 LEFT JOIN D14T2400 WITH(NOLOCK)  
  ON  D05T0017.QuotationID = D14T2400.VoucherID  
    AND D05T0017.QuotationItemID = D14T2400.TransID  
    AND D14T2400.ProType = ''SO''  
 LEFT JOIN D05T0117 D05T0117 WITH(NOLOCK)  
  ON  D05T0017.QuotationID = D05T0117.QuotationID  
  AND  D05T0017.QuotationItemID = D05T0117.QuotationItemID  
 '  
  
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND ISNULL(Key03ID,'') <> '' ) AND @QuotationID = ''  
 BEGIN  
  -- Ke thua chi tiet  
  SET @SQL1 = @SQL1 + '  
  WHERE    
     (D05T0017.QuotationID + D05T0017.QuotationItemID + D05T0017.DivisionID)   
     IN (Select (Isnull(Key02ID,'''')+Isnull(Key03ID,'''')+Isnull(Key04ID,'''')) AS A   
     From D91T9009 WHERE Key01ID = ''D05F1600'')  
     ---- Khong hien thi mat hang dieu chinh them moi tren don hang goc (Don hang ve van hien thi mat hang nay)  
     --AND D05T0017.Quantity <> 0   
     --AND D05T0017.LinkMasterID = '''' -- Don hang ve  D05T0017.LinkMasterID = DC.D05T0016.QuotationID  
     --AND D05T0017.LinkDetailID = '''' -- Don hang ve  D05T0017.LinkDetailID = DC.D05T0017.QuotationItemID  
  '  
 END  
  
 --IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WHERE Key01ID = 'D05F1602_CO' AND ISNULL(Key03ID,'') <> '' ) AND @QuotationID <> ''  
 -- BEGIN  
 --  -- Ke thua chi tiet  
 --  SET @SQL1 = @SQL1 +   
 --  '  
 --  WHERE    
 --     D05T0017.QuotationID = '''+@QuotationID +'''  
 --  '  
 --  END  
  
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1621_Inherit' AND FormID = 'D05F1621_Inherit' AND Key02ID = @DivisionID AND Key03ID = @QuotationID)  
 BEGIN  
  SET @SQL1 = @SQL1 + '   
  WHERE  D05T0017.QuotationID = '''+@QuotationID +'''  
  '  
 END  
  
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND ISNULL(Key03ID,'') = '' ) AND @QuotationID = ''  
 -- Ke thua phieu  
 BEGIN  
  SET @SQL1 = @SQL1 + '  
  WHERE    
     (D05T0017.QuotationID)   
     IN (Select Isnull(Key02ID,'''') AS A    
     From D91T9009 WHERE Key01ID = ''D05F1600'')  
     ---- Khong hien thi mat hang dieu chinh them moi tren don hang goc (Don hang ve van hien thi mat hang nay)  
     --AND D05T0017.Quantity <> 0   
     --AND D05T0017.LinkMasterID = '''' -- Don hang ve  D05T0017.LinkMasterID = DC.D05T0016.QuotationID  
     --AND D05T0017.LinkDetailID = '''' -- Don hang ve  D05T0017.LinkDetailID = DC.D05T0017.QuotationItemID   --  
  '  
 END  
   
 DECLARE @CurrencyID VARCHAR(50), @ExchangeRate DECIMAL (28,8)   
 CREATE TABLE #TMP (ExchangeRate DECIMAL (28,8) )  
   
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID   
  AND (EXISTS (  
      SELECT TOP 1 1 FROM D06T2510 WITH(NOLOCK) WHERE ISNULL(D91T9009.Key02ID,'') = D06T2510.POID)  
     OR EXISTS (SELECT TOP 1 1 FROM D06T2010 WITH(NOLOCK) WHERE ISNULL(D91T9009.Key02ID,'') = D06T2010.BatchID)  
    )  
  )  --don hang D06 & hoa don mua D06                   
 BEGIN  
  SELECT @CurrencyID = CurrencyID  FROM D06T2510 WITH(NOLOCK) WHERE POID IN (SELECT Key02ID FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID)  
  
  SELECT @CurrencyID = CurrencyID  FROM D06T2010 WITH(NOLOCK) WHERE BatchID IN (SELECT Key02ID FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID)  
  
  --Lay ty gia theo ngay chung tu   
  INSERT INTO #TMP   
  EXEC  D91P0010 @CurrencyID, @VoucherDate  
    
  SELECT @ExchangeRate = CASE WHEN ExchangeRate = 0 THEN 1 ELSE ExchangeRate END  FROM #TMP  
 END  
  
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID AND EXISTS (SELECT TOP 1 1 FROM D06T2510 WITH(NOLOCK) WHERE ISNULL(D91T9009.Key02ID,'') = D06T2510.POID) )  --don hang D06  
 BEGIN ---BEGIN: Bo sung ke thua tu don hang mua  
  SET @SQL111 = @SQL111+ '  
  UNION ALL  
  SELECT  D06T2510.DivisionID, '''' AS QuotationID, '''' AS QuotationItemID, D06T2520.OrderNum, D06T2520.InventoryID,   
     D06T2520.InventoryName' + @U + ' AS ItemName, '''' AS ShortName, D06T2520.UnitID,NULL AS DeliveryDate, D06T2520.LocationNo,   
     OQuantity, CQuantity, 0 AS ReduceQuantity,  0 AS CReduceQuantity, D06T2520.UnitPrice, D06T2520.OAmount AS OAmountTmp,   
     ROUND((D06T2520.OAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CAmountTmp,   
     0 AS ACol01, 0 AS C_ACol01,  0 AS ACol02,  0 AS C_ACol02,  0 AS ACol03,  0 AS C_ACol03,  0 AS ACol04, 0 AS C_ACol04, 0 AS ACol05, 0 AS C_ACol05, OAmount AS Amount,  
     ROUND((D06T2520.OAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CAmount,   
     D06T2520.ReductionRate AS RateReduce, D06T2520.OReduction AS OriginalReduce,   
     ROUND((D06T2520.OReduction * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CReduce,   
     D06T2520.VATGroupID, D06T2520.RateTax AS VATRate, D06T2520.VATOAmount AS OVAT,   
     ROUND((D06T2520.VATOAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CVAT,   
     D06T2520.RateTax, 0 AS OTax, 0 AS CTax,  
     D06T2520.TransDesc' + @U + ' AS Notes,   
     D05T1020.DefaultAna01ID AS Ana01ID, D05T1020.DefaultAna02ID AS Ana02ID, D05T1020.DefaultAna03ID AS Ana03ID, D05T1020.DefaultAna04ID AS Ana04ID, D05T1020.DefaultAna05ID AS Ana05ID,   
     D05T1020.DefaultAna06ID AS Ana06ID, D05T1020.DefaultAna07ID AS Ana07ID, D05T1020.DefaultAna08ID AS Ana08ID, D05T1020.DefaultAna09ID AS Ana09ID, D05T1020.DefaultAna10ID AS Ana10ID,   
     NRef1, NRef2, NRef3, NRef4, NRef5,  
     '''' AS DRef1, '''' AS DRef2, '''' AS DRef3, '''' AS DRef4, '''' AS DRef5, 0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
     '''' AS StatusDetail, '''' AS DetailCustomerID, '''' AS DetailCustomerName,'''' AS ParcelInventoryID, '''' AS ParcelInventoryName,  0 AS ParcelQuantity,  
     0 AS ParcelPerQuantity,  0 AS WeightNet,  0 AS WeightNetTotal,  0 AS WeightGrossTotal,0 AS WeightGross,  0 AS Measurement, 0 AS MeasurementTotal, 0 AS IsService,   
     D06T2520.WareHouseID,  0 AS IsPromotion,  0 AS DateNumber01, 0 AS Date01, 0 AS Ratio01, 0 AS DateNumber02, 0 AS Date02, 0 AS Ratio02,0 AS  DateNumber03, 0 AS Date03, 0 AS Ratio03,  
     '''' AS KitID, '''' AS KitUnitID,  0 AS KitQuantity, 0 AS KitCQuantity, '''' AS KitNo,     
     D06T2520.Spec01ID, D06T2520.Spec02ID, D06T2520.Spec03ID, D06T2520.Spec04ID, D06T2520.Spec05ID,   
     D06T2520.Spec06ID, D06T2520.Spec07ID, D06T2520.Spec08ID, D06T2520.Spec09ID, D06T2520.Spec10ID,   
     '''' AS IssueWareHouseID, 0AS IsKit, NULL AS DateRef1, NULL AS DateRef2, NULL AS DateRef3, NULL AS DateRef4, NULL AS DateRef5,0 AS PromotionOnD05,D06T2520.UnitPrice AS OUnitPrice,   
     '''' AS TransactionTypeID, NULL AS ODetailDueDate, 0 AS IsFromD16, 0 AS DiscountedUnitPrice, '''' AS LinkMasterID,'''' AS LinkDetailID, 0 AS DeliveryQTY,  
     0 AS ReturnQTY, 0 AS TempUnitPrice,0 AS IsComponentOfKit, OQuantity AS OrderQTY, CQuantity AS OrderCQTY, '''' AS AdjustmentListID, 0 AS UnitPriceOnD14,  
     D06T2520.CAmount AS TotalAdjustedAmount,  
     D06T2520.OAmount AS TotalAdjustedCAmount,  
     D06T2520.UnitPrice AS AdjustedUnitPrice,  
     0 AS InvoiceQTY, ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor, D06T2520.InventoryName' + @U + ' AS InventoryName,  
     ISNULL(D07T0005.UnitName' + @U + ', '''') as UnitName,D06T2520.VATGroupID AS VATGroupID1,0 AS RateReduce1,  
     CONVERT(NVARCHAR(500), '''') as Spec01Name,CONVERT(NVARCHAR(500), '''') as Spec02Name, CONVERT(NVARCHAR(500), '''') as Spec03Name,  
     CONVERT(NVARCHAR(500), '''') as Spec04Name,CONVERT(NVARCHAR(500), '''') as Spec05Name, CONVERT(NVARCHAR(500), '''') as Spec06Name,  
     CONVERT(NVARCHAR(500), '''') as Spec07Name,CONVERT(NVARCHAR(500), '''') as Spec08Name, CONVERT(NVARCHAR(500), '''') as Spec09Name,  
     CONVERT(NVARCHAR(500), '''') as Spec10Name, ISNULL(D07T0002.InventoryName' + @U + ','''') AS OInventoryName, ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
     ISNULL(D07T0004.Formula,'''') AS ConversionFormula , 0 AS DeliveredQuantity,0 AS MinUnitPrice,'''' AS RDVoucherID, '''' AS TransactionID, '''' AS R_D,   
     Convert(tinyint, 0) AS IsUnitPrice,  
     '''' AS SplitNo,D07T0002.UnitID as BaseUnitID,0 as Flag, '''' as FormulaID, '''' as Formula, 0 as Num01, 0 as Num02,0 as Num03, 0 as Num04,0  as Num05, 0 as Num06,  
     0 as Num07, 0 as Num08,0 as Num09, 0 as Num10,0 as IsAdjust,0 as IsAdjusted, D06T2520.UnitPrice As RefUnitPrice , 0 IsKit1, ''06'' AS LinkModuleID,  
     D06T2520.POID AS LinkQuotationID,D06T2520.POTransID AS LinkQuotationItemID,D06T2510.EmployeeID ,'+CONVERT(VARCHAR(50),@ExchangeRate)+' AS ExchangeRate ,D06T2510.CurrencyID,  
     D05T1020.PriceListID,'''' AS  QuotationHeader,'''' AS TradeTerms, '''' AS QuotationFooter, 0 AS AdjustTypeID,'''' As AdjustTypeDesc,'''' As ExternalCode, '''' As ExternalName,  
     '''' As ICode01ID, '''' As ICode02ID, '''' As ICode03ID, '''' As ICode04ID,'''' As  ICode05ID, '''' As ICode06ID, '''' As ICode07ID, '''' As ICode08ID,'''' As  ICode09ID,'''' As  ICode10ID,  
     '''' As ProfessionKind, D06T2510.VoucherNo AS VoucherNum, D06T2510.VoucherNo,'''' AS DeliveryMethodID,'''' AS Ref1, '''' AS Ref2, '''' AS Ref3, '''' AS Ref4, '''' AS Ref5,  
     D05T1020.PriceListID AS DPriceListID, '''' AS CurrencyOnPriceList, 0 AS DExchangeRate,D07T0002.IsBOM, '''' AS PriceListLineID, '''' AS PriceBreakID,  
      ''''  AS InventoryRefInfoD05,'''' AS SuplierTypeID,'''' AS SuplierID,   
     '''' AS SuplierName,'''' AS POCurrencyID,0 AS POExchangeRate, 0 AS POUnitPrice,''''  As D05SplitNo,NULL as FactoryOutDate, '''' AS AdjustmentLineID,  
     0 BidQty, 0 BidAcceptQty,0 AS ACol01Rate,0 AS ACol02Rate,0 AS ACol03Rate,0 AS ACol04Rate,0 AS ACol05Rate,CONVERT(VARCHAR(500),'''') AS QuotaLineID,CONVERT(VARCHAR(500),'''') AS QuotaID,0 AS  TotalAdjRate,  
     0 AS QuotaAdjRate, 0 AS ReCalculate,  
     '''' AS ProjectID, '''' AS ProjectName, '''' AS TaskID, '''' AS TaskName,  
     CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
     CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
     CONVERT(INT,0) AS WarrantyTime,  
     CONVERT(VARCHAR(50), '''') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
     CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
     CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
     CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, D07T0002.IsLocation, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
       
  '  
  
  SET @SQL111_1 = @SQL111_1+ '  
     , CONVERT(DATETIME, NULL) as DisplayDat01,  CONVERT(DATETIME, NULL) as DisplayDat02,  CONVERT(DATETIME, NULL) as DisplayDat03,   
     CONVERT(DATETIME, NULL) as DisplayDat04,  CONVERT(DATETIME, NULL) as DisplayDat05,  CONVERT(DATETIME, NULL) as DisplayDat06,   
     CONVERT(DATETIME, NULL) as DisplayDat07,  CONVERT(DATETIME, NULL) as DisplayDat08,  CONVERT(DATETIME, NULL) as DisplayDat09, CONVERT(DATETIME, NULL) as DisplayDat10,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum01,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum02,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum03,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum04,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum05,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum06,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum07,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum08,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum09, CONVERT(DECIMAL(28, 8), 0) as DisplayNum10,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr01,  CONVERT(NVARCHAR(250), '''') as DisplayStr02,  CONVERT(NVARCHAR(250), '''') as DisplayStr03,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr04,  CONVERT(NVARCHAR(250), '''') as DisplayStr05,  CONVERT(NVARCHAR(250), '''') as DisplayStr06,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr07,  CONVERT(NVARCHAR(250), '''') as DisplayStr08,  CONVERT(NVARCHAR(250), '''') as DisplayStr09, CONVERT(NVARCHAR(250), '''') as DisplayStr10  
     , CONVERT(VARCHAR(50), '''') AS ShipAddressID, CONVERT(DECIMAL(28, 8), 0) AS Acol01_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol02_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol03_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol04_UnitPrice, CONVERT(DEC
IMAL(28, 8), 0) AS Acol05_UnitPrice, CONVERT(INT, 0) AS KeyOrderNum, CONVERT(VARCHAR(50), '''') AS  BreakGroupID,  
     CONVERT(TINYINT,1) AS IsOldData,CONVERT(DECIMAL(28,8),0) AS OriACol01,CONVERT(DECIMAL(28,8),0) AS OriACol02,CONVERT(DECIMAL(28,8),0) AS OriACol03,CONVERT(DECIMAL(28,8),0) AS OriACol04,CONVERT(DECIMAL(28,8),0) AS OriACol05,  
     CONVERT(DECIMAL(28,8),0) AS OriACol01Rate,CONVERT(DECIMAL(28,8),0) AS OriACol02Rate,CONVERT(DECIMAL(28,8),0) AS OriACol03Rate,CONVERT(DECIMAL(28,8),0) AS OriACol04Rate,CONVERT(DECIMAL(28,8),0) AS OriACol05Rate,  
     CONVERT(VARCHAR(8000),'''') AS OriAdjustmentListID,CONVERT(VARCHAR(8000),'''') AS OriAdjustmentLineID,  
     CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
     CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
     , CONVERT(DECIMAL(28,8), 0) AS Weight  
     , CONVERT(DATETIME, NULL) AS ExpireDate ,CONVERT(NVARCHAR(1000), '''') as Specifications  
     , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
  FROM  D06T2520 WITH (NOLOCK)  
  INNER JOIN  D06T2510 WITH (NOLOCK) ON D06T2510.POID = D06T2520.POID  
  LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID = D06T2520.InventoryID AND D07T0004.UnitID = D06T2520.UnitID    
  LEFT JOIN D07T0002 WITH (NOLOCK) ON D07T0002.InventoryID = D06T2520.InventoryID  
  LEFT JOIN D07T0005 WITH (NOLOCK) ON D07T0005.UnitID = D06T2520.UnitID  
  LEFT JOIN D05T1020 WITH(NOLOCK) ON D05T1020.TranTypeID ='''+@TranTypeID+'''   
  LEFT JOIN D91V0010 WITH(NOLOCK) ON D06T2510.CurrencyID = D91V0010.CurrencyID  
  '  
  
  IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID AND ISNULL(Key03ID,'') <> '' )  
  BEGIN  
   -- Ke thua chi tiet  
   SET @SQL111_1 = @SQL111_1 + '  
   WHERE  (D06T2520.POID+  D06T2520.POTransID) IN (Select (Isnull(Key02ID,'''')+Isnull(Key03ID,'''')) From D91T9009 WHERE Key01ID = ''D05F1600'')    
   '  
  END  
  ELSE  
  -- Ke thua phieu  
  BEGIN  
   SET @SQL111_1 = @SQL111_1 + '  
   WHERE  D06T2520.POID IN (Select Isnull(Key02ID,'''') From D91T9009 WHERE Key01ID = ''D05F1600'')   --  
   '  
  END    
 END ----END: Bo sung ke thua tu don hang mua  
   
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID AND EXISTS (SELECT TOP 1 1 FROM D06T2010 WITH(NOLOCK) WHERE ISNULL(D91T9009.Key02ID,'') = D06T2010.BatchID) )  --hoa don mua D06  
 BEGIN ---BEGIN: Bo sung ke thua tu hoa don mua  
  SET @SQL112 = @SQL112+ '  
  UNION ALL  
  SELECT  D06T2010.DivisionID, '''' AS QuotationID, '''' AS QuotationItemID, D06T2020.OrderNum, D06T2020.InventoryID,   
     D06T2020.InventoryName' + @U + ' AS ItemName, '''' AS ShortName, D06T2020.UnitID,NULL AS DeliveryDate, D06T2020.LocationNo,   
     OQuantity, CQuantity, 0 AS ReduceQuantity,  0 AS CReduceQuantity, D06T2020.UnitPrice, D06T2020.OAmount AS OAmountTmp,   
     ROUND((D06T2020.OAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CAmountTmp,   
     0 AS ACol01, 0 AS C_ACol01,  0 AS ACol02,  0 AS C_ACol02,  0 AS ACol03,  0 AS C_ACol03,  0 AS ACol04, 0 AS C_ACol04, 0 AS ACol05, 0 AS C_ACol05, OAmount AS Amount,  
     ROUND((D06T2020.OAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CAmount,   
     D06T2020.ReductionRate AS RateReduce, D06T2020.OReduction AS OriginalReduce,   
     ROUND((D06T2020.OReduction * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CReduce,   
     D06T2020.VATGroupID, D06T2020.RateTax AS VATRate, D06T2020.VATOAmount AS OVAT,   
     ROUND((D06T2020.VATOAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CVAT,   
     D06T2020.RateTax, 0 AS OTax, 0 AS CTax,  
     D06T2020.TransDesc' + @U + ' AS Notes,   
     D05T1020.DefaultAna01ID AS Ana01ID, D05T1020.DefaultAna02ID AS Ana02ID, D05T1020.DefaultAna03ID AS Ana03ID, D05T1020.DefaultAna04ID AS Ana04ID, D05T1020.DefaultAna05ID AS Ana05ID,   
     D05T1020.DefaultAna06ID AS Ana06ID, D05T1020.DefaultAna07ID AS Ana07ID, D05T1020.DefaultAna08ID AS Ana08ID, D05T1020.DefaultAna09ID AS Ana09ID, D05T1020.DefaultAna10ID AS Ana10ID,   
     NRef1, NRef2, NRef3, NRef4, NRef5,  
     '''' AS DRef1, '''' AS DRef2, '''' AS DRef3, '''' AS DRef4, '''' AS DRef5, 0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
     '''' AS StatusDetail, '''' AS DetailCustomerID, '''' AS DetailCustomerName,'''' AS ParcelInventoryID, '''' AS ParcelInventoryName,  0 AS ParcelQuantity,  
     0 AS ParcelPerQuantity,  0 AS WeightNet,  0 AS WeightNetTotal,  0 AS WeightGrossTotal,0 AS WeightGross,  0 AS Measurement, 0 AS MeasurementTotal, 0 AS IsService,   
     D06T2020.WareHouseID,  0 AS IsPromotion,  0 AS DateNumber01,0 AS Date01, 0 AS Ratio01, 0 AS DateNumber02, 0 AS Date02, 0 AS Ratio02,0 AS  DateNumber03, 0 AS Date03, 0 AS Ratio03,  
     '''' AS KitID, '''' AS KitUnitID,  0 AS KitQuantity, 0 AS KitCQuantity, '''' AS KitNo,     
     D06T2020.Spec01ID, D06T2020.Spec02ID, D06T2020.Spec03ID, D06T2020.Spec04ID, D06T2020.Spec05ID,   
     D06T2020.Spec06ID, D06T2020.Spec07ID, D06T2020.Spec08ID, D06T2020.Spec09ID, D06T2020.Spec10ID,   
     '''' AS IssueWareHouseID, 0AS IsKit, NULL AS DateRef1, NULL AS DateRef2, NULL AS DateRef3, NULL AS DateRef4, NULL AS DateRef5,0 AS PromotionOnD05,D06T2020.UnitPrice AS OUnitPrice,   
     '''' AS TransactionTypeID, NULL AS ODetailDueDate, 0 AS IsFromD16, 0 AS DiscountedUnitPrice, '''' AS LinkMasterID,'''' AS LinkDetailID, 0 AS DeliveryQTY,  
     0 AS ReturnQTY, 0 AS TempUnitPrice,0 AS IsComponentOfKit, OQuantity AS OrderQTY, CQuantity AS OrderCQTY, '''' AS AdjustmentListID, 0 AS UnitPriceOnD14,  
     D06T2020.CAmount AS TotalAdjustedAmount,  
     D06T2020.OAmount AS TotalAdjustedCAmount,  
     D06T2020.UnitPrice AS AdjustedUnitPrice,  
     0 AS InvoiceQTY, ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor, D06T2020.InventoryName' + @U + ' AS InventoryName,  
     ISNULL(D07T0005.UnitName' + @U + ', '''') as UnitName,D06T2020.VATGroupID AS VATGroupID1,0 AS RateReduce1,  
     CONVERT(NVARCHAR(500), '''') as Spec01Name, CONVERT(NVARCHAR(500), '''') as Spec02Name, CONVERT(NVARCHAR(500), '''') as Spec03Name,  
     CONVERT(NVARCHAR(500), '''') as Spec04Name, CONVERT(NVARCHAR(500), '''') as Spec05Name, CONVERT(NVARCHAR(500), '''') as Spec06Name,  
     CONVERT(NVARCHAR(500), '''') as Spec07Name, CONVERT(NVARCHAR(500), '''') as Spec08Name, CONVERT(NVARCHAR(500), '''') as Spec09Name,  
     CONVERT(NVARCHAR(500), '''') as Spec10Name, ISNULL(D07T0002.InventoryName' + @U + ','''') AS OInventoryName, ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
     ISNULL(D07T0004.Formula,'''') AS ConversionFormula , 0 AS DeliveredQuantity,0 AS MinUnitPrice,'''' AS RDVoucherID, '''' AS TransactionID, '''' AS R_D,   
     Convert(tinyint, 0) AS IsUnitPrice,  
     '''' AS SplitNo,D07T0002.UnitID as BaseUnitID,0 as Flag, '''' as FormulaID, '''' as Formula, 0 as Num01, 0 as Num02,0 as Num03, 0 as Num04,0  as Num05, 0 as Num06,  
     0 as Num07, 0 as Num08,0 as Num09, 0 as Num10,0 as IsAdjust,0 as IsAdjusted, D06T2020.UnitPrice As RefUnitPrice , 0 IsKit1, ''06'' AS LinkModuleID,  
     D06T2020.BatchID AS LinkQuotationID,D06T2020.TransID AS LinkQuotationItemID,D06T2010.EmployeeID ,'+CONVERT(VARCHAR(50),@ExchangeRate)+' AS ExchangeRate ,D06T2010.CurrencyID,  
     D05T1020.PriceListID,'''' AS  QuotationHeader,'''' AS TradeTerms, '''' AS QuotationFooter, 0 AS AdjustTypeID,'''' As AdjustTypeDesc,'''' As ExternalCode, '''' As ExternalName,  
     '''' As ICode01ID, '''' As ICode02ID, '''' As ICode03ID, '''' As ICode04ID,'''' As  ICode05ID, '''' As ICode06ID, '''' As ICode07ID, '''' As ICode08ID,'''' As  ICode09ID,'''' As  ICode10ID,  
     '''' As ProfessionKind, D06T2010.VoucherNo AS VoucherNum, D06T2010.VoucherNo,'''' AS DeliveryMethodID,'''' AS Ref1, '''' AS Ref2, '''' AS Ref3, '''' AS Ref4, '''' AS Ref5,  
     D05T1020.PriceListID AS DPriceListID, '''' AS CurrencyOnPriceList, 0 AS DExchangeRate,D07T0002.IsBOM, '''' AS PriceListLineID, '''' AS PriceBreakID,  
      ''''  AS InventoryRefInfoD05,'''' AS SuplierTypeID,'''' AS SuplierID,   
     '''' AS SuplierName,'''' AS POCurrencyID,0 AS POExchangeRate, 0 AS POUnitPrice,''''  As D05SplitNo,NULL as FactoryOutDate, '''' AS AdjustmentLineID,  
     0 BidQty, 0 BidAcceptQty,0 AS ACol01Rate,0 AS ACol02Rate,0 AS ACol03Rate,0 AS ACol04Rate,0 AS ACol05Rate,CONVERT(VARCHAR(500),'''') AS QuotaLineID,CONVERT(VARCHAR(500),'''') AS QuotaID,0 AS  TotalAdjRate,  
     0 AS QuotaAdjRate, 0 AS ReCalculate,  
     '''' AS ProjectID, '''' AS ProjectName, '''' AS TaskID, '''' AS TaskName,  
     CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
     CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
     CONVERT(INT,0) AS WarrantyTime,  
     CONVERT(VARCHAR(50), '''') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
     CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
     CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
     CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, D07T0002.IsLocation, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
  '  
  
  SET @SQL112_0 = '  
     , CONVERT(DATETIME, NULL) as DisplayDat01,  CONVERT(DATETIME, NULL) as DisplayDat02,  CONVERT(DATETIME, NULL) as DisplayDat03,   
     CONVERT(DATETIME, NULL) as DisplayDat04,  CONVERT(DATETIME, NULL) as DisplayDat05,  CONVERT(DATETIME, NULL) as DisplayDat06,   
     CONVERT(DATETIME, NULL) as DisplayDat07,  CONVERT(DATETIME, NULL) as DisplayDat08,  CONVERT(DATETIME, NULL) as DisplayDat09, CONVERT(DATETIME, NULL) as DisplayDat10,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum01,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum02,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum03,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum04, CONVERT(DECIMAL(28, 8), 0) as DisplayNum05,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum06,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum07,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum08,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum09, CONVERT(DECIMAL(28, 8), 0) as DisplayNum10,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr01,  CONVERT(NVARCHAR(250), '''') as DisplayStr02,  CONVERT(NVARCHAR(250), '''') as DisplayStr03,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr04,  CONVERT(NVARCHAR(250), '''') as DisplayStr05,  CONVERT(NVARCHAR(250), '''') as DisplayStr06,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr07,  CONVERT(NVARCHAR(250), '''') as DisplayStr08,  CONVERT(NVARCHAR(250), '''') as DisplayStr09, CONVERT(NVARCHAR(250), '''') as DisplayStr10  
     , CONVERT(VARCHAR(50), '''') AS ShipAddressID, CONVERT(DECIMAL(28, 8), 0) AS Acol01_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol02_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol03_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol04_UnitPrice, CONVERT(DEC
IMAL(28, 8), 0) AS Acol05_UnitPrice, CONVERT(INT, 0) AS KeyOrderNum, CONVERT(VARCHAR(50), '''') AS  BreakGroupID,  
     CONVERT(TINYINT,1) AS IsOldData,CONVERT(DECIMAL(28,8),0) AS OriACol01,CONVERT(DECIMAL(28,8),0) AS OriACol02,CONVERT(DECIMAL(28,8),0) AS OriACol03,CONVERT(DECIMAL(28,8),0) AS OriACol04,CONVERT(DECIMAL(28,8),0) AS OriACol05,  
     CONVERT(DECIMAL(28,8),0) AS OriACol01Rate,CONVERT(DECIMAL(28,8),0) AS OriACol02Rate,CONVERT(DECIMAL(28,8),0) AS OriACol03Rate,CONVERT(DECIMAL(28,8),0) AS OriACol04Rate,CONVERT(DECIMAL(28,8),0) AS OriACol05Rate,  
     CONVERT(VARCHAR(8000),'''') AS OriAdjustmentListID,CONVERT(VARCHAR(8000),'''') AS OriAdjustmentLineID,  
     CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
     CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
     , CONVERT(DECIMAL(28,8), 0) AS Weight  
     , CONVERT(DATETIME, NULL) AS ExpireDate ,CONVERT(NVARCHAR(1000), '''') as Specifications  
     , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
  FROM  D06T2020 WITH (NOLOCK)  
  INNER JOIN  D06T2010 WITH (NOLOCK) ON D06T2010.BatchID = D06T2020.BatchID  
  LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID = D06T2020.InventoryID AND D07T0004.UnitID = D06T2020.UnitID    
  LEFT JOIN D07T0002 WITH (NOLOCK) ON D07T0002.InventoryID = D06T2020.InventoryID  
  LEFT JOIN D07T0005 WITH (NOLOCK) ON D07T0005.UnitID = D06T2020.UnitID  
  LEFT JOIN D05T1020 WITH(NOLOCK) ON D05T1020.TranTypeID ='''+@TranTypeID+'''   
  LEFT JOIN D91V0010 WITH(NOLOCK) ON D06T2010.CurrencyID = D91V0010.CurrencyID  
  '  
  
  IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID AND ISNULL(Key03ID,'') <> '' )  
  BEGIN  
   -- Ke thua chi tiet  
   SET @SQL112_1 = @SQL112_1 + '  
   WHERE  (D06T2020.BatchID +  D06T2020.TransID) IN (Select (Isnull(Key02ID,'''')+Isnull(Key03ID,'''')) From D91T9009 WHERE Key01ID = ''D05F1600'')    
   '  
  END  
  ELSE  
  -- Ke thua phieu  
  BEGIN  
   SET @SQL112_1 = @SQL112_1 + '  
   WHERE  D06T2020.BatchID IN (Select Isnull(Key02ID,'''') From D91T9009 WHERE Key01ID = ''D05F1600'')   --  
   '  
  END    
 END ----END: Bo sung ke thua tu hoa don mua  
   
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID AND (EXISTS (SELECT TOP 1 1 FROM D07T0009 WITH(NOLOCK) WHERE ISNULL(D91T9009.Key02ID,'') = D07T0009.RDVoucherID)))    
 BEGIN  
  SELECT @CurrencyID = CurrencyID  FROM D07T0009 WHERE RDVoucherID IN (SELECT Key02ID FROM D91T9009 WHERE Key01ID = 'D05F1600')  
    
  --Lay ty gia theo ngay chung tu   
  INSERT INTO #TMP   
  EXEC  D91P0010 @CurrencyID, @VoucherDate  
    
  SELECT @ExchangeRate = CASE WHEN ExchangeRate = 0 THEN 1 ELSE ExchangeRate END  FROM #TMP  
 END  
  
 IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND HostID = @HostID AND UserID = @UserID AND EXISTS (SELECT TOP 1 1 FROM D07T0009 WITH(NOLOCK) WHERE ISNULL(D91T9009.Key02ID,'') = D07T0009.RDVoucherID) )  
 BEGIN ---BEGIN: Bo sung ke thua tu phieu nhap, phieu xuat  
  SET @SQL113 = @SQL113+ '  
  UNION ALL ---BEGIN: Bo sung ke thua tu phieu nhap, phieu xuat  
  SELECT  D07T0009.DivisionID, '''' AS QuotationID, '''' AS QuotationItemID, '''' AS OrderNum, D07T0011.InventoryID,   
     --D07T0002.InventoryName' + @U + ' AS ItemName,   
     D07T0011.InventoryNameU AS ItemName, '''' AS ShortName, D07T0011.UnitID, NULL AS DeliveryDate, ISNULL(D07T0011.LocationNo,'''') AS LocationNo,  
     D07T0011.ActualQuantity AS OQuantity, D07T0011.ConvertedQuantity AS CQuantity, 0 AS ReduceQuantity,  0 AS CReduceQuantity,   
     D07T0011.UnitPrice AS UnitPrice,  
     D07T0011.OriginalAmount AS OAmountTmp,  
     ROUND((D07T0011.OriginalAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CAmountTmp,   
     0 AS ACol01, 0 AS C_ACol01,  0 AS ACol02, 0 AS C_ACol02,  0 AS ACol03,  0 AS C_ACol03,  0 AS ACol04, 0 AS C_ACol04, 0 AS ACol05, 0 AS C_ACol05,   
     D07T0011.OriginalAmount AS Amount,  
     ROUND((D07T0011.OriginalAmount * CASE WHEN D91V0010.Operator = 0 THEN '+CONVERT(VARCHAR(50),@ExchangeRate)+' ELSE 1.00/'+CONVERT(VARCHAR(50),@ExchangeRate)+' END),D91V0010.ConvertedDecimal) AS CAmount,   
     0 AS RateReduce, 0 AS OriginalReduce,   
     0 AS CReduce,   
     D07T0002.VATGroupID, D07T0002.VATRateTax AS VATRate, 0 AS OVAT,   
     0 AS CVAT,   
     0 AS RateTax, 0 AS OTax, 0 AS CTax,  
     D07T0002.InventoryName' + @U + ' AS Notes,   
     D05T1020.DefaultAna01ID AS Ana01ID, D05T1020.DefaultAna02ID AS Ana02ID, D05T1020.DefaultAna03ID AS Ana03ID, D05T1020.DefaultAna04ID AS Ana04ID, D05T1020.DefaultAna05ID AS Ana05ID,   
     D05T1020.DefaultAna06ID AS Ana06ID, D05T1020.DefaultAna07ID AS Ana07ID, D05T1020.DefaultAna08ID AS Ana08ID, D05T1020.DefaultAna09ID AS Ana09ID, D05T1020.DefaultAna10ID AS Ana10ID,   
     NRef1, NRef2, NRef3, NRef4, NRef5,  
     '''' AS DRef1, '''' AS DRef2, '''' AS DRef3, '''' AS DRef4, '''' AS DRef5, 0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
     '''' AS StatusDetail, '''' AS DetailCustomerID, '''' AS DetailCustomerName,'''' AS ParcelInventoryID, '''' AS ParcelInventoryName,  0 AS ParcelQuantity,  
     0 AS ParcelPerQuantity,  0 AS WeightNet,  0 AS WeightNetTotal,  0 AS WeightGrossTotal,0 AS WeightGross,  0 AS Measurement, 0 AS MeasurementTotal, 0 AS IsService,   
     D07T0002.WareHouseID,  0 AS IsPromotion,  0 AS DateNumber01, 0 AS Date01, 0 AS Ratio01, 0 AS DateNumber02, 0 AS Date02, 0 AS Ratio02,0 AS  DateNumber03, 0 AS Date03, 0 AS Ratio03,  
     '''' AS KitID, '''' AS KitUnitID,  0 AS KitQuantity, 0 AS KitCQuantity, '''' AS KitNo,     
     ISNULL(D07T0011.Spec01ID,'''') AS Spec01ID, ISNULL(D07T0011.Spec02ID,'''') AS Spec02ID,   
     ISNULL(D07T0011.Spec03ID,'''') AS Spec03ID, ISNULL(D07T0011.Spec04ID,'''') AS Spec04ID,   
     ISNULL(D07T0011.Spec05ID,'''') AS Spec05ID, ISNULL(D07T0011.Spec06ID,'''') AS Spec06ID,   
     ISNULL(D07T0011.Spec07ID,'''') AS Spec07ID, ISNULL(D07T0011.Spec08ID,'''') AS Spec08ID,   
     ISNULL(D07T0011.Spec09ID,'''') AS Spec09ID, ISNULL(D07T0011.Spec10ID,'''') AS Spec10ID,   
     '''' AS IssueWareHouseID, 0 AS IsKit, NULL AS DateRef1, NULL AS DateRef2, NULL AS DateRef3, NULL AS DateRef4, NULL AS DateRef5,0 AS PromotionOnD05,  
     D07T0011.UnitPrice AS OUnitPrice,  
     '''' AS TransactionTypeID, NULL AS ODetailDueDate, 0 AS IsFromD16, 0 AS DiscountedUnitPrice, '''' AS LinkMasterID,'''' AS LinkDetailID, 0 AS DeliveryQTY,  
     0 AS ReturnQTY, 0 AS TempUnitPrice,0 AS IsComponentOfKit, D07T0011.ActualQuantity AS OrderQTY, D07T0011.ConvertedQuantity AS OrderCQTY, '''' AS AdjustmentListID, 0 AS UnitPriceOnD14,  
     D07T0011.ConvertedAmount AS TotalAdjustedAmount,  
     D07T0011.ActualQuantity * D07T0011.UnitPrice * D07T0011.ExchangeRate AS TotalAdjustedCAmount,  
     D07T0011.UnitPrice AS AdjustedUnitPrice,  
     0 AS InvoiceQTY, ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor, D07T0011.InventoryNameU AS InventoryName, --D07T0002.InventoryName' + @U + ' AS InventoryName,  
     ISNULL(D07T0005.UnitName' + @U + ', '''') as UnitName,D07T0002.VATGroupID AS VATGroupID1,0 AS RateReduce1,  
     CONVERT(NVARCHAR(500), '''') as Spec01Name, CONVERT(NVARCHAR(500), '''') as Spec02Name, CONVERT(NVARCHAR(500), '''') as Spec03Name,  
     CONVERT(NVARCHAR(500), '''') as Spec04Name, CONVERT(NVARCHAR(500), '''') as Spec05Name, CONVERT(NVARCHAR(500), '''') as Spec06Name,  
     CONVERT(NVARCHAR(500), '''') as Spec07Name, CONVERT(NVARCHAR(500), '''') as Spec08Name, CONVERT(NVARCHAR(500), '''') as Spec09Name,  
     CONVERT(NVARCHAR(500), '''') as Spec10Name, ISNULL(D07T0002.InventoryName' + @U + ','''') AS OInventoryName, ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
     ISNULL(D07T0004.Formula,'''') AS ConversionFormula , 0 AS DeliveredQuantity,0 AS MinUnitPrice,'''' AS RDVoucherID, '''' AS TransactionID, '''' AS R_D,   
     Convert(tinyint, 0) AS IsUnitPrice,  
     '''' AS SplitNo,D07T0002.UnitID as BaseUnitID,0 as Flag, '''' as FormulaID, '''' as Formula, 0 as Num01, 0 as Num02,0 as Num03, 0 as Num04,0  as Num05, 0 as Num06,  
     0 as Num07, 0 as Num08,0 as Num09, 0 as Num10,0 as IsAdjust,0 as IsAdjusted, D07T0002.[D07Price] As RefUnitPrice , 0 IsKit1, ''07'' AS LinkModuleID,  
     '''' AS LinkQuotationID,'''' AS LinkQuotationItemID,'''' AS EmployeeID ,  
     '+CONVERT(VARCHAR(50),@ExchangeRate)+' AS ExchangeRate ,D07T0009.CurrencyID,  
     D05T1020.PriceListID,'''' AS  QuotationHeader,'''' AS TradeTerms, '''' AS QuotationFooter, 0 AS AdjustTypeID,'''' As AdjustTypeDesc,'''' As ExternalCode, '''' As ExternalName,  
     '''' As ICode01ID, '''' As ICode02ID, '''' As ICode03ID, '''' As ICode04ID,'''' As  ICode05ID, '''' As ICode06ID, '''' As ICode07ID, '''' As ICode08ID,'''' As  ICode09ID,'''' As  ICode10ID,  
     '''' As ProfessionKind, D07T0002.InventoryID AS VourcherNum, D07T0002.InventoryID,'''' AS DeliveryMethodID,'''' AS Ref1, '''' AS Ref2, '''' AS Ref3, '''' AS Ref4, '''' AS Ref5,  
     D05T1020.PriceListID AS DPriceListID, '''' AS CurrencyOnPriceList, 0 AS DExchangeRate,D07T0002.IsBOM, '''' AS PriceListLineID, '''' AS PriceBreakID,  
      ''''  AS InventoryRefInfoD05,'''' AS SuplierTypeID,'''' AS SuplierID,   
     '''' AS SuplierName,'''' AS POCurrencyID,0 AS POExchangeRate, 0 AS POUnitPrice,''''  As D05SplitNo,NULL as FactoryOutDate, '''' AS AdjustmentLineID,  
     0 BidQty, 0 BidAcceptQty,0 AS ACol01Rate,0 AS ACol02Rate,0 AS ACol03Rate,0 AS ACol04Rate,0 AS ACol05Rate,CONVERT(VARCHAR(500),'''') AS QuotaLineID,CONVERT(VARCHAR(500),'''') AS QuotaID,0 AS  TotalAdjRate,  
     0 AS QuotaAdjRate, 0 AS ReCalculate,  
     '''' AS ProjectID, '''' AS ProjectName, '''' AS TaskID, '''' AS TaskName,  
     CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
     CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
     CONVERT(INT,0) AS WarrantyTime,  
     CONVERT(VARCHAR(50), '''') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
     CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
     CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
     CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, D07T0002.IsLocation, CONVERT(Decimal(28,8),0) AS OAmountTmpTax, CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
  '  
  
  SET @SQL114 = @SQL114+ '  
     , CONVERT(DATETIME, NULL) as DisplayDat01,  CONVERT(DATETIME, NULL) as DisplayDat02,  CONVERT(DATETIME, NULL) as DisplayDat03,   
     CONVERT(DATETIME, NULL) as DisplayDat04,  CONVERT(DATETIME, NULL) as DisplayDat05,  CONVERT(DATETIME, NULL) as DisplayDat06,   
     CONVERT(DATETIME, NULL) as DisplayDat07,  CONVERT(DATETIME, NULL) as DisplayDat08,  CONVERT(DATETIME, NULL) as DisplayDat09, CONVERT(DATETIME, NULL) as DisplayDat10,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum01,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum02,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum03,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum04,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum05,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum06,   
     CONVERT(DECIMAL(28, 8), 0) as DisplayNum07,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum08,  CONVERT(DECIMAL(28, 8), 0) as DisplayNum09, CONVERT(DECIMAL(28, 8), 0) as DisplayNum10,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr01,  CONVERT(NVARCHAR(250), '''') as DisplayStr02,  CONVERT(NVARCHAR(250), '''') as DisplayStr03,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr04,  CONVERT(NVARCHAR(250), '''') as DisplayStr05,  CONVERT(NVARCHAR(250), '''') as DisplayStr06,   
     CONVERT(NVARCHAR(250), '''') as DisplayStr07,  CONVERT(NVARCHAR(250), '''') as DisplayStr08,  CONVERT(NVARCHAR(250), '''') as DisplayStr09, CONVERT(NVARCHAR(250), '''') as DisplayStr10  
     , CONVERT(VARCHAR(50), '''') AS ShipAddressID, CONVERT(DECIMAL(28, 8), 0) AS Acol01_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol02_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol03_UnitPrice, CONVERT(DECIMAL(28, 8), 0) AS Acol04_UnitPrice, CONVERT(DE
CIMAL(28, 8), 0) AS Acol05_UnitPrice, CONVERT(INT, 0) AS KeyOrderNum, CONVERT(VARCHAR(50), '''') AS  BreakGroupID,  
     CONVERT(TINYINT,1) AS IsOldData,CONVERT(DECIMAL(28,8),0) AS OriACol01,CONVERT(DECIMAL(28,8),0) AS OriACol02,CONVERT(DECIMAL(28,8),0) AS OriACol03,CONVERT(DECIMAL(28,8),0) AS OriACol04,CONVERT(DECIMAL(28,8),0) AS OriACol05,  
     CONVERT(DECIMAL(28,8),0) AS OriACol01Rate,CONVERT(DECIMAL(28,8),0) AS OriACol02Rate,CONVERT(DECIMAL(28,8),0) AS OriACol03Rate,CONVERT(DECIMAL(28,8),0) AS OriACol04Rate,CONVERT(DECIMAL(28,8),0) AS OriACol05Rate,  
     CONVERT(VARCHAR(8000),'''') AS OriAdjustmentListID,CONVERT(VARCHAR(8000),'''') AS OriAdjustmentLineID,  
     CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
     CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
     , CONVERT(DECIMAL(28,8), 0) AS Weight  
     , CONVERT(DATETIME, NULL) AS ExpireDate , CONVERT(NVARCHAR(1000), '''') as Specifications  
     , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
  FROM  D07T0009 WITH (NOLOCK)  
  INNER JOIN D07T0011 WITH(NOLOCK) ON D07T0009.RDVoucherID = D07T0011.RDVoucherID  
  LEFT JOIN D07T0002 WITH (NOLOCK) ON D07T0011.InventoryID = D07T0002.InventoryID  
  LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID = D07T0011.InventoryID AND D07T0004.UnitID = D07T0011.UnitID    
  LEFT JOIN D07T0005 WITH (NOLOCK) ON D07T0005.UnitID = D07T0011.UnitID  
  LEFT JOIN D05T1020 WITH(NOLOCK) ON D05T1020.TranTypeID ='''+@TranTypeID+'''   
  LEFT JOIN D91V0010 WITH(NOLOCK) ON D07T0009.CurrencyID = D91V0010.CurrencyID  
  '  
  
  IF EXISTS (SELECT TOP 1 1 FROM D91T9009 WITH(NOLOCK) WHERE Key01ID = 'D05F1600' AND ISNULL(Key03ID,'') <> '' )  
  BEGIN  
   -- Ke thua chi tiet  
   SET @SQL114 = @SQL114 + '  
   WHERE  (D07T0009.RDVoucherID +  D07T0011.TransactionID)   
     IN (Select (Isnull(Key02ID,'''')+Isnull(Key03ID,''''))   
         From D91T9009 WITH(NOLOCK)  
         WHERE Key01ID = ''D05F1600'')    
   '  
  END  
  ELSE  
  -- Ke thua phieu  
  BEGIN  
   SET @SQL114 = @SQL114 + '  
   WHERE  D07T0009.RDVoucherID   
     IN (Select Isnull(Key02ID,'''')   
      From D91T9009 WITH(NOLOCK)  
      WHERE Key01ID = ''D05F1600'')     
   '  
  END    
 END ----END: Bo sung ke thua tu phieu nhap, phieu xuat  
  
 SET @SQL1111 = @SQL1111 + '  
 -- UPDATE SO LUONG, THANH TIEN CHO DONG DIEU CHINH THEM MOI MAT HANG, DIEU CHINH SO LUONG  
 UPDATE  T1  
 SET   T1.Quantity =  T1.Quantity + T2.Quantity,     
    T1.CQuantity = T1.CQuantity + T2.CQuantity,  
    T1.OAmountTmp = (T1.Quantity + T2.Quantity) * T1.UnitPrice,  
    T1.CAmountTmp = (T1.Quantity + T2.Quantity) * T1.UnitPrice * T1.ExchangeRate,  
    T1.Amount = (T1.Quantity + T2.Quantity) * T1.AdjustedUnitPrice,  
    T1.CAmount = (T1.Quantity + T2.Quantity) * T1.AdjustedUnitPrice * T1.ExchangeRate,  
    T1.TotalAdjustedAmount = (T1.Quantity + T2.Quantity) * T1.AdjustedUnitPrice,  
    T1.TotalAdjustedCAmount = (T1.Quantity + T2.Quantity) * T1.AdjustedUnitPrice * T1.ExchangeRate,  
    T1.OAmountTmpTax =  T1.UnitPrice*(T1.Quantity + T2.Quantity),     
    T1.CAmountTmpTax = T1.UnitPrice*(T1.Quantity + T2.Quantity) * T1.ExchangeRate,  
    T1.AdjustedUnitPrice = T1.AdjustedUnitPrice,  
    T1.OVAT = T1.VATRate * (T1.Quantity + T2.Quantity) * T1.UnitPrice,  
    T1.CVAT = T1.VATRate * (T1.Quantity + T2.Quantity) * T1.UnitPrice * T1.ExchangeRate  
 FROM  #TAM T1   
 INNER JOIN (SELECT  SalesOrderID, SalesOrderItemID,  
       SUM((2*AdjustType-1) * B.OQuantity) as Quantity,  
       SUM((2*AdjustType-1) * B.CQuantity) as CQuantity  
    FROM  #TAM T1   
    INNER JOIN D05T2025 A WITH (NOLOCK)  
      ON T1.QuotationID = A.SalesOrderID  
    INNER JOIN D05T2125 B WITH (NOLOCK)   
      ON  B.AdjSalesOrderID = A.AdjSalesOrderID  
       AND T1.QuotationItemID = B.SalesOrderItemID  
    WHERE  T1.QuotationID = ''' + @QuotationID + '''  
    GROUP BY SalesOrderID, SalesOrderItemID) T2  
   ON T1.QuotationID = T2.SalesOrderID  
    AND T1.QuotationItemID = T2.SalesOrderItemID  
 --WHERE  ISNULL(T1.Quantity, 0) = 0 OR ISNULL(T1.CQuantity, 0) = 0  
  
 -- UPDATE KHOAN MUC CHO DONG DIEU CHINH THEM MOI MAT HANG, DIEU CHINH SO LUONG  
 SELECT  T17.Ana01ID, T17.Ana02ID, T17.Ana03ID, T17.Ana04ID, T17.Ana05ID, T17.Ana06ID, T17.Ana07ID, T17.Ana08ID, T17.Ana09ID, T17.Ana10ID, T17.LinkMasterID, T17.LinkDetailID, ROW_NUMBER() OVER (PARTITION BY T1.QuotationItemID ORDER BY T17.QuotationID) AS 
RowNumber   
 INTO  #TAM_ANA  
 FROM  #TAM T1   
 INNER JOIN D05T0017 T17 WITH(NOLOCK)  
   ON T1.QuotationID = T17.LinkMasterID   
    AND T1.QuotationItemID = T17.LinkDetailID  
 WHERE T1.QuotationID <> ''''  
 ORDER BY T17.QuotationID  
  
 SELECT  *   
 INTO  #TAM_ANA1   
 FROM  #TAM_ANA   
 WHERE  RowNumber = (SELECT MAX(RowNumber) FROM #TAM_ANA)  
  
 UPDATE  T1  
 SET   T1.Ana01ID =  T17.Ana01ID,     
    T1.Ana02ID = T17.Ana02ID,     
    T1.Ana03ID = T17.Ana03ID,     
    T1.Ana04ID = T17.Ana04ID,     
    T1.Ana05ID = T17.Ana05ID,     
    T1.Ana06ID = T17.Ana06ID,     
    T1.Ana07ID = T17.Ana07ID,     
    T1.Ana08ID = T17.Ana08ID,     
    T1.Ana09ID = T17.Ana09ID,     
    T1.Ana10ID = T17.Ana10ID  
 FROM  #TAM T1   
 INNER JOIN #TAM_ANA1 T17   
   ON T1.QuotationID = T17.LinkMasterID   
    AND T1.QuotationItemID = T17.LinkDetailID   
  
 Update  #TAM   
 SET   QuotationID  = '''', QuotationItemID = ''''--,   
    --Quantity  =  CASE WHEN ISNULL(OrderQTY, 0) <> 0 THEN   OrderQTY ELSE Quantity END ,   
    --CQuantity =  CASE WHEN ISNULL(OrderCQTY, 0) <> 0 THEN  OrderCQTY ELSE CQuantity END  
  
 UPDATE  T1  
 SET   T1.SuplierName = T2.ObjectName'+@U+'  
 FROM  #TAM T1  
 LEFT JOIN [Object] T2 WITH(NOLOCK)  
  ON  T1.SuplierTypeID = T2.ObjectTypeID  
    AND T1.SuplierID = T2.ObjectID    
    
 UPDATE  T1  
 SET   T1.OAmountTmpTax =   ROUND(T1.UnitPrice*T1.Quantity,T10.OriginalDecimal),     
    T1.CAmountTmpTax = ROUND(T1.UnitPrice*T1.Quantity * T1.ExchangeRate,  '+LTRIM(RTRIM(STR(@D90_ConvertedDecimals)))+')  
 FROM  #TAM T1 INNER JOIN  D91V0010 T10 ON   
    T10.CurrencyID = T1.CurrencyID  
 '  
  
 SET @SQL1111 += '   
 UPDATE  T1  
 SET   T1.ReCalculate = ISNULL(T2.IsUsePricelistofInherit,0)  
 FROM  #TAM T1  
 LEFT JOIN D05T1022 T2 WITH(NOLOCK) ON T2.TranTypeID = '''+@TranTypeID+'''    
  
 ------ Lay Thoi gian bao hanh cua cac SO co du an, hang muc tu D54 sau khi nghiem thu  
   
 --UPDATE  T1  
 --SET   T1.WarrantyTime = T2.WarrantyPeriod  
 --FROM  #TAM T1  
 --INNER JOIN D54T2015 T2 WITH(NOLOCK)  
 -- ON  T1.ProjectID = T2.ProjectID  
 -- AND  T1.TaskID = T2.TaskID  
  
 UPDATE  D07T0011  
 SET   D07T0011.Spec01Name = ISNULL(A.Description'+@U+',''''),  
    D07T0011.Spec02Name = ISNULL(B.Description'+@U+',''''),  
    D07T0011.Spec03Name = ISNULL(C.Description'+@U+',''''),  
    D07T0011.Spec04Name = ISNULL(D.Description'+@U+',''''),  
    D07T0011.Spec05Name = ISNULL(E.Description'+@U+',''''),  
    D07T0011.Spec06Name = ISNULL(F.Description'+@U+',''''),  
    D07T0011.Spec07Name = ISNULL(G.Description'+@U+',''''),  
    D07T0011.Spec08Name = ISNULL(H.Description'+@U+',''''),  
    D07T0011.Spec09Name = ISNULL(I.Description'+@U+',''''),  
    D07T0011.Spec10Name = ISNULL(J.Description'+@U+','''')  
 FROM  #TAM D07T0011  
 LEFT JOIN D07T1410 A WITH (NOLOCK) ON A.SpecID = D07T0011.Spec01ID and A.SpecTypeID = ''01'' AND A.Disabled=0  
 LEFT JOIN D07T1410 B WITH (NOLOCK) ON B.SpecID = D07T0011.Spec02ID and B.SpecTypeID = ''02'' AND B.Disabled=0  
 LEFT JOIN D07T1410 C WITH (NOLOCK) ON C.SpecID = D07T0011.Spec03ID and C.SpecTypeID = ''03'' AND C.Disabled=0  
 LEFT JOIN D07T1410 D WITH (NOLOCK) ON D.SpecID = D07T0011.Spec04ID and D.SpecTypeID = ''04'' AND D.Disabled=0  
 LEFT JOIN D07T1410 E WITH (NOLOCK) ON E.SpecID = D07T0011.Spec05ID and E.SpecTypeID = ''05'' AND E.Disabled=0  
 LEFT JOIN D07T1410 F WITH (NOLOCK) ON F.SpecID = D07T0011.Spec06ID and F.SpecTypeID = ''06'' AND F.Disabled=0  
 LEFT JOIN D07T1410 G WITH (NOLOCK) ON G.SpecID = D07T0011.Spec07ID and G.SpecTypeID = ''07'' AND G.Disabled=0  
 LEFT JOIN D07T1410 H WITH (NOLOCK) ON H.SpecID = D07T0011.Spec08ID and H.SpecTypeID = ''08'' AND H.Disabled=0  
 LEFT JOIN D07T1410 I WITH (NOLOCK) ON I.SpecID = D07T0011.Spec09ID and I.SpecTypeID = ''09'' AND I.Disabled=0  
 LEFT JOIN D07T1410 J WITH (NOLOCK) ON J.SpecID = D07T0011.Spec10ID and J.SpecTypeID = ''10'' AND J.Disabled=0   
   
 UPDATE  T1  
 SET   T1.ExpireDate = T2.ExpireDate  
 FROM  #TAM T1  
 LEFT JOIN D07T1210 T2  
   ON T1.LocationNo = T2.LocationNo  
   AND T1.InventoryID = T2.InventoryID  
 '  
  
 SET @SQL1111 = @SQL1111 + '  
 UPDATE  T1  
 SET   T1.ItemName = T1.OInventoryName   
       + CASE WHEN ISNULL(T1.Spec01Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec01Name END   
       + CASE WHEN ISNULL(T1.Spec02Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec02Name END   
       + CASE WHEN ISNULL(T1.Spec03Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec03Name END   
       + CASE WHEN ISNULL(T1.Spec04Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec04Name END   
       + CASE WHEN ISNULL(T1.Spec05Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec05Name END   
       + CASE WHEN ISNULL(T1.Spec06Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec06Name END   
       + CASE WHEN ISNULL(T1.Spec07Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec07Name END   
       + CASE WHEN ISNULL(T1.Spec08Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec08Name END   
       + CASE WHEN ISNULL(T1.Spec09Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec09Name END   
       + CASE WHEN ISNULL(T1.Spec10Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec10Name END   
 FROM  #TAM T1  
 WHERE  ISNULL(T1.ItemName, '''') = ''''  
  
 UPDATE  T1  
 SET   T1.InventoryName = T1.OInventoryName   
        + CASE WHEN ISNULL(T1.Spec01Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec01Name END   
        + CASE WHEN ISNULL(T1.Spec02Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec02Name END   
        + CASE WHEN ISNULL(T1.Spec03Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec03Name END   
        + CASE WHEN ISNULL(T1.Spec04Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec04Name END   
        + CASE WHEN ISNULL(T1.Spec05Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec05Name END   
        + CASE WHEN ISNULL(T1.Spec06Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec06Name END   
        + CASE WHEN ISNULL(T1.Spec07Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec07Name END   
        + CASE WHEN ISNULL(T1.Spec08Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec08Name END   
        + CASE WHEN ISNULL(T1.Spec09Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec09Name END   
        + CASE WHEN ISNULL(T1.Spec10Name, '''') = '''' THEN '''' ELSE '' '' + T1.Spec10Name END   
 FROM  #TAM T1  
 WHERE  ISNULL(T1.InventoryName, '''') = ''''  
 '  
  
 SET @SQL1111 = @SQL1111 + '  
 SELECT  *, CONVERT(BIT, 0) AS QAStatusDetail  
 FROM  #TAM  
 '  
 --+ Case When @StrSort <> '' Then @StrSort Else 'Order by InventoryID, ProfessionKind,VoucherNum, VoucherNo, OrderNum ' End  
 ---- Sua sap xep uu tien theo ordernum  
 + Case When @StrSort <> '' Then @StrSort Else 'Order by OrderNum, InventoryID, ProfessionKind,VoucherNum, VoucherNo ' End  
  
 --PRINT @SQL   
 --PRINT @SQL10  
 --PRINT @SQL1   
 --PRINT @SQL111  
 --PRINT @SQL111_1  
 --PRINT @SQL112  
 --PRINT @SQL112_0  
 --PRINT @SQL112_1  
 --PRINT @SQL113  
 --PRINT @SQL114  
 --PRINT @SQL1111  
  
 EXEC (@SQL + @SQL10 + @SQL1 +@SQL111+ @SQL111_1 +@SQL112 + @SQL112_0 + @SQL112_1 +@SQL113 +@SQL114 +@SQL1111+ ' DROP TABLE #TAM')  
   
 --NGUYENLUAN (ID 238309)  
 DELETE FROM D91T9009 Where HostID = @HostID AND UserID = @UserID AND Key01ID = 'D05F1600'  
    
 --NGUYENLUAN(244379)  
 DELETE FROM D91T9009 WHERE Key01ID = 'D05F1621_Inherit' AND FormID = 'D05F1621_Inherit' AND HostID = @HostID AND Key02ID = @DivisionID AND Key03ID = @QuotationID  
  
END--@Mode = 2  
  
IF @Mode = 1  ------------------Dieu chinh Don hang----------------------------  
BEGIN  
 IF EXISTS ( SELECT TOP 1 1 FROM D05T0016 WHERE AdjGroupID = @QuotationID )--Xem phieu dieu chinh  
 BEGIN    
  IF EXISTS (SELECT TOP 1 1 FROM D91T0025 WHERE BusinessType <> 'Service01')    
  BEGIN  
   SELECT  D05T0017.DivisionID, D05T0017.QuotationID, D05T0017.QuotationItemID, D05T0017.OrderNum,   
      D05T0017.InventoryID, CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS ItemName,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.ShortName ELSE D05T0017.ShortNameU END AS ShortName, D05T0017.UnitID,  
      ISNULL(CASE WHEN @CodeTable = 0 THEN D07T0005.UnitName ELSE D07T0005.UnitNameU END, '') as UnitName,  
      D05T0017.DeliveryDate, D05T0017.LocationNo, D05T0017.Quantity, D05T0017.CQuantity, D05T0017.ReduceQuantity, D05T0017.CReduceQuantity, D05T0017.UnitPrice,  
      D05T0017.OAmountTmp, D05T0017.CAmountTmp, D05T0017.ACol01, D05T0017.C_ACol01, D05T0017.ACol02, D05T0017.C_ACol02, D05T0017.ACol03, D05T0017.C_ACol03,   
      D05T0017.ACol04, D05T0017.C_ACol04, D05T0017.ACol05, D05T0017.C_ACol05,  
      ---- Modified on 23/08/2017 by Luu Hoang Hai (103587): Bo sung @AdjustType  
      D05T0017.[ACol01Rate], D05T0017.[ACol02Rate], D05T0017.[ACol03Rate], D05T0017.[ACol04Rate], D05T0017.[ACol05Rate],  
      D05T0017.Amount, D05T0017.CAmount, D05T0017.RateReduce, D05T0017.OriginalReduce, D05T0017.CReduce, D05T0017.VATGroupID, D05T0017.VATRate,   
      D05T0017.OVAT, D05T0017.CVAT, D05T0017.RateTax, D05T0017.OTax, D05T0017.CTax,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.Notes ELSE D05T0017.NotesU END AS Notes,  
      D05T0017.Ana01ID, D05T0017.Ana02ID, D05T0017.Ana03ID, D05T0017.Ana04ID, D05T0017.Ana05ID, D05T0017.Ana06ID, D05T0017.Ana07ID, D05T0017.Ana08ID,   
      D05T0017.Ana09ID, D05T0017.Ana10ID, D05T0017.NRef1, D05T0017.NRef2, D05T0017.NRef3, D05T0017.NRef4, D05T0017.NRef5,  
      CASE WHEN @CodeTable = 0 THEN D05T0017.DRef1 ELSE D05T0017.DRef1U END AS DRef1, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef2 ELSE D05T0017.DRef2U END AS DRef2,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.DRef3 ELSE D05T0017.DRef3U END AS DRef3, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef4 ELSE D05T0017.DRef4U END AS DRef4,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.DRef5 ELSE D05T0017.DRef5U END AS DRef5,   
      D05T0017.NDef1, D05T0017.NDef2, D05T0017.NDef3, D05T0017.NDef4, D05T0017.NDef5, D05T0017.StatusDetail, D05T0017.DetailCustomerID,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.DetailCustomerName ELSE D05T0017.DetailCustomerNameU END AS DetailCustomerName,  
      D05T0017.ParcelInventoryID, CASE WHEN @CodeTable = 0 THEN D05T0017.ParcelInventoryName ELSE D05T0017.ParcelInventoryNameU END AS ParcelInventoryName,   
      D05T0017.ParcelQuantity, D05T0017.ParcelPerQuantity, D05T0017.WeightNet, D05T0017.WeightNetTotal, D05T0017.WeightGrossTotal,  
      D05T0017.WeightGross, D05T0017.Measurement, D05T0017.MeasurementTotal, D05T0017.IsService, D05T0017.WareHouseID, CONVERT(BIT,D05T0017.IsPromotion) AS IsPromotion,   
      D05T0017.DateNumber01, D05T0017.Date01, D05T0017.Ratio01, D05T0017.DateNumber02, D05T0017.Date02, D05T0017.Ratio02, D05T0017.DateNumber03, D05T0017.Date03, D05T0017.Ratio03,  
      D05T0017.KitID, D05T0017.KitUnitID, D05T0017.KitQuantity, D05T0017.KitCQuantity, D05T0017.KitNo,   
      D05T0017.Spec01ID, D05T0017.Spec02ID, D05T0017.Spec03ID, D05T0017.Spec04ID, D05T0017.Spec05ID,   
      D05T0017.Spec06ID, D05T0017.Spec07ID, D05T0017.Spec08ID, D05T0017.Spec09ID, D05T0017.Spec10ID,  
      D05T0117.Dat01 as DisplayDat01,  D05T0117.Dat02 as DisplayDat02,  D05T0117.Dat03 as DisplayDat03,   
      D05T0117.Dat04 as DisplayDat04,  D05T0117.Dat05 as DisplayDat05,  D05T0117.Dat06 as DisplayDat06,   
      D05T0117.Dat07 as DisplayDat07,  D05T0117.Dat08 as DisplayDat08,  D05T0117.Dat09 as DisplayDat09, D05T0117.Dat10 as DisplayDat10,   
      D05T0117.Num01 as DisplayNum01,  D05T0117.Num02 as DisplayNum02,  D05T0117.Num03 as DisplayNum03,   
      D05T0117.Num04 as DisplayNum04,  D05T0117.Num05 as DisplayNum05,  D05T0117.Num06 as DisplayNum06,   
      D05T0117.Num07 as DisplayNum07,  D05T0117.Num08 as DisplayNum08,  D05T0117.Num09 as DisplayNum09, D05T0117.Num10 as DisplayNum10,   
      D05T0117.Str01 as DisplayStr01,  D05T0117.Str02 as DisplayStr02,  D05T0117.Str03 as DisplayStr03,   
      D05T0117.Str04 as DisplayStr04, D05T0117.Str05 as DisplayStr05,  D05T0117.Str06 as DisplayStr06,   
      D05T0117.Str07 as DisplayStr07,  D05T0117.Str08 as DisplayStr08,  D05T0117.Str09 as DisplayStr09, D05T0117.Str10 as DisplayStr10,  
      D05T0017.IssueWareHouseID, D05T0017.IsKit, D05T0017.DateRef1, D05T0017.DateRef2, D05T0017.DateRef3, D05T0017.DateRef4,   
      D05T0017.DateRef5, D05T0017.PromotionOnD05, D05T0017.OUnitPrice,   
      D05T0017.TransactionTypeID, D05T0017.ODetailDueDate, D05T0017.IsFromD16, D05T0017.DiscountedUnitPrice, D05T0017.LinkMasterID, D05T0017.LinkDetailID, D05T0017.DeliveryQTY,  
      D05T0017.ReturnQTY, --D05T0017.TempUnitPrice,   
      D05T0017.IsComponentOfKit, D05T0017.OrderQTY, D05T0017.OrderCQTY, D05T0017.AdjustmentListID,   
      D05T0017.UnitPriceOnD14, D05T0017.TotalAdjustedAmount, D05T0017.TotalAdjustedCAmount, D05T0017.AdjustedUnitPrice, D05T0017.InvoiceQTY,  
      ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor,   
      --SalesOrder.Quantity AS SalesOrderQuantity,  
      SalesOrder.Quantity + isnull(T15.OQuantity,0) - ( CASE WHEN D05T0016.ProfessionKind = 'AI'   
      THEN isnull(D05T0017.Quantity,0)  
      ELSE (-1) * isnull(D05T0017.Quantity,0) END )   
      AS SalesOrderQuantity,  
      CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS InventoryName,  
      CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS OInventoryName,  
      D05T0017.VATGroupID As VATGroupID1,  
      D05T0017.RateReduce AS RateReduce1,  
      CASE WHEN D05T0016.ProfessionKind = 'AI' THEN Convert(tinyint, 1) ELSE Convert(tinyint, 2)  END AS AdjustTypeID, ----10/05/2010: by Lan Huong  
      CASE WHEN @Language = '84' THEN CASE WHEN D05T0016.ProfessionKind = 'AI' THEN Convert(NVARCHAR(20), CASE WHEN @CodeTable = 0 THEN N'Taêng' ELSE N'Tăng' END) ELSE Convert(NVARCHAR(20), CASE WHEN @CodeTable = 0 THEN N'Giaûm' ELSE N'Giảm' END)  END   
      ELSE CASE WHEN D05T0016.ProfessionKind = 'AI' THEN Convert(VARCHAR(20), 'Increment') ELSE Convert(VARCHAR(20), 'Decrement')  END   
      END AS AdjustTypeDesc,  ----10/05/2010: by Lan Huong  
      D05T0017.PriceListID DPriceListID, D05T0017.CurrencyOnPriceList, D05T0017.DExchangeRate, D05T0017.PriceListLineID, D05T0017.PriceBreakID,  
      CONVERT(VARCHAR(250),'') AS InventoryRefInfoD05,  
      D05T0017.FactoryOutDate, D05T0017.AdjustmentLineID, D05T0017.BidQty, D05T0017.BidAcceptQty, D05T0017.TempUnitPrice,  
      CONVERT(DECIMAL(28,8),0) AS AdjOQuantity,-- So luong sau dieu chinh  
      CONVERT(DECIMAL(28,8), 0) AS ActOQuantity,--So luong da thuc hien  
      CONVERT(DECIMAL(28,8), 0) AS RemainOQuantity, --So luong con lai  
      D05T0016.IsVATPrice, D05T0016.ProfessionKind,  
      CONVERT(VARCHAR(50),'') AS SuplierTypeID,  
      CONVERT(VARCHAR(50),'') AS SuplierID,  
      CONVERT(NVARCHAR(250),'') AS SuplierName,  
      CONVERT(VARCHAR(50),'') AS POCurrencyID,  
      CONVERT(DECIMAL(28,8),0) AS POExchangeRate,  
      CONVERT(DECIMAL(28,8),0) AS POUnitPrice,  
      D05T0017.TotalAdjRate * 100 AS TotalAdjRate, CONVERT(DECIMAL(28,8),0) AS QuotaAdjRate, 0 AS ReCalculate,  
      D05T0017.ProjectID, CASE WHEN @CodeTable = 0 THEN D05T0017.ProjectName ELSE D05T0017.ProjectNameU END AS ProjectName,  
      D05T0017.TaskID, CASE WHEN @CodeTable = 0 THEN D05T0017.TaskName ELSE D05T0017.TaskNameU END AS TaskName,  
      CONVERT(VARCHAR(50),'') AS OBatchID, CONVERT(VARCHAR(50),'') AS OTransID, CONVERT(VARCHAR(50),'') AS OTransTypeID,   
      CONVERT(VARCHAR(50),'') AS STransTypeID, CONVERT(VARCHAR(50),'') AS SBatchID, CONVERT(VARCHAR(50),'') AS STransID,  
      ISNULL(T22.WarrantyTime, 0 ) AS WarrantyTime,  
      CONVERT(VARCHAR(50), '') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'') AS PackingItemID, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountT
mpTax, D05T0016.CurrencyID   
      , D05T0017.ShipAddressID, CONVERT(BIT, ISNULL(D05T0017.QAStatusDetail,0)) AS QAStatusDetail,  ISNULL(D05T0017.BreakGroupID,'') AS BreakGroupID,  
      ISNULL(D05T0117.IsOldData,1) AS IsOldData, ISNULL(D05T0117.OriACol01,0) AS OriACol01,ISNULL(D05T0117.OriACol02,0) AS OriACol02,ISNULL(D05T0117.OriACol03,0) AS OriACol03,ISNULL(D05T0117.OriACol04,0) AS OriACol04,ISNULL(D05T0117.OriACol05,0) AS OriACo
l05,  
      ISNULL(D05T0117.OriACol01Rate,0) AS OriACol01Rate,ISNULL(D05T0117.OriACol02Rate,0) AS OriACol02Rate,ISNULL(D05T0117.OriACol03Rate,0) AS OriACol03Rate,ISNULL(D05T0117.OriACol04Rate,0) AS OriACol04Rate,ISNULL(D05T0117.OriACol05Rate,0) AS OriACol05Rate
,  
      ISNULL(D05T0117.OriAdjustmentListID,'') AS OriAdjustmentListID,ISNULL(D05T0117.OriAdjustmentLineID,'') AS OriAdjustmentLineID,  
      CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
      CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
      , CONVERT(DECIMAL(28,8), 0) AS Weight  
      , CONVERT(DATETIME, NULL) AS ExpireDate, D05T0017.Specifications  
      , D05T0017.IsAdjustPrice  
   INTO  #Tmp_Adjusted  
   FROM  D05T0017 WITH (NOLOCK)   
   LEFT JOIN D05T0016 WITH (NOLOCK) ON D05T0016.QuotationID = D05T0017.QuotationID  
   LEFT JOIN D05T0017 AS SalesOrder WITH (NOLOCK) ON D05T0017.LinkDetailID = SalesOrder.QuotationItemID  
   LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID=D05T0017.InventoryID AND D07T0004.UnitID=D05T0017.UnitID      
   LEFT JOIN (   
      SELECT  T15.SalesOrderItemID, 1 as isAdjusted,   
         SUM(T15.OQuantity) AS OQuantity                  
      FROM  D05T2025 T05 WITH (NOLOCK)   
      INNER JOIN (  
         SELECT  T15.AdjSalesOrderID,T15.SalesOrderItemID,   
            CASE WHEN T16.ProfessionKind = 'AI'   
             THEN SUM(T15.OQuantity)   
             ELSE (-1) * SUM(T15.OQuantity) END AS OQuantity  
         FROM  D05T2125 T15 WITH (NOLOCK)   
         INNER JOIN  D05T0016 T16 WITH (NOLOCK)   
           ON T16.QuotationID = T15.AdjSalesOrderID   
         GROUP BY T15.AdjSalesOrderID,T15.SalesOrderItemID, T16.ProfessionKind  
         ) T15   
        ON T05.AdjSalesOrderID = T15.AdjSalesOrderID  
    
      WHERE  T05.DivisionID = @DivisionID   
      GROUP BY T15.SalesOrderItemID  
      ) T15   
     ON SalesOrder.QuotationItemID = T15.SalesOrderItemID   
   LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON D05T0017.QuotationID= T22.QuotationID AND D05T0017.QuotationItemID=T22.QuotationItemID AND T22.WarrantyTime > 0  
   LEFT JOIN D05T0117 D05T0117 WITH(NOLOCK)  
    ON  D05T0017.QuotationID = D05T0117.QuotationID  
    AND  D05T0017.QuotationItemID = D05T0117.QuotationItemID  
   LEFT JOIN D07T0005 WITH (NOLOCK) ON D07T0005.UnitID = D05T0017.UnitID  
   WHERE  D05T0016.AdjGroupID = @QuotationID  
   ORDER BY D05T0017.OrderNum    
     
   UPDATE  Tmp  
   SET   SuplierTypeID = ISNULL(T17.SuplierTypeID,''),  
      SuplierID = ISNULL(T17.SuplierID,''),  
      POCurrencyID = ISNULL(T17.CurrencyID,''),  
      POExchangeRate = ISNULL(T17.ExchangeRate,0),  
      POUnitPrice = ISNULL(T17.UnitPrice,0)  
   FROM  #Tmp_Adjusted Tmp  
   INNER JOIN D05T1017 T17 WITH(NOLOCK)  
     ON Tmp.LinkMasterID = T17.SOID  
      AND Tmp.LinkDetailID = T17.SOItemID  
        
   UPDATE  Tmp  
   SET   SuplierName = O.ObjectNameU  
   FROM  #Tmp_Adjusted Tmp  
   LEFT JOIN OBJECT O WITH(NOLOCK)  
     ON Tmp.SuplierTypeID = O.ObjectTypeID  
      AND Tmp.SuplierID = O.ObjectID  
  
   ---- Lay Thoi gian bao hanh cua cac SO co du an, hang muc tu D54 sau khi nghiem thu  
   
   --UPDATE  Tmp  
   --SET   Tmp.WarrantyTime = T2.WarrantyPeriod  
   --FROM  #Tmp_Adjusted Tmp  
   --INNER JOIN D54T2015 T2 WITH(NOLOCK)  
   -- ON  Tmp.ProjectID = T2.ProjectID  
   -- AND  Tmp.TaskID = T2.TaskID  
  
   UPDATE  Tmp  
   SET   Tmp.OAmountTmpTax =   ROUND(Tmp.UnitPrice*Tmp.Quantity,T10.OriginalDecimal),     
      Tmp.CAmountTmpTax =   ROUND(Tmp.UnitPrice*Tmp.Quantity * T16.ExchangeRate,  @D90_ConvertedDecimals)  
   FROM  #Tmp_Adjusted Tmp  
   INNER JOIN D05T0017 T17 WITH(NOLOCK)  
     ON Tmp.QuotationID = T17.QuotationID AND Tmp.QuotationItemID = T17.QuotationItemID  
   INNER JOIN D05T0016 T16 WITH(NOLOCK)  
     ON T17.QuotationID = T16.QuotationID  
   INNER JOIN  D91V0010 T10 WITH(NOLOCK)  
     ON T10.CurrencyID = Tmp.CurrencyID  
  
   ------ Quy cach dong goi (Cac dong dieu chinh So luong, gia tri,... ) => Thi phai quy ve Don hang goc  
   UPDATE  T1  
   SET   T1.PackingID = T2.PackingID,   
      T1.PackingFactor = T2.PackQTY,   
      T1.PackingQuantity = T2.Quantity,   
      T1.PackingItemID = T2.ItemID  
   FROM  #Tmp_Adjusted T1  
   INNER JOIN D05T2425 T2 WITH(NOLOCK)  
     ON T1.LinkMasterID = T2.BatchID   
     AND T1.LinkDetailID = T2.TransID   
     AND T2.OTransType = 'SO'  
   WHERE  ISNULL(PackingItemID,'') = ''   
  
   ------ Quy cach dong goi (Cac dong dieu chinh Them moi=> Phai lay don hang dieu chinh them moi dau tien)  
   UPDATE  T1  
   SET   T1.PackingID = T3.PackingID,   
      T1.PackingFactor = T3.PackQTY,   
      T1.PackingQuantity = T3.Quantity,   
      T1.PackingItemID = T3.ItemID  
   FROM  #Tmp_Adjusted T1  
   INNER JOIN  D05T0017 T2  WITH(NOLOCK)  
   ON   T1.LinkMasterID = T2.LinkMasterID  
   AND   T1.LinkDetailID  = T2.LinkDetailID   
   INNER JOIN D05T2425 T3 WITH(NOLOCK)  
   ON   T2.QuotationID  = T3.BatchID  
   AND   T2.QuotationItemID = T3.TransID  
   AND   T3.OTransType = 'SO'  
   WHERE  ISNULL(T1.LinkMasterID,'') <> '' AND ISNULL(PackingItemID,'') = ''   
  
   SELECT * FROM #Tmp_Adjusted    
  END  
  ELSE  --- Xem phieu dieu chinh cua Du lich bay  
  BEGIN  
   SELECT  D05T0017.DivisionID, D05T0017.QuotationID, D05T0017.QuotationItemID, D05T0017.OrderNum,   
      D05T0017.InventoryID, CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS ItemName,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.ShortName ELSE D05T0017.ShortNameU END AS ShortName, D05T0017.UnitID,  
      D05T0017.DeliveryDate, D05T0017.LocationNo, D05T0017.Quantity, D05T0017.CQuantity, D05T0017.ReduceQuantity, D05T0017.CReduceQuantity, D05T0017.UnitPrice,  
      D05T0017.OAmountTmp, D05T0017.CAmountTmp, D05T0017.ACol01, D05T0017.C_ACol01,   
      D05T0017.ACol02, D05T0017.C_ACol02, D05T0017.ACol03, D05T0017.C_ACol03,   
      CONVERT(DECIMAL(28,8), 0) AS ACol04, CONVERT(DECIMAL(28,8), 0) AS C_ACol04,   
      CONVERT(DECIMAL(28,8), 0) AS ACol05, CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
      D05T0017.Amount, D05T0017.CAmount,   
      CONVERT(DECIMAL(28,8), 0) AS RateReduce,   
      CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,   
      CONVERT(DECIMAL(28,8), 0) AS CReduce, D05T0017.VATGroupID, D05T0017.VATRate,   
      D05T0017.OVAT, D05T0017.CVAT, D05T0017.RateTax, D05T0017.OTax, D05T0017.CTax,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.Notes ELSE D05T0017.NotesU END AS Notes,  
      D05T0017.Ana01ID, D05T0017.Ana02ID, D05T0017.Ana03ID, D05T0017.Ana04ID, D05T0017.Ana05ID, D05T0017.Ana06ID, D05T0017.Ana07ID, D05T0017.Ana08ID,   
      D05T0017.Ana09ID, D05T0017.Ana10ID, D05T0017.NRef1, D05T0017.NRef2, D05T0017.NRef3, D05T0017.NRef4, D05T0017.NRef5,  
      CASE WHEN @CodeTable = 0 THEN D05T0017.DRef1 ELSE D05T0017.DRef1U END AS DRef1, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef2 ELSE D05T0017.DRef2U END AS DRef2,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.DRef3 ELSE D05T0017.DRef3U END AS DRef3, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef4 ELSE D05T0017.DRef4U END AS DRef4,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.DRef5 ELSE D05T0017.DRef5U END AS DRef5,   
      D05T0017.NDef1, D05T0017.NDef2, D05T0017.NDef3, D05T0017.NDef4, D05T0017.NDef5, D05T0017.StatusDetail, D05T0017.DetailCustomerID,   
      CASE WHEN @CodeTable = 0 THEN D05T0017.DetailCustomerName ELSE D05T0017.DetailCustomerNameU END AS DetailCustomerName,  
      D05T0017.ParcelInventoryID, CASE WHEN @CodeTable = 0 THEN D05T0017.ParcelInventoryName ELSE D05T0017.ParcelInventoryNameU END AS ParcelInventoryName,   
      D05T0017.ParcelQuantity, D05T0017.ParcelPerQuantity, D05T0017.WeightNet, D05T0017.WeightNetTotal, D05T0017.WeightGrossTotal,  
      D05T0017.WeightGross, D05T0017.Measurement, D05T0017.MeasurementTotal, D05T0017.IsService, D05T0017.WareHouseID, CONVERT(BIT,D05T0017.IsPromotion) AS IsPromotion,   
      D05T0017.DateNumber01, D05T0017.Date01, D05T0017.Ratio01, D05T0017.DateNumber02, D05T0017.Date02, D05T0017.Ratio02, D05T0017.DateNumber03, D05T0017.Date03, D05T0017.Ratio03,  
      D05T0017.KitID, D05T0017.KitUnitID, D05T0017.KitQuantity, D05T0017.KitCQuantity, D05T0017.KitNo,   
      D05T0017.Spec01ID, D05T0017.Spec02ID, D05T0017.Spec03ID, D05T0017.Spec04ID, D05T0017.Spec05ID,   
      D05T0017.Spec06ID, D05T0017.Spec07ID, D05T0017.Spec08ID, D05T0017.Spec09ID, D05T0017.Spec10ID,  
      D05T0017.IssueWareHouseID, D05T0017.IsKit, D05T0017.DateRef1, D05T0017.DateRef2, D05T0017.DateRef3, D05T0017.DateRef4,   
      D05T0017.DateRef5, D05T0017.PromotionOnD05, D05T0017.OUnitPrice,   
      D05T0017.TransactionTypeID, D05T0017.ODetailDueDate, D05T0017.IsFromD16, D05T0017.DiscountedUnitPrice, D05T0017.LinkMasterID, D05T0017.LinkDetailID, D05T0017.DeliveryQTY,  
      D05T0017.ReturnQTY, --D05T0017.TempUnitPrice,   
      D05T0017.IsComponentOfKit, D05T0017.OrderQTY, D05T0017.OrderCQTY, D05T0017.AdjustmentListID,   
      D05T0017.UnitPriceOnD14, D05T0017.TotalAdjustedAmount, D05T0017.TotalAdjustedCAmount, D05T0017.AdjustedUnitPrice, D05T0017.InvoiceQTY,  
      ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor,   
      --SalesOrder.Quantity AS SalesOrderQuantity,  
      SalesOrder.Quantity + isnull(T15.OQuantity,0) - ( CASE WHEN D05T0016.ProfessionKind = 'AI'   
         THEN isnull(D05T0017.Quantity,0)  
         ELSE (-1) * isnull(D05T0017.Quantity,0) END )   
      AS SalesOrderQuantity,  
      CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS InventoryName,  
      CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS OInventoryName,  
      D05T0017.VATGroupID As VATGroupID1,  
      D05T0017.RateReduce AS RateReduce1,  
      CASE WHEN D05T0016.ProfessionKind = 'AI' THEN Convert(tinyint, 1) ELSE Convert(tinyint, 2)  END AS AdjustTypeID, ----10/05/2010: by Lan Huong  
      CASE WHEN @Language = '84' THEN CASE WHEN D05T0016.ProfessionKind = 'AI'   
         THEN Convert(NVARCHAR(20), CASE WHEN @CodeTable = 0   
          THEN N'Theâm môùi'   
          ELSE N'Thêm mới'   
          END)   
          ELSE Convert(NVARCHAR(20), CASE WHEN @CodeTable = 0  
          THEN N'Giaûm'   
          ELSE N'Giảm'   
          END)    
         END   
      ELSE CASE WHEN D05T0016.ProfessionKind = 'AI'   
      THEN Convert(VARCHAR(20), 'Add new')   
      ELSE Convert(VARCHAR(20), 'Decrement')    
      END   
      END AS AdjustTypeDesc,  ----10/05/2010: by Lan Huong  
      D05T0017.PriceListID DPriceListID, D05T0017.CurrencyOnPriceList, D05T0017.DExchangeRate, D05T0017.PriceListLineID, D05T0017.PriceBreakID,  
      D05T0017.FactoryOutDate, D05T0017.AdjustmentLineID,D05T0017.BidQty, D05T0017.BidAcceptQty,D05T0017.TempUnitPrice,  
      CONVERT(DECIMAL(28,8),0) AS AdjOQuantity,-- So luong sau dieu chinh  
      CONVERT(DECIMAL(28,8), 0) AS ActOQuantity,--So luong da thuc hien  
      CONVERT(DECIMAL(28,8), 0) AS RemainOQuantity, --So luong con lai  
      D05T0016.IsVATPrice,D05T0016.ProfessionKind,--D05T0017.LinkMasterID, D05T0017.LinkDetailID,  
      CONVERT(VARCHAR(50),'') AS SuplierTypeID,  
      CONVERT(VARCHAR(50),'') AS SuplierID,  
      CONVERT(NVARCHAR(250),'') AS SuplierName,  
      CONVERT(VARCHAR(50),'') AS POCurrencyID,  
      CONVERT(DECIMAL(28,8),0) AS POExchangeRate,  
      CONVERT(DECIMAL(28,8),0) AS POUnitPrice,  
      CONVERT(DECIMAL(28,8),0) AS TotalAdjRate, CONVERT(DECIMAL(28,8),0) AS QuotaAdjRate, 0 AS ReCalculate,  
      D05T0017.ProjectID, CASE WHEN @CodeTable = 0 THEN D05T0017.ProjectName ELSE D05T0017.ProjectNameU END AS ProjectName,  
      D05T0017.TaskID, CASE WHEN @CodeTable = 0 THEN D05T0017.TaskName ELSE D05T0017.TaskNameU END AS TaskName,  
      CONVERT(VARCHAR(50),'') AS OBatchID, CONVERT(VARCHAR(50),'') AS OTransID, CONVERT(VARCHAR(50),'') AS OTransTypeID,   
      CONVERT(VARCHAR(50),'') AS STransTypeID, CONVERT(VARCHAR(50),'') AS SBatchID, CONVERT(VARCHAR(50),'') AS STransID,  
      ISNULL(T22.WarrantyTime, 0 ) AS WarrantyTime,  
      CONVERT(VARCHAR(50), '') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'') AS PackingItemID, CONVERT(Decimal(28,8),0) AS OAmountTmpTax, CONVERT(Decimal(28,8),0) AS CAmoun
tTmpTax, D05T0016.CurrencyID   
      , CONVERT(BIT, ISNULL(D05T0017.QAStatusDetail,0)) AS QAStatusDetail,  ISNULL(D05T0017.BreakGroupID,'') AS BreakGroupID,  
      ISNULL(D05T0117.IsOldData,1) AS IsOldData, ISNULL(D05T0117.OriACol01,0) AS OriACol01,ISNULL(D05T0117.OriACol02,0) AS OriACol02,ISNULL(D05T0117.OriACol03,0) AS OriACol03,ISNULL(D05T0117.OriACol04,0) AS OriACol04,ISNULL(D05T0117.OriACol05,0) AS OriACo
l05,  
      ISNULL(D05T0117.OriACol01Rate,0) AS OriACol01Rate,ISNULL(D05T0117.OriACol02Rate,0) AS OriACol02Rate,ISNULL(D05T0117.OriACol03Rate,0) AS OriACol03Rate,ISNULL(D05T0117.OriACol04Rate,0) AS OriACol04Rate,ISNULL(D05T0117.OriACol05Rate,0) AS OriACol05Rate
,  
      ISNULL(D05T0117.OriAdjustmentListID,'') AS OriAdjustmentListID,ISNULL(D05T0117.OriAdjustmentLineID,'') AS OriAdjustmentLineID,  
      CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
      CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
      , CONVERT(DECIMAL(28,8), 0) AS Weight  
      , CONVERT(DATETIME, NULL) AS ExpireDate, D05T0017.Specifications  
      , D05T0017.IsAdjustPrice  
   INTO  #Tmp_Adj  
   FROM  D05T0017 WITH (NOLOCK)   
   LEFT JOIN D05T0016 WITH (NOLOCK) ON D05T0016.QuotationID = D05T0017.QuotationID  
   LEFT JOIN D05T0017 AS SalesOrder WITH (NOLOCK) ON D05T0017.LinkDetailID = SalesOrder.QuotationItemID  
   LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID=D05T0017.InventoryID AND D07T0004.UnitID=D05T0017.UnitID     
   LEFT JOIN (   
      SELECT  T15.SalesOrderItemID, 1 as isAdjusted,   
         SUM(T15.OQuantity) AS OQuantity                  
      FROM  D05T2025 T05 WITH (NOLOCK)   
      INNER JOIN (  
         SELECT  T15.AdjSalesOrderID,T15.SalesOrderItemID,   
            CASE WHEN T16.ProfessionKind = 'AI'   
             THEN SUM(T15.OQuantity)   
             ELSE (-1) * SUM(T15.OQuantity) END AS OQuantity  
         FROM  D05T2125 T15 WITH (NOLOCK)   
         INNER JOIN  D05T0016 T16 WITH (NOLOCK)   
           ON T16.QuotationID = T15.AdjSalesOrderID   
         GROUP BY T15.AdjSalesOrderID,T15.SalesOrderItemID, T16.ProfessionKind  
         ) T15   
        ON T05.AdjSalesOrderID = T15.AdjSalesOrderID  
           
      WHERE  T05.DivisionID = @DivisionID   
      GROUP BY T15.SalesOrderItemID  
      ) T15 ON SalesOrder.QuotationItemID = T15.SalesOrderItemID   
   LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON D05T0017.QuotationID= T22.QuotationID AND D05T0017.QuotationItemID=T22.QuotationItemID AND T22.WarrantyTime > 0  
   LEFT JOIN D05T0117 D05T0117 WITH(NOLOCK)  
     ON  D05T0017.QuotationID = D05T0117.QuotationID  
     AND  D05T0017.QuotationItemID = D05T0117.QuotationItemID  
   WHERE  D05T0016.AdjGroupID = @QuotationID  
   ORDER BY D05T0017.OrderNum  
     
   UPDATE  Tmp  
   SET   SuplierTypeID = ISNULL(T17.SuplierTypeID,''),  
      SuplierID = ISNULL(T17.SuplierID,''),  
      POCurrencyID = ISNULL(T17.CurrencyID,''),  
      POExchangeRate = ISNULL(T17.ExchangeRate,0),  
      POUnitPrice = ISNULL(T17.UnitPrice,0)  
   FROM  #Tmp_Adj Tmp  
   INNER JOIN D05T1017 T17 WITH(NOLOCK)  
     ON Tmp.LinkMasterID = T17.SOID  
      AND Tmp.LinkDetailID = T17.SOItemID  
        
   UPDATE  Tmp  
   SET   SuplierName = O.ObjectNameU  
   FROM  #Tmp_Adj Tmp  
   LEFT JOIN OBJECT O WITH(NOLOCK)  
     ON Tmp.SuplierTypeID = O.ObjectTypeID  
      AND Tmp.SuplierID = O.ObjectID  
  
   ---- Lay Thoi gian bao hanh cua cac SO co du an, hang muc tu D54 sau khi nghiem thu  
   
   --UPDATE  Tmp  
   --SET   Tmp.WarrantyTime = T2.WarrantyPeriod  
   --FROM  #Tmp_Adjusted Tmp  
   --INNER JOIN D54T2015 T2 WITH(NOLOCK)  
   -- ON  Tmp.ProjectID = T2.ProjectID  
   -- AND  Tmp.TaskID = T2.TaskID  
  
   UPDATE  Tmp  
   SET   Tmp.OAmountTmpTax = ROUND(Tmp.UnitPrice*Tmp.Quantity,T10.OriginalDecimal),     
      Tmp.CAmountTmpTax = ROUND(Tmp.UnitPrice*Tmp.Quantity * T16.ExchangeRate,  @D90_ConvertedDecimals)  
   FROM  #Tmp_Adj Tmp  
   INNER JOIN D05T0017 T17 WITH(NOLOCK)  
     ON Tmp.QuotationID = T17.QuotationID AND Tmp.QuotationItemID = T17.QuotationItemID  
   INNER JOIN D05T0016 T16 WITH(NOLOCK)  
     ON T17.QuotationID = T16.QuotationID  
   INNER JOIN  D91V0010 T10 WITH(NOLOCK)  
     ON  T10.CurrencyID = Tmp.CurrencyID  
        
   SELECT * FROM #Tmp_Adj   
  END    
 END  
 ELSE   --Them moi phieu dieu chinh  
 IF EXISTS (SELECT TOP 1 1 FROM D91T0025 WHERE BusinessType <> 'Service01')  
 BEGIN     
  SELECT  D05T0017.DivisionID,  
     CONVERT(VARCHAR(20),'') AS QuotationID,  
     CONVERT(VARCHAR(20),'') AS QuotationItemID,   
     D05T0017.OrderNum,  
     D05T0017.InventoryID,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS ItemName,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.ShortName ELSE D05T0017.ShortNameU END AS ShortName,  
     D05T0017.UnitID,  
     D05T0017.DeliveryDate,  
     D05T0017.LocationNo,  
     --(D05T0017.Quantity + ISNULL(T15.OQuantity,0)) AS SalesOrderQuantity, --SL sau dieu chinh  
     D05T0017.Quantity AS SalesOrderQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS Quantity,  
     CONVERT(DECIMAL(28,8), 0) AS CQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
     CONVERT(DECIMAL(28,8), UnitPrice) AS UnitPrice,  
     CONVERT(DECIMAL(28,8), 0) AS OAmountTmp,  
     CONVERT(DECIMAL(28,8), 0) AS CAmountTmp,  
     CONVERT(DECIMAL(28,8), 0) AS ACol01,  
     CONVERT(DECIMAL(28,8), 0) AS C_ACol01,  
     CONVERT(DECIMAL(28,8), 0) AS ACol02,  
     CONVERT(DECIMAL(28,8), 0) AS C_ACol02,  
     CONVERT(DECIMAL(28,8), 0) AS ACol03,  
     CONVERT(DECIMAL(28,8), 0) AS C_ACol03,  
     CONVERT(DECIMAL(28,8), 0) AS ACol04,  
     CONVERT(DECIMAL(28,8), 0) AS C_ACol04,  
     CONVERT(DECIMAL(28,8), 0) AS ACol05,  
     CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
     ---- Modified on 23/08/2017 by Luu Hoang Hai (103587): Bo sung @AdjustType  
     D05T0017.[ACol01Rate] * CASE WHEN @AdjustType = 1 THEN 1 ELSE 0 END AS [ACol01Rate],  
     D05T0017.[ACol02Rate] * CASE WHEN @AdjustType = 1 THEN 1 ELSE 0 END AS [ACol02Rate],  
     D05T0017.[ACol03Rate] * CASE WHEN @AdjustType = 1 THEN 1 ELSE 0 END AS [ACol03Rate],  
     D05T0017.[ACol04Rate] * CASE WHEN @AdjustType = 1 THEN 1 ELSE 0 END AS [ACol04Rate],  
     D05T0017.[ACol05Rate] * CASE WHEN @AdjustType = 1 THEN 1 ELSE 0 END AS [ACol05Rate],  
       
     CONVERT(DECIMAL(28,8), 0) AS Amount,  
     CONVERT(DECIMAL(28,8), 0) AS CAmount,  
     CONVERT(DECIMAL(28,8), RateReduce) AS RateReduce,  
     CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
     CONVERT(DECIMAL(28,8), 0) AS CReduce,  
     D05T0017.VATGroupID,  
     CONVERT(DECIMAL(28,8), VATRate) AS VATRate,  
     CONVERT(DECIMAL(28,8), 0) AS OVAT,  
     CONVERT(DECIMAL(28,8), 0) AS CVAT,  
     CONVERT(DECIMAL(28,8), RateTax) AS RateTax,  
     CONVERT(DECIMAL(28,8), 0) AS OTax,  
     CONVERT(DECIMAL(28,8), 0) AS CTax,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.Notes ELSE D05T0017.NotesU END AS Notes,  
     D05T0017.Ana01ID, D05T0017.Ana02ID, D05T0017.Ana03ID, D05T0017.Ana04ID, D05T0017.Ana05ID,  
     D05T0017.Ana06ID, D05T0017.Ana07ID, D05T0017.Ana08ID, D05T0017.Ana09ID, D05T0017.Ana10ID,  
     D05T0017.NRef1, D05T0017.NRef2, D05T0017.NRef3, D05T0017.NRef4, D05T0017.NRef5,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.DRef1 ELSE D05T0017.DRef1U END AS DRef1, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef2 ELSE D05T0017.DRef2U END AS DRef2,   
     CASE WHEN @CodeTable = 0 THEN D05T0017.DRef3 ELSE D05T0017.DRef3U END AS DRef3, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef4 ELSE D05T0017.DRef4U END AS DRef4,   
     CASE WHEN @CodeTable = 0 THEN D05T0017.DRef5 ELSE D05T0017.DRef5U END AS DRef5,   
  
     D05T0017.NDef1, D05T0017.NDef2, D05T0017.NDef3, D05T0017.NDef4, D05T0017.NDef5,  
     D05T0017.StatusDetail,  
     D05T0017.DetailCustomerID,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.DetailCustomerName ELSE D05T0017.DetailCustomerNameU END AS DetailCustomerName,  
     D05T0017.ParcelInventoryID,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.ParcelInventoryName ELSE D05T0017.ParcelInventoryNameU END AS ParcelInventoryName,  
     CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
     CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
     CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
     CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
     CONVERT(DECIMAL(28,8), 0) AS Measurement,  
     CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
     D05T0017.IsService,  
     D05T0017.WareHouseID,  
     CONVERT(BIT,D05T0017.IsPromotion) AS IsPromotion,  
     D05T0017.DateNumber01,  
     D05T0017.Date01,  
     CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
     D05T0017.DateNumber02,  
     D05T0017.Date02,  
     CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
     D05T0017.DateNumber03,  
     D05T0017.Date03,  
     CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
     D05T0017.KitID,  
     D05T0017.KitUnitID,  
     CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
     D05T0017.KitNo,  
     D05T0017.Spec01ID, D05T0017.Spec02ID, D05T0017.Spec03ID, D05T0017.Spec04ID, D05T0017.Spec05ID,  
     D05T0017.Spec06ID, D05T0017.Spec07ID, D05T0017.Spec08ID, D05T0017.Spec09ID, D05T0017.Spec10ID,  
     D05T0017.IssueWareHouseID,  
     D05T0017.IsKit,  
     D05T0017.DateRef1,  
     D05T0017.DateRef2,  
     D05T0017.DateRef3,  
     D05T0017.DateRef4,  
     D05T0017.DateRef5,  
     D05T0017.PromotionOnD05,  
     CONVERT(DECIMAL(28,8),D05T0017.OUnitPrice) AS OUnitPrice,  
     D05T0017.TransactionTypeID,  
     D05T0017.ODetailDueDate,  
     D05T0017.IsFromD16,  
     CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
     D05T0017.QuotationID AS LinkMasterID,  
     D05T0017.QuotationItemID AS LinkDetailID,  
  
     ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor,   
     CASE WHEN @CodeTable = 0 THEN ItemName ELSE ItemNameU END AS InventoryName,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN D07T0005.UnitName ELSE D07T0005.UnitNameU END, '') as UnitName,  
     D05T0017.VATGroupID AS VATGroupID1,  
     D05T0017.RateReduce * 100 AS RateReduce1,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN A.Description ELSE  A.DescriptionU END,'') as Spec01Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN B.Description ELSE  B.DescriptionU END,'') as Spec02Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN C.Description ELSE  C.DescriptionU END,'') as Spec03Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN D.Description ELSE  D.DescriptionU END,'') as Spec04Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN E.Description ELSE  E.DescriptionU END,'') as Spec05Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN F.Description ELSE  F.DescriptionU END,'') as Spec06Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN G.Description ELSE  G.DescriptionU END,'') as Spec07Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN H.Description ELSE  H.DescriptionU END,'') as Spec08Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN I.Description ELSE  I.DescriptionU END,'') as Spec09Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN J.Description ELSE  J.DescriptionU END,'') as Spec10Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN D07T0002.InventoryName ELSE D07T0002.InventoryNameU END,'') AS OInventoryName,   
     ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
     ISNULL(D07T0004.Formula,'') AS ConversionFormula ,  
     CONVERT(MONEY,0) AS DeliveredQuantity,  
     --CONVERT(MONEY,0) AS RefUnitPrice,  
     CONVERT(MONEY,0) AS MinUnitPrice,  
     D07T1011.RDVoucherID,   
     D07T1011.TransactionID,   
     D07T1011.R_D,   
     D07T1011.SplitNo,  
  
     D07T0002.UnitID as BaseUnitID,  
     Case when D07T2230.TransID is null then 0 else 1 end as Flag,  
     isnull(D07T2230.FormulaID, '') as FormulaID,  
     isnull(D07T2230.Formula, '') as Formula,  
     isnull(D07T2230.Num01, 0) as Num01, isnull(D07T2230.Num02, 0) as Num02,  
     isnull(D07T2230.Num03, 0) as Num03, isnull(D07T2230.Num04, 0) as Num04,  
     isnull(D07T2230.Num05, 0) as Num05, isnull(D07T2230.Num06, 0) as Num06,  
     isnull(D07T2230.Num07, 0) as Num07, isnull(D07T2230.Num08, 0) as Num08,  
     isnull(D07T2230.Num09, 0) as Num09, isnull(D07T2230.Num10, 0) as Num10,  
     D05T0117.Dat01 as DisplayDat01,  D05T0117.Dat02 as DisplayDat02,  D05T0117.Dat03 as DisplayDat03,   
     D05T0117.Dat04 as DisplayDat04,  D05T0117.Dat05 as DisplayDat05,  D05T0117.Dat06 as DisplayDat06,   
     D05T0117.Dat07 as DisplayDat07,  D05T0117.Dat08 as DisplayDat08,  D05T0117.Dat09 as DisplayDat09, D05T0117.Dat10 as DisplayDat10,   
     D05T0117.Num01 as DisplayNum01,  D05T0117.Num02 as DisplayNum02,  D05T0117.Num03 as DisplayNum03,   
     D05T0117.Num04 as DisplayNum04,  D05T0117.Num05 as DisplayNum05,  D05T0117.Num06 as DisplayNum06,   
     D05T0117.Num07 as DisplayNum07,  D05T0117.Num08 as DisplayNum08,  D05T0117.Num09 as DisplayNum09, D05T0117.Num10 as DisplayNum10,   
     D05T0117.Str01 as DisplayStr01,  D05T0117.Str02 as DisplayStr02,  D05T0117.Str03 as DisplayStr03,   
     D05T0117.Str04 as DisplayStr04,  D05T0117.Str05 as DisplayStr05,  D05T0117.Str06 as DisplayStr06,   
     D05T0117.Str07 as DisplayStr07,  D05T0117.Str08 as DisplayStr08,  D05T0117.Str09 as DisplayStr09, D05T0117.Str10 as DisplayStr10,  
     --Case when T15.IsAdjusted is null then 0 else 1 end IsAdjust, --Dung cho .NET  
     --Case when T15.IsAdjusted is null then 0 else 1 end IsAdjusted, --Dung cho VB  
     Convert(tinyint, 0) As IsAdjust, --Dung cho .NET  
     Convert(tinyint, 0) As IsAdjusted, --Dung cho .NET  
     --0 As DeliveredQuantity,   
     D05T0017.UnitPrice As RefUnitPrice ,   
     Case when D05T0017.Iskit=2 then 1 else 0 end as IsKit1,   
     D05T2030.OModuleID AS LinkModuleID,  
     D05T2030.OVoucherID AS LinkQuotationID,  
     D05T2030.OTransID AS LinkQuotationItemID,  
     Convert(tinyint, 1) AS AdjustTypeID,  
     CASE WHEN @Language = '84' THEN CONVERT(NVARCHAR(50), CASE WHEN @CodeTable = 0 THEN N'Taêng' ELSE N'Tăng' END) ELSE CONVERT(VARCHAR(20), 'Increment') END AS AdjustTypeDesc,  
     D05T0017.AdjustmentListID,  
     D05T0017.TotalAdjustedAmount,  
     D05T0017.TotalAdjustedCAmount,  
     D05T0017.AdjustedUnitPrice,  
     D05T0017.PriceListID DPriceListID, D05T0017.CurrencyOnPriceList, D05T0017.DExchangeRate,  
     D07T0002.IsBOM, D05T0017.PriceListLineID, D05T0017.PriceBreakID,  
     CONVERT(VARCHAR(250),'') AS InventoryRefInfoD05,  
     D05T0017.FactoryOutDate, D05T0017.AdjustmentLineID,D05T0017.BidQty, D05T0017.BidAcceptQty, D05T0017.TempUnitPrice,  
     CONVERT(DECIMAL(28,8),0) AS AdjOQuantity,-- So luong sau dieu chinh  
     CONVERT(DECIMAL(28,8), 0) AS ActOQuantity,--So luong da thuc hien  
     CONVERT(DECIMAL(28,8), 0) AS RemainOQuantity, --So luong con lai  
     CONVERT(VARCHAR(50),'') AS SuplierTypeID,   
     CONVERT(VARCHAR(50),'') AS SuplierID,  
     CONVERT(NVARCHAR(250),'') AS SuplierName,  
     CONVERT(VARCHAR(50),'') AS POCurrencyID,  
     CONVERT(DECIMAL(28,8), 0) AS POExchangeRate,  
     CONVERT(DECIMAL(28,8), 0) AS POUnitPrice,  
     1 AS IsLockPO, CONVERT(TINYINT,0) AS IsVATPrice, CONVERT(VARCHAR(10),'') AS ProfessionKind,  
     D05T0017.TotalAdjRate * 100 AS TotalAdjRate, CONVERT(DECIMAL(28,8),0) AS QuotaAdjRate, 0 AS ReCalculate,  
     D05T0017.ProjectID, CASE WHEN @CodeTable = 0 THEN D05T0017.ProjectName ELSE D05T0017.ProjectNameU END AS ProjectName,  
     D05T0017.TaskID, CASE WHEN @CodeTable = 0 THEN D05T0017.TaskName ELSE D05T0017.TaskNameU END AS TaskName,  
     CONVERT(VARCHAR(50),'') AS OBatchID, CONVERT(VARCHAR(50),'') AS OTransID, CONVERT(VARCHAR(50),'') AS OTransTypeID,   
     CONVERT(VARCHAR(50),'') AS STransTypeID, CONVERT(VARCHAR(50),'') AS SBatchID, CONVERT(VARCHAR(50),'') AS STransID,  
     ISNULL(T22.WarrantyTime, 0 ) AS WarrantyTime,  
     T25.PackingID, T25.PackQTY AS PackingFactor, T25.Quantity AS PackingQuantity, T25.ItemID AS PackingItemID, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax, CONVERT(varchar(20), '') AS CurrencyID  
     , D05T0017.ShipAddressID, CONVERT(BIT, ISNULL(D05T0017.QAStatusDetail,0)) AS QAStatusDetail,   CONVERT(VARCHAR(50),'') AS BreakGroupID,  
     ISNULL(D05T0117.IsOldData,1) AS IsOldData, ISNULL(D05T0117.OriACol01,0) AS OriACol01,ISNULL(D05T0117.OriACol02,0) AS OriACol02,ISNULL(D05T0117.OriACol03,0) AS OriACol03,ISNULL(D05T0117.OriACol04,0) AS OriACol04,ISNULL(D05T0117.OriACol05,0) AS OriACo
l05,  
     ISNULL(D05T0117.OriACol01Rate,0) AS OriACol01Rate,ISNULL(D05T0117.OriACol02Rate,0) AS OriACol02Rate,ISNULL(D05T0117.OriACol03Rate,0) AS OriACol03Rate,ISNULL(D05T0117.OriACol04Rate,0) AS OriACol04Rate,ISNULL(D05T0117.OriACol05Rate,0) AS OriACol05Rate,
  
     ISNULL(D05T0117.OriAdjustmentListID,'') AS OriAdjustmentListID,ISNULL(D05T0117.OriAdjustmentLineID,'') AS OriAdjustmentLineID,  
     CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
     CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
     , CONVERT(DECIMAL(28,8), 0) AS Weight  
     , CONVERT(DATETIME, NULL) AS ExpireDate, D05T0017.Specifications  
     , D05T0017.DiscountRate*100 AS DiscountRate, D05T0017.SellUnitPrice, D05T0017.CalculateUnitPrice, D05T0017.CalculatedUnitPrice  
     , D05T0017.RaisePrice*100 AS RaisePrice, D05T0017.RaiseUnitPrice   
     , @IsAutoCheckIsAdjustPrice AS IsAdjustPrice  
  INTO  #ResultTab   
    FROM  D05T0017 WITH (NOLOCK)  
  LEFT JOIN D05T2425 T25 WITH(NOLOCK) ON D05T0017.QuotationID = T25.BatchID AND D05T0017.QuotationItemID = T25.TransID AND T25.OTransType = 'SO'  
  LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID = D05T0017.InventoryID AND D07T0004.UnitID = D05T0017.UnitID    
  LEFT JOIN D07T0002 WITH (NOLOCK) ON D07T0002.InventoryID = D05T0017.InventoryID  
  LEFT JOIN D07T0005 WITH (NOLOCK) ON D07T0005.UnitID = D05T0017.UnitID  
  LEFT JOIN D07T1410 A WITH (NOLOCK) ON A.SpecID = D05T0017.Spec01ID and A.SpecTypeID = '01' AND A.Disabled=0  
  LEFT JOIN D07T1410 B WITH (NOLOCK) ON B.SpecID = D05T0017.Spec02ID and B.SpecTypeID = '02' AND B.Disabled=0  
  LEFT JOIN D07T1410 C WITH (NOLOCK) ON C.SpecID = D05T0017.Spec03ID and C.SpecTypeID = '03' AND C.Disabled=0  
  LEFT JOIN D07T1410 D WITH (NOLOCK) ON D.SpecID = D05T0017.Spec04ID and D.SpecTypeID = '04' AND D.Disabled=0  
  LEFT JOIN D07T1410 E WITH (NOLOCK) ON E.SpecID = D05T0017.Spec05ID and E.SpecTypeID = '05' AND E.Disabled=0  
  LEFT JOIN D07T1410 F WITH (NOLOCK) ON F.SpecID = D05T0017.Spec06ID and F.SpecTypeID = '06' AND F.Disabled=0  
  LEFT JOIN D07T1410 G WITH (NOLOCK) ON G.SpecID = D05T0017.Spec07ID and G.SpecTypeID = '07' AND G.Disabled=0  
  LEFT JOIN D07T1410 H WITH (NOLOCK) ON H.SpecID = D05T0017.Spec08ID and H.SpecTypeID = '08' AND H.Disabled=0  
  LEFT JOIN D07T1410 I WITH (NOLOCK) ON I.SpecID = D05T0017.Spec09ID and I.SpecTypeID = '09' AND I.Disabled=0  
  LEFT JOIN D07T1410 J WITH (NOLOCK) ON J.SpecID = D05T0017.Spec10ID and J.SpecTypeID = '10' AND J.Disabled=0  
  LEFT JOIN D07T1011 WITH (NOLOCK) ON D05T0017.QuotationID = D07T1011.RefVoucherID   
     AND D05T0017.QuotationItemID = D07T1011.RefTransID   
     AND D07T1011.RefTransType='SO'   
  LEFT JOIN D07T2230 WITH (NOLOCK) On D07T2230.TransID = D05T0017.QuotationItemID   
     AND D07T2230.VoucherID = D05T0017.QuotationID          
  
  LEFT JOIN D05T2030 WITH (NOLOCK) ON D05T2030.VoucherID = D05T0017.QuotationID   
     AND D05T2030.TransID = D05T0017.QuotationItemID  
  LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON D05T0017.QuotationID= T22.QuotationID AND D05T0017.QuotationItemID=T22.QuotationItemID AND T22.WarrantyTime > 0  
  LEFT JOIN D05T0117 D05T0117 WITH(NOLOCK)  
  ON  D05T0017.QuotationID = D05T0117.QuotationID  
  AND  D05T0017.QuotationItemID = D05T0117.QuotationItemID  
  WHERE  D05T0017.QuotationID = @QuotationID   
     AND D05T0017.DivisionID = @DivisionID  
    
  -- lay so luong da dieu chinh  
  SELECT   SalesOrderItemID, SUM((2*T05.AdjustType -1) * OQuantity) AS AdjOQuantity  
  INTO  #SLDC  
  FROM  D05T2125 T15  
  INNER JOIN  D05T2025 T05 on T15.AdjSalesOrderID = T05.AdjSalesOrderID   
  WHERE  T05.SalesOrderID = @QuotationID   
  GROUP BY  SalesOrderItemID  
     
  UPDATE  #ResultTab  
  SET   AdjOQuantity = Tab.SalesOrderQuantity + ISNULL(#SLDC.AdjOQuantity,0),  
     IsAdjust = 1,  
     IsAdjusted = 1  
  FROM  #ResultTab Tab  
  LEFT JOIN #SLDC  
    ON Tab.LinkDetailID = #SLDC.SalesOrderItemID  
  
  -- Link voi don hang  
  SELECT  BG.LinkMasterID,BG.LinkDetailID,SUM(BG.Quantity) AS Quantity  
  INTO  #D  
  FROM  D05T0017 T17 WITH(NOLOCK)  
  LEFT JOIN D05T0017 BG WITH(NOLOCK)  
    ON  T17.QuotationID = BG.LinkMasterID   
    AND T17.QuotationItemID = BG.LinkDetailID  
  INNER JOIN  D05T0016 T16 WITH(NOLOCK)  
    ON BG.QuotationID  = T16.QuotationID   
    AND T16.ProfessionKind ='O'  
  LEFT JOIN (  
     SELECT  A17.LinkMasterID AS QuotationID, A17.LinkDetailID AS QuotationItemID,  
        SUM((CASE WHEN A16.ProfessionKind = 'AI' THEN 1 ELSE -1 END) * A17.Quantity) AS Quantity,  
        SUM((CASE WHEN A16.ProfessionKind = 'AD' THEN 1 ELSE -1 END) * A17.CQuantity) AS CQuantity  
     FROM  D05T0017 A17 WITH(NOLOCK)  
     INNER JOIN D05T0016 A16 WITH(NOLOCK)  
      ON  A17.QuotationID = A16.QuotationID  
     INNER JOIN D05T1022 A22 WITH(NOLOCK)  
      ON  A16.TranTypeID = A22.TranTypeID  
     WHERE  A16.ProfessionKind IN ('AI', 'AD')  
     GROUP BY A17.LinkMasterID, A17.LinkDetailID  
     ) A  
   ON  BG.QuotationID = A.QuotationID  
     AND BG.QuotationItemID = A.QuotationItemID  
  WHERE  T17.QuotationID = @QuotationID AND T16.Closed = 0  
  GROUP BY BG.LinkMasterID,BG.LinkDetailID  
  
  
  -- Link voi giao hang  
  SELECT   D05T0037.LinkTransID, SUM(Quantity + ISNULL(AdjQuantity, 0)) AS Quantity  
  INTO  #T37  
  FROM   D05T0037  
    -- Dieu chinh giao hang --  
  LEFT JOIN ( SELECT  LinkBatchID, LinkTransID, SUM((2*AdjType -1) * Quantity) AS AdjQuantity  
      FROM  D05T2051  
      INNER JOIN  D05T2151 ON D05T2151.BatchID = D05T2051.BatchID  
      GROUP BY  LinkBatchID, LinkTransID  
     ) Adj ON Adj.LinkBatchID = D05T0037.BatchID AND Adj.LinkTransID = D05T0037.TransID  
  WHERE   D05T0037.LinkBatchID = @QuotationID  
  GROUP BY  D05T0037.LinkTransID  
    
  -- Link voi hoa don  
  SELECT   T1.QuotationItemID, SUM(T2.Quantity) AS Quantity  
  INTO  #T02  
  FROM   D05T1702 T1  
  INNER JOIN  D05T0002 T2 on T1.SalesVoucherID = T2.SalesVoucherID AND T1.SalesItemID = T2.SalesItemID   
  WHERE  T1.QuotationID = @QuotationID  
  GROUP BY  T1.QuotationItemID  
    
  -- Link voi xuat kho  
  SELECT   T1.BatchItemID As QuotationItemID, SUM(T1.ActualQuantity) AS Quantity  
  INTO  #T011  
  FROM   D07T0011 T1 WITH(NOLOCK)  
  INNER JOIN  D05T0017 T2 WITH(NOLOCK) on T1.BatchItemID = T2.QuotationItemID   
  WHERE  T2.QuotationID = @QuotationID  
  GROUP BY  T1.BatchItemID  
                --- link yeu cau xuat kho  
  SELECT   T1.LinkTransID As QuotationItemID, SUM(T1.CQuantity) AS Quantity  
  INTO  #T2110  
  FROM   D07T2110 T1 WITH(NOLOCK)  
  INNER JOIN  D05T0017 T2 WITH(NOLOCK) on T1.LinkTransID = T2.QuotationItemID   
  WHERE  T2.QuotationID = @QuotationID  
  GROUP BY  T1.LinkTransID  
  
  -- Link voi Hop dong ban hang  
  SELECT  D49.QuotationID, D49.SOItemID, ISNULL(SUM(D60.Quantity), 0) AS Quantity  
  INTO  #D49T2020  
  FROM  D49T2020 D49 WITH(NOLOCK)  
  INNER JOIN D49T2061 D61  WITH(NOLOCK)  
    ON D49.ContractID = D61.ContractID AND D61.AdjustedNum = 0  
  INNER JOIN D49T2060 D60  WITH(NOLOCK)  
    ON D49.ContractID = D60.ContractID   
     AND D60.VoucherID = D61.VoucherID  
     AND D60.TransactionID = D49.SalesItemID  
     AND D60.SOItemID = D49.SOItemID  
  WHERE  D49.QuotationID = @QuotationID  
  GROUP BY D49.QuotationID, D49.SOItemID  
  
  UPDATE  #ResultTab  
  SET   ActOQuantity= ISNULL(#T37.Quantity, 0) + ISNULL(#T02.Quantity,0) + ISNULL(#T011.Quantity, 0) + ISNULL(#D.Quantity, 0) +  ISNULL(#T2110.Quantity,0) + ISNULL(D49.Quantity, 0)  
  FROM  #ResultTab Tab  
  LEFT JOIN #T37  
    ON #T37.LinkTransID = Tab.LinkDetailID  
  LEFT JOIN #T02  
    ON #T02.QuotationItemID = Tab.LinkDetailID  
  LEFT JOIN #T011  
    ON #T011.QuotationItemID = Tab.LinkDetailID  
  LEFT JOIN #D  
    ON #D.LinkDetailID = Tab.LinkDetailID  
  LEFT JOIN #T2110   
    ON  #T2110.QuotationItemID =   Tab.LinkDetailID  
  LEFT JOIN #D49T2020 D49  
    ON D49.QuotationID = Tab.LinkMasterID  
     AND D49.SOItemID = Tab.LinkDetailID  
  
  UPDATE  #ResultTab  
  SET   RemainOQuantity = AdjOQuantity - ActOQuantity  
    
  --- Cap nhat thong tin PO  
  UPDATE  Tmp  
  SET   SuplierTypeID = T17.SuplierTypeID,  
     SuplierID = T17.SuplierID,  
     POCurrencyID = T17.CurrencyID,  
     POExchangeRate = T17.ExchangeRate,  
     POUnitPrice = T17.UnitPrice  
  FROM  #ResultTab Tmp  
  INNER JOIN D05T1017 T17 WITH(NOLOCK)  
    ON Tmp.LinkMasterID = T17.SOID  
     AND Tmp.LinkDetailID = T17.SOItemID  
       
  UPDATE  Tmp  
  SET   SuplierName = O.ObjectNameU  
  FROM  #ResultTab Tmp  
  LEFT JOIN OBJECT O WITH(NOLOCK)  
    ON Tmp.SuplierTypeID = O.ObjectTypeID  
     AND Tmp.SuplierID = O.ObjectID  
       
  UPDATE  Tmp  
  SET   IsVATPrice = ISNULL(T16.IsVATPrice,0),  
     ProfessionKind = ISNULL(T16.ProfessionKind,'')  
  FROM  #ResultTab Tmp  
  INNER JOIN D05T0016 T16 WITH(NOLOCK)  
    ON Tmp.QuotationID = T16.QuotationID  
  
  UPDATE      Tmp  
  SET   Tmp.CurrencyID =T16.CurrencyID                               
  FROM   #ResultTab  Tmp  
  INNER JOIN D05T0016 T16 WITH(NOLOCK)  
    ON Tmp.LinkMasterID = T16.QuotationID  
  
  UPDATE  T1  
  SET   T1.OAmountTmpTax =   ROUND(T1.UnitPrice*T1.SalesOrderQuantity,T10.OriginalDecimal),     
     T1.CAmountTmpTax =   ROUND(T1.UnitPrice*T1.SalesOrderQuantity * T10.ExchangeRate, @D90_ConvertedDecimals)  
  FROM  #ResultTab  T1   
  INNER JOIN  D91V0010 T10   
    ON T10.CurrencyID = T1.CurrencyID  
   
  --- Lay du lieu Quy cach dong goi cho cac dong dieu chinh so luong, gia tri ...   
  UPDATE  T1  
  SET   T1.PackingID = T3.PackingID,   
     T1.PackingFactor = T3.PackQTY,   
     T1.PackingQuantity = T3.Quantity,   
     T1.PackingItemID = T3.ItemID  
  FROM  #ResultTab  T1  
  INNER JOIN  D05T0017 T2 WITH(NOLOCK)  
  ON   T1.LinkMasterID = T2.LinkMasterID  
  AND   T1.LinkDetailID = T2.LinkDetailID  
  INNER JOIN D05T2425 T3 WITH(NOLOCK)  
    ON T2.QuotationID = T3.BatchID   
    AND T2.QuotationItemID = T3.TransID   
    AND T3.OTransType = 'SO'  
  WHERE ISNULL(T2.LinkMasterID,'') <> ''  
  AND  ISNULL(T1.PackingItemID,'')  = ''  
  
  IF @D05F1810 = 1  
  BEGIN  
   UPDATE  Tmp  
   SET   Tmp.ACol01Rate = T17.ACol01Rate,  
      Tmp.ACol02Rate = T17.ACol02Rate,  
      Tmp.ACol03Rate = T17.ACol03Rate,  
      Tmp.ACol04Rate = T17.ACol04Rate,  
      Tmp.ACol05Rate = T17.ACol05Rate  
   FROM  #ResultTab Tmp  
   INNER JOIN D05T0017 T17 WITH(NOLOCK)  
     ON Tmp.LinkMasterID = T17.QuotationID  
     AND Tmp.LinkDetailID = T17.QuotationItemID  
  END  
  
  SELECT * FROM #ResultTab ORDER BY OrderNum  
 END    
 ELSE  --- Them moi phieu dieu chinh cua Du lich bay  
 BEGIN   
  SELECT  D05T0017.DivisionID,  
     CONVERT(VARCHAR(20),'') AS QuotationID,  
     CONVERT(VARCHAR(20),'') AS QuotationItemID,  
     D05T0017.OrderNum,  
     D05T0017.InventoryID,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS ItemName,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.ShortName ELSE D05T0017.ShortNameU END AS ShortName,  
     D05T0017.UnitID,  
     D05T0017.DeliveryDate,  
     D05T0017.LocationNo,  
     --(D05T0017.Quantity + ISNULL(T15.OQuantity,0)) AS SalesOrderQuantity,   
     D05T0017.Quantity AS SalesOrderQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS Quantity,  
     CONVERT(DECIMAL(28,8), 0) AS CQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
     D05T0017.UnitPrice + ISNULL(T15.OAmountTmp,0) AS UnitPrice,  
     D05T0017.OAmountTmp + ISNULL(T15.OAmountTmp,0) AS OAmountTmp,  
     D05T0017.CAmountTmp + ISNULL(T15.CAmountTmp,0) AS CAmountTmp,  
     D05T0017.ACol01 + ISNULL(T15.ACol01,0) AS ACol01,  
     D05T0017.C_ACol01 + ISNULL(T15.C_ACol01,0) AS C_ACol01,  
     D05T0017.ACol02 + ISNULL(T15.ACol02,0) AS ACol02,  
     D05T0017.C_ACol02 + ISNULL(T15.C_ACol02,0) AS C_ACol02,  
     D05T0017.ACol03 + ISNULL(T15.ACol03,0) AS ACol03,  
     D05T0017.C_ACol03 + ISNULL(T15.C_ACol03,0) AS C_ACol03,  
     CONVERT(DECIMAL(28,8), 0) As ACol04,  
     CONVERT(DECIMAL(28,8), 0) As C_ACol04,  
     CONVERT(DECIMAL(28,8), 0)As ACol05,  
     CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
     (D05T0017.OAmountTmp + D05T0017.ACol01 + D05T0017.ACol02 + D05T0017.ACol03 + D05T0017.ACol04  
     + ISNULL(T15.OAmountTmp,0) + ISNULL(T15.ACol01,0) + ISNULL(T15.ACol02,0) + ISNULL(T15.ACol03,0) + ISNULL(T15.ACol04,0)) AS Amount,  
     (D05T0017.CAmountTmp + D05T0017.C_ACol01 + D05T0017.C_ACol02 + D05T0017.C_ACol03 + D05T0017.C_ACol04   
     + ISNULL(T15.CAmountTmp,0) + ISNULL(T15.C_ACol01,0) +  ISNULL(T15.C_ACol02,0) + ISNULL(T15.C_ACol03,0) + ISNULL(T15.C_ACol04,0) ) AS CAmount,  
     CONVERT(DECIMAL(28,8), 0) AS RateReduce,  
     CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
     CONVERT(DECIMAL(28,8), 0) AS CReduce,  
     D05T0017.VATGroupID,  
     D05T0017.VATRate AS VATRate,  
     D05T0017.OVAT + ISNULL(T15.OVAT,0) AS OVAT,  
     D05T0017.CVAT + ISNULL(T15.CVAT,0) AS CVAT,  
     CONVERT(DECIMAL(28,8), D05T0017.RateTax) AS RateTax,  
     CONVERT(DECIMAL(28,8), 0) AS OTax,  
     CONVERT(DECIMAL(28,8), 0) AS CTax,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.Notes ELSE D05T0017.NotesU END AS Notes,  
     D05T0017.Ana01ID, D05T0017.Ana02ID, D05T0017.Ana03ID, D05T0017.Ana04ID, D05T0017.Ana05ID,  
     D05T0017.Ana06ID, D05T0017.Ana07ID, D05T0017.Ana08ID, D05T0017.Ana09ID, D05T0017.Ana10ID,  
     (D05T0017.NRef1 + ISNULL(T15.NRef1,0) )AS NRef1, D05T0017.NRef2, D05T0017.NRef3, D05T0017.NRef4, D05T0017.NRef5,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.DRef1 ELSE D05T0017.DRef1U END AS DRef1, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef2 ELSE D05T0017.DRef2U END AS DRef2,   
     CASE WHEN @CodeTable = 0 THEN D05T0017.DRef3 ELSE D05T0017.DRef3U END AS DRef3, CASE WHEN @CodeTable = 0 THEN D05T0017.DRef4 ELSE D05T0017.DRef4U END AS DRef4,   
     CASE WHEN @CodeTable = 0 THEN D05T0017.DRef5 ELSE D05T0017.DRef5U END AS DRef5,   
  
  
     (D05T0017.NDef1 + ISNULL(T15.NDef1,0)) AS NDef1, CONVERT(DECIMAL(28,8), 0) AS NDef2, D05T0017.NDef3, D05T0017.NDef4, D05T0017.NDef5,  
     D05T0017.StatusDetail,  
     D05T0017.DetailCustomerID,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.DetailCustomerName ELSE D05T0017.DetailCustomerNameU END AS DetailCustomerName,  
     D05T0017.ParcelInventoryID,  
     CASE WHEN @CodeTable = 0 THEN D05T0017.ParcelInventoryName ELSE D05T0017.ParcelInventoryNameU END AS ParcelInventoryName,  
     CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
     CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
     CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
     CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
     CONVERT(DECIMAL(28,8), 0) AS Measurement,  
     CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
     D05T0017.IsService,  
     D05T0017.WareHouseID,  
     CONVERT(BIT,D05T0017.IsPromotion) AS IsPromotion,  
     D05T0017.DateNumber01,  
     D05T0017.Date01,  
     CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
     D05T0017.DateNumber02,  
     D05T0017.Date02,  
     CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
     D05T0017.DateNumber03,  
     D05T0017.Date03,  
     CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
     D05T0017.KitID,  
     D05T0017.KitUnitID,  
     CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
     CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
     D05T0017.KitNo,  
     D05T0017.Spec01ID, D05T0017.Spec02ID, D05T0017.Spec03ID, D05T0017.Spec04ID, D05T0017.Spec05ID,  
     D05T0017.Spec06ID, D05T0017.Spec07ID, D05T0017.Spec08ID, D05T0017.Spec09ID, D05T0017.Spec10ID,  
     D05T0017.IssueWareHouseID,  
     D05T0017.IsKit,  
     D05T0017.DateRef1,  
     D05T0017.DateRef2,  
     D05T0017.DateRef3,  
     D05T0017.DateRef4,  
     D05T0017.DateRef5,  
     D05T0017.PromotionOnD05,  
     CONVERT(DECIMAL(28,8), D05T0017.OUnitPrice) AS OUnitPrice,  
     D05T0017.TransactionTypeID,  
     D05T0017.ODetailDueDate,  
     D05T0017.IsFromD16,  
     CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
     D05T0017.QuotationID AS LinkMasterID,  
     D05T0017.QuotationItemID AS LinkDetailID,  
  
     ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor,   
     CASE WHEN @CodeTable = 0 THEN D05T0017.ItemName ELSE D05T0017.ItemNameU END AS InventoryName,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN D07T0005.UnitName ELSE D07T0005.UnitNameU END, '') as UnitName,  
     D05T0017.VATGroupID AS VATGroupID1,  
     D05T0017.RateReduce * 100 AS RateReduce1,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN A.Description ELSE  A.DescriptionU END,'') as Spec01Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN B.Description ELSE  B.DescriptionU END,'') as Spec02Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN C.Description ELSE  C.DescriptionU END,'') as Spec03Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN D.Description ELSE  D.DescriptionU END,'') as Spec04Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN E.Description ELSE  E.DescriptionU END,'') as Spec05Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN F.Description ELSE  F.DescriptionU END,'') as Spec06Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN G.Description ELSE  G.DescriptionU END,'') as Spec07Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN H.Description ELSE  H.DescriptionU END,'') as Spec08Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN I.Description ELSE  I.DescriptionU END,'') as Spec09Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN J.Description ELSE  J.DescriptionU END,'') as Spec10Name,  
     ISNULL(CASE WHEN @CodeTable = 0 THEN D07T0002.InventoryName ELSE D07T0002.InventoryNameU END,'') AS OInventoryName,   
     ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
     ISNULL(D07T0004.Formula,'') AS ConversionFormula ,  
     CONVERT(MONEY,0) AS DeliveredQuantity,  
     --CONVERT(MONEY,0) AS RefUnitPrice,  
     CONVERT(MONEY,0) AS MinUnitPrice,  
     D07T1011.RDVoucherID,   
     D07T1011.TransactionID,   
     D07T1011.R_D,   
     D07T1011.SplitNo,  
  
     D07T0002.UnitID as BaseUnitID,  
     Case when D07T2230.TransID is null then 0 else 1 end as Flag,  
     isnull(D07T2230.FormulaID, '') as FormulaID,  
     isnull(D07T2230.Formula, '') as Formula,  
     isnull(D07T2230.Num01, 0) as Num01, isnull(D07T2230.Num02, 0) as Num02,  
     isnull(D07T2230.Num03, 0) as Num03, isnull(D07T2230.Num04, 0) as Num04,  
     isnull(D07T2230.Num05, 0) as Num05, isnull(D07T2230.Num06, 0) as Num06,  
     isnull(D07T2230.Num07, 0) as Num07, isnull(D07T2230.Num08, 0) as Num08,  
     isnull(D07T2230.Num09, 0) as Num09, isnull(D07T2230.Num10, 0) as Num10,  
     D05T0117.Dat01 as DisplayDat01,  D05T0117.Dat02 as DisplayDat02,  D05T0117.Dat03 as DisplayDat03,   
     D05T0117.Dat04 as DisplayDat04,  D05T0117.Dat05 as DisplayDat05,  D05T0117.Dat06 as DisplayDat06,   
     D05T0117.Dat07 as DisplayDat07,  D05T0117.Dat08 as DisplayDat08,  D05T0117.Dat09 as DisplayDat09, D05T0117.Dat10 as DisplayDat10,   
     D05T0117.Num01 as DisplayNum01,  D05T0117.Num02 as DisplayNum02,  D05T0117.Num03 as DisplayNum03,   
     D05T0117.Num04 as DisplayNum04,  D05T0117.Num05 as DisplayNum05,  D05T0117.Num06 as DisplayNum06,   
     D05T0117.Num07 as DisplayNum07,  D05T0117.Num08 as DisplayNum08,  D05T0117.Num09 as DisplayNum09, D05T0117.Num10 as DisplayNum10,   
     D05T0117.Str01 as DisplayStr01,  D05T0117.Str02 as DisplayStr02,  D05T0117.Str03 as DisplayStr03,   
     D05T0117.Str04 as DisplayStr04,  D05T0117.Str05 as DisplayStr05,  D05T0117.Str06 as DisplayStr06,   
     D05T0117.Str07 as DisplayStr07,  D05T0117.Str08 as DisplayStr08,  D05T0117.Str09 as DisplayStr09, D05T0117.Str10 as DisplayStr10,  
     Case when T15.IsAdjusted is null then 0 else 1 end IsAdjust, --Dung cho .NET  
     Case when T15.IsAdjusted is null then 0 else 1 end IsAdjusted, --Dung cho VB  
     --0 As DeliveredQuantity,   
     D05T0017.UnitPrice As RefUnitPrice ,   
     Case when D05T0017.Iskit=2 then 1 else 0 end as IsKit1,   
     D05T2030.OModuleID AS LinkModuleID,  
     D05T2030.OVoucherID AS LinkQuotationID,  
     D05T2030.OTransID AS LinkQuotationItemID,  
     Convert(tinyint, 0) AS AdjustTypeID,  
     Convert(Varchar(20), '') AS AdjustTypeDesc,  
     --CASE WHEN @Language = '84' THEN CONVERT(NVARCHAR(50), CASE WHEN @CodeTable = 0 THEN N'Giaûm' ELSE N'Giảm' END) ELSE CONVERT(VARCHAR(20), 'Decrement') END AS AdjustTypeDesc,  
     D05T0017.AdjustmentListID,  
     D05T0017.TotalAdjustedAmount,  
     D05T0017.TotalAdjustedCAmount,  
     D05T0017.AdjustedUnitPrice,  
     D05T0017.PriceListID DPriceListID, D05T0017.CurrencyOnPriceList, D05T0017.DExchangeRate,  
     D07T0002.IsBOM, D05T0017.PriceListLineID, D05T0017.PriceBreakID,  
     CONVERT(VARCHAR(250),'') AS InventoryRefInfoD05,  
     D05T0017.FactoryOutDate, D05T0017.AdjustmentLineID,D05T0017.BidQty, D05T0017.BidAcceptQty,D05T0017.TempUnitPrice,  
     CONVERT(DECIMAL(28,8),0) AS AdjOQuantity,-- So luong sau dieu chinh  
     CONVERT(DECIMAL(28,8), 0) AS ActOQuantity,--So luong da thuc hien  
     CONVERT(DECIMAL(28,8), 0) AS RemainOQuantity, --So luong con lai  
     0 AS IsLockPO ,D05T0016.IsVATPrice, D05T0016.ProfessionKind,  
     D05T0017.ProjectID, CASE WHEN @CodeTable = 0 THEN D05T0017.ProjectName ELSE D05T0017.ProjectNameU END AS ProjectName,  
     D05T0017.TaskID, CASE WHEN @CodeTable = 0 THEN D05T0017.TaskName ELSE D05T0017.TaskNameU END AS TaskName,  
     CONVERT(VARCHAR(50),'') AS OBatchID, CONVERT(VARCHAR(50),'') AS OTransID, CONVERT(VARCHAR(50),'') AS OTransTypeID,   
     CONVERT(VARCHAR(50),'') AS STransTypeID, CONVERT(VARCHAR(50),'') AS SBatchID, CONVERT(VARCHAR(50),'') AS STransID,  
     ISNULL(T22.WarrantyTime, 0 ) AS WarrantyTime,  
     CONVERT(VARCHAR(50), '') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'') AS PackingItemID, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTm
pTax, D05T0016.CurrencyID  
     , CONVERT(BIT, ISNULL(D05T0017.QAStatusDetail,0)) AS QAStatusDetail, CONVERT(VARCHAR(50),'') AS BreakGroupID,  
     ISNULL(D05T0117.IsOldData,1) AS IsOldData, ISNULL(D05T0117.OriACol01,0) AS OriACol01,ISNULL(D05T0117.OriACol02,0) AS OriACol02,ISNULL(D05T0117.OriACol03,0) AS OriACol03,ISNULL(D05T0117.OriACol04,0) AS OriACol04,ISNULL(D05T0117.OriACol05,0) AS OriACol
05,  
     ISNULL(D05T0117.OriACol01Rate,0) AS OriACol01Rate,ISNULL(D05T0117.OriACol02Rate,0) AS OriACol02Rate,ISNULL(D05T0117.OriACol03Rate,0) AS OriACol03Rate,ISNULL(D05T0117.OriACol04Rate,0) AS OriACol04Rate,ISNULL(D05T0117.OriACol05Rate,0) AS OriACol05Rate,
  
     ISNULL(D05T0117.OriAdjustmentListID,'') AS OriAdjustmentListID,ISNULL(D05T0117.OriAdjustmentLineID,'') AS OriAdjustmentLineID,  
     CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
     CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
     , CONVERT(DECIMAL(28,8), 0) AS Weight  
     , CONVERT(DATETIME, NULL) AS ExpireDate, D05T0017.Specifications  
     , @IsAutoCheckIsAdjustPrice AS IsAdjustPrice  
  INTO  #ResultTab1  
  FROM  D05T0017 WITH (NOLOCK)  
  INNER JOIN D05T0016 WITH(NOLOCK)  
    ON D05T0017.QuotationID = D05T0016.QuotationID   
  LEFT JOIN D07T0004 WITH (NOLOCK) ON D07T0004.InventoryID = D05T0017.InventoryID AND D07T0004.UnitID = D05T0017.UnitID    
  LEFT JOIN D07T0002 WITH (NOLOCK) ON D07T0002.InventoryID = D05T0017.InventoryID  
  LEFT JOIN D07T0005 WITH (NOLOCK) ON D07T0005.UnitID = D05T0017.UnitID  
  LEFT JOIN D07T1410 A WITH (NOLOCK) ON A.SpecID = D05T0017.Spec01ID and A.SpecTypeID = '01' AND A.Disabled=0  
  LEFT JOIN D07T1410 B WITH (NOLOCK) ON B.SpecID = D05T0017.Spec02ID and B.SpecTypeID = '02' AND B.Disabled=0  
  LEFT JOIN D07T1410 C WITH (NOLOCK) ON C.SpecID = D05T0017.Spec03ID and C.SpecTypeID = '03' AND C.Disabled=0  
  LEFT JOIN D07T1410 D WITH (NOLOCK) ON D.SpecID = D05T0017.Spec04ID and D.SpecTypeID = '04' AND D.Disabled=0  
  LEFT JOIN D07T1410 E WITH (NOLOCK) ON E.SpecID = D05T0017.Spec05ID and E.SpecTypeID = '05' AND E.Disabled=0  
  LEFT JOIN D07T1410 F WITH (NOLOCK) ON F.SpecID = D05T0017.Spec06ID and F.SpecTypeID = '06' AND F.Disabled=0  
  LEFT JOIN D07T1410 G WITH (NOLOCK) ON G.SpecID = D05T0017.Spec07ID and G.SpecTypeID = '07' AND G.Disabled=0  
  LEFT JOIN D07T1410 H WITH (NOLOCK) ON H.SpecID = D05T0017.Spec08ID and H.SpecTypeID = '08' AND H.Disabled=0  
  LEFT JOIN D07T1410 I WITH (NOLOCK) ON I.SpecID = D05T0017.Spec09ID and I.SpecTypeID = '09' AND I.Disabled=0  
  LEFT JOIN D07T1410 J WITH (NOLOCK) ON J.SpecID = D05T0017.Spec10ID and J.SpecTypeID = '10' AND J.Disabled=0  
  LEFT JOIN D07T1011 WITH (NOLOCK) ON D05T0017.QuotationID = D07T1011.RefVoucherID   
     AND D05T0017.QuotationItemID = D07T1011.RefTransID   
     AND D07T1011.RefTransType='SO'   
  LEFT JOIN   D07T2230 WITH (NOLOCK) On D07T2230.TransID = D05T0017.QuotationItemID   
     AND D07T2230.VoucherID = D05T0017.QuotationID  
  LEFT JOIN   (  
     SELECT  SalesOrderID, SalesOrderItemID, 1 as isAdjusted,   
        SUM((2*AdjustType-1) * D05T2125.OQuantity) as OQuantity,  
        SUM((2*AdjustType-1) * D05T2125.CQuantity) as CQuantity,  
        SUM((2*AdjustType-1) * OAmountTmp) AS OAmountTmp,  
        SUM((2*AdjustType-1) * CAmountTmp) AS CAmountTmp,  
        SUM((2*AdjustType-1) * Amount) AS OAmount,  
        SUM((2*AdjustType-1) * CAmount) AS CAmount,  
        SUM((2*AdjustType-1) * OriginalReduce) AS ODiscount,  
        SUM((2*AdjustType-1) * CReduce) AS CDiscount,  
        SUM((2*AdjustType-1) * OVAT) AS OVAT,  
        SUM((2*AdjustType-1) * CVAT) AS CVAT,  
        SUM((2*AdjustType-1) * ACol01) AS ACol01,  
        SUM((2*AdjustType-1) * ACol02) AS ACol02,  
        SUM((2*AdjustType-1) * ACol03) AS ACol03,  
        SUM((2*AdjustType-1) * ACol04) AS ACol04,  
        SUM((2*AdjustType-1) * ACol05) AS ACol05,  
        SUM((2*AdjustType-1) * C_ACol01) AS C_ACol01,  
        SUM((2*AdjustType-1) * C_ACol02) AS C_ACol02,  
        SUM((2*AdjustType-1) * C_ACol03) AS C_ACol03,  
        SUM((2*AdjustType-1) * C_ACol04) AS C_ACol04,  
        SUM((2*AdjustType-1) * C_ACol05) AS C_ACol05,  
        SUM((2*AdjustType-1) * D05T0017.NRef1) AS NRef1,  
        SUM((2*AdjustType-1) * D05T0017.NDef1) AS NDef1  
     FROM  D05T2125 WITH (NOLOCK)  
     INNER JOIN D05T2025 WITH (NOLOCK) ON D05T2025.AdjSalesOrderID = D05T2125.AdjSalesOrderID  
     INNER JOIN D05T0017 WITH (NOLOCK) ON D05T0017.QuotationItemID = D05T2125.AdjSalesOrderItemID  
     GROUP BY SalesOrderID, SalesOrderItemID  
     ) T15    
    ON T15.SalesOrderItemID = D05T0017.QuotationItemID         
  LEFT JOIN D05T2030 WITH (NOLOCK) ON D05T2030.VoucherID = D05T0017.QuotationID   
     AND D05T2030.TransID = D05T0017.QuotationItemID  
  LEFT JOIN D05T0002 WITH (NOLOCK) ON D05T0002.QuotationID = D05T0017.QuotationID  
     AND D05T0002.QuotationItemID = D05T0017.QuotationItemID  
  LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON D05T0017.QuotationID= T22.QuotationID AND D05T0017.QuotationItemID=T22.QuotationItemID AND T22.WarrantyTime > 0  
   LEFT JOIN D05T0117 D05T0117 WITH(NOLOCK)  
  ON  D05T0017.QuotationID = D05T0117.QuotationID  
  AND  D05T0017.QuotationItemID = D05T0117.QuotationItemID  
  WHERE  D05T0017.QuotationID = @QuotationID   
     AND D05T0017.DivisionID = @DivisionID  
     AND (D05T0017.OAmountTmp + ISNULL(T15.OAmountTmp,0)) <> 0  
     AND D05T0017.LinkDetailID = '' AND D05T0017.LinkMasterID = '' -- Khong lay dong mat hang phi  
     AND ((D05T0017.Quantity + ISNULL(T15.OQuantity,0)) - ISNULL(D05T0002.Quantity,0) ) <> 0 -- mat hang da lap hoa don thi khong hien thi khi them moi dieu chinh  
  
  --SELECT  SalesOrderItemID  
  --INTO  #D05P0012_D05T2125_NOTIN1  
  --FROM  D05T2125 WITH (NOLOCK)  
  --INNER JOIN D05T2025 WITH (NOLOCK) ON D05T2025.AdjSalesOrderID = D05T2125.AdjSalesOrderID  
  --INNER JOIN D05T0017 WITH (NOLOCK) ON D05T0017.QuotationItemID = D05T2125.AdjSalesOrderItemID  
  
  -- lay so luong da dieu chinh  
  SELECT   SalesOrderItemID, SUM((2*T05.AdjustType -1) * OQuantity) AS AdjOQuantity  
  INTO  #SLDC1  
  FROM  D05T2125 T15  
  INNER JOIN  D05T2025 T05 on T15.AdjSalesOrderID = T05.AdjSalesOrderID   
  WHERE  T05.SalesOrderID = @QuotationID   
  GROUP BY  SalesOrderItemID  
     
  UPDATE  #ResultTab1  
  SET   AdjOQuantity = Tab1.SalesOrderQuantity + ISNULL(#SLDC1.AdjOQuantity,0)  
  FROM  #ResultTab1 Tab1  
  LEFT JOIN #SLDC1  
    ON Tab1.LinkDetailID = #SLDC1.SalesOrderItemID  
  
   
  -- Link voi giao hang  
  SELECT   D05T0037.LinkTransID, SUM(Quantity + ISNULL(AdjQuantity, 0)) AS Quantity  
  INTO  #T371  
  FROM   D05T0037  
    -- Dieu chinh giao hang --  
  LEFT JOIN ( SELECT  LinkBatchID, LinkTransID, SUM((2*AdjType -1) * Quantity) AS AdjQuantity  
      FROM  D05T2051  
      INNER JOIN  D05T2151 ON D05T2151.BatchID = D05T2051.BatchID  
      GROUP BY  LinkBatchID, LinkTransID  
     ) Adj ON Adj.LinkBatchID = D05T0037.BatchID AND Adj.LinkTransID = D05T0037.TransID  
  WHERE   D05T0037.LinkBatchID = @QuotationID  
  GROUP BY  D05T0037.LinkTransID -- T37 ON T37.LinkTransID = T17.QuotationItemID  
    
  -- Link voi hoa don  
  SELECT   T1.QuotationItemID, SUM(T2.Quantity) AS Quantity  
  INTO  #T021  
  FROM   D05T1702 T1  
  INNER JOIN  D05T0002 T2 on T1.SalesVoucherID = T2.SalesVoucherID AND T1.SalesItemID = T2.SalesItemID   
  WHERE  T1.QuotationID = @QuotationID  
  GROUP BY  T1.QuotationItemID  
  
  -- Link voi xuat kho  
  SELECT   T1.BatchItemID As QuotationItemID, SUM(T2.Quantity) AS Quantity  
  INTO  #T0011  
  FROM   D07T0011 T1 WITH(NOLOCK)  
  INNER JOIN  D05T0017 T2 WITH(NOLOCK) on T1.BatchItemID = T2.QuotationItemID   
  WHERE  T2.QuotationID = @QuotationID  
  GROUP BY  T1.BatchItemID  
  
    --) --T02 on T02.QuotationItemID = T17.QuotationItemID  
       
  UPDATE  #ResultTab1  
  SET   ActOQuantity= ISNULL(#T371.Quantity, 0) + ISNULL(#T021.Quantity,0) + ISNULL(#T0011.Quantity, 0)   
  FROM  #ResultTab1 Tab1  
  LEFT JOIN #T371  
    ON #T371.LinkTransID = Tab1.LinkDetailID  
  LEFT JOIN #T021  
    ON #T021.QuotationItemID = Tab1.LinkDetailID  
  LEFT JOIN #T0011  
    ON #T0011.QuotationItemID = Tab1.LinkDetailID  
      
  UPDATE  #ResultTab1  
  SET   RemainOQuantity = AdjOQuantity - ActOQuantity  
  
  UPDATE  T1  
  SET   T1.OAmountTmpTax =   ROUND(T1.UnitPrice*T1.SalesOrderQuantity,T10.OriginalDecimal),     
     T1.CAmountTmpTax =   ROUND(T1.UnitPrice*T1.SalesOrderQuantity * T10.ExchangeRate, @D90_ConvertedDecimals)  
  FROM  #ResultTab1  T1   
  INNER JOIN  D91V0010 T10   
    ON T10.CurrencyID = T1.CurrencyID  
    
  SELECT * FROM #ResultTab1 Order by OrderNum  
 END   
END     
  
----------------- Bo sung Mode = 3  
IF @Mode = 3  
BEGIN  
 IF @FormID NOT IN ('D11F2060','D11F2070')  
 BEGIN  
 IF @QuotationID <> 'QuotationD11'  ---- TH chon 1 phieu du toan  
 BEGIN  
    --DECLARE @CodeTable TINYINT  
   --SET @CodeTable = 1  
   SET @SQL2 =  
   '  
   SELECT   T11.DivisionID,  
      CONVERT(VARCHAR(20),'''') AS QuotationID,  
      CONVERT(VARCHAR(20),'''') AS QuotationItemID,  
      1 AS OrderNum,  
      T11.InventoryID,  
      Isnull(InventoryName'+@U+','''') AS ItemName,  
      Isnull(T02.ShortName'+@U+','''') AS ShortName,  
      T11.SalesUnitID AS UnitID,  
      T11.DeliveryDate,  
      CONVERT(Varchar(100),'''') AS LocationNo,  
      CONVERT(DECIMAL(28,8), 0) AS SalesOrderQuantity,   
      CONVERT(DECIMAL(28,8), 0) AS Quantity,  
      CONVERT(DECIMAL(28,8), 0) AS CQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
      CONVERT(DECIMAL(28,8), T11.SalePrice) AS UnitPrice,  
      CONVERT(DECIMAL(28,8), 0) AS OAmountTmp,  
      CONVERT(DECIMAL(28,8), 0) AS CAmountTmp,  
      CONVERT(DECIMAL(28,8), 0) AS ACol01,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol01,  
      CONVERT(DECIMAL(28,8), 0) AS ACol02,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol02,  
      CONVERT(DECIMAL(28,8), 0) AS ACol03,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol03,  
      CONVERT(DECIMAL(28,8), 0) AS ACol04,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol04,  
      CONVERT(DECIMAL(28,8), 0) AS ACol05,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
      CONVERT(DECIMAL(28,8), 0) AS Amount,  
      CONVERT(DECIMAL(28,8), 0) AS CAmount,  
      CONVERT(DECIMAL(28,8), 0) AS RateReduce,  
      CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
      CONVERT(DECIMAL(28,8), 0) AS CReduce,  
      CONVERT(Varchar(20),'''') AS VATGroupID,  
      CONVERT(DECIMAL(28,8), 0) AS VATRate,  
      CONVERT(DECIMAL(28,8), 0) AS OVAT,  
      CONVERT(DECIMAL(28,8), 0) AS CVAT,  
      CONVERT(DECIMAL(28,8), 0) AS RateTax,  
      CONVERT(DECIMAL(28,8), 0) AS OTax,  
      CONVERT(DECIMAL(28,8), 0) AS CTax,  
      ModelDesc'+@U+' AS Notes,  -- D05T0017  
      CONVERT(Varchar(20),'''') Ana01ID, CONVERT(Varchar(20),'''') Ana02ID,   
      CONVERT(Varchar(20),'''') Ana03ID, CONVERT(Varchar(20),'''') Ana04ID,   
      CONVERT(Varchar(20),'''') Ana05ID, CONVERT(Varchar(20),'''') Ana06ID,  
      CONVERT(Varchar(20),'''') Ana07ID, CONVERT(Varchar(20),'''') Ana08ID,   
      CONVERT(Varchar(20),'''') Ana09ID, CONVERT(Varchar(20),'''') Ana10ID,  
      0 AS NRef1, 0 AS NRef2, 0 AS NRef3, 0 AS NRef4, 0 AS NRef5,  
      ---- Lay lien ket dinh muc khung  
      CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef1'' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef1'' THEN Isnull(T40.NormName,'''')   
      ELSE '''' END END AS DRef1,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef2'' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef2'' THEN Isnull(T40.NormName,'''')   
      ELSE '''' END END AS DRef2,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef3'' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef3'' THEN Isnull(T40.NormName,'''')   
      ELSE '''' END END AS DRef3,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef4'' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef4'' THEN Isnull(T40.NormName,'''')   
      ELSE '''' END END AS DRef4,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef5'' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef5'' THEN Isnull(T40.NormName,'''')   
      ELSE '''' END END AS DRef5,  
  
      0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
      CONVERT(nvarchar(500),'''') StatusDetail,  
      CONVERT(nvarchar(500),'''') DetailCustomerID,  
      CONVERT(Varchar(20),'''') DetailCustomerName,  
      CONVERT(Varchar(50),'''') ParcelInventoryID,  
      CONVERT(nvarchar(1000),'''') ParcelInventoryName,  
      CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
      CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
      CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
      CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
      CONVERT(DECIMAL(28,8), 0) AS Measurement,  
      CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
      0 As IsService, '''' As WareHouseID, CONVERT(BIT,0) AS IsPromotion,  
      0 AS DateNumber01, Convert(Datetime,null) As Date01,  
      CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
      0 AS DateNumber02, Convert(Datetime,null) AS Date02,  
      CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
      0 AS DateNumber03, Convert(Datetime,null) As Date03,  
      CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
      '''' As  KitID, '''' As KitUnitID,  
      CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
      0 AS KitNo,  
      T11.Spec01ID, T11.Spec02ID, T11.Spec03ID, T11.Spec04ID, T11.Spec05ID,  
      T11.Spec06ID, T11.Spec07ID, T11.Spec08ID, T11.Spec09ID, T11.Spec10ID,  
      '''' As IssueWareHouseID, 0 As IsKit,  
      Convert(Datetime,null) As DateRef1, Convert(Datetime,null) As DateRef2, Convert(Datetime,null) As DateRef3, Convert(Datetime,null) As DateRef4, Convert(Datetime,null) As DateRef5,  
      0 AS PromotionOnD05, CONVERT(DECIMAL(28,8), T11.SalePrice) AS OUnitPrice,  
      '''' As TransactionTypeID, Convert(Datetime,null) AS ODetailDueDate,  
      0 AS IsFromD16, CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
      T11.ProductID AS LinkMasterID,  
      '''' AS LinkDetailID,   
      1 as ConversionFactor,   
      isnull(T02.InventoryName'+@U+','''') AS InventoryName,  
      ISNULL(D07T0005.UnitName'+@U+', '''') as UnitName,  
      '''' AS VATGroupID1, 0 AS RateReduce1,  
      '''' as Spec01Name, '''' as Spec02Name, '''' as Spec03Name, '''' as Spec04Name, '''' as Spec05Name,  
      '''' as Spec06Name, '''' as Spec07Name, '''' as Spec08Name, '''' as Spec09Name, '''' as Spec10Name,  
      ISNULL(InventoryName'+@U+','''') AS OInventoryName,   
      ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
      ISNULL(D07T0004.Formula,'''') AS ConversionFormula ,  
      CONVERT(MONEY,0) AS DeliveredQuantity,  
      CONVERT(MONEY,0) AS RefUnitPrice,  
      CONVERT(MONEY,0) AS MinUnitPrice,  
      '''' AS RDVoucherID, '''' AS TransactionID, '''' AS R_D, '''' AS SplitNo,  
      T02.UnitID as BaseUnitID,  
      0 as Flag,  
      '''' as FormulaID, '''' as Formula,  
      0 as Num01, 0 as Num02,  
      0 as Num03, 0 as Num04,  
      0 as Num05, 0 as Num06,  
      0 as Num07, 0 as Num08,  
      0 as Num09, 0 as Num10,  
      0 AS IsAdjust, --Dung cho .NET  
      0 AS IsAdjusted, --Dung cho VB  
      0 As DeliveredQuantity, T11.SalePrice As RefUnitPrice , 0 as IsKit1,   
      ''11'' AS LinkModuleID, '''' AS LinkQuotationID, '''' AS LinkQuotationItemID,  
      Convert(tinyint, 0) AS AdjustTypeID,  
      Convert(Varchar(20), '''') as AdjustTypeDesc,  
      Convert(Varchar(20), '''') as AdjustmentListID,  
      0 as TotalAdjustedAmount,  
      0 as TotalAdjustedCAmount,  
      0 as AdjustedUnitPrice,  
      T02.IsBOM,  
      CONVERT(VARCHAR(250),'''') AS InventoryRefInfoD05,  
      CONVERT(Varchar(50), '''') As AdjustmentLineID,  
      CONVERT(Varchar(20), '''') As ProjectID,  
      CONVERT(Varchar(500), '''') As ProjectName,  
      CONVERT(Varchar(20), '''') As TaskID,  
      CONVERT(Varchar(1000), '''') As TaskName,  
      CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
      CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,   
      CONVERT(INT,0) AS WarrantyTime,  
      CONVERT(VARCHAR(50), '''') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
      CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
      CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
      CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
  '   
    
  SET @SQLFROM =  
  '  
     FROM   D11T2010 T11 WITH(NOLOCK)  
     LEFT JOIN D07T0004 WITH(NOLOCK) ON D07T0004.InventoryID = T11.InventoryID AND D07T0004.UnitID = T11.SalesUnitID    
     LEFT JOIN D07T0002 T02 WITH(NOLOCK)   
      ON T02.InventoryID  = T11.InventoryID  
     LEFT JOIN D07T0005 WITH(NOLOCK)   
     ON D07T0005.UnitID = T11.SalesUnitID  
     LEFT JOIN D32T1040 T40 WITH(NOLOCK)   
     ON T40.NormID = T11.NormID  
    LEFT JOIN D11T0000 T00 WITH(NOLOCK)   
      ON T00.IsLinkCode = 1  
     WHERE  T11.ProductID = '''+@QuotationID+'''   
      AND T11.DivisionID = '''+@DivisionID+'''  
     --ORDER BY     InventoryID   
     ORDER BY     OrderNum  
  '     
    --PRINT @SQL2  
    --PRINT @SQLFROM  
    EXEC (@SQL2+@SQLFROM)   
 END -- END:  @QuotationID <> 'QuotationD11'  
 ELSE   
  -- @QuotationID = 'QuotationD11'   
 BEGIN  
  -- TH chon nhieu phieu du toan (@QuotationID = 'QuotationD11')  
  IF @SimType <> 2 AND @SimType <> 9   
  BEGIN  
   SELECT  T11.DivisionID,  
      CONVERT(VARCHAR(20),'') AS QuotationID,  
      CONVERT(VARCHAR(20),'') AS QuotationItemID,  
      1 AS OrderNum,  
      T11.InventoryID,  
      Isnull(CASE WHEN @CodeTable = 0 THEN T02.InventoryName ELSE T02.InventoryNameU END,'') AS ItemName,  
      Isnull(CASE WHEN @CodeTable = 0 THEN T02.ShortName ELSE T02.ShortNameU END,'') AS ShortName,  
      T11.SalesUnitID AS UnitID,  
      T11.DeliveryDate,  
      CONVERT(Varchar(100),'') AS LocationNo,  
      CONVERT(DECIMAL(28,8), 0) AS SalesOrderQuantity,   
      CONVERT(DECIMAL(28,8), 0) AS Quantity,  
      CONVERT(DECIMAL(28,8), 0) AS CQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
      CONVERT(DECIMAL(28,8), T11.SalePrice) AS UnitPrice,  
      CONVERT(DECIMAL(28,8), 0) AS OAmountTmp,  
      CONVERT(DECIMAL(28,8), 0) AS CAmountTmp,  
      CONVERT(DECIMAL(28,8), 0) AS ACol01,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol01,  
      CONVERT(DECIMAL(28,8), 0) AS ACol02,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol02,  
      CONVERT(DECIMAL(28,8), 0) AS ACol03,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol03,  
      CONVERT(DECIMAL(28,8), 0) AS ACol04,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol04,  
      CONVERT(DECIMAL(28,8), 0) AS ACol05,  
      CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
      CONVERT(DECIMAL(28,8), 0) AS Amount,  
      CONVERT(DECIMAL(28,8), 0) AS CAmount,  
      CONVERT(DECIMAL(28,8), 0) AS RateReduce,  
      CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
      CONVERT(DECIMAL(28,8), 0) AS CReduce,  
      CONVERT(Varchar(20),'') AS VATGroupID,  
      CONVERT(DECIMAL(28,8), 0) AS VATRate,  
      CONVERT(DECIMAL(28,8), 0) AS OVAT,  
      CONVERT(DECIMAL(28,8), 0) AS CVAT,  
      CONVERT(DECIMAL(28,8), 0) AS RateTax,  
      CONVERT(DECIMAL(28,8), 0) AS OTax,  
      CONVERT(DECIMAL(28,8), 0) AS CTax,  
      T11.ModelDesc AS Notes,  -- D05T0017  
      CONVERT(Varchar(20),'') Ana01ID, CONVERT(Varchar(20),'') Ana02ID,   
      CONVERT(Varchar(20),'') Ana03ID, CONVERT(Varchar(20),'') Ana04ID,   
      CONVERT(Varchar(20),'') Ana05ID, CONVERT(Varchar(20),'') Ana06ID,  
      CONVERT(Varchar(20),'') Ana07ID, CONVERT(Varchar(20),'') Ana08ID,   
      CONVERT(Varchar(20),'') Ana09ID, CONVERT(Varchar(20),'') Ana10ID,  
      0 AS NRef1, 0 AS NRef2, 0 AS NRef3, 0 AS NRef4, 0 AS NRef5,  
      ---- Lay lien ket dinh muc khung  
      CASE WHEN ISNULL(T00.NormIDLinkTo, '')= 'VRef1' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'') = 'VRef1' THEN Isnull(T40.NormName,'')   
      ELSE '' END END AS DRef1,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '')= 'VRef2' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'') = 'VRef2' THEN Isnull(T40.NormName,'')   
      ELSE '' END END AS DRef2,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '')= 'VRef3' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'') = 'VRef3' THEN Isnull(T40.NormName,'')   
      ELSE '' END END AS DRef3,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '')= 'VRef4' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'') = 'VRef4' THEN Isnull(T40.NormName,'')   
      ELSE '' END END AS DRef4,   
      CASE WHEN ISNULL(T00.NormIDLinkTo, '')= 'VRef5' THEN T11.NormID  
      ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'') = 'VRef5' THEN Isnull(T40.NormName,'')   
      ELSE '' END END AS DRef5,  
  
      0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
      CONVERT(nvarchar(500),'') StatusDetail,  
      CONVERT(nvarchar(500),'') DetailCustomerID,  
      CONVERT(Varchar(20),'') DetailCustomerName,  
      CONVERT(Varchar(50),'') ParcelInventoryID,  
      CONVERT(nvarchar(1000),'') ParcelInventoryName,  
      CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
      CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
      CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
      CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
      CONVERT(DECIMAL(28,8), 0) AS Measurement,  
      CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
      0 As IsService, '' As WareHouseID, CONVERT(BIT,0) AS IsPromotion,  
      0 AS DateNumber01, Convert(Datetime,null) As Date01,  
      CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
      0 AS DateNumber02, Convert(Datetime,null) AS Date02,  
      CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
      0 AS DateNumber03, Convert(Datetime,null) As Date03,  
      CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
      '' As  KitID, '' As KitUnitID,  
      CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
      CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
      0 AS KitNo,  
      T11.Spec01ID, T11.Spec02ID, T11.Spec03ID, T11.Spec04ID, T11.Spec05ID,  
      T11.Spec06ID, T11.Spec07ID, T11.Spec08ID, T11.Spec09ID, T11.Spec10ID,  
      '' As IssueWareHouseID, 0 As IsKit,  
      Convert(Datetime,null) As DateRef1, Convert(Datetime,null) As DateRef2, Convert(Datetime,null) As DateRef3, Convert(Datetime,null) As DateRef4, Convert(Datetime,null) As DateRef5,  
      0 AS PromotionOnD05, CONVERT(DECIMAL(28,8), T11.SalePrice) AS OUnitPrice,  
      '' As  TransactionTypeID, Convert(Datetime,null) AS ODetailDueDate,  
      0 AS IsFromD16, CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
      T11.ProductID AS LinkMasterID,  
      '' AS LinkDetailID,   
  
      1 as ConversionFactor,   
      isnull(CASE WHEN @CodeTable = 0 THEN T02.InventoryName ELSE T02.InventoryNameU END,'') AS InventoryName,  
      ISNULL(CASE WHEN @CodeTable = 0 THEN D07T0005.UnitName ELSE D07T0005.UnitNameU END, '') as UnitName,  
      '' AS VATGroupID1, 0 AS RateReduce1,  
      '' as Spec01Name, '' as Spec02Name, '' as Spec03Name, '' as Spec04Name, '' as Spec05Name,  
      '' as Spec06Name, '' as Spec07Name, '' as Spec08Name, '' as Spec09Name, '' as Spec10Name,  
      ISNULL(CASE WHEN @CodeTable = 0 THEN T02.InventoryName ELSE T02.InventoryNameU END,'') AS OInventoryName,   
      ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
      ISNULL(D07T0004.Formula,'') AS ConversionFormula ,  
      CONVERT(MONEY,0) AS DeliveredQuantity,  
      CONVERT(MONEY,0) AS RefUnitPrice,  
      CONVERT(MONEY,0) AS MinUnitPrice,  
      '' AS RDVoucherID, '' AS TransactionID, '' AS R_D, '' AS SplitNo,  
  
      T02.UnitID as BaseUnitID,  
      0 as Flag,  
      '' as FormulaID, '' as Formula,  
      0 as Num01, 0 as Num02,  
      0 as Num03, 0 as Num04,  
      0 as Num05, 0 as Num06,  
      0 as Num07, 0 as Num08,  
      0 as Num09, 0 as Num10,  
      0 AS IsAdjust, --Dung cho .NET  
      0 AS IsAdjusted, --Dung cho VB  
      0 As DeliveredQuantity, T11.SalePrice As RefUnitPrice , 0 as IsKit1,   
      '11' AS LinkModuleID, '' AS LinkQuotationID, '' AS LinkQuotationItemID,  
      Convert(tinyint, 0) AS AdjustTypeID ,  
      Convert(Varchar(20), '') As AdjustTypeDesc,  
      Convert(Varchar(20), '') As AdjustmentListID,  
      0 as TotalAdjustedAmount,  
      0 as TotalAdjustedCAmount,  
      0 as AdjustedUnitPrice,  
      T02.IsBOM,  
      CONVERT(VARCHAR(250),'') AS InventoryRefInfoD05,  
      CONVERT(Varchar(50), '') As AdjustmentLineID,  
      CONVERT(Varchar(20), '') As ProjectID,  
      CONVERT(Varchar(500), '') As ProjectName,  
      CONVERT(Varchar(20), '') As TaskID,  
      CONVERT(Varchar(1000), '') As TaskName,  
      CONVERT(VARCHAR(50),'') AS OBatchID,   
      CONVERT(VARCHAR(50),'') AS OTransID,   
      CONVERT(VARCHAR(50),'') AS OTransTypeID,   
      CONVERT(VARCHAR(50),'') AS STransTypeID ,       
      CONVERT(VARCHAR(50),'') AS SBatchID,   
      CONVERT(VARCHAR(50),'') AS STransID,  
      CONVERT(INT,0) AS WarrantyTime ,  
      CONVERT(VARCHAR(50), '') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'') AS PackingItemID,  
      CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
      CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
      CONVERT(VARCHAR(25),'') AS AdjustmentAM, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
   FROM  D11T2010 T11 WITH(NOLOCK)  
   LEFT JOIN D07T0004 WITH(NOLOCK) ON D07T0004.InventoryID = T11.InventoryID AND D07T0004.UnitID = T11.SalesUnitID    
   INNER JOIN  D91T9009 T09 WITH(NOLOCK) ON T09.UserID = @UserID AND HostID = HOST_NAME()   
      AND Key01ID = @QuotationID  
      AND T09.Key02ID = T11.ProductID  
   LEFT JOIN D07T0002 T02 WITH(NOLOCK) ON T02.InventoryID  = T11.InventoryID  
   LEFT JOIn D07T0005 WITH(NOLOCK) ON D07T0005.UnitID = T11.SalesUnitID  
   LEFT JOIN D32T1040 T40 WITH(NOLOCK) ON T40.NormID = T11.NormID  
   LEFT JOIN D11T0000 T00 WITH(NOLOCK) ON T00.IsLinkCode = 1  
   WHERE  T11.DivisionID = @DivisionID   
  END  
  ELSE   
   -- truong hop Lap Chao gia tu D11 cho nhieu phieu du toan  
   IF @SimType = 2   
   BEGIN   
    SET @SQL2 =  
    '  
    DECLARE  @PriceOnDefaultUnit tinyint  
    SELECT  @PriceOnDefaultUnit = PriceOnDefaultUnit  
    FROM  D05T0000 WITH(NOLOCK)   
          
    SELECT  DISTINCT T11.DivisionID,  
       CONVERT(VARCHAR(20),'''') AS QuotationID,  
       CONVERT(VARCHAR(20),'''') AS QuotationItemID,  
       1 AS OrderNum,  
       T11.InventoryID,  
       Isnull(InventoryName'+@U+','''') AS ItemName,  
       Isnull(T02.ShortName'+@U+','''') AS ShortName,  
       T02.UnitID AS UnitID,  
       T11.DeliveryDate,  
       CONVERT(Varchar(100),'''') AS LocationNo,  
       CONVERT(DECIMAL(28,8), 0) AS SalesOrderQuantity,     
       CONVERT(DECIMAL(28,8), 1) AS Quantity,  
       ISNULL (D07T0004.ConversionFactor,1) AS CQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
       CONVERT(DECIMAL(28,8), T11.ReportSalePrice) AS UnitPrice, -- don gia truoc thue  
       CASE WHEN @PriceOnDefaultUnit = 0   
       THEN T11.ReportSalePrice   
       ELSE T11.ReportSalePrice * ISNULL(D07T0004.ConversionFactor,1)  
       END  
       AS OAmountTmp, -- Thanh tien   
       CASE WHEN @PriceOnDefaultUnit = 0   
       THEN T11.ReportSalePrice * V10.ExchangeRate  
       ELSE T11.ReportSalePrice * ISNULL (D07T0004.ConversionFactor,1) * V10.ExchangeRate  
       END        
       AS CAmountTmp, -- Thanh tien quy doi  
       CONVERT(DECIMAL(28,8), 0) AS ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS ACol05,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
       CASE WHEN @PriceOnDefaultUnit = 0   
       THEN T11.ReportSalePrice   
       ELSE T11.ReportSalePrice * ISNULL (D07T0004.ConversionFactor,1)  
       END   
       AS Amount, -- Gia tri Nguyen te  
       CASE WHEN @PriceOnDefaultUnit = 0   
       THEN T11.ReportSalePrice * V10.ExchangeRate  
       ELSE T11.ReportSalePrice * ISNULL (D07T0004.ConversionFactor,1) * V10.ExchangeRate  
       END    
       AS CAmount, -- Gia tri Nguyen te quy doi  
       CONVERT(DECIMAL(28,8), 0) AS RateReduce,  
       CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
       CONVERT(DECIMAL(28,8), 0) AS CReduce,  
       CONVERT(Varchar(20),'''') AS VATGroupID,  
       CONVERT(DECIMAL(28,8), 0) AS VATRate,  
       CONVERT(DECIMAL(28,8), 0) AS OVAT,  
       CONVERT(DECIMAL(28,8), 0) AS CVAT,  
       CONVERT(DECIMAL(28,8), 0) AS RateTax,  
       CONVERT(DECIMAL(28,8), 0) AS OTax,  
       CONVERT(DECIMAL(28,8), 0) AS CTax,  
       ModelDesc'+@U+' AS Notes, -- D05T0017  
       CONVERT(Varchar(20),'''') Ana01ID, CONVERT(Varchar(20),'''') Ana02ID,   
       CONVERT(Varchar(20),'''') Ana03ID, CONVERT(Varchar(20),'''') Ana04ID,   
       CONVERT(Varchar(20),'''') Ana05ID, CONVERT(Varchar(20),'''') Ana06ID,  
       CONVERT(Varchar(20),'''') Ana07ID, CONVERT(Varchar(20),'''') Ana08ID,   
       CONVERT(Varchar(20),'''') Ana09ID, CONVERT(Varchar(20),'''') Ana10ID,  
       0 AS NRef1, 0 AS NRef2, 0 AS NRef3, 0 AS NRef4, 0 AS NRef5,  
       ---- Lay lien ket dinh muc khung  
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef1'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef1'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef1,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef2'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef2'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef2,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef3'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef3'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef3,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef4'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef4'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef4,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef5'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef5'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef5,  
       0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
       CONVERT(nvarchar(500),'''') StatusDetail,  
       CONVERT(nvarchar(500),'''') DetailCustomerID,  
       CONVERT(Varchar(20),'''') DetailCustomerName,         CONVERT(Varchar(50),'''') ParcelInventoryID,  
       CONVERT(nvarchar(1000),'''') ParcelInventoryName,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
       CONVERT(DECIMAL(28,8), 0) AS Measurement,  
       CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
       0 As IsService, '''' As WareHouseID, CONVERT(BIT,0) AS IsPromotion,  
       0 AS DateNumber01, Convert(Datetime,null) As Date01,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
       0 AS DateNumber02, Convert(Datetime,null) AS Date02,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
       0 AS DateNumber03, Convert(Datetime,null) As Date03,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
       '''' As  KitID, '''' As KitUnitID,  
       CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
       0 AS KitNo,  
    '  
    SET @SQL3 =  
    '  
       T11.Spec01ID, T11.Spec02ID, T11.Spec03ID, T11.Spec04ID, T11.Spec05ID,  
       T11.Spec06ID, T11.Spec07ID, T11.Spec08ID, T11.Spec09ID, T11.Spec10ID,  
       '''' As IssueWareHouseID, 0 As IsKit,  
       Convert(Datetime,null) As DateRef1, Convert(Datetime,null) As DateRef2, Convert(Datetime,null) As DateRef3, Convert(Datetime,null) As DateRef4, Convert(Datetime,null) As DateRef5,  
       0 AS PromotionOnD05, CONVERT(DECIMAL(28,8), T11.ReportSalePrice) AS OUnitPrice, -- Don gia truoc thue  
       '''' As  TransactionTypeID, Convert(Datetime,null) AS ODetailDueDate,  
       0 AS IsFromD16, CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
       T11.ProductID AS LinkMasterID,  
       '''' AS LinkDetailID,   
       ISNULL(D07T0004.ConversionFactor,1) As ConversionFactor,   
       isnull(T02.InventoryName'+@U+','''') AS InventoryName,  
       ISNULL(D07T0005.UnitName'+@U+', '''') as UnitName,  
       '''' AS VATGroupID1, 0 AS RateReduce1,  
       '''' as Spec01Name, '''' as Spec02Name, '''' as Spec03Name, '''' as Spec04Name, '''' as Spec05Name,  
       '''' as Spec06Name, '''' as Spec07Name, '''' as Spec08Name, '''' as Spec09Name, '''' as Spec10Name,  
       ISNULL(InventoryName'+@U+','''') AS OInventoryName,   
       ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
       ISNULL(D07T0004.Formula,'''') AS ConversionFormula ,  
       CONVERT(MONEY,0) AS DeliveredQuantity,  
       CONVERT(MONEY,0) AS RefUnitPrice,  
       CONVERT(MONEY,0) AS MinUnitPrice,  
       '''' AS RDVoucherID, '''' AS TransactionID, '''' AS R_D, '''' AS SplitNo,  
       T02.UnitID as BaseUnitID,  
       0 as Flag,  
       '''' as FormulaID, '''' as Formula,  
       0 as Num01, 0 as Num02,  
       0 as Num03, 0 as Num04,  
       0 as Num05, 0 as Num06,  
       0 as Num07, 0 as Num08,  
       0 as Num09, 0 as Num10,  
       0 AS IsAdjust, --Dung cho .NET  
       0 AS IsAdjusted, --Dung cho VB  
       0 As DeliveredQuantity, 0 As RefUnitPrice , 0 as IsKit1,   
       ''11'' AS LinkModuleID, '''' AS LinkQuotationID, '''' AS LinkQuotationItemID,  
       Convert(tinyint, 0) AS AdjustTypeID,  
       Convert(Varchar(20), '''') As AdjustTypeDesc,  
       Convert(Varchar(20), '''') As AdjustmentListID,  
       0 as TotalAdjustedAmount,  
       0 as TotalAdjustedCAmount,  
       0 as AdjustedUnitPrice,  
       T02.IsBOM,  
       CONVERT(VARCHAR(250),'''') AS InventoryRefInfoD05,  
       CONVERT(Varchar(50), '''') As AdjustmentLineID,  
       CONVERT(Varchar(20), '''') As ProjectID,  
       CONVERT(Varchar(500), '''') As ProjectName,  
       CONVERT(Varchar(20), '''') As TaskID,  
       CONVERT(Varchar(1000), '''') As TaskName,  
       CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
       CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
       CONVERT(INT,0) AS WarrantyTime,  
       CONVERT(VARCHAR(50), '''') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
       CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
       CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
       CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
      '  
      SET @SQLFROM =  
      '  
      FROM   D11T2010 T11 WITH(NOLOCK)  
      LEFT JOIN D07T0004 WITH(NOLOCK)   
      ON D07T0004.InventoryID = T11.InventoryID   
       AND D07T0004.UnitID = T11.SalesUnitID    
      LEFT JOIN D07T0002 T02 WITH(NOLOCK)   
       ON T02.InventoryID  = T11.InventoryID  
      LEFT JOIN D07T0005 WITH(NOLOCK)   
       ON D07T0005.UnitID = T11.SalesUnitID  
      LEFT JOIN D32T1040 T40 WITH(NOLOCK)   
       ON T40.NormID = T11.NormID  
      LEFT JOIN D11T0000 T00 WITH(NOLOCK)   
      ON T00.IsLinkCode = 1  
      LEFT JOIN D91V0010 V10  
      ON T11.ReportingCurrencyID = V10.CurrencyID  
      INNER JOIN D91T9009 T09 WITH(NOLOCK)  
      ON T09.Key02ID = T11.ProductID  
       AND T09.Key01ID = '''+@DivisionID+'''  
       AND T09.HostID ='''+@HostID+'''  
       AND T09.UserID ='''+@UserID+'''  
       AND T09.FormID =''D11F2010''  
        
      DELETE  D91T9009   
      WHERE  Key01ID = '''+@DivisionID+'''  
        AND HostID ='''+@HostID+'''  
        AND UserID ='''+@UserID+'''  
        AND FormID =''D11F2010''  
      '  
      --PRINT @SQL2  
      --PRINT @SQL3  
      --PRINT @SQLFROM  
      EXEC (@SQL2 + @SQL3 + @SQLFROM)  
   END   
   -- END: @SimType = 2  
   ELSE  
   IF @SimType = 9  
   BEGIN   
    SET @SQL2 =  
    '  
    DECLARE  @PriceOnDefaultUnit Tinyint, @ExchangeRate Money  
    SELECT  @PriceOnDefaultUnit = PriceOnDefaultUnit  
    FROM  D05T0000 WITH(NOLOCK)       
  
    -- Lay ty gia  
    SELECT  @ExchangeRate = ExchangeRate  
    FROM  D91V0010  
    WHERE  CurrencyID = '''+@BaseCurrencyID+'''  
        
    SELECT  DISTINCT T01.DivisionID,  
       CONVERT(VARCHAR(20),'''') AS QuotationID,  
       CONVERT(VARCHAR(20),'''') AS QuotationItemID,  
       1 AS OrderNum,  
       T01.InventoryID,  
       Isnull(T02.InventoryName'+@U+','''') AS ItemName,  
       Isnull(T02.ShortName'+@U+','''') AS ShortName,  
       T02.UnitID AS UnitID,  
       CONVERT(Datetime, null) As DeliveryDate,  
       CONVERT(Varchar(100),'''') AS LocationNo,  
       CONVERT(DECIMAL(28,8), 0) AS SalesOrderQuantity,     
       CONVERT(DECIMAL(28,8), 1) AS Quantity,  
       ISNULL (T03.ConversionFactor,1) AS CQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS UnitPrice,   
       CONVERT(DECIMAL(28,8), 0) AS OAmountTmp,   
       CONVERT(DECIMAL(28,8), 0) AS CAmountTmp,   
       CONVERT(DECIMAL(28,8), 0) AS ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS ACol05,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
       CONVERT(DECIMAL(28,8), 0) AS Amount,   
       CONVERT(DECIMAL(28,8), 0) AS CAmount,  
       CONVERT(DECIMAL(28,8), 0) AS RateReduce,  
       CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
       CONVERT(DECIMAL(28,8), 0) AS CReduce,  
       CONVERT(Varchar(20),'''') AS VATGroupID,  
       CONVERT(DECIMAL(28,8), 0) AS VATRate,  
       CONVERT(DECIMAL(28,8), 0) AS OVAT,  
       CONVERT(DECIMAL(28,8), 0) AS CVAT,  
       CONVERT(DECIMAL(28,8), 0) AS RateTax,  
       CONVERT(DECIMAL(28,8), 0) AS OTax,  
       CONVERT(DECIMAL(28,8), 0) AS CTax,  
       VoucherDesc'+@U+' AS Notes,   
       CONVERT(Varchar(20),'''') Ana01ID, CONVERT(Varchar(20),'''') Ana02ID,   
       CONVERT(Varchar(20),'''') Ana03ID, CONVERT(Varchar(20),'''') Ana04ID,   
       CONVERT(Varchar(20),'''') Ana05ID, CONVERT(Varchar(20),'''') Ana06ID,  
       CONVERT(Varchar(20),'''') Ana07ID, CONVERT(Varchar(20),'''') Ana08ID,   
       CONVERT(Varchar(20),'''') Ana09ID, CONVERT(Varchar(20),'''') Ana10ID,  
       0 AS NRef1, 0 AS NRef2, 0 AS NRef3, 0 AS NRef4, 0 AS NRef5,  
       ---- Lay lien ket dinh muc khung  
       CONVERT(NVarchar(250),'''') As DRef1,   
       CONVERT(NVarchar(250),'''') As DRef2,   
       CONVERT(NVarchar(250),'''') As DRef3,   
       CONVERT(NVarchar(250),'''') As DRef4,   
       CONVERT(NVarchar(250),'''') As DRef5,  
       CONVERT(DECIMAL(28,8), 0) AS NDef1, CONVERT(DECIMAL(28,8), 0) AS NDef2,   
       CONVERT(DECIMAL(28,8), 0) AS NDef3, CONVERT(DECIMAL(28,8), 0) AS NDef4,   
       CONVERT(DECIMAL(28,8), 0) AS NDef5,  
       CONVERT(nvarchar(500),'''') StatusDetail,  
       CONVERT(nvarchar(500),'''') DetailCustomerID,  
       CONVERT(Varchar(20),'''') DetailCustomerName,  
       CONVERT(Varchar(50),'''') ParcelInventoryID,  
       CONVERT(nvarchar(1000),'''') ParcelInventoryName,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
       CONVERT(DECIMAL(28,8), 0) AS Measurement,  
       CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
       CONVERT(Tinyint,0) As IsService, CONVERT(Varchar(20),'''') As WareHouseID, CONVERT(BIT,0) AS IsPromotion,  
       CONVERT(Int,0) As DateNumber01, Convert(Datetime,null) As Date01,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
       CONVERT(Int,0) As DateNumber02, Convert(Datetime,null) AS Date02,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
       CONVERT(Int,0) AS DateNumber03, Convert(Datetime,null) As Date03,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
       CONVERT(Varchar(20),'''') As KitID, CONVERT(Varchar(20),'''') As KitUnitID,  
       CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
       CONVERT(Int,0) As KitNo,  
    '  
    SET @SQL3 =  
    '  
       CONVERT(Varchar(20),'''') As Spec01ID, CONVERT(Varchar(20),'''') As Spec02ID,   
       CONVERT(Varchar(20),'''') As Spec03ID, CONVERT(Varchar(20),'''') As Spec04ID,   
       CONVERT(Varchar(20),'''') As Spec05ID, CONVERT(Varchar(20),'''') As Spec06ID,   
       CONVERT(Varchar(20),'''') As Spec07ID, CONVERT(Varchar(20),'''') As Spec08ID,   
       CONVERT(Varchar(20),'''') As Spec09ID, CONVERT(Varchar(20),'''') As Spec10ID,  
       CONVERT(Varchar(20),'''') As IssueWareHouseID,CONVERT(Tinyint,0) AS IsKit,  
       Convert(Datetime,null) As DateRef1, Convert(Datetime,null) As DateRef2, Convert(Datetime,null) As DateRef3, Convert(Datetime,null) As DateRef4, Convert(Datetime,null) As DateRef5,  
       CONVERT(Tinyint,0) As PromotionOnD05,   
       CONVERT(DECIMAL(28,8), 0) AS OUnitPrice,   
       CONVERT(Varchar(20),'''') As TransactionTypeID, Convert(Datetime,null) AS ODetailDueDate,  
       CONVERT(Tinyint,0) As IsFromD16, CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
  
       -- D05 ko luu khoa D11, chi D11 luu cua D05  
       T01.CostSimulationID AS LinkMasterID,  
       CONVERT(Varchar(20),'''') As LinkDetailID,   
       ISNULL(T03.ConversionFactor,1) As ConversionFactor,   
       isnull(T02.InventoryName'+@U+','''') AS InventoryName,  
       ISNULL(T04.UnitName'+@U+', '''') as UnitName,  
       CONVERT(Varchar(20),'''') As VATGroupID1, CONVERT(Decimal(28,8),0) AS RateReduce1,  
       CONVERT(NVarchar(500),'''') As Spec01Name, CONVERT(NVarchar(500),'''') As Spec02Name, CONVERT(NVarchar(500),'''') As Spec03Name, CONVERT(NVarchar(500),'''') As Spec04Name, CONVERT(NVarchar(500),'''') As Spec05Name,  
       CONVERT(NVarchar(500),'''') As Spec06Name, CONVERT(NVarchar(500),'''') As Spec07Name, CONVERT(NVarchar(500),'''') As Spec08Name, CONVERT(NVarchar(500),'''') As Spec09Name, CONVERT(NVarchar(500),'''') As Spec10Name,  
       ISNULL(T02.InventoryName'+@U+','''') AS OInventoryName,   
       ISNULL(T03.UseFormula,0) AS UseConversionFormula,  
       ISNULL(T03.Formula,'''') AS ConversionFormula ,  
       CONVERT(MONEY,0) AS DeliveredQuantity,  
       CONVERT(MONEY,0) AS RefUnitPrice,  
       CONVERT(MONEY,0) AS MinUnitPrice,  
       CONVERT(Varchar(20),'''') As RDVoucherID, CONVERT(Varchar(20),'''') As TransactionID,   
       CONVERT(Varchar(20),'''') As R_D, CONVERT(Varchar(20),'''') As SplitNo,  
       T02.UnitID as BaseUnitID,  
       CONVERT(Tinyint,0) AS Flag,  
       CONVERT(Varchar(20),'''') As FormulaID, CONVERT(NVarchar(500),'''') As Formula,  
       CONVERT(Decimal(28,8),0) AS Num01, CONVERT(Decimal(28,8),0) AS Num02,  
       CONVERT(Decimal(28,8),0) AS Num03, CONVERT(Decimal(28,8),0) AS Num04,  
       CONVERT(Decimal(28,8),0) AS Num05, CONVERT(Decimal(28,8),0) As Num06,  
       CONVERT(Decimal(28,8),0) AS Num07, CONVERT(Decimal(28,8),0) AS Num08,  
       CONVERT(Decimal(28,8),0) AS Num09, CONVERT(Decimal(28,8),0) As Num10,  
       CONVERT(Tinyint,0) AS IsAdjust, --Dung cho .NET  
       CONVERT(Tinyint,0) AS IsAdjusted, --Dung cho VB  
       CONVERT(Tinyint,0) AS IsKit1,   
       ''11'' AS LinkModuleID, CONVERT(Varchar(20),'''') As LinkQuotationID, CONVERT(Varchar(20),'''') As LinkQuotationItemID,  
       Convert(tinyint, 0) AS AdjustTypeID,  
       Convert(Varchar(20), '''') As AdjustTypeDesc,  
       Convert(Varchar(20), '''') As AdjustmentListID,  
       CONVERT(Decimal(28,8),0) AS TotalAdjustedAmount,  
       CONVERT(Decimal(28,8),0) AS TotalAdjustedCAmount,  
       CONVERT(Decimal(28,8),0) AS AdjustedUnitPrice,  
       T01.MethodID,  
       T02.IsBOM ,  
       CONVERT(VARCHAR(250),'''') AS InventoryRefInfoD05,  
       CONVERT(Varchar(50), '''') As AdjustmentLineID,  
       CONVERT(Varchar(20), '''') As ProjectID,  
       CONVERT(Varchar(500), '''') As ProjectName,  
       CONVERT(Varchar(20), '''') As TaskID,  
       CONVERT(Varchar(1000), '''') As TaskName,  
       CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
       CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
       CONVERT(INT,0) AS WarrantyTime,  
       CONVERT(VARCHAR(50), '''') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
       CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
       CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
       CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
    INTO  #D11T2100     
    FROM  D11T2100 T01 WITH(NOLOCK)   
    LEFT JOIN D07T0004 T03 WITH(NOLOCK)   
      ON T03.InventoryID = T01.InventoryID   
       AND T03.UnitID = T01.UnitID    
    LEFT JOIN D07T0002 T02 WITH(NOLOCK)   
      ON T02.InventoryID  = T01.InventoryID  
    LEFT JOIN D07T0005 T04 WITH(NOLOCK)  
      ON T04.UnitID = T01.UnitID     
    INNER JOIN D11T9009 T09 WITH(NOLOCK)  
      ON T09.Key02ID = T01.CostSimulationID  
       AND T09.Key01ID = '''+@DivisionID+'''  
       AND T09.HostID = HOST_NAME()   
       AND T09.UserID ='''+@UserID+'''  
       AND T09.FormID =''D11F2010''  
    '  
      SET @SQLFROM =  
      '      
      -- Cap nhat gia tri  
      UPDATE  T1  
       -- Don gia truoc thue  
      SET   UnitPrice = T2.LineCodeValue,   
       -- Thanh tien  
       OAmountTmp = CASE WHEN @PriceOnDefaultUnit = 0   
           THEN T2.LineCodeValue   
           ELSE T2.LineCodeValue*T1.ConversionFactor END,  
       -- Thanh tien quy doi  
       CAmountTmp = CASE WHEN @PriceOnDefaultUnit = 0   
           THEN T2.LineCodeValue*@ExchangeRate  
           ELSE T2.LineCodeValue*T1.ConversionFactor*@ExchangeRate END,  
       -- Gia tri Nguyen te  
       Amount = CASE WHEN @PriceOnDefaultUnit = 0   
           THEN T2.LineCodeValue   
           ELSE T2.LineCodeValue*T1.ConversionFactor END,  
       -- Gia tri Nguyen te quy doi  
       CAmount = CASE WHEN @PriceOnDefaultUnit = 0   
           THEN T2.LineCodeValue*@ExchangeRate  
           ELSE T2.LineCodeValue*T1.ConversionFactor*@ExchangeRate END,  
       -- Don gia truoc thue  
       OUnitPrice = T2.LineCodeValue  
      FROM   #D11T2100 T1  
      INNER JOIN D11T2101 T2 WITH(NOLOCK) ON T1.LinkMasterID = T2.CostSimulationID  
      INNER JOIN D11T1101 T3 WITH(NOLOCK) ON T3.LineCodeID = T2.LineCodeID AND T3.MethodID = T1.MethodID  
      INNER JOIN D11T1105 T4 WITH(NOLOCK) ON T3.SystemLineCodeID = T4.SystemLineCodeID  
       AND T4.SystemLCType = ''UnitPrice01''   
            
    -- Cap nhat 3 thong ke  
    UPDATE  T1  
    SET   NDef1 = CASE WHEN T3.LCDataType = ''N'' THEN T2.LineCodeValue ELSE T2.LineCodeStrValue END       
    FROM  #D11T2100 T1  
    INNER JOIN D11T2101 T2 WITH(NOLOCK)   
      ON T1.LinkMasterID = T2.CostSimulationID  
    INNER JOIN D11T1101 T3 WITH(NOLOCK)   
      ON T3.LineCodeID = T2.LineCodeID   
       AND T3.MethodID = T1.MethodID   
    WHERE  T3.SystemLineCodeID = ''SE007''  -- So luong min  
       AND T1.LinkMasterID <> ''''  
      
    UPDATE  T1  
    SET   NDef2 = CASE WHEN T3.LCDataType = ''N'' THEN T2.LineCodeValue ELSE T2.LineCodeStrValue END       
    FROM  #D11T2100 T1  
    INNER JOIN D11T2101 T2 WITH(NOLOCK)   
      ON T1.LinkMasterID = T2.CostSimulationID  
    INNER JOIN D11T1101 T3 WITH(NOLOCK)   
      ON T3.LineCodeID = T2.LineCodeID   
       AND T3.MethodID = T1.MethodID   
    WHERE  T3.SystemLineCodeID = ''SE001''  --Gia ban lan 1  
       AND T1.LinkMasterID <> ''''  
         
    UPDATE  T1  
    SET   NDef3 = CASE WHEN T3.LCDataType = ''N'' THEN T2.LineCodeValue ELSE T2.LineCodeStrValue END       
    FROM  #D11T2100 T1  
    INNER JOIN D11T2101 T2 WITH(NOLOCK)   
      ON T1.LinkMasterID = T2.CostSimulationID  
    INNER JOIN D11T1101 T3 WITH(NOLOCK)   
      ON T3.LineCodeID = T2.LineCodeID   
       AND T3.MethodID = T1.MethodID   
    WHERE  T3.SystemLineCodeID = ''SE002''  --Gia ban lan 2  
       AND T1.LinkMasterID <> ''''  
             
      SELECT  *   
      FROM   #D11T2100  
    --ORDER BY     InventoryID  
      ORDER BY     OrderNum  
        
      DELETE FROM D11T9009   
      WHERE  Key01ID = '''+@DivisionID+'''  
       AND HostID = HOST_NAME()   
       AND UserID ='''+@UserID+'''  
       AND FormID =''D11F2010''  
           
      DROP TABLE #D11T2100  
      '  
    --PRINT @SQL2  
    --PRINT @SQL3  
    --PRINT @SQLFROM  
    EXEC (@SQL2 + @SQL3 + @SQLFROM)  
   END  
  END    
  -- END: @QuotationID = 'QuotationD11'  
 END  
 ELSE --@FormID  'D11F2060'  
   BEGIN  
   IF @FormID = 'D11F2060'  
   BEGIN  
   DECLARE @UnitPriceType VARCHAR(50) = '', @UnitLevel INT = 0  
   SET @UnitPriceType  = (SELECT TOP 1 Key03ID FROM dbo.D11T9009 WHERE HostID = @HostID AND UserID = @UserID AND FormID = @FormID AND Key02ID = 'Quotation')  
   SELECT @UnitLevel = CASE WHEN @UnitPriceType = 'PricePerProduct' THEN 2 ELSE 1 END   
  
   SET @SQL2 = @SQL2+  
    '  
    SELECT   T11.DivisionID,  
       CONVERT(VARCHAR(20),'''') AS QuotationID,  
       CONVERT(VARCHAR(20),'''') AS QuotationItemID,  
       T12.OrderNo AS OrderNum,  
       T12.InventoryID,  
       Isnull(T02.InventoryName'+@U+','''') AS ItemName,  
       Isnull(T02.ShortName'+@U+','''') AS ShortName,  
       CASE WHEN '''+CONVERT(VARCHAR(1),@UnitLevel)+''' = 1 THEN T12.UnitID   
        --ELSE D07T0004.UnitID END AS UnitID,  
        ELSE T12.EstUnitID END AS UnitID,  
       --T11.DeliveryDate,.  
       CONVERT(DATETIME,NULL) AS DeliveryDate,  
       CONVERT(Varchar(100),'''') AS LocationNo,  
       CONVERT(DECIMAL(28,8), 0) AS SalesOrderQuantity,   
       T12.EstQuantity AS Quantity,  
       CASE WHEN '''+CONVERT(VARCHAR(1),@UnitLevel)+''' = 1 THEN T12.EstQuantity  
       ELSE T12.EstQuantity * ConversionFactor END AS CQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
       --CONVERT(DECIMAL(28,8), T11.SalePrice) AS UnitPrice,  
       T12.'+@UnitPriceType+' AS UnitPrice,  
       T12.'+@UnitPriceType+'*T12.EstQuantity AS OAmountTmp,  
       T12.'+@UnitPriceType+'*T12.EstQuantity*T11.ExchangeRate AS CAmountTmp,  
       CONVERT(DECIMAL(28,8), 0) AS ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS ACol05,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
       T12.'+@UnitPriceType+'*T12.EstQuantity AS Amount,  
       T12.'+@UnitPriceType+'*T12.EstQuantity*T11.ExchangeRate AS CAmount,  
       CONVERT(DECIMAL(28,8), 0) AS RateReduce,  
       CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
       CONVERT(DECIMAL(28,8), 0) AS CReduce,  
       --CONVERT(Varchar(20),'''') AS VATGroupID,  
       T1020.VATGroupID AS VATGroupID,  
       --CONVERT(DECIMAL(28,8), 0) AS VATRate,  
       T0040.RateTax AS VATRate,  
       --CONVERT(DECIMAL(28,8), 0) AS OVAT,  
       --CONVERT(DECIMAL(28,8), 0) AS CVAT,  
       T12.'+@UnitPriceType+'*T12.EstQuantity*T0040.RateTax AS  OVAT,  
       T12.'+@UnitPriceType+'*T12.EstQuantity*T0040.RateTax AS  CVAT,  
       CONVERT(DECIMAL(28,8), 0) AS RateTax,  
       CONVERT(DECIMAL(28,8), 0) AS OTax,  
       CONVERT(DECIMAL(28,8), 0) AS CTax,  
       --ModelDesc'+@U+' AS Notes,   
       CONVERT(NVARCHAR(500),'''') AS Notes,  
       CONVERT(Varchar(20),'''') Ana01ID, CONVERT(Varchar(20),'''') Ana02ID,   
       CONVERT(Varchar(20),'''') Ana03ID, CONVERT(Varchar(20),'''') Ana04ID,   
       CONVERT(Varchar(20),'''') Ana05ID, CONVERT(Varchar(20),'''') Ana06ID,  
       CONVERT(Varchar(20),'''') Ana07ID, CONVERT(Varchar(20),'''') Ana08ID,   
       CONVERT(Varchar(20),'''') Ana09ID, CONVERT(Varchar(20),'''') Ana10ID,  
       0 AS NRef1, 0 AS NRef2, 0 AS NRef3, 0 AS NRef4, 0 AS NRef5,  
       ---- Lay lien ket dinh muc khung  
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef1'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef1'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef1,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef2'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef2'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef2,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef3'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef3'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef3,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef4'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef4'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef4,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef5'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef5'' THEN Isnull(T40.NormName,'''')   
       ELSE T20.VRef5 END END AS DRef5,  
  
       0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
       CONVERT(nvarchar(500),'''') StatusDetail,  
       CONVERT(nvarchar(500),'''') DetailCustomerID,  
       CONVERT(Varchar(20),'''') DetailCustomerName,  
       CONVERT(Varchar(50),'''') ParcelInventoryID,  
       CONVERT(nvarchar(1000),'''') ParcelInventoryName,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
       CONVERT(DECIMAL(28,8), 0) AS Measurement,  
       CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
       0 As IsService, '''' As WareHouseID, CONVERT(BIT,0) AS IsPromotion,  
       0 AS DateNumber01, Convert(Datetime,null) As Date01,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
       0 AS DateNumber02, Convert(Datetime,null) AS Date02,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
       0 AS DateNumber03, Convert(Datetime,null) As Date03,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
       '''' As  KitID, '''' As KitUnitID,  
       CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
       0 AS KitNo,  
       T11.Spec01ID, T11.Spec02ID, T11.Spec03ID, T11.Spec04ID, T11.Spec05ID,  
       T11.Spec06ID, T11.Spec07ID, T11.Spec08ID, T11.Spec09ID, T11.Spec10ID,  
       '''' As IssueWareHouseID, 0 As IsKit,  
       Convert(Datetime,null) As DateRef1, Convert(Datetime,null) As DateRef2, Convert(Datetime,null) As DateRef3, Convert(Datetime,null) As DateRef4, Convert(Datetime,null) As DateRef5,  
       0 AS PromotionOnD05, CONVERT(DECIMAL(28,8), T12.'+@UnitPriceType+') AS OUnitPrice,  
       '''' As TransactionTypeID, Convert(Datetime,null) AS ODetailDueDate,  
       0 AS IsFromD16, CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
       T12.ProductID AS LinkMasterID,  
       T12.BatchID AS LinkDetailID,   
  
       CASE WHEN '''+CONVERT(VARCHAR(1),@UnitLevel)+''' = 1 THEN 1  
       ELSE ConversionFactor END AS ConversionFactor,  
  
       --1 as ConversionFactor,   
       isnull(T02.InventoryName'+@U+','''') AS InventoryName,  
       ISNULL(D07T0005.UnitName'+@U+', '''') as UnitName,  
       --'''' AS VATGroupID1  
       T1020.VATGroupID AS VATGroupID1  
       , 0 AS RateReduce1,  
       '''' as Spec01Name, '''' as Spec02Name, '''' as Spec03Name, '''' as Spec04Name, '''' as Spec05Name,  
       '''' as Spec06Name, '''' as Spec07Name, '''' as Spec08Name, '''' as Spec09Name, '''' as Spec10Name,  
       ISNULL(InventoryName'+@U+','''') AS OInventoryName,   
       ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
       ISNULL(D07T0004.Formula,'''') AS ConversionFormula ,  
       CONVERT(MONEY,0) AS DeliveredQuantity,  
       CONVERT(MONEY,0) AS RefUnitPrice,  
       CONVERT(MONEY,0) AS MinUnitPrice,  
       '''' AS RDVoucherID, '''' AS TransactionID, '''' AS R_D, '''' AS SplitNo,  
       T02.UnitID as BaseUnitID,  
       0 as Flag,  
       '''' as FormulaID, '''' as Formula,  
       0 as Num01, 0 as Num02,  
       0 as Num03, 0 as Num04,  
       0 as Num05, 0 as Num06,  
       0 as Num07, 0 as Num08,  
       0 as Num09, 0 as Num10,  
       0 AS IsAdjust, --Dung cho .NET  
       0 AS IsAdjusted, --Dung cho VB  
       0 As DeliveredQuantity, T11.SalePrice As RefUnitPrice , 0 as IsKit1,   
       ''11'' AS LinkModuleID, '''' AS LinkQuotationID, '''' AS LinkQuotationItemID,  
       Convert(tinyint, 0) AS AdjustTypeID,  
       Convert(Varchar(20), '''') as AdjustTypeDesc,  
       Convert(Varchar(20), '''') as AdjustmentListID,  
       0 as TotalAdjustedAmount,  
       0 as TotalAdjustedCAmount,  
       0 as AdjustedUnitPrice,  
       T02.IsBOM,  
       CONVERT(VARCHAR(250),'''') AS InventoryRefInfoD05,  
       CONVERT(Varchar(50), '''') As AdjustmentLineID,  
       CONVERT(Varchar(20), '''') As ProjectID,  
       CONVERT(Varchar(500), '''') As ProjectName,  
       CONVERT(Varchar(20), '''') As TaskID,  
       CONVERT(Varchar(1000), '''') As TaskName,  
       CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
       CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,   
       CONVERT(INT,0) AS WarrantyTime,  
       T12.PackingID AS PackingID, T12.PackingFactor AS PackingFactor, T12.PackingQuantity AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
       CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
       CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
       CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax    
    
    
   '   
   SET @SQLFROM =  
   '  
      FROM   D11T2012 T12 WITH(NOLOCK)  
      INNER JOIN D11T2010 T11 WITH(NOLOCK)  
      ON   T12.ProductID = T11.ProductID  
      INNER JOIN D11T9009 T09 WITH(NOLOCK)  
      ON   T11.ProductID = T09.Key01ID  
      AND   T09.Key02id = ''Quotation''  
      AND   T09.UserID = '''+@UserID+'''  
      AND   T09.HostID = '''+@HostID+'''  
      AND   T09.FormID = '''+@FormID+'''  
      LEFT JOIN D07T0004 WITH(NOLOCK) ON D07T0004.InventoryID = T12.InventoryID   
      AND   ((D07T0004.UnitID = T12.UnitID AND  '''+CONVERT(VARCHAR(1),@UnitLevel)+''' = 1)   
       OR (D07T0004.Orders = '''+CONVERT(VARCHAR(1),@UnitLevel)+'''))  
      LEFT JOIN D07T0002 T02 WITH(NOLOCK)   
       ON T02.InventoryID  = T12.InventoryID  
      LEFT JOIN D07T0005 WITH(NOLOCK)   
      ON D07T0005.UnitID = T11.SalesUnitID  
      LEFT JOIN D32T1040 T40 WITH(NOLOCK)   
      ON T40.NormID = T11.NormID  
      LEFT JOIN  D11T0000 T00 WITH(NOLOCK)   
       ON T00.IsLinkCode = 1  
      LEFT JOIN D05T1020 T1020 WITH(NOLOCK)   
      ON T1020.TranTypeID = '''+@TranTypeID+'''  
      LEFT JOIN D91T0040 T0040 WITH(NOLOCK)   
      ON T0040.VATGroupID = T1020.VATGroupID  
    LEFT JOIN (SELECT MAX(VRef5) AS VRef5, ProductID, BatchID FROM D11T2020 WITH(NOLOCK) GROUP BY ProductID, BatchID) T20  
      ON T20.ProductID = T12.ProductID  
      AND T20.BatchID = T12.BatchID  
      WHERE T11.DivisionID = '''+@DivisionID+''' AND  
      T12.EstQuantity <> 0  
      --ORDER BY     InventoryID   
      ORDER BY     OrderNum  
   '     
  
   END  
   IF @FormID = 'D11F2070'  
   BEGIN  
   SET @SQL2 = @SQL2+  
    '  
    SELECT   T11.DivisionID,  
       CONVERT(VARCHAR(20),'''') AS QuotationID,  
       CONVERT(VARCHAR(20),'''') AS QuotationItemID,  
       1 AS OrderNum,  
       T12.InventoryID,  
       Isnull(T02.InventoryName'+@U+','''') AS ItemName,  
       Isnull(T02.ShortName'+@U+','''') AS ShortName,  
       T12.UnitID,   
       CONVERT(DATETIME,NULL) AS DeliveryDate,  
       CONVERT(Varchar(100),'''') AS LocationNo,  
       CONVERT(DECIMAL(28,8), 0) AS SalesOrderQuantity,   
       T12.Quantity AS Quantity,  
       CONVERT(DECIMAL(28,8),1) AS CQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ReduceQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS CReduceQuantity,  
       --CONVERT(DECIMAL(28,8), T11.SalePrice) AS UnitPrice,  
       T12.SalePrice AS UnitPrice,  
       T12.SalePrice*T12.Quantity AS OAmountTmp,  
       T12.SalePrice*T12.Quantity*T11.ExchangeRate AS CAmountTmp,  
       CONVERT(DECIMAL(28,8), 0) AS ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol01,  
       CONVERT(DECIMAL(28,8), 0) AS ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol02,  
       CONVERT(DECIMAL(28,8), 0) AS ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol03,  
       CONVERT(DECIMAL(28,8), 0) AS ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol04,  
       CONVERT(DECIMAL(28,8), 0) AS ACol05,  
       CONVERT(DECIMAL(28,8), 0) AS C_ACol05,  
       T12.SalePrice*T12.Quantity AS Amount,  
       T12.SalePrice*T12.Quantity*T11.ExchangeRate AS CAmount,  
       CONVERT(DECIMAL(28,8), 0) AS RateReduce,  
       CONVERT(DECIMAL(28,8), 0) AS OriginalReduce,  
       CONVERT(DECIMAL(28,8), 0) AS CReduce,  
       CONVERT(Varchar(20),'''') AS VATGroupID,  
       CONVERT(DECIMAL(28,8), 0) AS VATRate,  
       CONVERT(DECIMAL(28,8), 0) AS OVAT,  
       CONVERT(DECIMAL(28,8), 0) AS CVAT,  
       CONVERT(DECIMAL(28,8), 0) AS RateTax,  
       CONVERT(DECIMAL(28,8), 0) AS OTax,  
       CONVERT(DECIMAL(28,8), 0) AS CTax,  
       --ModelDesc'+@U+' AS Notes,   
       CONVERT(NVARCHAR(500),'''') AS Notes,  
       CONVERT(Varchar(20),'''') Ana01ID, CONVERT(Varchar(20),'''') Ana02ID,   
       CONVERT(Varchar(20),'''') Ana03ID, CONVERT(Varchar(20),'''') Ana04ID,   
       CONVERT(Varchar(20),'''') Ana05ID, CONVERT(Varchar(20),'''') Ana06ID,  
       CONVERT(Varchar(20),'''') Ana07ID, CONVERT(Varchar(20),'''') Ana08ID,   
       CONVERT(Varchar(20),'''') Ana09ID, CONVERT(Varchar(20),'''') Ana10ID,  
       0 AS NRef1, 0 AS NRef2, 0 AS NRef3, 0 AS NRef4, 0 AS NRef5,  
       ---- Lay lien ket dinh muc khung  
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef1'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef1'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef1,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef2'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef2'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef2,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef3'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef3'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef3,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef4'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef4'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef4,   
       CASE WHEN ISNULL(T00.NormIDLinkTo, '''')= ''VRef5'' THEN T11.NormID  
       ELSE CASE WHEN ISNULL(T00.NormNameLinkTo,'''') = ''VRef5'' THEN Isnull(T40.NormName,'''')   
       ELSE '''' END END AS DRef5,  
  
       0 AS NDef1, 0 AS NDef2, 0 AS NDef3, 0 AS NDef4, 0 AS NDef5,  
       CONVERT(nvarchar(500),'''') StatusDetail,  
       CONVERT(nvarchar(500),'''') DetailCustomerID,  
       CONVERT(Varchar(20),'''') DetailCustomerName,  
       CONVERT(Varchar(50),'''') ParcelInventoryID,  
       CONVERT(nvarchar(1000),'''') ParcelInventoryName,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS ParcelPerQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNet,  
       CONVERT(DECIMAL(28,8), 0) AS WeightNetTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGrossTotal,  
       CONVERT(DECIMAL(28,8), 0) AS WeightGross,  
       CONVERT(DECIMAL(28,8), 0) AS Measurement,  
       CONVERT(DECIMAL(28,8), 0) AS MeasurementTotal,  
       0 As IsService, '''' As WareHouseID, CONVERT(BIT,0) AS IsPromotion,  
       0 AS DateNumber01, Convert(Datetime,null) As Date01,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio01,  
       0 AS DateNumber02, Convert(Datetime,null) AS Date02,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio02,  
       0 AS DateNumber03, Convert(Datetime,null) As Date03,  
       CONVERT(DECIMAL(28,8), 0) AS Ratio03,  
       '''' As  KitID, '''' As KitUnitID,  
       CONVERT(DECIMAL(28,8), 0) AS KitQuantity,  
       CONVERT(DECIMAL(28,8), 0) AS KitCQuantity,  
       0 AS KitNo,  
       T11.Spec01ID, T11.Spec02ID, T11.Spec03ID, T11.Spec04ID, T11.Spec05ID,  
       T11.Spec06ID, T11.Spec07ID, T11.Spec08ID, T11.Spec09ID, T11.Spec10ID,  
       '''' As IssueWareHouseID, 0 As IsKit,  
       Convert(Datetime,null) As DateRef1, Convert(Datetime,null) As DateRef2, Convert(Datetime,null) As DateRef3, Convert(Datetime,null) As DateRef4, Convert(Datetime,null) As DateRef5,  
       0 AS PromotionOnD05, CONVERT(DECIMAL(28,8), T12.SalePrice) AS OUnitPrice,  
       '''' As TransactionTypeID, Convert(Datetime,null) AS ODetailDueDate,  
       0 AS IsFromD16, CONVERT(DECIMAL(28,8), 0) AS DiscountedUnitPrice,   
       T12.ProductID AS LinkMasterID,  
       T12.BatchID AS LinkDetailID,   
       1 as ConversionFactor,   
       isnull(T02.InventoryName'+@U+','''') AS InventoryName,  
       ISNULL(D07T0005.UnitName'+@U+', '''') as UnitName,  
       '''' AS VATGroupID1, 0 AS RateReduce1,  
       '''' as Spec01Name, '''' as Spec02Name, '''' as Spec03Name, '''' as Spec04Name, '''' as Spec05Name,  
       '''' as Spec06Name, '''' as Spec07Name, '''' as Spec08Name, '''' as Spec09Name, '''' as Spec10Name,  
       ISNULL(InventoryName'+@U+','''') AS OInventoryName,   
       ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
       ISNULL(D07T0004.Formula,'''') AS ConversionFormula ,  
       CONVERT(MONEY,0) AS DeliveredQuantity,  
       CONVERT(MONEY,0) AS RefUnitPrice,  
       CONVERT(MONEY,0) AS MinUnitPrice,  
       '''' AS RDVoucherID, '''' AS TransactionID, '''' AS R_D, '''' AS SplitNo,  
       T02.UnitID as BaseUnitID,  
       0 as Flag,  
       '''' as FormulaID, '''' as Formula,  
       0 as Num01, 0 as Num02,  
       0 as Num03, 0 as Num04,  
       0 as Num05, 0 as Num06,  
       0 as Num07, 0 as Num08,  
       0 as Num09, 0 as Num10,  
       0 AS IsAdjust, --Dung cho .NET  
       0 AS IsAdjusted, --Dung cho VB  
       0 As DeliveredQuantity, T12.SalePrice As RefUnitPrice , 0 as IsKit1,   
       ''11'' AS LinkModuleID, '''' AS LinkQuotationID, '''' AS LinkQuotationItemID,  
       Convert(tinyint, 0) AS AdjustTypeID,  
       Convert(Varchar(20), '''') as AdjustTypeDesc,  
       Convert(Varchar(20), '''') as AdjustmentListID,  
       0 as TotalAdjustedAmount,  
       0 as TotalAdjustedCAmount,  
       0 as AdjustedUnitPrice,  
       T02.IsBOM,  
       CONVERT(VARCHAR(250),'''') AS InventoryRefInfoD05,  
       CONVERT(Varchar(50), '''') As AdjustmentLineID,  
       CONVERT(Varchar(20), '''') As ProjectID,  
       CONVERT(Varchar(500), '''') As ProjectName,  
       CONVERT(Varchar(20), '''') As TaskID,  
       CONVERT(Varchar(1000), '''') As TaskName,  
       CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
       CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,   
       CONVERT(INT,0) AS WarrantyTime,  
       CONVERT(VARCHAR(50), '''') AS PackingID, CONVERT(DECIMAL(28,8), 0) AS PackingFactor, CONVERT(DECIMAL(28,8), 0) AS PackingQuantity, CONVERT(VARCHAR(50),'''') AS PackingItemID,  
       CONVERT(DECIMAL(28,8),0) AS PolicyRate, CONVERT(DECIMAL(28,8),0) AS ProRate,  
       CONVERT(DECIMAL(28,8),0) AS TotalSalesQTY, CONVERT(DECIMAL(28,8),0) AS ProUseQuantity,  
       CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  CONVERT(DECIMAL(28,8),0) AS ExceedDetailQty, Convert(tinyint,0) AS IsLockCommCosts, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax  
  
       
   '  
   SET @SQLFROM =  
   '  
      FROM   D11T2012 T12 WITH(NOLOCK)  
      INNER JOIN D11T2010 T11 WITH(NOLOCK)  
      ON   T12.ProductID = T11.ProductID  
      INNER JOIN D11T9009 T09 WITH(NOLOCK)  
      ON   T11.ProductID = T09.Key01ID  
      AND   T09.Key02id = ''Quotation''  
      AND   T09.UserID = '''+@UserID+'''  
      AND   T09.HostID = '''+@HostID+'''  
      AND   T09.FormID = '''+@FormID+'''  
      LEFT JOIN D07T0004 WITH(NOLOCK) ON D07T0004.InventoryID = T12.InventoryID   
      AND   D07T0004.UnitID = T12.UnitID   
      LEFT JOIN D07T0002 T02 WITH(NOLOCK)   
       ON T02.InventoryID  = T12.InventoryID  
      LEFT JOIN D07T0005 WITH(NOLOCK)   
      ON D07T0005.UnitID = T11.SalesUnitID  
      LEFT JOIN D32T1040 T40 WITH(NOLOCK)   
      ON T40.NormID = T11.NormID  
      LEFT JOIN  D11T0000 T00 WITH(NOLOCK)   
       ON T00.IsLinkCode = 1  
      WHERE T11.DivisionID = '''+@DivisionID+'''  
      --ORDER BY     InventoryID   
      ORDER BY     OrderNum  
   '     
  
   END  
     
     --PRINT (CAST(@SQL2 AS NTEXT) )  
     --PRINT @SQLFROM  
     EXEC (@SQL2+@SQLFROM)   
     
  END  
END     
-- END: @Mode = 3  
DECLARE @sSQL42 AS NVARCHAR(4000)  
SET @sSQL42=''  
  
IF @Mode = 4 -- load lai luoi sau khi quet ma vach  
BEGIN   
SET @sSQL42 = @sSQL42+ '  
SELECT   UserID, HostID,  
   Num01 as Orders,   
   Key02ID as InventoryID,   
   Key03ID as UnitID,  
   Num02 as Quantity,   
   Num03 as CQuantity,   
   Num04 as CFactor  
INTO  #Tab_D05P1612     
FROM  D91T9009 WITH (NOLOCK)  
WHERE  --UserID = '''+ @UserID+ '''  
   --AND HostID = '''+@HostID+'''  
   --and   
   Key01ID = ''D07F2750''  
  
SELECT  T.InventoryID, T02.InventoryName'+@U+' as InventoryName,  
   T.UnitID,   
   T.Quantity, T.CQuantity,  
   T.CFactor AS ConversionFactor, T02.IsKit  
INTO  #Tab_D05P1612_DATA        
FROM  #Tab_D05P1612 T WITH (NOLOCK)  
INNER JOIN D07T0002 T02 WITH (NOLOCK)  
  ON T.InventoryID = T02.InventoryID  
  
SELECT * FROM #Tab_D05P1612_DATA  
DROP TABLE #Tab_D05P1612_DATA  
  
  
DELETE FROM D91T9009  
WHERE  UserID ='''+ @UserID+'''  
   AND HostID = '''+@HostID+'''  
   and Key01ID = ''D07F2750'''  
--PRINT @sSQL42  
EXEC (@sSQL42)  
END  
  
IF @Mode = 5  
BEGIN  
 IF @FormID IN ('D54F2130','D54F2160')   
 BEGIN  
 SET @SQL0 = 'EXEC D05P1666 '''+@DivisionID+''', '''+@UserID+''', '''+@HostID+''', '''+@FormID+''', '''+@Language+''', '''+@QuotationID+''','''+@TranTypeID+''' '  
   
 END  
  
  
--PRINT @SQL0  
EXEC (@SQL0)  
END  
  
-- Load luoi danh sach mat hang khi goi tu ket qua lenh bao duong  
IF @Mode= 6  
BEGIN  
 IF @FormID = 'D35F2021'  
 BEGIN  
  SET @SQL = 'EXEC D05P1735 ''' + @DivisionID + ''', ''' + @QuotationID + ''', ''' + STR(@Mode, 1) + ''', ''' + @UserID + ''', ''' + @Language + ''', ''' + STR(@CodeTable, 1) + ''', ''' + @HostID + ''', ''' + @FormID + ''' '  
    
  --PRINT(@SQL)  
  EXEC(@SQL)  
 END  
END  
  
  
IF @Mode = 7  
BEGIN  
 DECLARE @StrOACol02 NVARCHAR(100), @StrOACol03 NVARCHAR(100), @StrOACol04 NVARCHAR(100), @StrOACol05 NVARCHAR(100)  
 SELECT @StrOACol02 = REPLACE(StrOACol02,';','+'),   
   @StrOACol03 = REPLACE(StrOACol03,';','+'),   
   @StrOACol04 = REPLACE(StrOACol04,';','+'),   
   @StrOACol05 = REPLACE(StrOACol05,';','+')  
 FROM D05T1022 WITH(NOLOCK) WHERE TranTypeID = @TranTypeID  
 --SELECT @StrOACol02, @StrOACol03, @StrOACol04, @StrOACol05  
 SET @SQL01 = N'   
 SELECT  T09.UserID, T09.HostID, DivisionID, QuotationID, QuotationItemID,   
    OrderNum, InventoryID, UnitID, DeliveryDate, T02.Key04ID AS LocationNo,   
    T02.Num03 AS Quantity, T02.Num04 AS CQuantity, ReduceQuantity, CReduceQuantity, UnitPrice,   
    OAmountTmp, CAmountTmp,   
    CASE WHEN T09.ACol01Rate <> 0 THEN T09.ACol01Rate*T09.Quantity * T09.UnitPrice ELSE T09.ACol01 END AS ACol01,   
    CASE WHEN T09.ACol01Rate <> 0 THEN T09.ACol01Rate*T09.Quantity * T09.UnitPrice* (CAmount / CASE WHEN ISNULL(Amount,0) = 0 THEN 1 ELSE Amount END) ELSE T09.C_ACol01 END AS C_ACol01,   
    T09.ACol02, T09.C_ACol02,   
    T09.ACol03, T09.C_ACol03,   
    T09.ACol04, T09.C_ACol04,   
    T09.ACol05, T09.C_ACol05,  
    Amount, CAmount,   
    RateReduce, OriginalReduce, CReduce, VATGroupID, VATRate, T02.Num03 * T09.UnitPrice * T09.VATRate AS OVAT,   
    ROUND(T02.Num03 * T09.UnitPrice * T09.VATRate * (CAmount / CASE WHEN ISNULL(Amount,0) = 0 THEN 1 ELSE Amount END),'+STR(@D90_ConvertedDecimals)+') AS CVAT,   
    RateTax, OTax, CTax, Ana01ID,   
    Ana02ID, Ana03ID, Ana04ID, Ana05ID, Ana06ID,   
    Ana07ID, Ana08ID, Ana09ID, Ana10ID, NRef1,   
    NRef2, NRef3, NRef4, NRef5, NDef1,   
    NDef2, NDef3, NDef4, NDef5, StatusDetail,   
    DetailCustomerID, ParcelQuantity, ParcelPerQuantity, WeightNet, WeightNetTotal,   
    WeightGrossTotal, WeightGross, Measurement, MeasurementTotal, IsService,   
    WareHouseID, IsPromotion, DateNumber01, T09.Date01, Ratio01,   
    DateNumber02, T09.Date02, Ratio02, DateNumber03, T09.Date03,   
    Ratio03, KitID, KitUnitID, KitQuantity, KitCQuantity,   
    KitNo, Spec01ID, Spec02ID, Spec03ID, Spec04ID,   
    Spec05ID, Spec06ID, Spec07ID, Spec08ID, Spec09ID,   
    Spec10ID, IssueWareHouseID, IsKit, DateRef1, DateRef2,   
    DateRef3, DateRef4, DateRef5, PromotionOnD05, OUnitPrice,   
    TransactionTypeID, ODetailDueDate, IsFromD16, LinkMasterID, LinkDetailID,   
    TempUnitPrice, IsComponentOfKit, OrderQTY, OrderCQTY, AdjustmentListID,   
    UnitPriceOnD14, TotalAdjustedAmount, TotalAdjustedCAmount, AdjustedUnitPrice, ItemNameU,   
    ShortNameU, NotesU, DRef1U, DRef2U, DRef3U,   
    DRef4U, DRef5U, DetailCustomerNameU, ProjectID, TaskID,   
    PriceListID, CurrencyOnPriceList, BOMID, PriceListLineID, PriceBreakID,   
    TotalAdjRate, ACol01Rate, ACol02Rate, ACol03Rate, ACol04Rate, ACol05Rate,  
    ParcelInventoryID, ParcelInventoryName'+@U+', DiscountedUnitPrice, DeliveryQTY,  
    ReturnQTY, InvoiceQTY, DExchangeRate, SplitNo, CAmount / CASE WHEN ISNULL(Amount,0) = 0 THEN 1 ELSE Amount END AS ExchangeRate,  
    T09.Quantity AS OldQuantity  
 INTO  #D05T9017_D05F1602  
 FROM  D05T9009 T02 WITH(NOLOCK)  
 INNER JOIN D05T9017 T09 WITH(NOLOCK)  
  ON  T02.Key01ID = T09.QuotationID  
  AND  T02.Key02ID = T09.QuotationItemID  
  AND  T02.Num06 = T09.OrderNum  
  AND  T02.UserID = T09.UserID  
  AND  T02.HostID = T09.HostID  
  AND  T02.FormID = ''D05F1602_SplitLot''  
 WHERE  T09.UserID = '''+@UserID+'''  
  AND  T09.HostID = '''+@HostID+'''  
 '  
 SET @SQL10 = N'  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol01 = CASE WHEN ExchangeRate = 1 THEN ROUND(ACol01*(Quantity/OldQuantity),'+STR(@D90_ConvertedDecimals)+')  
       ELSE ACol01*(Quantity/OldQuantity)  END,  
    C_ACol01 = ROUND(C_ACol01*(Quantity/OldQuantity),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol01Rate = CONVERT(DECIMAL(28,8),0) AND ACol01 <> 0  
  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol02 = CASE WHEN ExchangeRate = 1 THEN ROUND((ACol02*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol02,'') <> '' THEN @StrOACol02 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
       ELSE (ACol02*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol02,'') <> '' THEN @StrOACol02 ELSE '0' END+',0)) END,  
    C_ACol02 = ROUND((C_ACol02*(Quantity/OldQuantity) + ISNULL('+CASE WHEN ISNULL(@StrOACol02,'') <> '' THEN @StrOACol02 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol02Rate = CONVERT(DECIMAL(28,8),0) AND ACol02 <> 0  
  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol03 = CASE WHEN ExchangeRate = 1 THEN ROUND((ACol03*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol03,'') <> '' THEN @StrOACol03 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
        ELSE (ACol03*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol03,'') <> '' THEN @StrOACol03 ELSE '0' END+',0)) END,  
    C_ACol03 = ROUND((C_ACol03*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol03,'') <> '' THEN @StrOACol03 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol03Rate = CONVERT(DECIMAL(28,8),0) AND ACol03 <> 0  
  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol04 = CASE WHEN ExchangeRate = 1 THEN ROUND((ACol04*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol04,'') <> '' THEN @StrOACol04 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
       ELSE (ACol04*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol04,'') <> '' THEN @StrOACol04 ELSE '0' END+',0)) END,  
    C_ACol04 = ROUND((C_ACol04*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol04,'') <> '' THEN @StrOACol04 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol04Rate = CONVERT(DECIMAL(28,8),0) AND ACol04 <> 0  
  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol05 = CASE WHEN ExchangeRate = 1 THEN ROUND((ACol05*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol05,'') <> '' THEN @StrOACol05 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
       ELSE (ACol05*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol05,'') <> '' THEN @StrOACol05 ELSE '0' END+',0)) END,  
    C_ACol05 = ROUND((C_ACol05*(Quantity/OldQuantity) +ISNULL('+CASE WHEN ISNULL(@StrOACol05,'') <> '' THEN @StrOACol05 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol05Rate = CONVERT(DECIMAL(28,8),0) AND ACol05 <> 0  
 '  
 SET @SQL11 = N'  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol02 = CASE WHEN ExchangeRate = 1 THEN ROUND(ACol02Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol02,'') <> '' THEN @StrOACol02 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
       ELSE ACol02Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol02,'') <> '' THEN @StrOACol02 ELSE '0' END+',0)) END,  
    C_ACol02 = ROUND(ACol02Rate*((Quantity * UnitPrice*ExchangeRate) + ISNULL('+CASE WHEN ISNULL(@StrOACol02,'') <> '' THEN @StrOACol02 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol02Rate <> CONVERT(DECIMAL(28,8),0)  
  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol03 = CASE WHEN ExchangeRate = 1 THEN ROUND(ACol03Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol03,'') <> '' THEN @StrOACol03 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
        ELSE ACol03Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol03,'') <> '' THEN @StrOACol03 ELSE '0' END+',0)) END,  
    C_ACol03 = ROUND(ACol03Rate*((Quantity * UnitPrice*ExchangeRate) +ISNULL('+CASE WHEN ISNULL(@StrOACol03,'') <> '' THEN @StrOACol03 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol03Rate <> CONVERT(DECIMAL(28,8),0)  
  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol04 = CASE WHEN ExchangeRate = 1 THEN ROUND(ACol04Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol04,'') <> '' THEN @StrOACol04 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
       ELSE ACol04Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol04,'') <> '' THEN @StrOACol04 ELSE '0' END+',0)) END,  
    C_ACol04 = ROUND(ACol04Rate*((Quantity * UnitPrice*ExchangeRate) +ISNULL('+CASE WHEN ISNULL(@StrOACol04,'') <> '' THEN @StrOACol04 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol04Rate <> CONVERT(DECIMAL(28,8),0)  
  
 UPDATE  #D05T9017_D05F1602  
 SET   ACol05 = CASE WHEN ExchangeRate = 1 THEN ROUND(ACol05Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol05,'') <> '' THEN @StrOACol05 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
       ELSE ACol05Rate*((Quantity * UnitPrice) +ISNULL('+CASE WHEN ISNULL(@StrOACol05,'') <> '' THEN @StrOACol05 ELSE '0' END+',0)) END,  
    C_ACol05 = ROUND(ACol05Rate*((Quantity * UnitPrice*ExchangeRate) +ISNULL('+CASE WHEN ISNULL(@StrOACol05,'') <> '' THEN @StrOACol05 ELSE '0' END+',0)),'+STR(@D90_ConvertedDecimals)+')  
 WHERE  ACol05Rate <> CONVERT(DECIMAL(28,8),0)  
 '  
 SET @SQL111 = N'   
 SELECT  T09.DivisionID, T09.QuotationID, '''' AS QuotationItemID, T09.OrderNum,   
    T09.InventoryID, ItemName'+@U+'  AS ItemName,   
    T09.ShortName'+@U+'  AS ShortName, T09.UnitID,  
    T09.DeliveryDate, T09.LocationNo, T09.Quantity, T09.CQuantity, ReduceQuantity, CReduceQuantity,   
    T09.UnitPrice,   
    T09.Quantity * T09.UnitPrice AS OAmountTmp, T09.Quantity * T09.UnitPrice * T09.ExchangeRate AS CAmountTmp,   
    T09.ACol01, T09.C_ACol01, T09.ACol02, T09.C_ACol02, T09.ACol03, T09.C_ACol03, T09.ACol04, T09.C_ACol04, T09.ACol05, T09.C_ACol05,  
    (T09.Quantity * T09.UnitPrice)+T09.ACol01+T09.ACol02+T09.ACol03+T09.ACol04+T09.ACol05 AS Amount,   
    (T09.Quantity * T09.UnitPrice * T09.ExchangeRate)+T09.C_ACol01+T09.C_ACol02+T09.C_ACol03+T09.C_ACol04+T09.C_ACol05 AS CAmount,   
    T09.RateReduce, T09.OriginalReduce, T09.CReduce, T09.VATGroupID, T09.VATRate,   
    CASE WHEN T09.ExchangeRate = 1 THEN ROUND(((T09.Quantity * T09.UnitPrice)+T09.ACol01+T09.ACol02+T09.ACol03+T09.ACol04+T09.ACol05)*T09.VATRate,'+STR(@D90_ConvertedDecimals)+')  
       ELSE ((T09.Quantity * T09.UnitPrice)+T09.ACol01+T09.ACol02+T09.ACol03+T09.ACol04+T09.ACol05)*T09.VATRate END AS OVAT,   
    CASE WHEN T09.ExchangeRate = 1 THEN ROUND(((T09.Quantity * T09.UnitPrice)+T09.ACol01+T09.ACol02+T09.ACol03+T09.ACol04+T09.ACol05)*T09.VATRate,'+STR(@D90_ConvertedDecimals)+')  
       ELSE ((T09.Quantity * T09.UnitPrice)+T09.ACol01+T09.ACol02+T09.ACol03+T09.ACol04+T09.ACol05)*T09.VATRate END AS VAT,   
    ROUND(((T09.Quantity * T09.UnitPrice * T09.ExchangeRate)+T09.ACol01+T09.ACol02+T09.ACol03+T09.ACol04+T09.ACol05) *T09.VATRate,'+STR(@D90_ConvertedDecimals)+') AS CVAT,   
    RateTax, OTax, CTax,   
    T09.Notes'+@U+' AS Notes,  
    T09.Ana01ID, T09.Ana02ID, T09.Ana03ID, T09.Ana04ID, T09.Ana05ID,   
    T09.Ana06ID, T09.Ana07ID, T09.Ana08ID, T09.Ana09ID, T09.Ana10ID,   
    T09.NRef1, T09.NRef2, T09.NRef3, T09.NRef4, T09.NRef5,  
    T09.DRef1'+@U+' AS DRef1, T09.DRef2'+@U+' AS DRef2,   
    T09.DRef3'+@U+' AS DRef3, T09.DRef4'+@U+' AS DRef4,   
    T09.DRef5'+@U+' AS DRef5,   
    T09.NDef1, T09.NDef2, T09.NDef3, T09.NDef4, T09.NDef5, StatusDetail, DetailCustomerID,   
    DetailCustomerName'+@U+'  AS DetailCustomerName,  
    ParcelInventoryID, ParcelInventoryName'+@U+'  AS ParcelInventoryName,   
    ParcelQuantity, ParcelPerQuantity, WeightNet, WeightNetTotal, WeightGrossTotal,  
    WeightGross, Measurement, MeasurementTotal, T09.IsService, T09.WareHouseID, CONVERT(BIT,IsPromotion) AS IsPromotion,   
    DateNumber01, T09.Date01, Ratio01, DateNumber02, T09.Date02, Ratio02, DateNumber03, T09.Date03, Ratio03,  
    KitID, KitUnitID, KitQuantity, KitCQuantity, KitNo,   
    T09.Spec01ID, T09.Spec02ID, T09.Spec03ID, T09.Spec04ID, T09.Spec05ID,   
    T09.Spec06ID, T09.Spec07ID, T09.Spec08ID, T09.Spec09ID, T09.Spec10ID,  
    IssueWareHouseID, T09.IsKit, DateRef1, DateRef2, DateRef3, DateRef4, DateRef5, PromotionOnD05, T09.OUnitPrice,   
    T22.OriUnitPrice,--T09.QuotationTypeID,T09.ServiceTypeID,  
    T09.TransactionTypeID, ODetailDueDate, IsFromD16, DiscountedUnitPrice,  
    CASE WHEN ISNULL(D11.ProductID,'''') <> ''''   
    THEN D11.ProductID   
    ELSE T09.LinkMasterID   
    END AS LinkMasterID, LinkDetailID, DeliveryQTY,  
    ReturnQTY, TempUnitPrice, IsComponentOfKit, T09.Quantity AS OrderQTY, T09.CQuantity AS OrderCQTY, T09.AdjustmentListID,   
    (T09.Quantity * T09.UnitPrice)+T09.ACol01+T09.ACol02+T09.ACol03+T09.ACol04+T09.ACol05 AS TotalAdjustedAmount,   
    (T09.Quantity * T09.UnitPrice * T09.ExchangeRate)+T09.C_ACol01+T09.C_ACol02+T09.C_ACol03+T09.C_ACol04+T09.C_ACol05 AS TotalAdjustedCAmount,   
    AdjustedUnitPrice, InvoiceQTY,  
    ISNULL(D07T0004.ConversionFactor, 1) as ConversionFactor,   
    ItemName'+@U+'  AS InventoryName,  
    ISNULL(D07T0005.UnitName'+@U+' , '''') as UnitName,  
    T09.VATGroupID AS VATGroupID1,  
    T09.RateReduce * 100 AS RateReduce1,  
 '  
 SET @SQL2 = '  
    CONVERT(NVARCHAR(500), '''') AS Spec01Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec02Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec03Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec04Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec05Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec06Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec07Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec08Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec09Name,  
    CONVERT(NVARCHAR(500), '''') AS Spec10Name,  
    D07T0002.InventoryName'+@U+' AS OInventoryName,      
    ISNULL(D07T0004.UseFormula,0) AS UseConversionFormula,  
    ISNULL(D07T0004.Formula,'''') AS ConversionFormula ,   
    CONVERT(MONEY,0) AS MinUnitPrice,  
    D07T1011.RDVoucherID,   
    D07T1011.TransactionID,   
    D07T1011.R_D,   
    D07T1011.SplitNo,  
    D07T0002.UnitID as BaseUnitID,  
    Case when D07T2230.TransID is null then 0 else 1 end as Flag,  
    isnull(D07T2230.FormulaID, '''') as FormulaID,  
    isnull(D07T2230.Formula, '''') as Formula,  
    isnull(D07T2230.Num01, 0) as Num01, isnull(D07T2230.Num02, 0) as Num02,  
    isnull(D07T2230.Num03, 0) as Num03, isnull(D07T2230.Num04, 0) as Num04,  
    isnull(D07T2230.Num05, 0) as Num05, isnull(D07T2230.Num06, 0) as Num06,  
    isnull(D07T2230.Num07, 0) as Num07, isnull(D07T2230.Num08, 0) as Num08,  
    isnull(D07T2230.Num09, 0) as Num09, isnull(D07T2230.Num10, 0) as Num10,  
    Case when T15.IsAdjusted is null then 0 else 1 end IsAdjust, --Dung cho .NET  
    Case when T15.IsAdjusted is null then 0 else 1 end IsAdjusted, --Dung cho VB  
    Convert(Money,0) As DeliveredQuantity, Isnull(T09.UnitPrice,0) As RefUnitPrice ,   
    Case when T09.Iskit=2 then 1 else 0 end as IsKit1,   
    D05T2030.OModuleID AS LinkModuleID, Convert(tinyint, 0) AS IsUnitPrice ,     
    D05T2030.OVoucherID AS LinkQuotationID,  
    D05T2030.OTransID AS LinkQuotationItemID ,  
    Convert(tinyint, 0) AS AdjustTypeID ,  
    Convert(Varchar(20), '''') As AdjustTypeDesc,  
    (T09.Quantity + Isnull(OADJ.Quantity,0)) AS AdjOQuantity,   
    (T09.CQuantity + Isnull(OADJ.CQuantity,0)) As AdjCQuantity,  
    --- Gia ban  - Tong gia mua ---- Trong do Tong gia mua = Textbox gia ve mua + Thue + PXB + PXD  
    T09.Amount  - (ISNULL(T09.NDef1,0) + (ISNULL(T09.VATRate,0)*ISNULL(T09.NDef1,0)) + T09.ACol01 + T09.ACol02 )  AS Profit, ---- Modified on 15/05/2012 by Bao Chi : (ID 48401)  
    T09.ACol04 AS MinProfit, --- truong ACol04 luu Phi DV  
    T09.PriceListID DPriceListID, T09.CurrencyOnPriceList, T09.DExchangeRate,  
    D07T0002.IsBOM, T09.PriceListLineID, T09.PriceBreakID, T09.PriceListID PriceListID,  
    CASE D05T0000.InventoryRefInfo   
     WHEN ''ShortName'' THEN D07T0002.ShortName'+@U+'   
     WHEN ''I01ID''  THEN D07T0002.ICode01ID  
     WHEN ''I02ID''  THEN D07T0002.ICode02ID  
     WHEN ''I03ID''  THEN D07T0002.ICode03ID  
     WHEN ''I04ID''  THEN D07T0002.ICode04ID  
     WHEN ''I05ID''  THEN D07T0002.ICode05ID  
     WHEN ''I06ID''  THEN D07T0002.ICode06ID  
     WHEN ''I07ID''  THEN D07T0002.ICode07ID  
     WHEN ''I08ID''  THEN D07T0002.ICode08ID  
     WHEN ''I09ID''  THEN D07T0002.ICode09ID  
     WHEN ''I10ID''  THEN D07T0002.ICode10ID  
     WHEN ''Volume''  THEN  CASE WHEN ROUND(D07T0002.Volume,0) = ROUND(D07T0002.Volume,8)  
             THEN CONVERT(varchar(50),CONVERT(DECIMAL(28,0),D07T0002.Volume))  
             ELSE REPLACE(RTRIM(REPLACE(CONVERT(varchar(50),D07T0002.Volume),''0'','' '')),'' '',''0'')  
          END  
     WHEN ''Weight''  THEN  CONVERT(varchar(50),D07T0002.Weight,2)        
     WHEN ''StrRefInfo'' THEN   
            CASE WHEN ROUND(D07T0002.DLength,0) = ROUND(D07T0002.DLength,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DLength),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DLength),''0'','' '')),'' '',''0'') END + ''x'' +  
            CASE WHEN ROUND(D07T0002.DWidth,0) = ROUND(D07T0002.DWidth,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DWidth),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DWidth),''0'','' '')),'' '',''0'') END + ''x'' +   
            CASE WHEN ROUND(D07T0002.DHeight,0) = ROUND(D07T0002.DHeight,8) THEN REPLACE(CONVERT(VARCHAR(15),D07T0002.DHeight),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(15),D07T0002.DHeight),''0'','' '')),'' '',''0'') END + '' ''+  
            CONVERT(VARCHAR(250),ISNULL(D07T1016.ComponentID,''''))+ '' '' +  
            CASE WHEN ROUND(D07T0002.Index01,0) = ROUND(D07T0002.Index01,8) THEN REPLACE(CONVERT(VARCHAR(50),D07T0002.Index01),''.00000000'','''') ELSE REPLACE(RTRIM(REPLACE(CONVERT(VARCHAR(50),D07T0002.Index01),''0'','' '')),'' '',''0'') END + '' '' +  
            D07T0002.Str01'+@U+'  + '' '' + D07T0002.Str02'+@U+' + '' '' + D07T0002.Str03'+@U+' + '' '' + D07T0002.Str04'+@U+' + '' '' + D07T0002.Str05'+@U+'  
     WHEN ''RefCode''  THEN D07T0002.RefCode  
    ELSE '''' END AS InventoryRefInfoD05,  
    ISNULL(D05T1017.SuplierTypeID,'''') AS SuplierTypeID, ISNULL(D05T1017.SuplierID,'''') AS SuplierID,   
    CONVERT(NVARCHAR(250),'''') AS SuplierName,  
    ISNULL(D05T1017.CurrencyID,'''') AS POCurrencyID,  
    ISNULL(D05T1017.ExchangeRate,0) AS POExchangeRate, ISNULL(D05T1017.UnitPrice,0) AS POUnitPrice,  
    CASE WHEN (T09.SplitNo = '''' OR T09.SplitNo = ''0'') THEN RTRIM(LTRIM(STR(T09.OrderNum))) Else T09.SplitNo End As D05SplitNo,  
    NULL AS FactoryOutDate, '''' AS AdjustmentLineID,   
    0 As IsUsed , --voi IsUsed = 1 thi khong duoc phep sua ma hang, so luong  
    CASE WHEN T09.InvoiceQTY > 0 Then 1 Else 0 End As IsInvoice, --Co hoa don thi khong duoc phep sua don gia  
    0 AS BidQty,  0 AS BidAcceptQty,   
    T09.ACol01Rate AS ACol01Rate,  
    T09.ACol02Rate AS ACol02Rate,  
    T09.ACol03Rate AS ACol03Rate,  
    T09.ACol04Rate AS ACol04Rate,  
    T09.ACol05Rate AS ACol05Rate,  
    CONVERT(VARCHAR(500),'''') AS QuotaLineID,  
    CONVERT(VARCHAR(500),'''') AS QuotaID,  
    T09.UnitPriceOnD14, CASE WHEN T09.UnitPriceOnD14 = 0 AND T09.UnitPrice = 0   
    THEN 0 ELSE CASE WHEN T09.UnitPriceOnD14 = 0 AND T09.UnitPrice <> 0 THEN 100 ELSE  
    ABS(100 * (T09.UnitPriceOnD14 - T09.UnitPrice) / T09.UnitPriceOnD14) END END PriceDiffRate,  
    ISNULL(D05T1017.SuplierTypeID,'''') AS SupplierTypeID,   
    ISNULL(D05T1017.SuplierID,'''') AS SupplierID,   
    CONVERT(NVARCHAR(250),'''') AS SupplierName,  
    '''+@TranTypeID+''' AS TranTypeID, --D05T0016.ExchangeRate,  
    Convert(decimal(28,8), 0) As SOQtyPerInvQtyRate, ---ty le SL don hang/ SL ton kho  
    T09.TotalAdjRate * 100 AS TotalAdjRate,  
    0 AS QuotaAdjRate, 0 AS ReCalculate,  
    '''' AS ProjectID, '''' AS ProjectName, '''' AS TaskID, '''' AS TaskName,  
    CONVERT(VARCHAR(50),'''') AS OBatchID, CONVERT(VARCHAR(50),'''') AS OTransID, CONVERT(VARCHAR(50),'''') AS OTransTypeID,   
    CONVERT(VARCHAR(50),'''') AS STransTypeID, CONVERT(VARCHAR(50),'''') AS SBatchID, CONVERT(VARCHAR(50),'''') AS STransID,  
    ISNULL(T22.WarrantyTime, 0 ) AS WarrantyTime, CONVERT(DECIMAL(28,8),0) AS QuantityStock,  
    '''' AS PackingID, 0 AS PackingFactor, 0 AS PackingQuantity, '''' AS PackingItemID,  
    ISNULL(D05T1022.IssueTranType,'''') AS IssueTranType,  
    ISNULL(D14T2400.PolicyRate,0) AS PolicyRate, ISNULL(D14T2400.ProRate,0) AS ProRate,  
    ISNULL(D14T2400.TotalSalesQTY,0) AS TotalSalesQTY, ISNULL(D14T2400.ProUseQuantity,0) AS ProUseQuantity,  
    CONVERT(VARCHAR(25),'''') AS AdjustmentAM,  
    CASE WHEN (T09.LinkMasterID <> '''' AND T09.LinkMasterID like ''49%'')  THEN 1 ELSE 0 END AS IsContract,  
    CONVERT(TINYINT,0) IsLockInfEstimate, 0 AS ExceedDetailQty,   
    Convert(tinyint,0) AS IsLockCommCosts,  
    CONVERT(VARCHAR(50),'''') AS ContractNo, CONVERT(VARCHAR(50),'''') AS DocNo,  
    D05T0117.Dat01 as DisplayDat01,  D05T0117.Dat02 as DisplayDat02,  D05T0117.Dat03 as DisplayDat03,   
    D05T0117.Dat04 as DisplayDat04,  D05T0117.Dat05 as DisplayDat05,  D05T0117.Dat06 as DisplayDat06,   
    D05T0117.Dat07 as DisplayDat07,  D05T0117.Dat08 as DisplayDat08,  D05T0117.Dat09 as DisplayDat09, D05T0117.Dat10 as DisplayDat10,   
    D05T0117.Num01 as DisplayNum01,  D05T0117.Num02 as DisplayNum02,  D05T0117.Num03 as DisplayNum03,  
  '  
 SET @SQL2 = @SQL2 + '  
    D05T0117.Num04 as DisplayNum04,  D05T0117.Num05 as DisplayNum05,  D05T0117.Num06 as DisplayNum06,   
    D05T0117.Num07 as DisplayNum07,  D05T0117.Num08 as DisplayNum08,  D05T0117.Num09 as DisplayNum09, D05T0117.Num10 as DisplayNum10,   
    D05T0117.Str01 as DisplayStr01,  D05T0117.Str02 as DisplayStr02,  D05T0117.Str03 as DisplayStr03,   
    D05T0117.Str04 as DisplayStr04,  D05T0117.Str05 as DisplayStr05,  D05T0117.Str06 as DisplayStr06,   
    D05T0117.Str07 as DisplayStr07,  D05T0117.Str08 as DisplayStr08,  D05T0117.Str09 as DisplayStr09, D05T0117.Str10 as DisplayStr10, --CONVERT(BIT,T09.BidAccept) AS BidAccept,   
    CASE WHEN D07T0002.IsRepresentItem=1 AND D07T0002.Disabled =1  THEN 1 ELSE 0 END IsRepresentItem,   
    0 AS IsPick, 0 AS IsPickDetail,   
    D07T0002.IsLocation, CONVERT(Decimal(28,8),0) AS OAmountTmpTax,CONVERT(Decimal(28,8),0) AS CAmountTmpTax, '''' AS CurrencyID,  
    0 AS BidAcceptOAmount,   
    0 AS BidAcceptCAmount,  
    0 AS QAStatusDetail,  '''' AS ShipAddressID,  
    0 AS Acol01_UnitPrice,  
    0 AS Acol02_UnitPrice,  
    0 AS Acol03_UnitPrice,  
    0 AS Acol04_UnitPrice,  
    0 AS Acol05_UnitPrice,   
    T09.OrderNum AS KeyOrderNum  , '''' AS BreakGroupID,   
    CONVERT(TINYINT,1) AS IsOldData,CONVERT(DECIMAL(28,8),0) AS OriACol01,CONVERT(DECIMAL(28,8),0) AS OriACol02,CONVERT(DECIMAL(28,8),0) AS OriACol03,CONVERT(DECIMAL(28,8),0) AS OriACol04,CONVERT(DECIMAL(28,8),0) AS OriACol05,  
    CONVERT(DECIMAL(28,8),0) AS OriACol01Rate,CONVERT(DECIMAL(28,8),0) AS OriACol02Rate,CONVERT(DECIMAL(28,8),0) AS OriACol03Rate,CONVERT(DECIMAL(28,8),0) AS OriACol04Rate,CONVERT(DECIMAL(28,8),0) AS OriACol05Rate,  
    CONVERT(VARCHAR(8000),'''') AS OriAdjustmentListID,CONVERT(VARCHAR(8000),'''') AS OriAdjustmentLineID,  
    CONVERT(DECIMAL(28,8),0) AS DisQty01,CONVERT(DECIMAL(28,8),0) AS DisQty02,CONVERT(DECIMAL(28,8),0) AS DisQty03,CONVERT(DECIMAL(28,8),0) AS DisQty04,CONVERT(DECIMAL(28,8),0) AS DisQty05,  
    CONVERT(DECIMAL(28,8),0) AS DisACol01Rate,CONVERT(DECIMAL(28,8),0) AS DisACol02Rate,CONVERT(DECIMAL(28,8),0) AS DisACol03Rate,CONVERT(DECIMAL(28,8),0) AS DisACol04Rate,CONVERT(DECIMAL(28,8),0) AS DisACol05Rate  
    , ISNULL(D07T0002.Weight, 0) AS Weight, '''' AS Specifications   
    , CONVERT(DATETIME, NULL) AS ExpireDate  
    , '+CONVERT(VARCHAR(5), @IsAutoCheckIsAdjustPrice)+' AS IsAdjustPrice  
 INTO  #Edit   
 FROM  #D05T9017_D05F1602 T09  
 LEFT JOIN D07T0004 WITH(NOLOCK) ON D07T0004.InventoryID = T09.InventoryID AND D07T0004.UnitID = T09.UnitID    
 LEFT JOIN D07T0002 WITH(NOLOCK) ON D07T0002.InventoryID = T09.InventoryID   
 LEFT JOIN D07T0005 WITH(NOLOCK) ON D07T0005.UnitID = T09.UnitID  
 LEFT JOIN D07T1011 WITH(NOLOCK) ON T09.QuotationID = D07T1011.RefVoucherID  
    AND T09.QuotationItemID = D07T1011.RefTransID   
    AND D07T1011.RefTransType=''SO''   
 LEFT JOIN D07T2230 WITH (NOLOCK) On D07T2230.TransID = T09.QuotationItemID   
    AND D07T2230.VoucherID = T09.QuotationID  
 LEFT JOIN (   
    SELECT  T15.SalesOrderItemID, 1 as isAdjusted  
    FROM  D05T2025 T05 WITH(NOLOCK)  
    INNER JOIN D05T2125 T15 WITH(NOLOCK)  
       ON T05.AdjSalesOrderID = T15.AdjSalesOrderID  
    WHERE  T05.DivisionID = '''+@DivisionID+'''  
       AND T05.SalesOrderID = '''+@QuotationID+'''  
    GROUP BY T15.SalesOrderItemID  
    ) T15   
   ON T09.QuotationItemID = T15.SalesOrderItemID   
 LEFT JOIN D05T2030 WITH(NOLOCK) ON D05T2030.VoucherID = T09.QuotationID   
    AND D05T2030.TransID = T09.QuotationItemID  
 LEFT JOIN (   
    SELECT  SalesOrderID, SalesOrderItemID,   
       SUM((2*AdjustType-1) * A.OQuantity) as Quantity,  
       SUM((2*AdjustType-1) * A.CQuantity) as CQuantity  
    FROM  D05T2125 A WITH (NOLOCK)  
    INNER JOIN D05T2025 B WITH (NOLOCK)   
      ON  B.AdjSalesOrderID = A.AdjSalesOrderID  
    INNER JOIN D05T0017 C WITH (NOLOCK)   
      ON C.QuotationItemID = A. AdjSalesOrderItemID  
    WHERE C.QuotationID = ''' + @QuotationID + '''  
    GROUP BY SalesOrderID, SalesOrderItemID  
    ) OADJ   
   ON OADJ.SalesOrderItemID = T09.QuotationItemID  
 LEFT JOIN D11T2010 D11 WITH(NOLOCK)  
    ON T09.QuotationID = D11.QuotationID  
    AND T09.QuotationItemID = D11.QuotationItemID  
    AND T09.InventoryID = D11.InventoryID  
 FULL JOIN (SELECT InventoryRefInfo FROM D05T0000 WITH(NOLOCK)) D05T0000 ON 1=1  
 LEFT JOIN ( SELECT  T2.InventoryID,   
        ISNULL(SUBSTRING(  
          ( SELECT ComponentID + ''+''  
           FROM D07T1016 A WITH(NOLOCK)  
           WHERE A.ExpenseTypeID = ''ExpenseType01''  
             AND A.InventoryID = T2.InventoryID  
             AND A.ComponentID <> ''''  
           ORDER BY A.RowID  
          FOR XML PATH ('''')   
          ),1,  
          LEN((SELECT ComponentID + ''+''  
           FROM D07T1016 A WITH(NOLOCK)  
           WHERE A.ExpenseTypeID = ''ExpenseType01''  
            AND A.InventoryID = T2.InventoryID  
             AND A.ComponentID <> ''''  
           ORDER BY A.RowID  
          FOR XML PATH (''''))) - 1  
          ),'''') AS ComponentID  
  
    FROM  D07T1016 T2 WITH(NOLOCK)  
    WHERE ExpenseTypeID = ''ExpenseType01''  
    GROUP BY T2.InventoryID  
    ) D07T1016 ON D07T0002.InventoryID = D07T1016.InventoryID  
     
 LEFT JOIN D05T1017 WITH(NOLOCK)  
  ON  T09.QuotationID = D05T1017.SOID  
    AND T09.QuotationItemID = D05T1017.SOItemID  
 LEFT JOIN D05T1022  WITH(NOLOCK) ON '''+@TranTypeID+''' = D05T1022.TranTypeID  
 LEFT JOIN D05T2222  T22 WITH(NOLOCK) ON T09.QuotationID= T22.QuotationID AND T09.QuotationItemID=T22.QuotationItemID AND T22.WarrantyTime > 0  
 LEFT JOIN D14T2400 WITH(NOLOCK)  
  ON  T09.QuotationID = D14T2400.VoucherID  
    AND T09.QuotationItemID = D14T2400.TransID  
    AND D14T2400.ProType = ''SO''  
 LEFT JOIN D05T0117 D05T0117 WITH(NOLOCK)  
  ON  T09.QuotationID = D05T0117.QuotationID  
  AND  T09.QuotationItemID = D05T0117.QuotationItemID  
 '  
  
 SET @SQL31_1 = '  
 UPDATE  T17  
 SET   T17.Spec01Name = ISNULL(A.Description'+@U+' ,''''),  
    T17.Spec02Name = ISNULL(B.Description'+@U+' ,''''),  
    T17.Spec03Name = ISNULL(C.Description'+@U+' ,''''),  
    T17.Spec04Name = ISNULL(D.Description'+@U+' ,''''),  
    T17.Spec05Name = ISNULL(E.Description'+@U+' ,''''),  
    T17.Spec06Name = ISNULL(F.Description'+@U+' ,''''),  
    T17.Spec07Name = ISNULL(G.Description'+@U+' ,''''),  
    T17.Spec08Name = ISNULL(H.Description'+@U+' ,''''),  
    T17.Spec09Name = ISNULL(I.Description'+@U+' ,''''),  
    T17.Spec10Name = ISNULL(J.Description'+@U+' ,'''')  
 FROM #Edit T17   
 LEFT JOIN D07T1410 A WITH(NOLOCK) ON A.SpecID = T17.Spec01ID and A.SpecTypeID = ''01'' AND A.Disabled=0  
 LEFT JOIN D07T1410 B WITH(NOLOCK) ON B.SpecID = T17.Spec02ID and B.SpecTypeID = ''02'' AND B.Disabled=0  
 LEFT JOIN D07T1410 C WITH(NOLOCK) ON C.SpecID = T17.Spec03ID and C.SpecTypeID = ''03'' AND C.Disabled=0  
 LEFT JOIN D07T1410 D WITH(NOLOCK) ON D.SpecID = T17.Spec04ID and D.SpecTypeID = ''04'' AND D.Disabled=0  
 LEFT JOIN D07T1410 E WITH(NOLOCK) ON E.SpecID = T17.Spec05ID and E.SpecTypeID = ''05'' AND E.Disabled=0  
 LEFT JOIN D07T1410 F WITH(NOLOCK) ON F.SpecID = T17.Spec06ID and F.SpecTypeID = ''06'' AND F.Disabled=0  
 LEFT JOIN D07T1410 G WITH(NOLOCK) ON G.SpecID = T17.Spec07ID and G.SpecTypeID = ''07'' AND G.Disabled=0  
 LEFT JOIN D07T1410 H WITH(NOLOCK) ON H.SpecID = T17.Spec08ID and H.SpecTypeID = ''08'' AND H.Disabled=0  
 LEFT JOIN D07T1410 I WITH(NOLOCK) ON I.SpecID = T17.Spec09ID and I.SpecTypeID = ''09'' AND I.Disabled=0  
 LEFT JOIN D07T1410 J WITH(NOLOCK) ON J.SpecID = T17.Spec10ID and J.SpecTypeID = ''10'' AND J.Disabled=0  
 '  
  
 SET @SQL32 = @SQL32 + '            
 UPDATE  T1  
 SET   SuplierName = T2.ObjectName'+@U+'  
 FROM  #Edit T1  
 INNER JOIN [Object] T2 WITH(NOLOCK)  
  ON  T1.SuplierTypeID = T2.ObjectTypeID  
    AND T1.SuplierID = T2.ObjectID  
   
 IF EXISTS (SELECT TOP 1 1 FROM D05T0000 WITH(NOLOCK) WHERE InventoryRefInfo = ''WeightByQTY'')  
 BEGIN  
  UPDATE  T1  
  SET   T1.InventoryRefInfoD05 = FORMAT(T1.Weight * T1.CQuantity, ''N'+LTRIM(RTRIM(STR(@D07_QuantityDecimals)))+''')   
  FROM  #Edit T1  
 END  
  
 UPDATE  T1  
 SET   T1.ExpireDate = T2.ExpireDate  
 FROM  #Edit T1  
 LEFT JOIN D07T1210 T2  
   ON T1.LocationNo = T2.LocationNo  
   AND T1.InventoryID = T2.InventoryID  
  
 --- Bo sung lay them truong statusvoucher  
 SELECT  *  
 FROM  #Edit  
 ORDER BY OrderNum  
 '  
 --PRINT @SQL01  
 --PRINT @SQL10  
 --PRINT @SQL11  
 --PRINT @SQL111  
 --PRINT @SQL2  
 --PRINT @SQL31  
 --PRINT @SQL31_1  
 --PRINT @SQL32  
    
 EXEC (@SQL01 + @SQL10+@SQL11 + @SQL111+@SQL2 + @SQL31 + @SQL31_1 + @SQL32)  
END  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  