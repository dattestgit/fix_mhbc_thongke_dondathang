  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
-- <Summary>  
---- Do nguon cho man hinh truy van DDH.Net  
-- <Param>  
----   
-- <Return>  
----   
-- <Reference>  
---- Module D05\Truy van\Don hang\Loc  
---- LemonWeb\Duyet chung tu\Duyet don hang\Loc  
-- <History>  
---- Create on 16/03/2009 by Thu Trang  
----   
---- Modified on 10/06/2009 by Nguyen Hoang Tuan: Khi Hien thi chi tiet bang Popup thi khong care theo Cbo Ma hang tu den   
---- last Modified on 29/06/2009  by Bui Huu Le bo sung ObjectTypeID,ObjectID,EmployeeID,CurrencyID,OAmount  
---- Modified on 24/07/2009 by Thu Trang, loc theo ky  
---- Modified on 15/09/2009 by Thu Trang, loc theo ky  
---- Modified on 22/09/2009 by Huu le them IsCreditLimit  
---- Modified on 20/11/2009 by Thu Trang, bo sung SendedToD07   
---- Last Modified on 30/11/2009  by Bui Huu Le: bo sung AutoLockVoucher  
---- Last Modified on 01/12/2009  by Nguyen Hoang Tuan: Bo sung Loai nghiep vu, So chung tu co chua  
---- Last Modified on 30/11/2009  by Bui Huu Le: Thay doi EmployeeID thanh PreparedBy  
---- Last Modified on 25/03/2010  by Bui Huu Le: Bo sung ten nguoi lap  
---- Last Modified on 11/10/2010  by Thu Trang, truy van cac hop dong ban d49   
---- Last Modified on 22/2/2011  by Lan Huong: Bo sung Pick  
---- Last Modified on 11/07/2011  by Le Thi Ni: Sua EmployeeName thanh PreparedByName, them NVKD la EmployeeName  
---- Last Modified on 29/09/2011  by Lai Van Duy: Cho phep xem du lieu da Archive (ID: 42970)  
---- Last Modified on 04/09/2011  by Lai Van Duy: Khong co sua xoa du lieu da Archive (ID: 42969 )  
---- Last Modified on 08/10/2011  by Lai Van Duy: Cho phep xem du lieu chi tiet da Archive (ID:43407)  
---- Modified on 08/11/2011 by Le Thi Ni: lay so luong sau dieu chinh (ID 43709)  
---- Modified on 10/11/2011 by Hoang Diem Kieu: bo sung :SumAmount,SumCAmount,SumReduce,SumCReduce,Amount,CAmount,SumVAT,SumCVAT (ID 44141)  
---- Modified on 20/12/2011 by Hoang Diem Kieu: sua dieu kien loc xuyen ky tu Quotationdate thanh voucherdate   
---- Modified on 16/02/2012 by Lai Van Duy: Bo sung tham so Type, Chuyen Unicode (ID 46431)  
---- Modified on 09/07/2012 by Bao Chi (ID 50042): Bo sung lay them truong CAmount (Thanh tien QD DC) : Sua loi Xuat Excel khong ra du lieu cua cac truong thong tin phu (Nguyen nhan khong co truong CAmount)  
---- Modified on 10/08/2012 by Bao Chi (ID 50622): Bo sung  o Mode chi tiet lay them 5 cot dieu chinh va 5 cot thong ke  
---- Modified on 20/12/2012 by Bao Chi (ID 52077) Bo sung 'QAStatus'  
---- Modified on 26/03/2013 by Bao Tran (54666): Bo sung 5 cot tham chieu (Ref1~5) va Noi nhan hang (ShipAddress)  
---- Modified on 03/04/2013 by Bao Tran (54574): Bo sung @ProfessionKind  
---- Modified on 22/05/2013 by Bao Tran (56760): Bo sung OrderNum, Orderby theo OrderNum  
---- Modified on 20/09/2013 by Hoang Trang (55862): Them don hang o D17, sang D05 khong thay  
---- Modified on 08/11/2013 by Bao Tran (60864): Bo sung ReasonCancelSO, ApproveNotes  
---- Modified on 06/12/2013 by Bao Tran (61602): Bo sung ReasonCancelName  
---- Modified on 11/12/2013 by Bao Chi (ID 61881) Trang thai duyet  
---- Modified on 16/01/2014 by Le Thi Ni (62288): Bo sung Thong tin bo sung InventoryRefInfo  
---- Modified on 18/02/2014 by Le Thi Ni (63278): Sum lai khi co Tach dong don hang chi tiet (Viet Trung)  
---- Modified on 14/03/2014 by Pham Thi Thanh Nhan (63523): Bo sung them Ngay duyet don hang  
---- Modified on 04/04/2014 by Le Thi Ni (64593): Chinh sua cach load theo quy trinh moi cua Viet Trung  
---- Modified on 30/05/2014 by Bao Lam (65871): Bo sung DetailSONo  
---- Modified on 17/06/2014 by Le Thi Ni: Fix loi truy van don hang Viet Trung  
---- Modified on 26/07/2014 by Le Thi Ni (67613) : Update Ngay giao hang cho Viet Trung  
---- Modified on 04/10/2014 by Vu Thi Tho (69429) : Fix: Neu AStatus = 90 : Chuyen qua Duyet  
---- Modified on 06/10/2014 by Vu Thi Tho (69683) : Khi Simtype = 9: Do cac cot thong tin phu  
---- Modified on 19/12/2014 by Bach Dinh Hung (71588): Bo sung them cot dien giai   
---- Modified on 12/02/2015 by Vu Thi Tho  (72602): Bo sung them cac thong tin PO  
---- Modified on 06/03/2015 by LETHINI  (71080): Phan quyen Don gia, Thanh tien  
---- Modified on 09/03/2015 by Vu Thi Tho  (73105):Bo sung thanh tien sau ĐC  
---- Modified on 09/04/2015 by Vu Thi Tho  ():Fix loi   
---- Modified on 07/07/2015 by Pham Phu Phong (ID 73946): Cai tien toc do  
---- Modified on 15/07/2015 by Le Thi Ni (ID 73823): Fix loi  
---- Modified on 25/09/2015 by Thanh Truc (79005): Bo sung DeliveryTranType  
---- Modified on 18/01/2015 by Thanh Nhan (82847): Bo sung @IsAddNew, @HostID de cai tien toc do loc : chi loc ra nhung phieu moi duoc cap nhat, khong can load lai cac ket qua cu  
---- Modified on 26/01/2015 by Thanh Nhan (82847): Sua lai 'AddNew' thanh 'LoadNew'  
---- Modified on 05/01/2017 by Quoc Khuong(94325): Bo sung them cot Ten tat, Ma lo  
---- Modified on 13/04/2017 by Hong Tram (86650): Bo sung trang thai duyet la tu choi  
---- Modified on 22/04/2017 by Thanh Hien (96510): Bo sung du an, hang muc  
---- Modified on 19/04/2017 by Hong Tram(96426): Bo sung cot ngay dao han  
---- Modified on 21/07/2017 by Nguyen Thi Duyen(99883): Bo sung cot Don gia sau DC/KM  
---- Modified on 13/09/2017 by Thu Thao (97317): Bo sung Set do SO giao hang tre (set theo truong StyleExcel)  
---- Modified on 13/09/2017 by Quoc Khuong (101675): Bo sung thong tin dien giai chi tiet mat hang POVoucherDesc(chi truong hop KH khong theo quy trinh SO-PO)  
---- Modified on 05/10/2017 by Thu Thao (104012): Bo sung Set do PO giao hang tre (Set mau cho master)  
---- Modified on 13/11/2017 by Dan Tam (103524): Bo sung truong Ngay xuat xuong sau Ngay giao hang  
---- Modified on 27/11/2017 by Dan Tam (96871): Bo sung loai nghiep vu  
---- Modified on 10/12/2017 by Dan Tam (105093): Hien thi thanh tien chiet khau (DiscountOAmount, DiscountCAmount) sửa lỗi Notes  
---- Modified on 11/01/2018 by Van Tinh: remove xu ly thua @Improvement  
---- Modified on 20/04/2018 by Minh Tai (107009): Loi truy van don hang   
---- Modified on 11/06/2018 by Quynh Nhu (108382)  : Bo sung tra them truong SalesPersonID  
---- Modified on 12/07/2018 by TUYETMY (109163)  : Bo sung tra them DebtManagerID, DebtManagerName  
---- Modified on 17/01/2019 by Quoc Khuong (117901)  : Bo sung tra them truong IssueWareHouseID  
---- Modified on 17/01/2019 by Cam Giang (118928 )  : Bo sung tra them truong MasterContractNo  
---- Modified on 17/08/2019 by TUYETMY (122975 )  : update lai QuotationNo theo so bang gia, bao gia CRM ()  
---- Modified on 22/08/2019 by TUYETMY (122025)  : Chinh sua cach hien thi cot Thanh tien sau DC  
---- Modified on 14/10/2019 by DOANHIEN (126070): Bo sung DeliveryMethodName, QuotationHeader, TradeTerms, QuotationFooter, PaymentMethodName, PaymentTermName  
---- Modified on 29/11/2019 by DOANHIEN (129071): Sua loi khong len thue suat, do left join cho up du lieu tu bang OADJ --> sua thanh inner join  
---- Modified on 04/11/2019 by GIANGLAM (126507)  : Dac thu QV, DH-YCXK-XK-HD. khong cho sua DH khi thuc hien YCXK  
---- Modified on 10/07/2020 by MINHTAI: Sua loi phan quyen AdjustedUnitPrice - @PermissionPriceCol  
---- Modified on 26/11/2020 by HOANGKHANH (147025): Bo sung tra ra them cac truong InvoiceStatus, PaymentTermID, DeliveryMethodID, PaymentMethodID,PriceListID, ExportedInvoice  
---- Modified on 23/12/2020 by THIENNHI (149526): Bo sung dieu khoan thuong mai DiscountID  
---- Modified on 16/07/2021 by MYLAI (176028): Bo sung cot bang gia T1.PriceListID  
---- Modified on 17/09/2021 by THAONGUYEN (181373): Bo sung tra them truong CompanyID  
---- Modified on 20/11/2021 by DINHKHANH (194992 ): Bo sung tra them truong UnitNameU   
---- Modified on 07/01/2022 by THITHU (211530 ) Them cot LinkMasterID , SOContractNo (So don hang la hop dong)  
---- Modified on 12/01/2021 by MYLAI (212612): Bo sung cot So hop dong BH, So chung tu HĐ DocNo, ContractNo  
---- Modified on 18/01/2021 by MYLAI (212615): Bo sung cot Chuong trinh khuyen mai AdjustmentListID  
---- Modified on 22/02/2022 by THI THU(216005): Sua cach hien thi thue suat cua dong mat hang dieu chinh  
---- Modified on 23/02/2022 by DINHKHANH(218178): Bo sung 30 cot thong tin phu luoi chi tiet  
---- Modified on 23/02/2022 by THAONGUYEN (206811): Bo sung cot Da lap de nghi xuat hoa don (IsCreatedInvoiceRequest)  
---- Modified on 13/04/2022 by THAONGUYEN (ultra): Sua cach lay user duyet  
---- Modified on 25/04/2022 by HAN (213689): Bo sung StatusSO, StatusSOName  
---- Modified on 04/05/2022 by THAONGUYEN (207902): Bo sung module D22  
---- Modified on 18/05/2022 by NGOCTHAO (244305 ): Bo sung 20 cot ICode01ID-ICode20ID  
---- Modified on 05/10/2022 by VanTinh (249253): fix ID 218178, 244305  
---- Modified on 05/10/2022 by NGOCTHAO (249048  ): Bo sung 20 cot ICode01Name-ICode20Name  
---- Modified on 20/10/2022 by NGOCTHAO (250425  ): Bo sung cot ten Quoc gia(TV) AddressCountryName, Quoc gia(TA) AddressCountryName01, Duyet so luong QAStatusDetailName    
---- Modified on 02/11/2022 by NGOCTHAO (249288   ): Bo sung 20 cot Spec01Name-Spec10Name   
---- Modified on 15/11/2022 by TRITHONG (250802): BO SUNG cot nguoi duyet tiep theo AcceptedUserNameNext  
---- Modified on 06/02/2023 by NGOCTHAO (252486   ): Cap nhat lai noi nhan hang (ShipAddress) khi @ShowDetail = 1  
---- Modified on 18/02/2023 by NGOCTHAO (253957   ):Bo sung TotalAdjOQuantity , TotalAdjcQuantity  khi @ShowDetail = 0  
---- Modified on 27/04/2023 by TRUNGHAU (255918   ): Khoa xoa dong, them dong khi khi sua phieu da duyet so luong va lap lenh san xuat  
---- Modified on 26/04/2023 by KIEUOANH (256030): Sua loi load sai Ty le CK  
---- Modified on 12/06/2023 by THAONGUYEN (255855): Bo sung TotalAdjAmount, TotalAdjCAmount, AdjDiscountOAmount, AdjDiscountCAmount  
---- Modified on 22/06/2023 by KHATUAN (256177): Bo sung ContractID  
---- Modified on 07/07/2023 by THAONGUYEN (258786): Bo sung phan quyen nhom truy cap du lieu theo NVKD  
---- Modified on 25/09/2023 by KHATUAN (262968): Bo sung dieu kien duyet phieu tang giam don hang  
---- Modified on 17/10/2023 by KHATUAN (263195): Bo sung StatusDetailName  
---- Modified on 18/01/2024 by KIMKIEU (269494): Bo sung so So phieu Giao hang DeliveryVoucherNo, 25/06/2024 VanTinh fix loi cham 269494  
---- Modified on 26/02/2024 by Minh Tai (272673): Bo sung phan quyen nhom truy cap du lieu theo khach hang  
---- Modified on 21/03/2024 by THAONGUYEN (275146): Bo sung tinh InventoryRefInfo neu co thiet lap   
---- Modified on 03/05/2024 by HAN (213695) : Sua fix load ApprovalStatus( Trong TH duyet nhieu cap : Nhung tao don hang tu dong - mac dinh da duyet chu khong co day vao D84 dang bi hien hien Chua duyet)  
---- Modified on 04/05/2024 by THAONGUYEN (276549): Bo sung update ICode03Name khi D91T0025.Industry = 'Garment', dieu chinh cach update ICodeName, SpecName  
---- Modified on 23/07/2024 by HAN (281730): Fix loi load Hien thi chi tiet bi cham,   
---- Modified on 10/08/2024 by Van Tinh (283115): Fix optimize  
---- Modified on 02/10/2024 by TRUNGKIEN (284412): Bo sung ExpireDate - Ngay het han lo  
---- Modified on 11/10/2024 by TRUNGKIEN (284787): Bo sung ICode21ID-ICode30ID  
---- Modified on 25/10/2024 by TRUNGKIEN (285972): Tang so luong ky tu DeliveryVoucherNo  
---- Modified on 22/11/2024 by KIMKIEU (289284): Bo sung ACol01Rate ~ ACol05Rate  
---- Modified on 22/05/2025 by THAONGUYEN: Fix cham du lieu do ID 126507  
---- Modified on 17/07/2025 by KHATUAN(297798): Bo sung IsChoose  
-- <Example>  
---- Exec D05P1622 'DIGINET', 1, 2016, 0, 'LEMONADMIN', '84', '', NULL, NULL, '%', '%', '', '', '%', 0, '', '05', '', 2, 1, 2016, '%', '', '', 0,0, 1, 'O', 1, 0  
---- Exec D05P1622 'DIGINET', 1, 2016, 0, 'LEMONADMIN', '84', '', NULL, NULL, '%', '%', '', '', '%', 1, '', '05', '', 2, 1, 2016, '%', '', '', 0,0, 1, 'O', 1, 0  
  
CREATE PROCEDURE D05P1622  
(  
 @DivisionID  VARCHAR(50),  
 @TranMonthFrom  INT,  
 @TranYearFrom  INT,  
 @ShowMyVoucher TINYINT,     
 @UserID   VARCHAR(50),  
 @Language   VARCHAR(50),  
 @VoucherNum  VARCHAR(50),  
 @DateFrom  DATETIME,   
 @DateTo   DATETIME,    
 @ObjectTypeID VARCHAR(50),    
 @ObjectID  VARCHAR(50),    
 @FromInventoryID VARCHAR(50),   
 @ToInventoryID  VARCHAR(50),  
 @StatusIDFrom AS VARCHAR(20),  
 @ShowDetail  TINYINT,  
 @QuotationID AS VARCHAR(20)='',  
 @ModuleID VARCHAR(20)='',  
 @strFilter AS VARCHAR(1000) = '',  
 @IsTime   TINYINT =0,  ----check ngày và k?, =4 : loc het khong theo ky va ngay  
 @TranMonthTo  INT=0, ----Den ky  
 @TranYearTo   INT=0, ----Den ky  
 @StatusIDTo AS VARCHAR(20)='',----Ð?n trang thái  
 @TranTypeID AS VARCHAR(20)='',  
 @QuotationNo AS VARCHAR(20)='',  
 @IsArchived TINYINT = 0,  
 @Type TINYINT = 0,  -- = 0: Liet ke tat ca don dat hang chua duyet va da duyet  
       -- = 1: Chi hien thi don hang chua duyet  
       -- = 2: Chi hien thi don hang da duyet  
 @CodeTable TINYINT = 0,  
 @ProfessionKind VARCHAR(2) = 'O', -- Loai don hang O:tra ra Don hang va Don hang hoan, TO: chi tra don hang tour  
 @PermissionPriceCol TINYINT = 1,  
 @IsLoadNew TINYINT = 0, --0: khi nhan button Loc  
        --1: Tu dong load luoi sau khi them moi (Chi tra ra nhung du lieu moi duoc them moi)  
 @HostID VARCHAR(50) = ''  
)  
AS   
SET NOCOUNT ON  
  
SELECT @IsArchived = 0  
DECLARE @SELECT  VARCHAR(8000),  
  @SELECT1 NVARCHAR(4000),  
  @FROM  VARCHAR(8000),  
  @FROM1  VARCHAR(8000),  
  @WHERE  VARCHAR(8000),   
  @WHERE1  VARCHAR(8000),   
  @WHERE2  VARCHAR(8000),   
  @WHERE3  VARCHAR(8000)  
  
DECLARE @HEAD  VARCHAR(100),  
  @UPDATE  NVARCHAR(MAX),   
  @UPDATE0 VARCHAR(MAX),   
  @Select2 VARCHAR(8000),   
  @Select21 VARCHAR(8000),   
  @Group  VARCHAR(8000),   
  @Select22 VARCHAR(8000),   
  @Group2  VARCHAR(8000),   
  @UPDATE1 VARCHAR(8000),   
  @sTempTable VARCHAR(200),  
  @SQL_FINAL VARCHAR(MAX)  
  
DECLARE @I INT = 1  
  
DECLARE @U CHAR(1)  
SET @U = CASE WHEN @CodeTable = 0 THEN '' ELSE 'U' END  
  
DECLARE @IsApprovingProcess TINYINT, @SimType TINYINT, @D07_QuantityDecimals TINYINT = 0  
SET @IsApprovingProcess = 0  
  
SELECT @IsApprovingProcess = ISNULL(IsApprovingProcess,0) FROM D05T0100 WITH(NOLOCK)  
  
  
SELECT @SimType = ISNULL(SimType, 0),   
  @D07_QuantityDecimals = D07_QuantityDecimals   
FROM D91T0025 WITH(NOLOCK)  
  
---- Bo sung nhom truy cap du lieu theo NVKD   
DECLARE @sPermission NVARCHAR(MAX) = ''  
  
DECLARE @IsApprovingProcessSOAdj INT   
SELECT @IsApprovingProcessSOAdj = IsApprovingProcessSOAdj  FROM  D05T0100 WITH(NOLOCK)  
  
SELECT  T1.ScreenID, T1.Permission  
INTO  #D05P1622_Permission  
FROM  LEMONSYS..D00T0141 T1   
INNER JOIN LEMONSYS..D00T0131 T2  
  ON T1.RightID = T2.RightID  
INNER JOIN LEMONSYS..D00T0031 T3   
  ON T2.AccessID = T3.AccessID  
  AND T3.CompanyID = DB_NAME()  
  AND T1.ScreenID IN ('D05F5700', 'D05F5701')  
  AND T3.UserID = @UserID  
  AND @QuotationID = ''  
  
IF EXISTS (SELECT TOP 1 1 FROM #D05P1622_Permission WHERE ScreenID = 'D05F5700' AND Permission > 0)  
AND EXISTS (SELECT TOP 1 1 FROM #D05P1622_Permission WHERE ScreenID = 'D05F5701' AND Permission > 0)  
BEGIN   
 SELECT ObjectID  
 INTO #D05P1622_Employee  
 FROM Object WITH(NOLOCK)  
 WHERE ObjectTypeID = 'NV'  
  AND ( ISNULL(DAG, '') = ''   
    OR DAG IN (SELECT DAGroupID FROM LEMONSYS.dbo.D00V0080 WHERE UserID = @UserID)  
    OR 'LEMONADMIN' = @UserID )  
  
 SET @sPermission = '   
  AND ( ISNULL(T1.EmployeeID, '''') = ''''  
   OR (ISNULL(T1.EmployeeID, '''') <> '''' AND T1.EmployeeID IN (SELECT ObjectID FROM #D05P1622_Employee))   
  )  
  '  
   
 ---- Bo sung nhom truy cap du lieu theo khach hang  
 SELECT ObjectTypeID, ObjectID  
 INTO #D05P1622_Object  
 FROM Object WITH(NOLOCK)  
 WHERE ( ISNULL(DAG, '') = ''   
    OR DAG IN (SELECT DAGroupID FROM LEMONSYS.dbo.D00V0080 WHERE UserID = @UserID)  
    OR 'LEMONADMIN' = @UserID )  
  
 SET @sPermission = @sPermission + '   
  AND EXISTS (SELECT TOP 1 1 FROM #D05P1622_Object T WHERE T.ObjectTypeID = T1.ObjectTypeID AND T.ObjectID = T1.CustomerID)'  
 --SELECT @sPermission   
END  
  
  
SELECT @SELECT = '', @SELECT1 = '',   
  @FROM = '', @FROM1 = '',   
  @WHERE = '', @WHERE1 = '', @WHERE2 = '', @WHERE3 = '',  
  @HEAD = '',  
  @UPDATE = '', @UPDATE0 = '', @UPDATE1 = '',  
  @Select2 = '', @Select21 = '',  
  @Group = '', @Select22 = '',  
  @Group2 = ''  
  
  
SET @sTempTable = ' INTO #D05P1622_Temp '  
  
SET @SELECT =   
'   
 SELECT DISTINCT   
   CONVERT(VARCHAR(50), '''') AS StyleExcel,  
   T1.QuotationID, T1.VoucherNum, T1.VoucherDate, T1.QuotationDate,   
   T1.CustomerName' + @U + ' AS ObjectName, Object.ObjectAddress' + @U + ' AS ObjectAddress,   
   T1.DivisionID, B.IDKey AS StatusID, '  
   + CASE WHEN @Language = '84' THEN 'B.IDName' ELSE 'B.IDName01' END + ' AS StatusName,   
   T1.VoucherTypeID, T1.BatchID, T1.VoucherNo,   
   T1.StatusPrint, T1.ShiftID,  
   CASE WHEN T15.isAdjusted IS NULL THEN 0 ELSE T15.isAdjusted END AS IsAdjusted,  
   D05T1020.InvoiceForm,   
   T1.Locked AS IsLocked,T1.Description' + @U + ' AS Description, T1.TranMonth, T1.TranYear,  
   CAST(0 AS TINYINT) AS IsUsed,  
   CAST(0 AS TINYINT) AS Status,  
   T1.CreateUserID,T1.CreateDate,T1.LastModifyUserID,T1.LastModifyDate,  
   T1.ObjectTypeID AS ObjectTypeID,  
   T1.CustomerID AS ObjectID,  
   T1.PreparedBy AS EmployeeID,  
   F.ObjectName' + @U + ' AS PreparedByName,  
   T1.CurrencyID,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.TotalAmount, 0) AS TotalAmount,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.TotalCAmount, 0) AS TotalCAmount,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.SumOVAT, 0) AS SumOVAT,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.SumCVAT, 0) AS SumCVAT,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.SumAmount, 0) AS SumAmount,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.SumCAmount, 0) AS SumCAmount,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.SumReduce, 0) AS SumReduce,  
   '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * ISNULL(L.SumCReduce, 0) AS SumCReduce,  
    T1.TranMonth + T1.TranYear*100 AS Period,  
   D05T1020.IsCreditLimit,D05T1020.TranTypeID,      
   --CASE WHEN isnull(T2.DeliveryQTY,0)<>0 THEN 1 ELSE 0 END AS SendedToD07,  
   D05T1020.AutoLockVoucher,T1.ModuleID, T1.Pick,  
   Isnull(E.ObjectName' + @U + ','''') AS EmployeeName, T1.EmployeeID AS SalesPersonID, T1.ExchangeRate AS ExchangeRate,  
   T1.Ref1'+@U+' AS Ref1, T1.Ref2'+@U+' AS Ref2, T1.Ref3'+@U+' AS Ref3,   
   T1.Ref4'+@U+' AS Ref4, T1.Ref5'+@U+' AS Ref5, T1.ShipAddress'+@U+' AS ShipAddress,  
   T1.ReasonCancelSO, T1.ApproveNotes'+@U+' AS ApproveNotes,  
   T22.IssueTranType,  
   T1.DebtManagerTypeID, T1.DebtManagerID, CONVERT(NVARCHAR(500),'''') AS DebtManagerName,T1.MasterContractID AS ContractID,T1.MasterContractNo,CONVERT(VARCHAR(50),'''') AS SOContractNo,  
   T1.QuotationHeader' + @U + ' AS QuotationHeader, T1.TradeTerms' + @U + ' AS TradeTerms,  
   T1.QuotationFooter' + @U + ' AS QuotationFooter'  
  
SET @SELECT1 = N'  
   , CONVERT(Int, 1) AS ApprovalLevel, CONVERT(NVARCHAR(100),'  
   + CASE WHEN @Language = '84'  
   THEN N'  
    CASE WHEN '+STR(@CodeTable)+ N' = 1  
      THEN    
      CASE WHEN T1.AStatus = 1 OR T1.AStatus = 90 THEN N''Duyệt''   
        WHEN T1.AStatus = 100 THEN N''Từ chối''  
        ELSE N''Chưa duyệt''   
      END   
     ELSE   
      CASE WHEN T1.AStatus = 1 OR T1.AStatus = 90 THEN ''Duyeät''   
        WHEN T1.AStatus = 100 THEN ''Töø choái''  
        ELSE ''Chöa duyeät''   
      END   
     END   
     '  
        
   ELSE N'   
    CASE WHEN T1.AStatus = 1 OR T1.AStatus = 90  
      THEN ''Approved''   
      ELSE ''New''   
    END '  
   END + '   
   ) AS ApprovalStatus, T1.ApproveUser AS AStatusUser, T1.ApproveDate, Convert(Varchar(50),'''') AS LinkQuotationID  
   , CONVERT(VARCHAR(500),'''') AS QuotationNo, CONVERT(TINYINT,0) AS IsPO, D05T1020.DeliveryTranType, T1.DueDate, ISNULL(T1.DiscountID,'''') AS DiscountID --THIENNHI(149526)  
   , CONVERT(NVARCHAR(50),'''') AS CompanyID, CONVERT(TINYINT,0) AS IsCreatedInvoiceRequest , T1.StatusVoucher AS StatusSO, CONVERT(NVARCHAR(500),'''') AS StatusSOName  
   , CONVERT(NVARCHAR(500),'''') AS AddressCountryName,CONVERT(NVARCHAR(500),'''') AS AddressCountryName01 , CONVERT(NVARCHAR(500),'''') AS QAStatusDetailName, CONVERT(NVARCHAR(500),'''') AS AcceptedUserName_Next, CONVERT(TINYINT,0) as QAStatusID   
   , CONVERT(DECIMAL(28,8),0) AS TotalAdjAmount, CONVERT(DECIMAL(28,8),0) AS TotalAdjCAmount  
   '   
  
SET @WHERE='  
 WHERE  ( T1.ModuleID = ''' + @ModuleID + ''' OR T1.ModuleID IN ('''',''50'',''49'',''17'',''22'') ) '  
   + CASE WHEN @ProfessionKind = 'O' THEN 'AND ProfessionKind IN (''O'',''RO'')' ELSE 'AND ProfessionKind IN (''TO'')' END  
   + CASE WHEN @ModuleID = '17' THEN CASE WHEN @DivisionID = '%' OR @DivisionID = '' THEN '' ELSE ' AND T1.DivisionID like ''' + @DivisionID + ''' ' END  ELSE ' AND T1.DivisionID = ''' + @DivisionID + ''' ' END + '  
     
   AND (isnull(D05T1020.DAGroupID, '''') = '''' OR D05T1020.DAGroupID in ( SELECT  DAGroupID   
                 FROM  lemonsys.dbo.D00V0080   
                 WHERE  UserID = '''+@UserID+''')  
            OR ''LEMONADMIN'' = ''' + @UserID + ''')'    
    +  CASE WHEN @VoucherNum = ''  THEN '' ELSE ' AND T1.VoucherNum LIKE ''%' + REPLACE(@VoucherNum,'''','''''')+ '%''' END  
    +  CASE WHEN @ObjectTypeID IN ('%', '') THEN '' ELSE ' AND T1.ObjectTypeID LIKE '''+ @ObjectTypeID + '''' END  
    +  CASE WHEN @ObjectID IN ('%', '') THEN '' ELSE ' AND T1.CustomerID LIKE '''+ @ObjectID + '''' END  
    + CASE WHEN @QuotationNo = ''  THEN '' ELSE ' AND T1.VoucherNo LIKE ''' + @QuotationNo + '%''' END  
    + CASE WHEN @TranTypeID = ''  THEN '' ELSE ' AND T1.TranTypeID = ''' + @TranTypeID + '''' END  
    +   CASE WHEN @ShowMyVoucher=0 THEN '' ELSE ' AND T1.CreateUserID = '''+@UserID+'''' END  
    +   CASE WHEN @StatusIDTo='' OR @StatusIDTo='%' THEN '' ELSE ' AND  B.IDKey LIKE '''+@StatusIDTo+''' ' END    
    --+   CASE WHEN @StatusIDFrom='' OR @StatusIDFrom='%'  THEN '' ELSE ' AND  B.IDKey = '''+@StatusIDFrom+'''' END    
    + REPLACE (@strFilter, 'CreateUserID', 'T1.CreateUserID')    
    +   CASE WHEN @IsLoadNew = 0 THEN '' ELSE ' AND T1.QuotationID IN (   SELECT  Key02ID   
                     FROM  D05T9009 WITH(NOLOCK)  
                     WHERE   UserID = '''+@UserID+'''  
                       AND HostID = '''+@HostID+'''  
                       AND  FormID = ''D05F1602''  
                       AND Key01ID = ''LoadNew'' )' END    
    + @sPermission  
                         
IF @Istime =0   
    SET @WHERE =  @WHERE +  CASE WHEN @ModuleID = '17' THEN '' ELSE ' AND T1.TranMonth + T1.TranYear *100 = '+STR(@TranMonthFrom + @TranyearFrom*100)+'' END   
          +  CASE WHEN @DateFrom=NULL   THEN '' ELSE ' AND T1.VoucherDate >= '''+ CONVERT(VARCHAR(10), ISNULL(@DateFrom, '01/01/1900'), 112)+''' '  END  
          +  CASE WHEN @DateTo=NULL     THEN '' ELSE ' AND T1.VoucherDate <= '''+ CONVERT(VARCHAR(10), ISNULL(@DateTo,'01/01/2100'), 112)+''' ' END   
  
IF @Istime =1   
    SET @WHERE = @WHERE + ' AND T1.VoucherDate >= ''' + CONVERT(VARCHAR(20), @DateFrom, 112) + '''AND T1.VoucherDate <= ''' + CONVERT(VARCHAR(20), @DateTo, 112) +'''  
            AND T1.TranMonth + T1.TranYear *100 = '+STR(@TranMonthFrom + @TranyearFrom*100)+'  
           '  
  
IF @Istime =2   
    SET @WHERE = @WHERE + '  AND T1.TranMonth + T1.TranYear *100 Between '+STR(@TranMonthFrom + @TranyearFrom*100)+' AND '+STR(@TranMonthTo + @TranyearTo*100)+''    
  
IF @Istime =3    
    SET @WHERE = @WHERE + '  AND T1.TranMonth + T1.TranYear *100 Between '+STR(@TranMonthFrom + @TranyearFrom*100)+' AND '+STR(@TranMonthTo + @TranyearTo*100)+'  
              AND T1.VoucherDate >= ''' + CONVERT(VARCHAR(20), @DateFrom, 112) + ''' AND T1.VoucherDate <= ''' + CONVERT(VARCHAR(20), @DateTo, 112) +''''  
  
IF  @ShowDetail=0  
BEGIN  
 SET @SELECT=  @SELECT +   
         ', '''' AS InventoryID, '''' AS InventoryName, '''' AS UnitID, 0 AS Quantity, 0 AS CQuantity, 0 AS UnitPrice,   
         0 AS OAmount, 0 AS CAmount, 0 AS OAmountTmp,0 AS CAmountTmp, 0 AS ReduceQuantity,   
         0 AS DiscountRate,   
         0 AS DiscountOAmount,0 AS DiscountCAmount, '''' AS Notes, '''' AS ShortName,   
         0 AS VATRate,  
         0 AS VATOAmount,0 AS VATCAmount,  
         --'''' AS Spec01ID, '''' AS Spec02ID, '''' AS Spec03ID, '''' AS Spec04ID,'''' AS Spec05ID,   
         --'''' AS Spec06ID, '''' AS Spec07ID, '''' AS Spec08ID, '''' AS Spec09ID,'''' AS Spec10ID,   
         --'''' AS Ana01ID, '''' AS Ana02ID, '''' AS Ana03ID, '''' AS Ana04ID, '''' AS Ana05ID,   
         --'''' AS Ana06ID, '''' AS Ana07ID, '''' AS Ana08ID, '''' AS Ana09ID, '''' AS Ana10ID,   
         --null AS DeliveryDate,    
         --Convert(Decimal(28,8),0) AS NRef1,Convert(Decimal(28,8),0) AS NRef2,  
         --Convert(Decimal(28,8),0) AS NRef3,Convert(Decimal(28,8),0) AS NRef4,Convert(Decimal(28,8),0) AS NRef5,  
         --Convert(nvarchar(500),'''') AS DRef1,Convert(nvarchar(500),'''') AS DRef2,  
         --Convert(nvarchar(500),'''') AS DRef3,Convert(nvarchar(500),'''') AS DRef4,Convert(nvarchar(500),'''') AS DRef5,  
         --null AS DateRef1,null AS DateRef2,null AS DateRef3,null AS DateRef4,null AS DateRef5,   
         Convert(Varchar(50),'''') AS QuotationItemID,  
         T1.QAStatus, 0 AS OrderNum,  
         CASE WHEN isnull(L.DeliveryQTY,0)<>0 THEN 1 ELSE 0 END AS SendedToD07  
         , T1.InvoiceStatus, T1.PaymentTermID, T1.DeliveryMethodID, T1.PaymentMethodID,T1.PriceListID  
         , T1.VATObjectTypeID, T1.VATObjectID, T1.VATObjectNameU AS VATObjectName, T1.VATNo,T1.VATObjectAddressU AS VATObjectAddress, T1.VATItemNameU AS VATItemName, T1.ShipAddressID  
         , 0 AS ExportedInvoice ,  Convert(Decimal(28,8),0) AS TotalAdjOQuantity , Convert(Decimal(28,8),0) AS TotalAdjCQuantity '  
 SET @UPDATE0 = '  
      
    UPDATE  Tmp  
    SET   LinkQuotationID =  T20.LinkMasterID  
    FROM  #D05P1622_Temp Tmp  
    INNER JOIN D05T0017 T20 WITH(NOLOCK)  
      ON Tmp.QuotationID = T20.QuotationID  
  
    -- update so hop dong khung =  so don hang la Hop dong  
    UPDATE Tmp  
    SET   SOContractNo =  T20.VoucherNum  
    FROM  #D05P1622_Temp Tmp  
    INNER JOIN D05T0016 T20 WITH(NOLOCK)  
      ON Tmp.LinkQuotationID = T20.QuotationID  
    INNER JOIN  D05T1020 T10  
      On T20.TranTypeID = T10.TranTypeID  AND T10.IsContract = 1   
       
    UPDATE  Tmp  
    SET   IsPO = 1  
    FROM  #D05P1622_Temp Tmp  
    INNER JOIN D06T2520 T20 WITH(NOLOCK)  
      ON T20.QuotationID = Tmp.QuotationID  
  
    --- update ten doi tuong QLCN (109163)  
    UPDATE  T1  
    SET   T1.DebtManagerName = O.ObjectName'+@U+'  
    FROM  #D05P1622_Temp T1  
    INNER JOIN OBJECT O WITH(NOLOCK)  
      ON O.ObjectTypeID = T1.DebtManagerTypeID  
      AND O.ObjectID = T1.DebtManagerID  
      
    --- Update trang thai xuat hoa don cua don hang (147025) (Daphaco: Don hang\R-click Xuat hoa don)  
    UPDATE  T1  
    SET   T1.ExportedInvoice = 1  
    FROM  #D05P1622_Temp T1  
    INNER JOIN D05T1702 A WITH(NOLOCK)  
     ON  A.QuotationID=T1.QuotationID  
    ---Quy trinh chung  
    UPDATE  T1  
    SET   T1.ExportedInvoice = 1  
    FROM  #D05P1622_Temp T1  
    WHERE EXISTS (SELECT TOP 1 1 FROM  D05T0002 A WITH(NOLOCK) WHERE T1.QuotationID = A.QuotationID)   
  
    --Update ma tiem nang  
    UPDATE  T1  
    SET   T1.CompanyID = T2.CompanyID  
    FROM  #D05P1622_Temp T1   
    INNER JOIN D17T1010 T2 WITH(NOLOCK)  
      ON  T1.ObjectID = T2.ObjectID  
      AND T1.ObjectTypeID = T2.ObjectTypeID  
    WHERE  T2.CompanyTypeID = ''TN''  
    
    --Update Da lap de nghi xuat hoa don  
    UPDATE  T1  
    SET   T1.IsCreatedInvoiceRequest = 1  
    FROM  #D05P1622_Temp T1  
    INNER JOIN D05T0017 T2 WITH(NOLOCK)  
      ON T1.QuotationID = T2.QuotationID  
    INNER JOIN D05T2241 T3 WITH(NOLOCK)  
      ON T2.QuotationID = T3.OBatchID  
      AND T2.QuotationItemID = T3.OTransID  
      AND T3.OTranType = ''SO''  
  
  
    ---Update TotalAdjOQuantity, TotalAdjCQuantity  
    UPDATE  T1  
    SET   T1.TotalAdjOQuantity = B.Total + ISNULL(C.Quantity,0),  
       T1.TotalAdjCQuantity = B.CTotal + ISNULL(C.CQuantity,0),  
       T1.TotalAdjAmount = T1.TotalAmount + ISNULL(C.OAmount,0) + ISNULL(C.OVAT,0) - ISNULL(C.ODiscount,0),  
       T1.TotalAdjCAmount = T1.TotalCAmount + ISNULL(C.CAmount,0) + ISNULL(C.CVAT,0) - ISNULL(C.CDiscount,0)  
    FROM  #D05P1622_Temp T1  
    INNER JOIN (  
       SELECT SUM(T2.Quantity) AS Total, SUM(T2.CQuantity) AS CTotal ,T0.QuotationID  
       FROM  #D05P1622_Temp T0   
       INNER JOIN  D05T0017 T2 WITH(NOLOCK)  
       ON T0.QuotationID = T2.QuotationID  
       GROUP BY T0.QuotationID   
       ) AS B ON B.QuotationID = T1.QuotationID  
    LEFT JOIN  (  
       SELECT D05T2025.SalesOrderID ,    
         SUM((2*D05T2025.AdjustType-1) * D05T2125.OQuantity) as Quantity,  
         SUM((2*D05T2025.AdjustType-1) * D05T2125.CQuantity) as CQuantity,  
         SUM((2*D05T2025.AdjustType-1) * D05T0017.Amount) AS OAmount,  
         SUM((2*D05T2025.AdjustType-1) * D05T0017.CAmount) AS CAmount,  
         SUM((2*D05T2025.AdjustType-1) * D05T0017.OVAT) AS OVAT,  
         SUM((2*D05T2025.AdjustType-1) * D05T0017.CVAT) AS CVAT,  
         SUM((2*D05T2025.AdjustType-1) * D05T0017.OriginalReduce) AS ODiscount,  
         SUM((2*D05T2025.AdjustType-1) * D05T0017.CReduce) AS CDiscount  
       FROM  D05T2125 WITH (NOLOCK)  
       INNER JOIN D05T2025 WITH (NOLOCK) ON D05T2025.AdjSalesOrderID = D05T2125.AdjSalesOrderID  
       INNER JOIN D05T0017 WITH (NOLOCK) ON D05T0017.QuotationItemID = D05T2125.AdjSalesOrderItemID   
       INNER JOIN D05T0016 WITH (NOLOCK) ON D05T0017.QuotationID     = D05T0016.QuotationID          
       WHERE  D05T0016.AStatus = CASE WHEN '+STR(@IsApprovingProcessSOAdj)+' = 1 THEN ''90''  ELSE D05T0016.AStatus END   
        AND EXISTS (SELECT TOP 1 1 FROM #D05P1622_Temp AS T16 WHERE T16.QuotationID = D05T2025.SalesOrderID)  
       GROUP BY SalesOrderID   
       ) AS C ON C.SalesOrderID =  T1.QuotationID   
  
 '   
END         
      
IF  @ShowDetail=1  
BEGIN  
 SET @Select2 = ', T2.InventoryID, T2.ItemName' + @U + ' AS InventoryName, T2.UnitID, Convert(NVARCHAR(250),'''') AS UnitName,T2.Quantity, T2.CQuantity, '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * UnitPrice AS UnitPrice,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.Amount AS OAmount, '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.CAmount AS CAmount,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * OAmountTmp AS OAmountTmp,  
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * CAmountTmp AS CAmountTmp,   
     ReduceQuantity,   
     Convert( Varchar(20),CONVERT(decimal(15, 4),T2.RateReduce))+''%'' AS DiscountRate,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.OriginalReduce AS DiscountOAmount,  
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.CReduce AS DiscountCAmount,   
     T2.Notes' + @U + ' AS Notes, T2.ShortName' + @U + ' AS ShortName,  
     CONVERT(VARCHAR(10),CONVERT(decimal(15, 2),T2.VATRate * 100)) + ''%'' AS VATRate, T2.LocationNo,  
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.OVAT AS VATOAmount,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.CVAT AS VATCAmount,  
     Spec01ID, Spec02ID, Spec03ID, Spec04ID, Spec05ID, Spec06ID, Spec07ID, Spec08ID, Spec09ID, Spec10ID,   
     Ana01ID, Ana02ID, Ana03ID, Ana04ID, Ana05ID, Ana06ID, Ana07ID, Ana08ID, Ana09ID, Ana10ID, T2.DeliveryDate,   
     T2.NRef1,T2.NRef2,T2.NRef3,T2.NRef4,T2.NRef5,  
     T2.DRef1' + @U + ' AS DRef1,T2.DRef2' + @U + ' AS DRef2,T2.DRef3' + @U + ' AS DRef3,  
     T2.DRef4' + @U + ' AS DRef4,T2.DRef5' + @U + ' AS DRef5,  
     T2.DateRef1,T2.DateRef2,T2.DateRef3,T2.DateRef4,T2.DateRef5,T2.QuotationItemID,  
     T2.Quantity AS AdjOQuantity,   
     T2.CQuantity AS AdjCQuantity,       
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.ACol01 AS ACol01,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.ACol02 AS ACol02,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.ACol03 AS ACol03,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.ACol04 AS ACol04,   
     '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.ACol05 AS ACol05,  
     T2.NDef1, T2.NDef2, T2.NDef3, T2.NDef4, T2.NDef5, T2.OrderNum,  
     CONVERT(NVARCHAR(250), '''') AS InventoryRefInfo,  
     CONVERT(VARCHAR(100), '''') AS DetailSONo, T2.ShipQTY,  
     CONVERT(NVARCHAR(1000), '''') AS SODetailDesc,  
     T2.LinkMasterID, T2.LinkDetailID,  
     CONVERT(VARCHAR(500),'''') AS POVoucherNo,  
     CONVERT(DATETIME,NULL) AS POVoucherDate,  
     CONVERT(VARCHAR(50),'''') AS POEmployeeID,  
     CONVERT(VARCHAR(50),'''') AS SuplierTypeID,  
     CONVERT(VARCHAR(50),'''') AS SuplierID,  
     CONVERT(NVARCHAR(250),'''') AS SuplierName,        
       
     T2.Notes'+ @U + ' AS POVoucherDesc,      
     CONVERT(DECIMAL(28,8),0) AS POQuantity,  
     CONVERT(DECIMAL(28,8),0) AS POUnitPrice,  
     CONVERT(DECIMAL(28,8),0) AS POAmount,  
     CONVERT(DECIMAL(28,8),0) AS ReserveQTY,  
     CONVERT(DECIMAL(28,8),0) AS AdjOAmount,  
     CONVERT(DECIMAL(28,8),0) AS AdjCAmount,  
     CONVERT(DECIMAL(28,8),0) AS AdjVATOAmount,  
     CONVERT(DECIMAL(28,8),0) AS AdjVATCAmount,  
     CONVERT(DECIMAL(28,8),0) AS AdjUnitPrice,  
     CONVERT(DECIMAL(28,8),0) AS DiscountedUnitPrice,  
     T2.ProjectID, T2.ProjectName'+@U+' AS ProjectName, T2.TaskID, T2.TaskName'+@U+' AS TaskName,  
     T2.DeliveryQTY, T2.FactoryOutDate,T2.IssueWareHouseID,  
     CASE WHEN isnull(T2.DeliveryQTY,0)<>0 THEN 1 ELSE 0 END AS SendedToD07,  
     T1.PriceListID, T2.PriceListLineID  
     , T1.InvoiceStatus, T1.PaymentTermID, T1.DeliveryMethodID, T1.PaymentMethodID  
     , T1.VATObjectTypeID, T1.VATObjectID, T1.VATObjectNameU AS VATObjectName, T1.VATNo,T1.VATObjectAddressU AS VATObjectAddress, T1.VATItemNameU AS VATItemName, T1.ShipAddressID  
     , 0 AS ExportedInvoice, CONVERT(VARCHAR(50),'''') AS ContractNo, CONVERT(VARCHAR(50),'''') AS DocNo, T2.AdjustmentListID  
     , CONVERT(NVARCHAR(500),'''') AS ICode01Name, CONVERT(NVARCHAR(500),'''') AS ICode02Name, CONVERT(NVARCHAR(500),'''') AS ICode03Name, CONVERT(NVARCHAR(500),'''') AS ICode04Name,CONVERT(NVARCHAR(500),'''') AS ICode05Name  
     , CONVERT(NVARCHAR(500),'''') AS ICode06Name, CONVERT(NVARCHAR(500),'''') AS ICode07Name, CONVERT(NVARCHAR(500),'''') AS ICode08Name, CONVERT(NVARCHAR(500),'''') AS ICode09Name, CONVERT(NVARCHAR(500),'''') AS ICode10Name  
     , CONVERT(NVARCHAR(500),'''') AS ICode11Name, CONVERT(NVARCHAR(500),'''') AS ICode12Name, CONVERT(NVARCHAR(500),'''') AS ICode13Name, CONVERT(NVARCHAR(500),'''') AS ICode14Name,CONVERT(NVARCHAR(500),'''') AS ICode15Name  
     , CONVERT(NVARCHAR(500),'''') AS ICode16Name, CONVERT(NVARCHAR(500),'''') AS ICode17Name, CONVERT(NVARCHAR(500),'''') AS ICode18Name, CONVERT(NVARCHAR(500),'''') AS ICode19Name, CONVERT(NVARCHAR(500),'''') AS ICode20Name  
     , CONVERT(NVARCHAR(500),'''') AS ICode21Name, CONVERT(NVARCHAR(500),'''') AS ICode22Name, CONVERT(NVARCHAR(500),'''') AS ICode23Name, CONVERT(NVARCHAR(500),'''') AS ICode24Name,CONVERT(NVARCHAR(500),'''') AS ICode25Name  
     , CONVERT(NVARCHAR(500),'''') AS ICode26Name, CONVERT(NVARCHAR(500),'''') AS ICode27Name, CONVERT(NVARCHAR(500),'''') AS ICode28Name, CONVERT(NVARCHAR(500),'''') AS ICode29Name, CONVERT(NVARCHAR(500),'''') AS ICode30Name  
     , CONVERT(NVARCHAR(500),'''') AS Spec01Name, CONVERT(NVARCHAR(500),'''') AS Spec02Name, CONVERT(NVARCHAR(500),'''') AS Spec03Name, CONVERT(NVARCHAR(500),'''') AS Spec04Name,CONVERT(NVARCHAR(500),'''') AS Spec05Name  
     , CONVERT(NVARCHAR(500),'''') AS Spec06Name, CONVERT(NVARCHAR(500),'''') AS Spec07Name, CONVERT(NVARCHAR(500),'''') AS Spec08Name, CONVERT(NVARCHAR(500),'''') AS Spec09Name, CONVERT(NVARCHAR(500),'''') AS Spec10Name  
     , CONVERT(DECIMAL(28,8),0) AS AdjDiscountOAmount, CONVERT(DECIMAL(28,8),0) AS AdjDiscountCAmount, T2.QAStatusDetail       
     , B.IDName AS StatusDetailName,  
     CONVERT(VARCHAR(4000),'''') AS DeliveryVoucherNo,  
     CONVERT(VARCHAR(50),'''') AS ICode01ID, CONVERT(VARCHAR(50),'''') AS ICode02ID, CONVERT(VARCHAR(50),'''') AS ICode03ID, CONVERT(VARCHAR(50),'''') AS ICode04ID, CONVERT(VARCHAR(50),'''') AS ICode05ID,  
     CONVERT(VARCHAR(50),'''') AS ICode06ID, CONVERT(VARCHAR(50),'''') AS ICode07ID, CONVERT(VARCHAR(50),'''') AS ICode08ID, CONVERT(VARCHAR(50),'''') AS ICode09ID, CONVERT(VARCHAR(50),'''') AS ICode10ID,  
     CONVERT(VARCHAR(50),'''') AS ICode11ID, CONVERT(VARCHAR(50),'''') AS ICode12ID, CONVERT(VARCHAR(50),'''') AS ICode13ID, CONVERT(VARCHAR(50),'''') AS ICode14ID, CONVERT(VARCHAR(50),'''') AS ICode15ID,   
     CONVERT(VARCHAR(50),'''') AS ICode16ID, CONVERT(VARCHAR(50),'''') AS ICode17ID, CONVERT(VARCHAR(50),'''') AS ICode18ID, CONVERT(VARCHAR(50),'''') AS ICode19ID, CONVERT(VARCHAR(50),'''') AS ICode20ID,  
     CONVERT(VARCHAR(50),'''') AS ICode21ID, CONVERT(VARCHAR(50),'''') AS ICode22ID, CONVERT(VARCHAR(50),'''') AS ICode23ID, CONVERT(VARCHAR(50),'''') AS ICode24ID, CONVERT(VARCHAR(50),'''') AS ICode25ID,   
     CONVERT(VARCHAR(50),'''') AS ICode26ID, CONVERT(VARCHAR(50),'''') AS ICode27ID, CONVERT(VARCHAR(50),'''') AS ICode28ID, CONVERT(VARCHAR(50),'''') AS ICode29ID, CONVERT(VARCHAR(50),'''') AS ICode30ID  
     , CONVERT(DATETIME, NULL) AS ExpireDate,  
     T2.ACol01Rate*100 AS ACol01Rate, T2.ACol02Rate*100 AS ACol02Rate,T2.ACol03Rate*100 AS ACol03Rate,T2.ACol04Rate*100 AS ACol04Rate,T2.ACol05Rate*100 AS ACol05Rate  
     '  
   
 SET @WHERE1 = @WHERE +   
     CASE WHEN @QuotationID = ''   
     THEN   
       CASE WHEN (@FromInventoryID = '' OR @FromInventoryID = '%' )   
       THEN ''   
       ELSE '   
       AND InventoryID >= '''+ @FromInventoryID+''''   
       END+  
       CASE WHEN (@ToInventoryID = '' OR @ToInventoryID= '%')   
       THEN ''   
       ELSE '   
       AND InventoryID <= '''+ @ToInventoryID+''''    
       END     
     ELSE ''   
     END +     
     CASE WHEN @QuotationID = ''   
     THEN ''   
     ELSE '  
      AND T1.QuotationID= '''+@QuotationID+''''   
     END   
  
 SET @UPDATE0 = '  
  UPDATE  T1  
  SET   InventoryRefInfo = CASE D05T0000.InventoryRefInfo   
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
          WHEN ''Volume''  THEN  CASE WHEN ROUND(D07T0002.Volume,0) = ROUND(D07T0002.Volume,8)  ----- Neu Volume  = 100.00000000 thi CONVERT(DECIMAL(28,0),   
                  THEN CONVERT(varchar(50),CONVERT(DECIMAL(28,0),D07T0002.Volume)) ---- Neu Volume = 100.010000 thi thuc hien  REPLACE(CONVERT(varchar(15),Volume),''0'','' '')   
                  ELSE REPLACE(RTRIM(REPLACE(CONVERT(varchar(15),D07T0002.Volume),''0'','' '')),'' '',''0'')  
                  END  
          WHEN ''Weight''  THEN CONVERT(varchar(50),D07T0002.Weight,2)   
          WHEN ''RefCode'' THEN D07T0002.RefCode   
          WHEN ''WeightByQTY'' THEN FORMAT(ISNULL(D07T0002.Weight, 0) * T1.CQuantity, ''N'+LTRIM(RTRIM(STR(@D07_QuantityDecimals)))+''')    
          ELSE ''''   
         END,  
     T1.InventoryName = CASE WHEN ISNULL(T1.InventoryName,'''') = '''' THEN ISNULL(D07T0002.InventoryName'+@U+','''') ELSE ISNULL(T1.InventoryName,'''') END,  
     T1.ShortName = ISNULL (D07T0002.ShortName'+@U+','''') ,  
     T1.ICode01ID = D07T0002.ICode01ID,  
     T1.ICode02ID = D07T0002.ICode02ID,  
     T1.ICode03ID = D07T0002.ICode03ID,  
     T1.ICode04ID = D07T0002.ICode04ID,  
     T1.ICode05ID = D07T0002.ICode05ID,  
     T1.ICode06ID = D07T0002.ICode06ID,  
     T1.ICode07ID = D07T0002.ICode07ID,  
     T1.ICode08ID = D07T0002.ICode08ID,  
     T1.ICode09ID = D07T0002.ICode09ID,  
     T1.ICode10ID = D07T0002.ICode10ID,  
     T1.ICode11ID = D07T0002.ICode11ID,  
     T1.ICode12ID = D07T0002.ICode12ID,  
     T1.ICode13ID = D07T0002.ICode13ID,  
     T1.ICode14ID = D07T0002.ICode14ID,  
     T1.ICode15ID = D07T0002.ICode15ID,  
     T1.ICode16ID = D07T0002.ICode16ID,  
     T1.ICode17ID = D07T0002.ICode17ID,  
     T1.ICode18ID = D07T0002.ICode18ID,  
     T1.ICode19ID = D07T0002.ICode19ID,  
     T1.ICode20ID = D07T0002.ICode20ID,  
     T1.ICode21ID = D07T0002.ICode11ID,  
     T1.ICode22ID = D07T0002.ICode12ID,  
     T1.ICode23ID = D07T0002.ICode13ID,  
     T1.ICode24ID = D07T0002.ICode14ID,  
     T1.ICode25ID = D07T0002.ICode15ID,  
     T1.ICode26ID = D07T0002.ICode16ID,  
     T1.ICode27ID = D07T0002.ICode17ID,  
     T1.ICode28ID = D07T0002.ICode18ID,  
     T1.ICode29ID = D07T0002.ICode19ID,  
     T1.ICode30ID = D07T0002.ICode20ID  
  FROM  #D05P1622_Temp T1  
  LEFT JOIN D07T0002 WITH(NOLOCK) ON D07T0002.InventoryID = T1.InventoryID  
  FULL JOIN (SELECT InventoryRefInfo FROM D05T0000 WITH (NOLOCK)) D05T0000 ON 1=1'  
   
 -- so phieu GH 269494  
 SET @UPDATE0 += '  
  SELECT T17.QuotationID, T4.VoucherNo   
   INTO #D05P1622_DeliveryVNo  
   FROM #D05P1622_Temp AS T17  
   INNER JOIN D05T0037 T3 WITH(NOLOCK) ON T17.QuotationID = T3.LinkBatchID AND T17.QuotationItemID = T3.LinkTransID  
   INNER JOIN D05T0036 T4 WITH(NOLOCK) ON T3.BatchID= T4.BatchID  
  GROUP BY T17.QuotationID, T4.VoucherNo  
  
  UPDATE T1  
  SET T1.DeliveryVoucherNo = T2.VoucherNo  
  FROM #D05P1622_Temp T1  
  INNER JOIN (  
   SELECT T.QuotationID,   
    STUFF((SELECT '', '' + C.VoucherNo    
     FROM #D05P1622_DeliveryVNo AS C  
     WHERE C.QuotationID = T.QuotationID   
     FOR XML PATH('''')), 1, 1, '''') AS VoucherNo  
   FROM #D05P1622_DeliveryVNo T   
   GROUP BY T.QuotationID   
  ) AS T2 ON T1.QuotationID = T2.QuotationID'  
  
 SET @UPDATE0 += '  
  UPDATE  T1  
  SET   T1.DetailSONo = T2004.DetailSONo,  
     T1.NRef1 = T2004.NRef1,  
     T1.NRef2 = T2004.NRef2,  
     T1.NRef3 = T2004.NRef3,  
     T1.NRef4 = T2004.NRef4,  
     T1.NRef5 = T2004.NRef5,  
     T1.DateRef1 = T1.DateRef1,   
     T1.DateRef2 = T1.DateRef2,  
     T1.DateRef3 = T1.DateRef3,  
     T1.DateRef4 = T1.DateRef4,  
     T1.DateRef5 = T1.DateRef5,  
     T1.DRef1 = T2004.DRef1'+@U+',   
     T1.DRef2 = T2004.DRef2'+@U+',   
     T1.DRef3 = T2004.DRef3'+@U+',   
     T1.DRef4 = T2004.DRef4'+@U+',   
     T1.DRef5 = T2004.DRef5'+@U+',  
     T1.SODetailDesc = T2004.Description'+@U+'   
  FROM  #D05P1622_Temp T1   
  INNER JOIN D05T2004 T2004 WITH(NOLOCK)  
    ON T1.QuotationID = T2004.QuotationID   
     AND T1.QuotationItemID = T2004.QuotationItemID  
    
     
  UPDATE  T1  
  SET   T1.QuotationNo = ISNULL(T16.VoucherNum,'''')  
  FROM  #D05P1622_Temp T1   
  INNER JOIN D05T0017 T117 WITH(NOLOCK)  
          ON  T117.QuotationID = T1.LinkMasterID  
              AND T117.QuotationItemID = T1.LinkDetailID  
  INNER JOIN D05T0016 T16 WITH(NOLOCK)  
    ON T117.QuotationID = T16.QuotationID  
  WHERE  T16.ProfessionKind = ''Q''  
  
  
  ---- UPDATE LinkMaster khi bao gia CRM  
  UPDATE  T1  
  SET   T1.QuotationNo = ISNULL(T16.VoucherNum,'''')  
  FROM  #D05P1622_Temp T1  
  INNER JOIN D14T1120 T14 WITH(NOLOCK)  
  ON   T1.PriceListID = T14.PriceListID  
  AND   T1.PriceListLineID = T14.PriceListLineID  
  INNER JOIN D05T0016 T16 WITH(NOLOCK)  
  ON   T14.SPPID = T16.QuotationID  
  WHERE  ISNULL(T1.QuotationNo, '''') = ''''  
     AND T16.ProfessionKind = ''Q''  
    
  
  SELECT  T20.QuotationID,T20.QuotationItemID, T10.VoucherNo  
  INTO  #Tmp_D06T2520  
  FROM  #D05P1622_Temp T1  
  INNER JOIN D06T2520 T20 WITH(NOLOCK)  
    ON T1.QuotationID = T20.QuotationID  
     AND T1.QuotationItemID = T20.QuotationItemID  
  INNER JOIN D06T2510 T10 WITH(NOLOCK)  
    ON T20.POID = T10.POID  
    
  --Lay chuoi so hoa don, So phieu  
  SELECT  B.QuotationID,B.QuotationItemID,SUBSTRING(  
     ( SELECT  VoucherNo + '', ''   
      FROM  #Tmp_D06T2520 A   
      WHERE  A.QuotationID = B.QuotationID  
         AND A.QuotationItemID = B.QuotationItemID  
         AND ISNULL(A.VoucherNo,'''') <> ''''  
      ORDER BY A.QuotationID, A.QuotationItemID  
     FOR XML PATH ('''')   
     ),1,  
     LEN((SELECT VoucherNo + '', ''  
      FROM  #Tmp_D06T2520 A   
      WHERE  A.QuotationID = B.QuotationID  
         AND A.QuotationItemID = B.QuotationItemID  
         AND ISNULL(A.VoucherNo,'''') <> ''''  
      ORDER BY A.QuotationID, A.QuotationItemID  
     FOR XML PATH (''''))) - 1  
     ) AS VoucherNo   
  INTO  #POVoucherNo  
  FROM  #Tmp_D06T2520 B  
  GROUP BY B.QuotationID,B.QuotationItemID  
    
  UPDATE  Tmp  
  SET   POVoucherNo = T1.VoucherNo  
  FROM  #D05P1622_Temp Tmp  
  INNER JOIN #POVoucherNo T1  
    ON T1.QuotationID = Tmp.QuotationID  
     AND T1.QuotationItemID = Tmp.QuotationItemID  
    
  UPDATE  T1  
  SET   T1.POVoucherDate = ISNULL(T10.VoucherDate,''''),  
     T1.POEmployeeID = ISNULL(T10.EmployeeID,''''),  
     T1.SuplierTypeID = ISNULL(T10.ObjectTypeID,''''),  
     T1.SuplierID = ISNULL(T10.ObjectID,''''),  
     T1.POVoucherDesc = ISNULL(T10.VoucherDesc'+@U+',''''),  
     T1.POUnitPrice = ISNULL(T20.UnitPrice,0)  
  FROM  #D05P1622_Temp T1   
  INNER JOIN D06T2520 T20 WITH(NOLOCK)  
    ON T1.QuotationID = T20.QuotationID   
     AND T1.QuotationItemID = T20.QuotationItemID  
  INNER JOIN D06T2510 T10 WITH(NOLOCK)  
    ON T10.POID = T20.POID  
      
  UPDATE  T1  
  SET   T1.SuplierName = ISNULL(O.ObjectName'+@U+','''')  
  FROM  #D05P1622_Temp T1   
  INNER JOIN OBJECT O WITH(NOLOCK)  
    ON O.ObjectTypeID = T1.SuplierTypeID  
     AND O.ObjectID = T1.SuplierID  
  
  SELECT  QuotationID,QuotationItemID,  
     SUM(OQuantity) AS OQuantity, SUM(CQuantity) AS CQuantity,  
     SUM(OAmount) AS OAmount, SUM(CAmount) AS CAmount  
  INTO  #Tmp_POQTY  
     FROM  D06T2520 T20 WITH(NOLOCK)  
     GROUP BY QuotationID,QuotationItemID  
       
  UPDATE  T1  
  SET   T1.POQuantity = ISNULL(T2.OQuantity,0),  
     T1.POAmount = ISNULL(T2.OAmount,0)  
  FROM  #D05P1622_Temp T1   
  INNER JOIN #Tmp_POQTY T2   
    ON T1.QuotationID = T2.QuotationID  
     AND T1.QuotationItemID = T2.QuotationItemID '  
  
 SET @UPDATE0 += '  
  SELECT  QuotationID,QuotationItemID,  
     SUM(ReserveQTY) AS ReserveQTY, SUM(ReserveCQTY) AS ReserveCQTY  
  INTO  #Tmp_ReserQTY  
     FROM  D05T1650 T50 WITH(NOLOCK)  
     GROUP BY QuotationID,QuotationItemID  
                    
  UPDATE  T1  
  SET   T1.ReserveQTY = ISNULL(T2.ReserveQTY,0)  
  FROM  #D05P1622_Temp T1   
  INNER JOIN #Tmp_ReserQTY T2   
    ON T1.QuotationID = T2.QuotationID  
     AND T1.QuotationItemID = T2.QuotationItemID  
       
  SELECT  T20.SalesOrderID, T25.SalesOrderItemID,   
     SUM((2*T20.AdjustType-1) * T17.Amount) AS OAmount,  
     SUM((2*T20.AdjustType-1) * T17.CAmount) AS CAmount,  
     SUM((2*T20.AdjustType-1) * T17.OVAT) AS OVAT,  
     SUM((2*T20.AdjustType-1) * T17.CVAT) AS CVAT,  
     CONVERT(VARCHAR(10),CONVERT(decimal(15, 2), MAX(T17.VATRate) * 100)) + ''%''  AS VATRate,  
     SUM((2*T20.AdjustType-1) * T17.OriginalReduce) AS ODiscount,  
     SUM((2*T20.AdjustType-1) * T17.CReduce) AS CDiscount,  
     SUM((2*T20.AdjustType-1) * T25.OQuantity) AS Quantity,  
     SUM((2*T20.AdjustType-1) * T25.CQuantity) AS CQuantity  
  INTO  #Tmp_OADJ  
  FROM  D05T2125 T25 WITH(NOLOCK)  
  INNER JOIN D05T2025 T20 WITH (NOLOCK)   
    ON T20.AdjSalesOrderID = T25.AdjSalesOrderID  
  INNER JOIN D05T0017 AS T17 WITH (NOLOCK)   
    ON T17.QuotationItemID = T25.AdjSalesOrderItemID  
  INNER JOIN D05T0016 WITH (NOLOCK)   
    ON  T17.QuotationID     = D05T0016.QuotationID    
  WHERE  D05T0016.AStatus = CASE WHEN '+STR(@IsApprovingProcessSOAdj)+' = 1 THEN ''90''  ELSE D05T0016.AStatus END  
   AND EXISTS (SELECT TOP 1 1 FROM #D05P1622_Temp AS T17 WHERE T17.QuotationItemID = T25.SalesOrderItemID)  
  ' + CASE WHEN @QuotationID = '' THEN '' ELSE 'AND T20.SalesOrderID = '''+@QuotationID+'''' END +'  
  GROUP BY T20.SalesOrderID, T25.SalesOrderItemID  
  
  UPDATE  T1   
  SET   T1.AdjOAmount = T1.OAmount + ISNULL(OADJ.OAmount,0),  
     T1.AdjCAmount = T1.CAmount + ISNULL(OADJ.CAmount,0),  
     T1.AdjVATOAmount = T1.VATOAmount + ISNULL(OADJ.OVAT,0),  
     T1.AdjVATCAmount = T1.VATCAmount + ISNULL(OADJ.CVAT,0),  
     T1.VATRate = OADJ.VATRate,  
     T1.AdjDiscountOAmount = T1.DiscountOAmount + ISNULL(OADJ.ODiscount,0),  
     T1.AdjDiscountCAmount = T1.DiscountCAmount + ISNULL(OADJ.CDiscount,0),  
     AdjOQuantity = T1.AdjOQuantity + ISNULL(OADJ.Quantity, 0),  
     AdjCQuantity = T1.AdjCQuantity + ISNULL(OADJ.CQuantity, 0)  
  FROM  #D05P1622_Temp T1  
  INNER JOIN #Tmp_OADJ AS OADJ   
    ON OADJ.SalesOrderItemID = T1.QuotationItemID  
    
  UPDATE T1  
  SET  AdjUnitPrice = ROUND(ISNULL(T1.AdjOAmount,0)/CASE WHEN ISNULL(T1.AdjOQuantity,1) = 0 THEN 1 ELSE ISNULL(T1.AdjOQuantity,1) END,4)  
    , T1.TotalAdjAmount = T1.TotalAmount + ISNULL(T2.OAmount,0) + ISNULL(T2.OVAT,0) - ISNULL(T2.ODiscount,0)  
    , T1.TotalAdjCAmount = T1.TotalCAmount + ISNULL(T2.CAmount,0) + ISNULL(T2.CVAT,0) - ISNULL(T2.CDiscount,0)  
  FROM #D05P1622_Temp AS T1  
  INNER JOIN (  
   SELECT SalesOrderID, SUM(OAmount) AS OAmount, SUM(OVAT) AS OVAT, SUM(ODiscount) AS ODiscount  
    , SUM(CAmount) AS CAmount, SUM(CVAT) AS CVAT, SUM(CDiscount) AS CDiscount  
   FROM #Tmp_OADJ  
   GROUP BY SalesOrderID  
  ) AS T2 ON T1.QuotationID = T2.SalesOrderID  
       
  UPDATE  T1  
  SET   T1.IsPO = 1  
  FROM  #D05P1622_Temp T1   
  INNER JOIN D06T2520 T20 WITH(NOLOCK)   
    ON T1.QuotationID = T20.QuotationID  
     AND T1.QuotationItemID = T20.QuotationItemID  
    
  UPDATE  T1  
  SET   DiscountedUnitPrice = '+RTRIM(LTRIM(STR(@PermissionPriceCol)))+' * T2.AdjustedUnitPrice  
  FROM  #D05P1622_Temp T1  
  INNER JOIN D05T0017 T2 WITH(NOLOCK)   
    ON T1.QuotationID = T2.QuotationID  
     AND T1.QuotationItemID = T2.QuotationItemID  
    
  ----   
  UPDATE  T1  
  SET   T1.UnitName = T3.UnitNameU  
  FROM  #D05P1622_Temp T1  
  INNER JOIN D07T0005 T3 WITH(NOLOCK)  
    ON T3.UnitID = T1.UnitID  
  
  --- update ten doi tuong QLCN (109163)  
  UPDATE  T1  
  SET   T1.DebtManagerName = O.ObjectName'+@U+'  
  FROM  #D05P1622_Temp T1  
  INNER JOIN OBJECT O WITH(NOLOCK)  
    ON O.ObjectTypeID = T1.DebtManagerTypeID  
    AND O.ObjectID = T1.DebtManagerID  
    
  --- Update trang thai xuat hoa don cua don hang (147025)  
  UPDATE  T1  
  SET   T1.ExportedInvoice = 1  
  FROM  #D05P1622_Temp T1  
  INNER JOIN D05T1702 A WITH(NOLOCK)  
   ON  A.QuotationID=T1.QuotationID  
  ---Quy trinh chung  
  UPDATE  T1  
  SET   T1.ExportedInvoice = 1  
  FROM  #D05P1622_Temp T1  
  WHERE EXISTS (SELECT TOP 1 1 FROM  D05T0002 A WITH(NOLOCK) WHERE T1.QuotationID = A.QuotationID AND T1.QuotationItemID = A.QuotationItemID)   
  
  -- update so hop dong khung =  so don hang la Hop dong  
  UPDATE Tmp  
  SET   SOContractNo =  T20.VoucherNum  
  FROM  #D05P1622_Temp Tmp  
  INNER JOIN D05T0016 T20 WITH(NOLOCK)  
    ON Tmp.LinkMasterID = T20.QuotationID  
  INNER JOIN  D05T1020 T10  
    On T20.TranTypeID = T10.TranTypeID  AND T10.IsContract = 1   
  
  --Update ma tiem nang  
  UPDATE  T1  
  SET   T1.CompanyID = T2.CompanyID  
  FROM  #D05P1622_Temp T1   
  INNER JOIN D17T1010 T2 WITH(NOLOCK)  
          ON  T1.ObjectID = T2.ObjectID  
          AND T1.ObjectTypeID = T2.ObjectTypeID  
  WHERE  T2.CompanyTypeID = ''TN''  
  AND   ISNULL(T1.ObjectID,'''') <> ''''  
        
  '+ Case When @SimType = 9 Then  
  '  
  Update  T1  
  Set   T1.DeliveryDate = T2.DeliveryDate  
  From  #D05P1622_Temp T1  
  Inner join D05T0037 T2 WITH(NOLOCK) On T2.LinkTransID = T1.QuotationItemID  
    
  '  
  Else '' End +'    
      
  UPDATE  T1  
  SET   T1.ContractNo = D49T2000.ContractNo,  
     T1.DocNo = D49T2000.DocNo  
  FROM  #D05P1622_Temp T1  
  INNER JOIN D49T2000 WITH(NOLOCK)  
   ON T1.LinkMasterID =  D49T2000.ContractID   
   
  --Update Da lap de nghi xuat hoa don  
  UPDATE  T1  
  SET   T1.IsCreatedInvoiceRequest = 1  
  FROM  #D05P1622_Temp T1  
  INNER JOIN D05T2241 T3 WITH(NOLOCK)  
    ON T1.QuotationID = T3.OBatchID  
    AND T1.QuotationItemID = T3.OTransID  
    AND T3.OTranType = ''SO''  
    
  '    
  
 SET @WHERE1 = @WHERE1 +   
 CASE WHEN @Type = 3 THEN 'AND 1 = 0'  
   WHEN @Type = 2 THEN 'AND B.IDKey <> 2'  
   WHEN @Type = 1 THEN 'AND B.IDKey = 2'  
 ELSE '' END  
   
 SET @WHERE2 = @WHERE2 +   
 CASE WHEN @Type = 3 THEN 'AND 1 = 0'  
   WHEN @Type = 2 THEN 'AND B.IDKey <> 2'  
   WHEN @Type = 1 THEN 'AND B.IDKey = 2'  
 ELSE '' END     
END  
  
SET @WHERE = @WHERE +   
 CASE WHEN @Type = 3 THEN 'AND 1 = 0'  
   WHEN @Type = 2 THEN 'AND B.IDKey <> 2'  
   WHEN @Type = 1 THEN 'AND B.IDKey = 2'  
 ELSE '' END  
  
-- Cap nhat thong tin duyet theo D84  
IF @IsApprovingProcess = 1 AND @QuotationID = ''  
BEGIN   
 SET @UPDATE = @UPDATE + N'  
  ;WITH  D84T2000_MAX AS (  
  SELECT T84.VoucherID, T84.ApproverID, T84.ApprovalLevel, T84.ApprovalStatus, T84.ApprovalFlowID,  
   ROW_NUMBER() OVER ( PARTITION BY T84.VoucherID, T84.ApprovalStatus ORDER BY T84.ApprovalStatus DESC, T84.ApprovalLevel ASC) [100],   
   ROW_NUMBER() OVER ( PARTITION BY T84.VoucherID, T84.ApprovalStatus ORDER BY T84.ApprovalStatus ASC, T84.ApprovalLevel DESC) [1],  
   MAX (T84.ApprovalStatus) OVER ( PARTITION BY VoucherID) [MAX]    
  FROM D84T2000 AS T84 WITH(NOLOCK)   
  WHERE EXISTS (SELECT TOP 1 1 FROM #D05P1622_Temp AS T16 WHERE T16.QuotationID = T84.VoucherID)  
  ), D84T2000_F AS (  
  SELECT VoucherID, ApproverID, ApprovalLevel, ApprovalStatus, ApprovalFlowID, [MAX], ROW_NUMBER () OVER (PARTITION BY  VoucherID, ApprovalStatus ORDER BY CASE WHEN [MAX] = 100 THEN [100] ELSE [1] END ) [F]  
  FROM D84T2000_MAX  
  ), D84T2000_J AS (  
  SELECT VoucherID, ApproverID, ApprovalLevel, ApprovalStatus, ApprovalFlowID  
  FROM D84T2000_F  
  WHERE F = 1 AND ApprovalStatus = [MAX]  
  )  
  SELECT DISTINCT T84.VoucherID AS QuotationID, TMP.AStatusUser AS ApproverID, T84.ApprovalStatus, T84.ApprovalLevel, T84.ApprovalFlowID  
  INTO #D05P1622_T84  
  FROM D84T2000_J T84 WITH (NOLOCK)   
  INNER JOIN #D05P1622_Temp TMP ON TMP.QuotationID = T84.VoucherID   
   
  UPDATE A   
  SET A.ApprovalLevel =  ISNULL(B.LastApproveLevel,0)  
  FROM #D05P1622_Temp A   
  LEFT JOIN (  
    SELECT C.QuotationID, C.LastApproveLevel  
    FROM (  
     SELECT T1.QuotationID, MAX(T2.ApprovalLevel) LastApproveLevel  
     FROM #D05P1622_T84 T1  
     INNER JOIN D84T1110 T2 WITH(NOLOCK) ON T1.ApprovalFlowID = T2.ApprovalFlowID     
     GROUP BY QuotationID  
     ) C       
   ) B ON A.QuotationID = B.QuotationID    
   
  UPDATE A   
  SET A.ApprovalStatus = '  
       + CASE WHEN @Language = '84'  
         THEN N'  
         CASE WHEN '+STR(@CodeTable)+ N' = 1  
           THEN    
            CASE ISNULL(B.ApprovalStatus,0)   
            WHEN 1 THEN N''Duyệt (Cấp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '')''  
            WHEN 100 THEN N''Từ chối (Cấp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '')''  
            ELSE N''Chưa duyệt''  
            END  
           ELSE   
            CASE ISNULL(B.ApprovalStatus,0)   
            WHEN 1 THEN ''Duyeät (Caáp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '')''  
            WHEN 100 THEN ''Töø choái (Caáp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '')''  
            ELSE ''Chöa duyeät''  
            END  
           END '     
        ELSE '   
          CASE ISNULL(B.ApprovalStatus,0)   
            WHEN 1 THEN N''Approved (level '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '')''  
            WHEN 100 THEN N''Cancel (level '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '')''  
            ELSE N''New''  
          END    
          '        
        END + ',   
   A.AStatusUser = ISNULL(B.LastApproveUserID,'''')  
  FROM #D05P1622_Temp A   
  INNER JOIN (  
    SELECT  C.QuotationID, C.LastApproveLevel, D.ApproverID AS LastApproveUserID,  
      D.ApprovalStatus, D.ApprovalLevel  
    FROM (  
     SELECT QuotationID, MAX(ApprovalLevel) LastApproveLevel  
     FROM #D05P1622_T84  
     WHERE ApprovalStatus <> 0     
     GROUP BY QuotationID  
     ) C   
    INNER JOIN #D05P1622_T84 D ON  C.QuotationID = D.QuotationID   
          AND C.LastApproveLevel = D.ApprovalLevel  
   ) B ON A.QuotationID = B.QuotationID    
  '  
END  
  
EXEC D05P1624 0, @FROM output, @ShowDetail, @CodeTable  
  
------ GIANGLAM (126507 )  
DECLARE @IsAutoWarehouse INT   
  
SET @IsAutoWarehouse = 0  
  
SELECT @IsAutoWarehouse = ISNULL(Value, 0)  
FROM D91T9130 WITH(NOLOCK)  
WHERE Customize = 'IsAutoWarehouse'  
  
SET  @IsAutoWarehouse = ISNULL(@IsAutoWarehouse, 0)  
  
IF @IsAutoWarehouse = 1   
BEGIN   
 SET @UPDATE = @UPDATE + '  
  UPDATE T1  
  SET  T1.IsUsed = 1  
  FROM  #D05P1622_Temp  T1  
  INNER JOIN D07T2110 T07 WITH(NOLOCK) ON T1.QuotationID = LinkbatchID  
 '  
END   
------ GIANGLAM (126507 )  
IF @QuotationID = ''  
BEGIN  
 SET @UPDATE = @UPDATE + '  
 SELECT  DISTINCT QuotationID AS LinkQuotationID  
 INTO  #D05P1622_LinkQuotationID  
 FROM  D05T1702 WITH(NOLOCK)  
 WHERE  EXISTS (SELECT TOP 1 1 FROM #D05P1622_Temp AS T WHERE T.QuotationID = D05T1702.QuotationID)  
 UNION   
 SELECT  DISTINCT LinkBatchID AS LinkQuotationID  
 FROM  D05T0037 WITH(NOLOCK)  
 INNER JOIN D05T0036 WITH(NOLOCK) ON D05T0036.BatchID = D05T0037.BatchID AND D05T0036.DivisionID = D05T0037.DivisionID AND D05T0036.Cancelled=0  
 WHERE  EXISTS (SELECT TOP 1 1 FROM #D05P1622_Temp AS T WHERE T.QuotationID = D05T0037.LinkBatchID)  
 UNION   
 SELECT  DISTINCT SOID AS LinkQuotationID  
 FROM  D07T0011 T11 WITH(NOLOCK)  
 INNER JOIN D07T0009 T09 WITH(NOLOCK) ON T11.RDVoucherID = T09.RDVoucherID  
 WHERE  KindVoucherID IN (2,3) AND T11.ModuleID = ''05''  
   AND EXISTS (SELECT TOP 1 1 FROM #D05P1622_Temp AS T WHERE T.QuotationID = T11.SOID)  
  
 UPDATE A SET A.IsUsed = 1, A.Status = 1  
 FROM #D05P1622_Temp AS A   
 INNER JOIN #D05P1622_LinkQuotationID AS B ON A.QuotationID = B.LinkQuotationID  
 '  
END  
  
SET @UPDATE = @UPDATE + '  
 UPDATE  T1  
 SET   T1.StatusSOName = T2.StatusNameU  
 FROM  #D05P1622_Temp T1 WITH(NOLOCK)  
 INNER JOIN ( SELECT  T1.StatusID, T1.StatusNameU  
      FROM  D05T1040 T1 WITH(NOLOCK)  
      WHERE  T1.TransTypeID = ''SO''  
      UNION ALL  
      SELECT  T1.ID AS StatusID, '+CASE WHEN @Language ='84' THEN 'T1.Name84' ELSE 'T1.Name01' END+' AS  StatusNameU  
      FROM  D05N5555 (''D05F1621'',''StatusSO'') T1  
     ) T2  
 ON   T1.StatusSO = T2.StatusID  
 '  
  
 --UPDATE  T1  
 --SET   T1.TotalAdjAmount = T1.TotalAmount + ISNULL(T2.OAmount,0) + ISNULL(T2.OVAT,0) - ISNULL(T2.ODiscount,0),  
 --   T1.TotalAdjCAmount = T1.TotalCAmount + ISNULL(T2.CAmount,0) + ISNULL(T2.CVAT,0) - ISNULL(T2.CDiscount,0)  
 --FROM  #D05P1622_Temp T1  
 --INNER JOIN ( SELECT  T20.SalesOrderID,   
 --       SUM((2*AdjustType-1) * T17.Amount) AS OAmount,  
 --       SUM((2*AdjustType-1) * T17.CAmount) AS CAmount,  
 --       SUM((2*AdjustType-1) * T17.OVAT) AS OVAT,  
 --       SUM((2*AdjustType-1) * T17.CVAT) AS CVAT,  
 --       SUM((2*AdjustType-1) * T17.OriginalReduce) AS ODiscount,  
 --       SUM((2*AdjustType-1) * T17.CReduce) AS CDiscount  
 --    FROM  D05T2125 T25 WITH (NOLOCK)  
 --    INNER JOIN D05T2025 T20 WITH (NOLOCK)   
 --      ON T20.AdjSalesOrderID = T25.AdjSalesOrderID  
 --    INNER JOIN D05T0017 T17 WITH (NOLOCK)   
 --      ON T17.QuotationItemID = T25. AdjSalesOrderItemID  
 --    INNER JOIN D05T0016 WITH (NOLOCK)   
 --      ON  T17.QuotationID     = D05T0016.QuotationID        
 --    WHERE  D05T0016.AStatus = CASE WHEN '+STR(@IsApprovingProcessSOAdj)+' = 1 THEN ''90''  ELSE D05T0016.AStatus END   
 --     AND EXISTS (SELECT TOP 1 1 FROM #D05P1622_Temp AS T16 WHERE T16.QuotationID = T20.SalesOrderID)  
 --    GROUP BY SalesOrderID  
 --   ) T2  
 --  ON T1.QuotationID = T2.SalesOrderID   
  
-------- UPDATE rieng 1 mode  
  
IF @ShowDetail=0  
BEGIN  
 -- Bang gom danh sach quoc gia theo noi nhan hang chi tiet  
 SET @UPDATE = @UPDATE + '  
 ;WITH A AS (  
 SELECT   DISTINCT Temp.QuotationID, T917.CountryNameU, T917.CountryName01U  
 FROM   #D05P1622_Temp Temp  
 INNER JOIN  D05T0017 T17 WITH(NOLOCK)  
  ON   Temp.QuotationID  = T17.QuotationID  
 INNER JOIN  D91T0075 T75 WITH(NOLOCK)  
  ON   CASE WHEN T17.ShipAddressID = '''' THEN Temp.ShipAddressID ELSE T17.ShipAddressID END = T75.AddressID  
     AND Temp.ObjectID = T75.ObjectID  
     AND Temp.ObjectTypeID = T75.ObjectTypeID  
 INNER JOIN  D91T0017 T917 WITH(NOLOCK)  
  ON   T75.AddressCountryID = T917.InternationalCode3       
 WHERE   T917.InternationalCode3 <> ''''  
 ),B AS (  
 SELECT  QuotationID, CountryNameU, CountryName01U,  
    STUFF((SELECT DISTINCT ''; '' + CountryNameU FROM A T2 WHERE T1.QuotationID = T2.QuotationID FOR XML PATH('''')), 1, 1, '''') StrCountryNameU,  
    STUFF((SELECT DISTINCT ''; '' + CountryName01U FROM A T2 WHERE T1.QuotationID = T2.QuotationID FOR XML PATH('''')), 1, 1, '''') StrCountryName01U,  
    ROW_NUMBER () OVER (PARTITION BY T1.QuotationID ORDER BY T1.QuotationID) RN  
 FROM A T1  
 )  
  
 UPDATE  T1  
 SET   T1.AddressCountryName = T2.StrCountryNameU,  
    T1.AddressCountryName01 = T2.StrCountryName01U  
 FROM  #D05P1622_Temp T1  
 INNER JOIN B T2  
  ON  T1.QuotationID = T2.QuotationID  
 WHERE  T2.RN = 1  
 '  
END  
  
IF @ShowDetail=1  
BEGIN  
 ---- Bang tam chua thiet lap su dung tai D07: ICode, Spec   
 SELECT  'ICode' AS TypeID, TypeCodeID, ROW_NUMBER () OVER (ORDER BY TypeCodeID) AS RN  
 INTO  #D07_Temp  
 FROM  D07T0033 WITH(NOLOCK)   
 WHERE  Disabled = 0  
 UNION ALL  
 SELECT  'Spec' AS TypeID, SpecTypeID AS TypeCodeID, ROW_NUMBER () OVER(ORDER BY SpecTypeID) AS RN  
 FROM     D07T0410 WITH(NOLOCK)   
 WHERE  Disabled = 0  
  
 ---- Update ICodeName  
 SET @I = 1  
 WHILE @I <= (SELECT MAX(RN) FROM #D07_Temp WHERE TypeID = 'ICode')  
 BEGIN  
  SELECT @UPDATE = @UPDATE + '  
  UPDATE  T02  
  SET   T02.ICode'+T.TypeCodeID+'Name = ISNULL(T41.Description'+@U+','''')  
  FROM  #D05P1622_Temp T02  
  INNER JOIN D07T0034 T41 WITH(NOLOCK) ON T02.ICode'+T.TypeCodeID+'ID = T41.ICodeID AND T41.TypeCodeID = '''+T.TypeCodeID+'''  
  '  
  FROM #D07_Temp T  
  WHERE TypeID = 'ICode' AND T.RN = @I  
  
  SET @I = @I + 1  
 END  
  
 ---- Update D07T1130.OtherDescription vao ICode03Name  
 IF EXISTS (SELECT TOP 1 1 FROM D91T0025 WITH(NOLOCK) WHERE Industry = 'Garment')  
 BEGIN   
  SET @UPDATE = @UPDATE + '  
   UPDATE  T1  
   SET   T1.ICode03Name = T2.OtherDescription  
   FROM  #D05P1622_Temp T1  
   INNER JOIN D07T1130 T2 WITH(NOLOCK)  
     ON T1.InventoryID = T2.InventoryDetailID  
   WHERE  ISNULL(T2.OtherDescription, '''') <> ''''  
  '  
 END  
  
 ----Update Quoc gia (TA; TV)  
 SET @UPDATE = @UPDATE + '  
 Update T02  
 SET  AddressCountryName   =  ISNULL(T17.CountryNameU,''''),  
   AddressCountryName01 =  ISNULL(T17.CountryName01U ,''''),   
   ShipAddress = T75.ObjectAddressU  
 FROM        #D05P1622_Temp T02  
 INNER JOIN  D05T0017 T3 WITH(NOLOCK)  
 ON   T02.QuotationItemID = T3.QuotationItemID     
 INNER JOIN  D91T0075 T75 WITH(NOLOCK)  
 ON       CASE WHEN T3.ShipAddressID = '''' THEN T02.ShipAddressID ELSE T3.ShipAddressID END = T75.AddressID   
    AND T02.ObjectID = T75.ObjectID  
    AND T02.ObjectTypeID = T75.ObjectTypeID  
 INNER JOIN  D91T0017 T17 WITH(NOLOCK)  
 ON       T75.AddressCountryID = T17.InternationalCode3   
 WHERE    T17.InternationalCode3 <> ''''  
 '  
   
 ----Update QAStatusDetailName: D05\He thong\ Dieu kien kiem tra\check Su dung tinh nang duyet so luong  
 IF EXISTS (SELECT TOP 1 1 FROM D05T0100 WITH(NOLOCK) WHERE IsApproveQuantity = 1)  
 BEGIN  
  SET @UPDATE = @UPDATE + '  
  Update T02  
  SET  QAStatusDetailName = ISNULL(T20.StatusNameU, ''''),  
    QAStatusID         = ISNULL(T20.StatusID, 0)  
  FROM    #D05P1622_Temp AS T02  
  INNER JOIN (   
     SELECT  T1.StatusID, '+CASE WHEN @Language ='84' THEN 'T1.StatusNameU' ELSE 'T1.StatusName01U' END+' AS  StatusNameU  
     FROM  D05V2310 T1  
     ) AS T20 ON T02.QAStatusDetail = T20.StatusID  
  '  
 END  
  
 -- fix dac thu cho kh su dung cot nay  
 IF EXISTS (SELECT TOP 1 1 FROM D91T9130 WITH(NOLOCK) WHERE Customize = 'D05ViewStatusDetail' AND Value = 1)  
 BEGIN  
  SET @UPDATE = @UPDATE + '  
  --AdjCQuantity  
  UPDATE T1  
  SET  T1.StatusDetailName = CASE WHEN StatusID = ''9'' THEN N''Huỷ''  ELSE    
           CASE WHEN T0017.QAStatusDetail = 0 THEN '+N'N''Nhận đơn hàng''  
           WHEN T0017.QAStatusDetail = 1 THEN '+N'N''Chấp nhận đơn hàng'' ELSE T1.StatusDetailName END   
          END  
  FROM        #D05P1622_Temp T1  
  INNER JOIN  D05T0017 T0017 WITH(NOLOCK)  
  ON          T0017.QuotationID = T1.QuotationID  
  AND   T0017.QuotationItemID = T1.QuotationItemID  
  INNER JOIN (SELECT QuotationID FROM D05T0017 WITH(NOLOCK) WHERE QAStatusDetail = 1) T2  
  ON    T2.QuotationID = T0017.QuotationID  
  
  UPDATE  T1  
  SET   T1.StatusDetailName = CASE WHEN StatusID = ''9'' THEN N''Huỷ''  ELSE  CASE WHEN T1.AdjCQuantity  = 0 THEN '+N'N''Huỷ'' ELSE T1.StatusDetailName END END  
  FROM        #D05P1622_Temp T1  
  
  UPDATE  T1  
  SET   T1.StatusDetailName = CASE WHEN StatusID = ''9'' THEN N''Huỷ''  ELSE  CASE WHEN T1.AdjCQuantity - T0002.Quantity = 0 THEN '+N'N''Đã lập hoá đơn (PI)'' ELSE T1.StatusDetailName END END  
  FROM        #D05P1622_Temp T1  
  INNER JOIN  (SELECT QuotationID, QuotationItemID, SUM(Quantity) AS Quantity FROM D05T0002 WITH(NOLOCK) GROUP BY QuotationID, QuotationItemID ) AS T0002   
  ON   T1.QuotationID = T0002.QuotationID  
  AND   T1.QuotationItemID = T0002.QuotationItemID  
  
  UPDATE  T1  
  SET   T1.StatusDetailName = CASE WHEN StatusID = ''9'' THEN N''Huỷ''  ELSE  CASE WHEN T1.AdjCQuantity - T2.Quantity = 0 THEN '+N'N''Đã xuất kho'' ELSE T1.StatusDetailName END END  
  FROM        #D05P1622_Temp T1  
  INNER JOIN  (   
      SELECT   T1.QuotationID,T1.QuotationItemID,SUM(T0011.ActualQuantity) AS Quantity  
      FROM   D07T0011 T0011 WITH(NOLOCK)  
      INNER JOIN  D05T0002 T0002 WITH(NOLOCK)  
      ON    T0002.SalesItemID = T0011.BatchItemID  
      INNER JOIN  D05T0002 T1 WITH(NOLOCK)  
      ON    T1.SalesVoucherID = T0002.LinkVoucherID  
      AND    T1.SalesItemID = T0002.LinkItemID  
      GROUP BY  T1.QuotationID,T1.QuotationItemID  
     ) T2  
  ON  T2.QuotationID = T1.QuotationID  
  AND  T2.QuotationItemID = T1.QuotationItemID  
  
  '  
 END  
  
 ---- Update SpecName   
 SET @I = 1  
 WHILE @I <= (SELECT MAX(RN) FROM #D07_Temp WHERE TypeID = 'Spec')  
 BEGIN  
  SELECT @UPDATE = @UPDATE + '  
  UPDATE  T02  
  SET   T02.Spec'+T.TypeCodeID+'Name = ISNULL(T41.Description'+@U+','''')  
  FROM  #D05P1622_Temp T02  
  INNER JOIN D07T1410 T41 WITH(NOLOCK) ON T02.Spec'+T.TypeCodeID+'ID = T41.SpecID AND T41.SpecTypeID = '''+T.TypeCodeID+'''  
  '  
  FROM #D07_Temp T  
  WHERE T.TypeID = 'Spec' AND T.RN = @I  
  
  SET @I = @I + 1   
 END  
  
   
 SET @UPDATE = @UPDATE + '  
 UPDATE  T1  
 SET   T1.ExpireDate = T2.ExpireDate  
 FROM  #D05P1622_Temp T1  
 LEFT JOIN D07T1210 T2  
   ON T1.LocationNo = T2.LocationNo  
   AND T1.InventoryID = T2.InventoryID  
 '  
END  
  
-------- End UPDATE rieng 1 mode  
  
IF @QuotationID = ''  
BEGIN  
 SET @UPDATE1 = N'  
 SELECT  T01.ApprovalLevel, T01.VoucherID, MAX(T01.ApprovalStatus) AS ApprovalStatus, MAX(T01.ApproverID) AS ApproverID    
 INTO  #D84T2000_TAM  
 FROM  D84T2000 T01 WITH (NOLOCK)  
 INNER JOIN  #D05P1622_Temp  T02  
   ON T01.VoucherID = T02.QuotationID  
 GROUP BY T01.ApprovalLevel, T01.VoucherID  
  
 SELECT  ApprovalLevel, T01.VoucherID, ApproverID, ROW_NUMBER() OVER (PARTITION BY VoucherID ORDER BY ApprovalLevel) AS Num  
 INTO  #D84T2000  
 FROM  #D84T2000_TAM T01  
 WHERE  T01.ApprovalStatus = 0   
 GROUP BY VoucherID, ApproverID, ApprovalLevel  
  
  
 UPDATE  T1  
 SET   T1.AcceptedUserName_Next = ISNULL(LEMONSYS..D00T0030.UserName'+@U+','''')  
 FROM  #D05P1622_Temp  T1  
 INNER JOIN (SELECT  T01.VoucherID, MIN(T01.ApprovalLevel) AS ApprovalLevel, MAX(ApproverID) AS ApproverID  
    FROM  #D84T2000 T01   
    WHERE  Num = 1  
    GROUP BY T01.VoucherID, T01.ApprovalLevel) T2  
   ON T1.QuotationID = T2.VoucherID   
 INNER JOIN LEMONSYS..D00T0030 WITH (NOLOCK)  
   ON LEMONSYS..D00T0030.UserID =  T2.ApproverID  
       
 '  
END  
  
-------- string SELECT KET QUA  
SELECT @SQL_FINAL = '  
SELECT CONVERT(BIT, 0) AS IsChoose, T.*, D91T0320.Description'+@U+' AS ReasonCancelName, ISNULL(D91T0081.Description' + @U + ','''') AS DeliveryMethodName  
 , ISNULL(D91T0080.PaymentMethodName' + @U + ','''') AS PaymentMethodName  
 , ISNULL(D91T0082.PaymentTermName' + @U + ','''') AS PaymentTermName  
'  
  
IF  @ShowDetail = 1  
BEGIN  
 SELECT @SQL_FINAL += '  
 , D05T0117.Dat01 as DisplayDat01,  D05T0117.Dat02 as DisplayDat02,  D05T0117.Dat03 as DisplayDat03,   
 D05T0117.Dat04 as DisplayDat04,  D05T0117.Dat05 as DisplayDat05,  D05T0117.Dat06 as DisplayDat06,   
 D05T0117.Dat07 as DisplayDat07,  D05T0117.Dat08 as DisplayDat08,  D05T0117.Dat09 as DisplayDat09, D05T0117.Dat10 as DisplayDat10,   
 D05T0117.Num01 as DisplayNum01,  D05T0117.Num02 as DisplayNum02,  D05T0117.Num03 as DisplayNum03,   
 D05T0117.Num04 as DisplayNum04,  D05T0117.Num05 as DisplayNum05,  D05T0117.Num06 as DisplayNum06,   
 D05T0117.Num07 as DisplayNum07,  D05T0117.Num08 as DisplayNum08,  D05T0117.Num09 as DisplayNum09, D05T0117.Num10 as DisplayNum10,   
 D05T0117.Str01 as DisplayStr01,  D05T0117.Str02 as DisplayStr02,  D05T0117.Str03 as DisplayStr03,   
 D05T0117.Str04 as DisplayStr04,  D05T0117.Str05 as DisplayStr05,  D05T0117.Str06 as DisplayStr06,   
 D05T0117.Str07 as DisplayStr07,  D05T0117.Str08 as DisplayStr08,  D05T0117.Str09 as DisplayStr09, D05T0117.Str10 as DisplayStr10  
  
 '  
END  
  
SELECT @SQL_FINAL += '  
FROM #D05P1622_Temp AS T   
LEFT JOIN D91T0320 WITH(NOLOCK)   
 ON T.ReasonCancelSO = D91T0320.LookupID AND D91T0320.LookupType = ''D05_ReasonCancelSO''  
LEFT JOIN D91T0081 WITH(NOLOCK)  
 ON T.DeliveryMethodID = D91T0081.DeliveryID  
LEFT JOIN D91T0080 WITH(NOLOCK)  
 ON T.PaymentMethodID = D91T0080.PaymentMethodID  
LEFT JOIN D91T0082 WITH(NOLOCK)  
 ON T.PaymentTermID = D91T0082.PaymentTermID  
'  
  
IF  @ShowDetail = 1  
BEGIN  
 SELECT @SQL_FINAL += '  
 LEFT JOIN D05T0117 WITH(NOLOCK) ON D05T0117.QuotationID = T.QuotationID AND D05T0117.QuotationItemID = T.QuotationItemID  
 '  
END  
  
SELECT @SQL_FINAL += '  
ORDER BY T.VoucherDate  DESC, T.VoucherNum DESC, T.OrderNum   
  
DROP TABLE #D05P1622_Temp  
'  
--------  
  
  
IF @IsArchived = 1  
BEGIN  
 EXEC D05P1624 @IsArchived, @FROM1 output, @ShowDetail, @CodeTable  
  
----PRINT CAST(@HEAD AS NTEXT)  
 ----PRINT CAST(@SELECT AS NTEXT)  
 ----PRINT CAST(@Select2 AS NTEXT)  
 ----PRINT CAST(@SELECT1  + ', T1.DataSource ' AS NTEXT)  
 ----PRINT CAST(@sTempTable AS NTEXT)  
 ----PRINT CAST(@FROM AS NTEXT)  
 ----PRINT CAST(@WHERE AS NTEXT)  
 ----PRINT ' UNION ALL '  
 ----PRINT CAST(@SELECT AS NTEXT)  
 ----PRINT CAST(@Select2 AS NTEXT)  
 ----PRINT CAST(@SELECT1 + ', ''ARC'' AS DataSource ' AS NTEXT)  
 ----PRINT CAST(@FROM1 AS NTEXT)  
 ----PRINT CAST(@WHERE AS NTEXT)  
 ----PRINT CAST(@UPDATE0 AS NTEXT)  
 ----PRINT CAST(@UPDATE AS NTEXT)  
 ----PRINT CAST(@UPDATE1 AS NTEXT)  
 ----PRINT CAST('' + @SQL_FINAL AS NTEXT)  
  
 EXEC (@HEAD + @SELECT + @Select2 + @SELECT1  + ', T1.DataSource ' + @sTempTable + @FROM + @WHERE   
   + ' UNION ALL ' + @SELECT + @Select2 + @SELECT1 +', ''ARC'' AS DataSource ' + @FROM1 + @WHERE + @UPDATE0 + @UPDATE +@UPDATE1  
   + '' + @SQL_FINAL)  
END  
  
ELSE  
BEGIN   
 IF @ShowDetail = 0  
 BEGIN  
  --PRINT CAST(@HEAD AS NTEXT)  
  --PRINT CAST(@SELECT AS NTEXT)  
  --PRINT CAST(@Select2 AS NTEXT)  
  --PRINT CAST(@SELECT1  + ', T1.DataSource ' AS NTEXT)  
  --PRINT CAST(@sTempTable AS NTEXT)  
  --PRINT CAST(@FROM AS NTEXT)  
  --PRINT CAST(@WHERE AS NTEXT)  
  --PRINT CAST(@UPDATE0 AS NTEXT)  
  --PRINT CAST(@UPDATE AS NTEXT)  
  --PRINT CAST(@UPDATE1 AS NTEXT)  
  --PRINT '  
  --  -- Update StyleExcel  
  --  UPDATE #D05P1622_Temp SET StyleExcel = ''(,RED)'' WHERE StatusSO = ''99'''  
  --PRINT CAST(@SQL_FINAL AS NTEXT)  
  
  EXEC (  
  @HEAD + @SELECT + @Select2 + @SELECT1  + ', T1.DataSource ' + @sTempTable + @FROM + @WHERE + @UPDATE0 + @UPDATE +@UPDATE1  
  + '  
  -- Update StyleExcel  
  UPDATE #D05P1622_Temp SET StyleExcel = ''(,RED)'' WHERE StatusSO = ''99'''  
  + @SQL_FINAL  
  )  
 END  
 ELSE  
 BEGIN  
  ----PRINT CAST(@HEAD AS NTEXT)  
  ----PRINT CAST(@SELECT AS NTEXT)  
  ----PRINT CAST(@Select2 AS NTEXT)  
  ----PRINT CAST(@SELECT1  + ', T1.DataSource ' AS NTEXT)  
  ----PRINT CAST(@sTempTable AS NTEXT)  
  ----PRINT CAST(@FROM AS NTEXT)  
  ----PRINT CAST(@WHERE1  AS NTEXT)  
  ----PRINT CAST(@UPDATE0 AS NTEXT)  
  ----PRINT CAST(@UPDATE AS NTEXT)  
  ----PRINT CAST(@UPDATE1 AS NTEXT)  
  ----PRINT '  
  ----   Update StyleExcel  
  ----  UPDATE #D05P1622_Temp  
  ----  SET  StyleExcel = CASE WHEN CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 101), 101) >= DeliveryDate AND DeliveryQTY < AdjCQuantity THEN ''(,RED)'' ELSE '''' END  
  ----'  
  ----PRINT CAST(@SQL_FINAL AS NTEXT)  
    
  EXEC (  
  @HEAD + @SELECT + @Select2 + @SELECT1  + ', T1.DataSource ' + @sTempTable + @FROM + @WHERE1   
  + @UPDATE0 + @UPDATE +@UPDATE1  
  + '  
  -- Update StyleExcel  
  UPDATE #D05P1622_Temp  
  SET  StyleExcel = CASE WHEN CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 101), 101) >= DeliveryDate AND DeliveryQTY < AdjCQuantity THEN ''(,RED)'' ELSE '''' END  
  '  
  + @SQL_FINAL  
  )  
 END  
END  
  
IF @IsLoadNew = 1   
BEGIN  
 --Xoa bang tam nhung dong moi duoc them  
 DELETE  D05T9009   
 WHERE   UserID = @UserID   
   AND HostID = @HostID  
      AND  FormID = 'D05F1602'  
      AND Key01ID = 'LoadNew'   
   
END  
  
  
  