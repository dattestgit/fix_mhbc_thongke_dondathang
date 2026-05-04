  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
-- <Summary>  
---- Load du lieu truy van Lenh san xuat (Hien thi du lieu chi tiet)   
---- (check chi tiet tren form khac voi menu chi tiet dung D31N2310)  
---- Dung thay cho D31N2301 khi hien thi du lieu tong hop  
-- <Param>  
----   
-- <Return>  
----   
-- <Reference>  
-- Module D31  
---- Truy van \ Lenh san xuat \ Loc  
-- <History>  
---- Create on 09/02/2009 by Phan Kim Linh  
---- Modified on 04/03/2009 by Phan Kim Linh: Bo sung Dien giai Model  
---- Modified on 22/04/2009 by Mai Dang Khoa: Bo sung MDSVoucherNo  
---- Modified on 24/09/2009 by Phan Kim Linh: Bo Sung cac tham so ProductID, JobNo, JobStatus, IsResource, IsShedule  
---- Modified on 04/11/2009 by Mai Dang Khoa: bo sung nguoi giam sat, nguoi kiem tra  
---- Modified on 05/07/2010 by Le Xuan Thi: bo sung @NotAccessData  
---- Modified on 09/09/2010 by Le Xuan Thi: bo sung truy van xuyen ky, bo sung truong Period  
---- Modified on 17/04/2013 by Hoang Nam: chuyen Unicode (55717)  
---- Modified on 11/11/2013 by Hoang Nam: bo sung NOLOCK lan 1 (60536)  
---- Modified on 11/12/2015 by Nguyen Xuan Tien: bo sung tham so @ProOrderStatusID (ID 80439)  
---- Modified on 26/08/2016 by Thu Thao: bo sung IsMasterProduct (ID 90334)  
---- Modified on 15/03/2017 by Thu Thao: bo sung IsSelected (ID 94985)  
---- Modified on 10/04/2017 by TRONGQUI: Bo sung nha may (ID 96131)  
---- Modified on 10/06/2017 by TRONGQUI: Bo sung cot so luong hoan thanh (ID 98167)  
---- Modified on 10/08/2017 by TRONGQUI: Fix loi cot so luong hoan thanh (ID 100097)  
---- Modified on 30/08/2017 by TUYETMY: Bo sung so luong ĐVT cap 1 (ID 102915)  
---- Modified on 16/11/2018 by QUANGNGUYEN: Fix loi cot so luong hoan thanh (ID 115599)  
---- Modified on 31/10/2019 by Vu Quyen : sua lai gia tri Model  
---- Modified on 01/11/2019 by GIANGLAM (ID 126484 ): Bo sung cac côt AnaXXID   
---- Modified on 12/03/2020 by LEDAT(ID:133784): Bo sung update HasMDO cho LSX lap KHXK khong tinh tu dong  
---- Modified on 24/07/2020 by LEDAT(142024): Bo sung cot tap phi  
---- Modified on 05/10/2020 by LEDAT(142921): Bo sung loc theo BPSX va tra cac truong str,num,dat  
---- Modified on 20/11/2020 by TRITHONG(144245): Bo sung cot ShortName  
---- Modified on 28/12/2021 by HOAILAM(209176): Bo sung cot ResourceID cho @IsDetail = 1\  
---- Modified on 10/05/2022 by XUANMINH(207987): Load cac cot thong tin duyet  
---- Modified on 01/11/2022 by LEDAT(247879): Bo sung GroupSO  
---- Modified on 05/08/2024 by MYLAI(300064): Bo sung cac cot dong goi  
---- Modified on 03/12/2025 by DUCTIN(303347): Bo sung cac cot dac thu QUANGMINH  
  
  
-- <Example>  
---- Exec D31P2310 'DIGINET', 'LEMONADMIN', 6, 2013, '06/10/2013', '06/10/2013', '', 1, '84', '', '', '', '%', 1, 1, 0, 1, 6, 2013, 6, 2013, 1, 0  
---- Exec D31P2310 'DIGINET', 'LEMONADMIN', 6, 2013, '06/10/2013', '06/10/2013', '', 0, '84', '', '', '', '%', 0, 0, 0, 1, 6, 2013, 6, 2013, 1, 0  
---- Exec D31P2310 'DIGINET', 'LEMONADMIN', 8, 2017, '08/30/2017', '08/30/2017', '', 0, '84', '', '', '', '', 0, 0, 0, 1, 8, 2017, 8, 2017, 1, 1, '%'  
  
  
CREATE PROCEDURE D31P2310  
(  
  @DivisionID  VARCHAR(20),   
  @UserID   VARCHAR(20),  
  @TranMonth  Smallint,    
  @TranYear  int,    
  @DateFrom  Datetime,   
  @DateTo   Datetime,   
  @VoucherNo  VARCHAR(20),  
  @Mode    tinyint,  --0: theo san pham; 1:theo cong viec   
  @Language  VARCHAR(20),  
  @StrFind   NVARCHAR(4000)= N'',  
  @ProductID  VARCHAR(50) = '',  
  @JobNo    VARCHAR(20) ='',  
  @JobStatusID VARCHAR(2) ='',  
  @IsResource  Tinyint = 0,  
  @IsSchedule  Tinyint = 0,  
  @NotAccessData tinyint = 0, --Truy cap chung tu cua nguoi khac (0 : Duoc phep; 1 : Khong duoc phep)  
  @IsDate   tinyint = 0,  
  @FromMonth  int = 0,   
  @FromYear  int = 0,  
  @ToMonth  int = 0,   
  @ToYear   int = 0,  
  @IsDetail  tinyint = 1, --1: chi tiet, 0 tong hop, hien tai dang dung store nay cho mode chi tiet nen mac dinh = 1  
  @CodeTable  tinyint = 0,  
  @ProOrderStatusID VARCHAR(20) ='%',  
  @WorkCenterID VARCHAR(50) = '%'  
)  
AS   
SET NOCOUNT ON   
  
DECLARE @U NVARCHAR(1)   
SET  @U = CASE WHEN @CodeTable = 0 THEN '' ELSE 'U' END   
  
DECLARE @D07_QuantityDecimals tinyint  
SELECT @D07_QuantityDecimals = [D07_QuantityDecimals]  
FROM D91T0025 WITH(NOLOCK)  
  
DECLARE @Str10 VARCHAR(8000),  
  @Str20 NVARCHAR(4000),  
  @Str30 VARCHAR(8000),  
  @Str40 VARCHAR(8000),  
  @Str50 VARCHAR(8000)  
  
SET @Str10 = ''  
SET @Str20 = ''  
SET @Str30 = ''  
SET @Str40 = ''  
SET @Str50 = ''  
  
SELECT  ProOrderID   
INTO  #D31P2310_ProOrderID  
FROM  D31T2300 T30 WITH(NOLOCK)   
WHERE  T30.DivisionID = @DivisionID AND   
   (@IsDate NOT IN( 1, 3) OR (T30.TranMonth + T30.TranYear*100 BETWEEN @FromMonth + @FromYear * 100 AND @ToMonth + @ToYear * 100)) AND  
   (@IsDate NOT IN( 2, 3) OR (T30.ProOrderDate BETWEEN @DateFrom AND @DateTo)) AND  
   (@IsDate NOT IN( 0, 2) OR (T30.TranMonth = @TranMonth AND T30.TranYear = @TranYear))  
   AND CASE WHEN @ProOrderStatusID IN ('','%') THEN @ProOrderStatusID ELSE T30.ProOrderStatusID END = @ProOrderStatusID  
   AND CASE WHEN @NotAccessData = 0 THEN @UserID ELSE T30.CreateUserID END = @UserID  
   AND CASE WHEN @VoucherNo = '' THEN '' ELSE T30.ProOrderNo END = @VoucherNo  
  
     
--HIen thi tong hop dung thay cho D31N2301  
IF @IsDetail = 0  
BEGIN  
CREATE TABLE #D31N2301   
(  
   ProOrderID    VARCHAR(20),  
   DivisionID    VARCHAR(20),  
   TranMonth    tinyint,  
   TranYear    smallint,  
   VoucherTypeID   VARCHAR(20),  
   ProOrderNo    VARCHAR(20),  
   ProOrderDate   datetime,  
   ManLevelID    VARCHAR(20),  
   ManLevelName   NVARCHAR(250),  
   Description    NVARCHAR(500),  
   ProOrderTypeID   VARCHAR(20),  
   ProOrderTypeName  NVARCHAR(250),  
   ProOrderStatusID  VARCHAR(20),  
   ProOrderStatusName  NVARCHAR(250),  
   Confirmed    tinyint,  
   MPSVoucherID   VARCHAR(20),  
   MPSVoucherNo   VARCHAR(50),  
   MPSDescription   NVARCHAR(500),  
   RefProOrderID   VARCHAR(20),  
   RefProOrderNo   VARCHAR(20),  
   RefProOrderDescription NVARCHAR(500),  
   EmployeeID    VARCHAR(20),  
   EmployeeName   NVARCHAR(250),  
   Disabled    tinyint,  
   CreateDate    datetime,  
   CreateUserID   VARCHAR(20),  
   LastModifyDate   datetime,  
   LastModifyUserID  VARCHAR(20),  
   IsAdjusted    int,  
   TranTypeID    VARCHAR(20),  
   DAGroupID    VARCHAR(20),  
   HasTask     bit,  
   HasMDO     tinyint,  
   Locked     tinyint,  
   LockedUserID   VARCHAR(20),  
   LockedDate    datetime,  
   SalesOrderNo   VARCHAR(50),  
   SO_VoucherNo   VARCHAR(50),  
   CustomerID    VARCHAR(20),  
   CustomerName   NVARCHAR(250),  
   Period     VARCHAR(50),  
   ProOrderTransID   VARCHAR(20),  
   ProductID    VARCHAR(50),  
   ProductName    NVARCHAR(500),  
   UnitID     VARCHAR(20),  
   Model     VARCHAR(20),  
   OQuantity    decimal(28, 8),  
   CQuantity    decimal(28, 8),  
   DetailDescription  NVARCHAR(500),  
   StartDate    datetime,  
   EndDate     datetime,  
   AdjOQuantity   decimal(28, 8),  
   AdjCQuantity   decimal(28, 8),  
   JobID     VARCHAR(20),  
   JobNo     VARCHAR(20),  
   InventoryID    VARCHAR(50),  
   InventoryName   NVARCHAR(500),  
   JobUnitID    VARCHAR(20),  
   JobModel    VARCHAR(20),  
   JobOQuantity   decimal(28, 8),  
   JobCQuantity   decimal(28, 8),  
   JobDescription   NVARCHAR(500),  
   JobStartDate   datetime,  
   JobEndDate    datetime,  
   JobStatusID    VARCHAR(20),  
   JobStatus    VARCHAR(50),  
   ResourceStatus   NVARCHAR(50),  
   ScheduleStatus   NVARCHAR(50),  
   MDSVoucherNo   VARCHAR(20),  
   KCSEmployeeID   VARCHAR(20),  
   KCSEmployeeName   NVARCHAR(250),  
   SupervisorID   VARCHAR(20),  
   SupervisorName   NVARCHAR(250),  
   IsMasterProduct   TINYINT,  
   PlantID     Varchar(50),  
   PlantName    nvarchar(500),  
   PeriodID    VARCHAR(50),  
   WorkCenterID   VARCHAR(50),  
   AStatusName    NVARCHAR(500),  
   ApproverName   NVARCHAR(500),  
   AStatusID    VARCHAR(50),  
   ApproverID    VARCHAR(50),  
   ApprovalDate   DATETIME,  
   ApprovalNotes   NVARCHAR(500),  
   GroupSO     VARCHAR(50)  
)  
     
CREATE TABLE #D31T2310_SalesOrderID  
(  
   ProOrderID VARCHAR(20),  
   SalesOrderID VARCHAR(20)  
)  
    
INSERT INTO #D31T2310_SalesOrderID  
(  
   ProOrderID,  
   SalesOrderID  
)  
SELECT  ProOrderID,  
   MAX(SalesOrderID)   
FROM  D31T2310 WITH(NOLOCK)  
WHERE  SalesOrderID <> ''  
   AND EXISTS (SELECT TOP 1 1 FROM #D31P2310_ProOrderID T WHERE T.ProOrderID = D31T2310.ProOrderID)  
GROUP BY ProOrderID  
HAVING  COUNT(DISTINCT SalesOrderID) = 1  
  
CREATE TABLE #D31T2310_MDSVoucherNo  
(  
   ProOrderID VARCHAR(20),  
   MDSVoucherNo VARCHAR(20)  
)  
  
INSERT INTO #D31T2310_MDSVoucherNo  
(  
   ProOrderID,  
   MDSVoucherNo  
)  
SELECT  ProOrderID,  
   MAX(MDSVoucherNo)   
FROM  D31T2310 WITH(NOLOCK)  
WHERE  MDSVoucherNo <> ''   
   AND EXISTS (SELECT TOP 1 1 FROM #D31P2310_ProOrderID T WHERE T.ProOrderID = D31T2310.ProOrderID)  
GROUP BY ProOrderID  
HAVING  COUNT(DISTINCT MDSVoucherNo) = 1  
  
CREATE TABLE #D31T2305   
(  
   ProOrderID VARCHAR(20),  
   IsAdjusted TINYINT  
)  
  
INSERT INTO #D31T2305  
(  
   ProOrderID,  
   IsAdjusted  
)  
SELECT   ProOrderID, 1 as IsAdjusted  
FROM  D31T2305 WITH(NOLOCK)  
WHERE  DivisionID = @DivisionID AND   
   TranMonth = @TranMonth AND   
   TranYear = @TranYear  
GROUP BY ProOrderID  
  
SET @Str10 =  
'     
INSERT INTO #D31N2301  
(  
   ProOrderID,  
   DivisionID,  
   TranMonth,  
   TranYear,  
   VoucherTypeID,  
   ProOrderNo,  
   ProOrderDate,  
   ManLevelID,  
   ManLevelName,  
   Description,  
   ProOrderTypeID,  
   ProOrderTypeName,  
   ProOrderStatusID,  
   ProOrderStatusName,  
   Confirmed,  
   MPSVoucherID,  
   MPSVoucherNo,  
   MPSDescription,  
   RefProOrderID,  
   RefProOrderNo,  
   RefProOrderDescription,  
   EmployeeID,  
   EmployeeName,  
   Disabled,  
   CreateDate,  
   CreateUserID,  
   LastModifyDate,  
   LastModifyUserID,  
   IsAdjusted,  
   TranTypeID,  
   DAGroupID,  
   HasTask,  
   HasMDO,  
   Locked,  
   LockedUserID,  
   LockedDate,  
   SalesOrderNo,  
   SO_VoucherNo,  
   CustomerID,  
   CustomerName,  
   Period,  
   ProOrderTransID,  
   ProductID,  
   ProductName,  
   UnitID,  
   Model,  
   OQuantity,  
   CQuantity,  
   DetailDescription,  
   StartDate,  
   EndDate,  
   AdjOQuantity,  
   AdjCQuantity,  
   JobID,  
   JobNo,  
   InventoryID,  
   InventoryName,  
   JobUnitID,  
   JobModel,  
   JobOQuantity,  
   JobCQuantity,  
   JobDescription,  
   JobStartDate,  
   JobEndDate,  
   JobStatusID,  
   JobStatus,  
   ResourceStatus,  
   ScheduleStatus,  
   MDSVoucherNo,  
   KCSEmployeeID,  
   KCSEmployeeName,  
   SupervisorID,  
   SupervisorName,  
   IsMasterProduct,  
   PlantID,  
   PeriodID,  
   WorkCenterID,  
   AStatusID,     
   ApproverID,     
   ApprovalDate,    
   ApprovalNotes,  
   GroupSO  
)  
'  
SET @Str20 =  
'  
SELECT    
   T30.ProOrderID,   
   T30.DivisionID,   
   T30.TranMonth,   
   T30.TranYear,   
   T30.VoucherTypeID,  
   T30.ProOrderNo,   
   T30.ProOrderDate,   
   T30.ManLevelID,  
   ISNULL(T32.ManLevelName'+@U+','''') as ManLevelName,   
   T30.Description'+@U+',   
   T30.ProOrderTypeID,  
   ISNULL(T50.ProOrderTypeName'+@U+','''') as ProOrderTypeName,   
   T30.ProOrderStatusID,   
   '+ CASE WHEN @Language = '84'   
    THEN 'T60.ProOrderStatusName'+@U+','  
    ELSE 'T60.ProOrderStatusName01'+@U+','   
    END +'  
   T30.Confirmed,   
   T30.MPSVoucherID,  
   ISNULL(T20.VoucherNo,'''') AS MPSVoucherNo,   
   ISNULL(T20.MPSDescription'+@U+','''') as MPSDescription,   
   T30.RefProOrderID,   
   T301.ProOrderNo AS RefProOrderNo,   
   T301.Description'+@U+' AS RefProOrderDescription,   
   T30.EmployeeID,   
   OBJ.ObjectName'+@U+' AS EmployeeName,   
   T30.Disabled,   
   T30.CreateDate,   
   T30.CreateUserID,   
   T30.LastModifyDate,   
   T30.LastModifyUserID,  
   CASE WHEN T15.IsAdjusted IS NULL THEN 0 ELSE 1 END as IsAdjusted,  
   T30.TranTypeID,   
   isnull(T21.DAGroupID, '''') as DAGroupID,   
   T30.HasTask,   
   T30.HasMDO,  
   T30.Locked,   
   T30.LockedUserID,   
   T30.LockedDate,  
   ISNULL(T16.VoucherNum, '''') as SalesOrderNo,  
   ISNULL(T16.VoucherNo, '''') as SO_VoucherNo,  
   ISNULL(T16.CustomerID, '''') as CustomerID,  
   ISNULL(T16.CustomerName'+@U+', '''') as CustomerName,  
   REPLACE(Str(T30.TranMonth, 2), '' '', 0)+''/''+Str(T30.TranYear, 4) AS Period,  
   CONVERT(VARCHAR(20),'''') AS ProOrderTransID,  
'  
SET @Str30 =  
'  
   CONVERT(VARCHAR(20),'''') AS ProductID,   
   CONVERT(VARCHAR(250),'''') AS ProductName,  
   CONVERT(VARCHAR(20),'''') AS UnitID,   
   CONVERT(VARCHAR(20),'''') AS Model,   
   CONVERT(Decimal(28,8), 0) AS OQuantity,   
   CONVERT(Decimal(28,8), 0) AS CQuantity,   
   CONVERT(VARCHAR(250),'''') AS  DetailDescription,   
   CONVERT(Datetime, null) AS StartDate,   
   CONVERT(Datetime, null) AS  EndDate,   
   CONVERT(Decimal(28,8), 0) AS AdjOQuantity,  
   CONVERT(Decimal(28,8), 0) AS  AdjCQuantity,  
   CONVERT(VARCHAR(20),'''') AS JobID,   
   CONVERT(VARCHAR(20),'''') AS JobNo,   
   CONVERT(VARCHAR(50),'''') AS InventoryID,   
   CONVERT(VARCHAR(500),'''') AS InventoryName,  
   CONVERT(VARCHAR(20),'''') AS JobUnitID,   
   CONVERT(VARCHAR(20),'''') AS JobModel,   
   CONVERT(Decimal(28,8), 0) AS JobOQuantity,   
   CONVERT(Decimal(28,8), 0) As JobCQuantity,  
   CONVERT(VARCHAR(250),'''') AS JobDescription,   
   CONVERT(Datetime, null) AS JobStartDate,   
   CONVERT(Datetime, null) AS JobEndDate,  
   CONVERT(VARCHAR(20),'''') AS JobStatusID,  
   CONVERT(VARCHAR(50),'''') AS JobStatus,  
   CONVERT(VARCHAR(50),'''') AS ResourceStatus,  
   CONVERT(VARCHAR(50),'''') AS ScheduleStatus,  
   ISNULL(T2.MDSVoucherNo, '''' ) as MDSVoucherNo,     
   CONVERT(VARCHAR(20),'''') AS KCSEmployeeID,  
   CONVERT(NVARCHAR(250),'''') AS KCSEmployeeName,  
   CONVERT(VARCHAR(20),'''') AS SupervisorID,  
   CONVERT(NVARCHAR(250),'''') AS SupervisorName,  
   CASE WHEN ISNULL(T30.ProductID, '''') <> '''' THEN 1 ELSE 0 END IsMasterProduct,  
   T30.PlantID, T30.PeriodID,T30.WorkCenterID,  
   T30.AStatusID,     
   T30.ApproverID,     
   T30.ApprovalDate,    
   T30.ApprovalNotes,  
   T30.GroupSO  
     
'  
SET @Str40 =  
'  
    
FROM  #D31P2310_ProOrderID T  
INNER JOIN D31T2300 T30 WITH(NOLOCK)  
  ON T30.ProOrderID = T.ProOrderID  
LEFT JOIN  D31T2300 T301 WITH(NOLOCK)   
  ON  T30.RefProOrderID <> '''' AND T30.RefProOrderID = T301.ProOrderID   
LEFT JOIN  D32T1290 T32 WITH(NOLOCK)  
  ON  T30.ManLevelID = T32.ManLevelID  and T30.DivisionID = T32.DivisionID  
LEFT JOIN  D31T1050 T50 WITH(NOLOCK)  
  ON  T30.ProOrderTypeID = T50.ProOrderTypeID   
LEFT JOIN  D31T1060 T60 WITH(NOLOCK)  
  ON  T30.ProOrderStatusID = T60.ProOrderStatusID   
LEFT JOIN  D30T2010 T20 WITH(NOLOCK)  
  ON  T30.MPSVoucherID = T20.MPSVoucherID  
LEFT JOIN  Object OBJ WITH(NOLOCK)  
  ON  OBJ.ObjectTypeID = ''NV'' AND   
   OBJ.ObjectID = T30.EmployeeID   
LEFT JOIN #D31T2305 T15  
  ON T30.ProOrderID = T15.ProOrderID     
LEFT JOIN  D31T1021 T21 WITH(NOLOCK)   
  ON T21.TranTypeID = T30.TranTypeID  
LEFT JOIN #D31T2310_SalesOrderID T1  
  ON T1.ProOrderID = T30.ProOrderID  
LEFT JOIN D05T0016 T16 WITH(NOLOCK)  
  ON T16.QuotationID =  ISNULL(T1.SalesOrderID,T20.SalesOrderID)   
LEFT JOIN #D31T2310_MDSVoucherNo T2  
  ON T2.ProOrderID = T30.ProOrderID    
  
WHERE  (isnull(T21.DAGroupID, '''')=''''   
   Or isnull(T21.DAGroupID, '''') In (Select DAGroupID From lemonsys.dbo.D00V0080 Where UserID=''' +@UserID +''') Or ''LEMONADMIN''= ''' +@UserID +''')  
      '+CASE WHEN @WorkCenterID = '' THEN '' ELSE 'AND T30.WorkCenterID = '''+@WorkCenterID+'''' END+'  
  
'  
  
SET @Str50 =  
'  
UPDATE  T1  
SET   T1.PlantName = T70.PlantNameU  
FROM  #D31N2301  T1  
INNER JOIN D91T1070 T70 WITH(NOLOCK)   
  ON T1.PlantID = T70.PlantID   
  
UPDATE  T1  
SET   T1.HasMDO = 1  
FROM  #D31N2301 T1  
INNER JOIN  D31T2400 T2  
ON T1.ProOrderID = T2.ProOrderID  
  
  
  
UPDATE  T00  
SET   T00.AStatusName = T500.Desc84U,  
   T00.ApproverName = Obj.ObjectNameU  
FROM  #D31N2301 T00  
LEFT JOIN D91V0500 T500 WITH (NOLOCK)  
 ON  T500.NKey = T00.AStatusID  
 AND  T500.DataID = ''ApprovalStatusID''  
 AND  T00.AStatusID <> ''''  
LEFT JOIN Object Obj WITH(NOLOCK)  
 ON  T00.ApproverID = Obj.L3UserID  
 AND  Obj.ObjectTypeID = ''NV''  
 AND  Obj.L3UserID <> ''''  
 AND  T00.ApproverID <> ''''    
SELECT  CONVERT(BIT, 0) AS IsSelected, *  
FROM  #D31N2301   
ORDER BY ProOrderNo, JobNo, ProductID  
  
DROP TABLE #D31N2301  
'  
END  
  
--HIen thi chi tiet thuc hien xu ly nhu cu  
IF @IsDetail = 1   
BEGIN  
  
IF @Mode = 0  
BEGIN  
 SET @Str10 =   
 '  
 SELECT  ---- Master   
    T30.ProOrderID,   
    T30.DivisionID,    
    T30.TranMonth,    
    T30.TranYear,    
    T30.VoucherTypeID,    
    T30.ProOrderNo,    
    T30.ProOrderDate,    
    T30.ManLevelID,    
    T32.ManLevelName'+@U+' AS ManLevelName,    
    T30.Description'+@U+' AS Description,    
    T30.ProOrderTypeID,  
    T50.ProOrderTypeName'+@U+' AS ProOrderTypeName,    
    T30.ProOrderStatusID,  
    '  
    +CASE WHEN @Language = '84'   
     THEN ' T60.ProOrderStatusName'+@U+' AS ProOrderStatusName,'  
     ELSE ' T60.ProOrderStatusName01'+@U+' AS ProOrderStatusName,'  
    END +'     
    T30.Confirmed,  
    T30.MPSVoucherID,    
    T20.VoucherNo AS MPSVoucherNo,    
    T20.MPSDescription'+@U+' AS MPSDescription,    
    T30.RefProOrderID,    
    T301.ProOrderNo AS RefProOrderNo,  
    T301.Description'+@U+' AS RefProOrderDescription,    
    T30.EmployeeID,    
    OBJ.ObjectName'+@U+' AS EmployeeName,   
    T30.Disabled,    
    T30.CreateDate,  
    T30.CreateUserID,    
    T30.LastModifyDate,    
    T30.LastModifyUserID,    
    CASE WHEN T15.ProOrderTransID IS NULL THEN 0 ELSE 1 END as IsAdjusted,  
    T30.TranTypeID,    
    isnull(T21.DAGroupID, '''') as DAGroupID,    
    T30.HasTask,    
    T30.HasMDO,    
    T30.Locked,    
    T30.LockedUserID,    
    T30.LockedDate,  
    ---- Detail San pham  
    T31.ProOrderTransID,   
    T31.OrderNum,   
    T31.ProductID,   
    T31.UnitID,   
    CASE WHEN T31.Model = '''' THEN '''' ELSE T31.Model + ''  '' + ISnull(T1010.Notes'+@U+', '''') END AS Model,  
    T31.OQuantity,   
    T31.CQuantity,   
    T31.DetailDescription'+@U+' AS DetailDescription,   
    T31.StartDate,   
    T31.EndDate,   
    T31.MPSItemID,   
    T31.Alternate,   
    T31.Spec01ID, T31.Spec02ID, T31.Spec03ID, T31.Spec04ID,   
    T31.Spec05ID, T31.Spec06ID, T31.Spec07ID, T31.Spec08ID,   
    T31.Spec09ID, T31.Spec10ID,  
    CONVERT(NVARCHAR(500), '''') AS ProductName,   
    T31.OQuantity + isnull(T15.OQuantity,0) as AdjOQuantity,   
    T31.CQuantity + isnull(T15.CQuantity,0) as AdjCQuantity,  
    CONVERT(VARCHAR(50), '''') AS SalesOrderNo,  
    CONVERT(VARCHAR(50), '''') AS SO_VoucherNo,  
    CONVERT(VARCHAR(50), '''') AS CustomerID,  
    CONVERT(NVARCHAR(250), '''') AS CustomerName,  
    REPLACE(Str(T30.TranMonth, 2), '' '', 0)+''/''+Str(T30.TranYear, 4) AS Period,  
    CASE WHEN ISNULL(T30.ProductID, '''') <> '''' THEN 1 ELSE 0 END IsMasterProduct,  
  
 '  
 SET @Str20 =   
 N'  
    ---- cac truong ao cua cong viec  
    CONVERT(VARCHAR(20),'''') AS JobID,   
    CONVERT(VARCHAR(20),'''') AS JobNo,   
    CONVERT(VARCHAR(50),'''') AS InventoryID,   
    CONVERT(NVARCHAR(500),'''') AS InventoryName,  
    CONVERT(VARCHAR(20),'''') AS JobUnitID,   
    CONVERT(VARCHAR(20),'''') AS JobModel,   
    0 AS JobOQuantity,   
    0 As JobCQuantity,  
    CONVERT(NVARCHAR(250),'''') AS JobDescription,   
    CONVERT(Datetime,null) AS JobStartDate,   
    CONVERT(Datetime, null) AS JobEndDate,  
    CONVERT(VARCHAR(20),'''') AS JobStatusID,    
    CONVERT(VARCHAR(50),'''') AS JobStatus,   
    CASE WHEN NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 WITH(NOLOCK)   
          WHERE ProOrderTransID =  T31.ProOrderTransID)    -- SP chua nhap cong viec  
       OR NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 WITH(NOLOCK)   
           INNER JOIN D31T2330 WITH(NOLOCK)   
            ON D31T2320.JobID = D31T2330.JobID  
           WHERE D31T2320.ProOrderTransID = T31.ProOrderTransID) -- SP co cong viec chua nhap quy trinh  
       OR NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 T1 WITH(NOLOCK)   
           INNER JOIN D31T2330 T2 WITH(NOLOCK)   
            ON T1.JobID =T2.JobID  
           INNER JOIN D31T2340 T3 WITH(NOLOCK)   
            ON T3.RoutingTransID = T2.RoutingTransID  
           WHERE T1.ProOrderTransID = T31.ProOrderTransID)      -- SP co conng viec, co quy trinh, nhung chua co nguon luc  
    THEN N' +   
    CASE WHEN @Language  ='84'   
    THEN CASE WHEN @CodeTable = 0 THEN '''Chöa nhaäp''' ELSE N'''Chưa nhập''' END    
    ELSE '''Not Enter'''  END  + N'   
    ELSE  CASE WHEN  NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 T1 WITH(NOLOCK)   
            LEFT JOIN D31T2330 T2 WITH(NOLOCK)   
              ON T1.JobID =T2.JobID  
            LEFT JOIN D31T2340 T3 WITH(NOLOCK)   
              ON T3.RoutingTransID = T2.RoutingTransID  
            WHERE T1.ProOrderTransID = T31.ProOrderTransID  
            AND isnull(T3.RDResourceID, '''') ='''' )   -- Nguon luc da nhap het  
      THEN N' +   
      CASE WHEN @Language = '84'   
       THEN CASE WHEN @CodeTable = 0 THEN '''Ñaõ nhaäp heát''' ELSE N'''Đã nhập hết''' END  
       ELSE '''Entered All'''    
       END  +'  
      ELSE N' +   
      CASE WHEN @Language  ='84'   
       THEN CASE WHEN @CodeTable = 0 THEN '''Ñaõ nhaäp 1 phaàn''' ELSE N'''Đã nhập 1 phần''' END  
       ELSE  '''Entered a part'''    
       END  +'  
      END  
    END AS ResourceStatus,  
    CONVERT(NVARCHAR(50),'''') AS ScheduleStatus,  
    T31.MDSVoucherNo,  
    CONVERT(VARCHAR(20),'''') as KCSEmployeeID,  
    CONVERT(NVARCHAR(250),'''') as KCSEmployeeName,  
    CONVERT(VARCHAR(20),'''') as SupervisorID,  
    CONVERT(NVARCHAR(250),'''') as SupervisorName,  
    T30.PlantID,  
    Convert(Nvarchar(500),'''') PlantName,  
    Convert(Decimal(28,8),0) QTYComplete,  
    Convert(Decimal(28,8),0) QuantityLevel2,  
    T31.Ana01ID,T31.Ana02ID,T31.Ana03ID,T31.Ana04ID,T31.Ana05ID,T31.Ana06ID,T31.Ana07ID,T31.Ana08ID,T31.Ana09ID,T31.Ana10ID,  
    T30.PeriodID,T30.WorkCenterID,  
    T31.Num01, T31.Num02, T31.Num03, T31.Num04, T31.Num05,  
    T31.Num06, T31.Num07, T31.Num08, T31.Num09, T31.Num10,  
    T31.Num11, T31.Num12, T31.Num13, T31.Num14, T31.Num15,  
    T31.Num16, T31.Num17, T31.Num18, T31.Num19, T31.Num20,  
    T31.Str01U as Str01, T31.Str02U as Str02,  
    T31.Str03U as Str03, T31.Str04U as Str04,  
    T31.Str05U as Str05, T31.Str06U as Str06,  
    T31.Str07U as Str07, T31.Str08U as Str08,  
    T31.Str09U as Str09, T31.Str10U as Str10,  
    T31.Str11U as Str11, T31.Str12U as Str12,  
    T31.Str13U as Str13, T31.Str14U as Str14,  
    T31.Str15U as Str15, T31.Str16U as Str16,  
    T31.Str17U as Str17, T31.Str18U as Str18,  
    T31.Str19U as Str19, T31.Str20U as Str20,  
    T31.Dat01, T31.Dat02, T31.Dat03, T31.Dat04, T31.Dat05,  
    CONVERT(NVARCHAR(500), '''') AS ShortName,  
    T31.ResourceID,  
    CONVERT(NVARCHAR(500),'''') AS AStatusName ,   
    CONVERT(NVARCHAR(500),'''') AS ApproverName ,  
    T30.AStatusID ,   
    T30.ApproverID ,   
    T30.ApprovalDate ,  
    T30.ApprovalNotes ,  
    T31.SalesOrderID,  
    T30.GroupSO,  
    T31.PackingSpec,  
    T31.PackingSpecNoteU AS PackingSpecNote,  
    T31.PackingID,  
    T31.PackingQuantity,  T31.SpecGT01, T31.SpecGT02, T31.PaperPiece,   
    T31.PaperSize, T31.PaperQuantity, T31.S_Quantity, T31.L_Quantity  
 '  
 SET @Str30 =   
 '  
 INTO  #D31P2310_D31T2310   
 FROM  #D31P2310_ProOrderID T  
 INNER JOIN D31T2310 T31 WITH(NOLOCK)  
   ON T31.ProOrderID = T.ProOrderID  
 LEFT JOIN (  
    SELECT  T15.ProOrderTransID,   
       sum((2*AdjustType-1) * OQuantity) as OQuantity,   
       sum((2*AdjustType-1) * CQuantity) as CQuantity  
    FROM  D31T2305 T05 WITH(NOLOCK)  
    INNER JOIN D31T2315 T15 WITH(NOLOCK)  
      ON T05.AdjProOrderID = T15.AdjProOrderID  
    GROUP BY  T15.ProOrderTransID  
    ) T15  
   ON T15.ProOrderTransID = T31.ProOrderTransID  
 INNER JOIN D31T2300 T30 WITH(NOLOCK)  
   ON T31.ProOrderID=T30.ProOrderID  
 LEFT JOIN  D31T2300 T301 WITH(NOLOCK)             
   ON  T30.RefProOrderID = T301.ProOrderID   
 LEFT JOIN  D32T1290 T32 WITH(NOLOCK)   
   ON  T30.ManLevelID = T32.ManLevelID  
 LEFT JOIN  D31T1050 T50 WITH(NOLOCK)  
   ON  T30.ProOrderTypeID = T50.ProOrderTypeID   
 LEFT JOIN  D31T1060 T60 WITH(NOLOCK)  
   ON  T30.ProOrderStatusID = T60.ProOrderStatusID   
 LEFT JOIN  D30T2010 T20 WITH(NOLOCK)   
   ON  T30.MPSVoucherID = T20.MPSVoucherID  
 LEFT JOIN  Object OBJ WITH(NOLOCK)   
   ON  OBJ.ObjectTypeID = ''NV'' AND   
    OBJ.ObjectID = T30.EmployeeID   
 LEFT JOIN  D31T1021 T21 WITH(NOLOCK) ON T21.TranTypeID = T30.TranTypeID  
 LEFT JOIN D32T1010 T1010 WITH(NOLOCK)    
   ON T1010.InventoryID =  T31.ProductID   
    AND T1010.UnitID = T31.UnitID  
    AND T1010.Model = T31.Model    
    AND T30.DivisionID =  T1010.DivisionID  
  
 WHERE  (isnull(T21.DAGroupID, '''')='''' Or   
    isnull(T21.DAGroupID, '''') In (Select DAGroupID From lemonsys.dbo.D00V0080   
           Where UserID=''' +@UserID +''') Or ''LEMONADMIN''= ''' +@UserID +''')'  
    + CASE WHEN @ProductID = '' THEN '' ELSE '  AND T31.ProductID LIKE ''%' + @ProductID + '%''' END +   
    CASE WHEN @WorkCenterID = '' THEN '' ELSE 'AND T30.WorkCenterID = '''+@WorkCenterID+'''' END  
   
          
END  
ELSE  
BEGIN  
 SET @Str10 =   
 '  
 SELECT   
    ---- Master   
    T30.ProOrderID,   
    T30.DivisionID,    
    T30.TranMonth,    
    T30.TranYear,    
    T30.VoucherTypeID,    
    T30.ProOrderNo,    
    T30.ProOrderDate,    
    T30.ManLevelID,    
    T32.ManLevelName'+@U+' AS ManLevelName,    
    T30.Description'+@U+' AS Description,    
    T30.ProOrderTypeID,  
    T50.ProOrderTypeName'+@U+' AS ProOrderTypeName,    
    T30.ProOrderStatusID,    
    '+ CASE WHEN @Language = '84'   
     THEN 'T60.ProOrderStatusName'+@U+' AS ProOrderStatusName,'  
     ELSE 'T60.ProOrderStatusName01'+@U+' AS ProOrderStatusName,'  
     END +'  
    T30.Confirmed,  
    T30.MPSVoucherID,    
    T20.VoucherNo AS MPSVoucherNo,    
    T20.MPSDescription'+@U+' AS MPSDescription,    
    T30.RefProOrderID,    
    T301.ProOrderNo AS RefProOrderNo,  
    T301.Description'+@U+' AS RefProOrderDescription,    
    T30.EmployeeID,    
    OBJ.ObjectName'+@U+' AS EmployeeName,   
    T30.Disabled,    
    T30.CreateDate,  
    T30.CreateUserID,    
    T30.LastModifyDate,    
    T30.LastModifyUserID,    
    CASE WHEN T15.ProOrderTransID IS NULL THEN 0 ELSE 1 END as IsAdjusted,  
    T30.TranTypeID,    
    isnull(T21.DAGroupID, '''') as DAGroupID,    
    T30.HasTask,    
    T30.HasMDO,    
    T30.Locked,    
    T30.LockedUserID,    
    T30.LockedDate,  
    ---- Detail Cong viec  
    T31.ProOrderTransID,   
    isnull(T23.JobID,'''') AS JobID,   
    isnull(T23.JobNo,'''') AS JobNo,   
    isnull(T23.InventoryID,'''') AS InventoryID,   
    ISnull(T02.InventoryName'+@U+', '''') AS InventoryName,  
    isnull(T23.UnitID,'''') AS JobUnitID,   
    CASE WHEN isnull(T23.Model,'''') = '''' THEN ''''   
    ELSE T23.Model + '' - '' + Isnull(T1010.Notes'+@U+','''')  END As JobModel,   
    isnull(T23.OQuantity,0) AS JobOQuantity,   
    Isnull(T23.CQuantity,0) As JobCQuantity,  
    isnull(T23.Description'+@U+','''') AS JobDescription,   
    isnull(T23.StartDate,null) AS JobStartDate,   
    isnull(T23.EndDate, null) AS JobEndDate,  
    isnull(T23.JobStatus,'''') as JobStatusID,   
    '+ CASE WHEN @Language = '84' THEN ' isnull(T10.JobStatusName84'+@U+','''') '   
    ELSE ' isnull(T10.JobStatusName01'+@U+','''')' END +' AS JobStatus,   
    CONVERT(VARCHAR(50), '''') AS SalesOrderNo,  
    CONVERT(VARCHAR(50), '''') AS SO_VoucherNo,  
    CONVERT(VARCHAR(50), '''') AS CustomerID,  
    CONVERT(NVARCHAR(250), '''') AS CustomerName,  
    REPLACE(Str(T30.TranMonth, 2), '' '', 0)+''/''+Str(T30.TranYear, 4) AS Period,  
 '  
 SET @Str20 =   
 N'  
    ---- cac truong ao cua san pham  
    T31.OrderNum,   
    T31.ProductID,   
    T31.UnitID,   
    T31.OQuantity,   
    T31.CQuantity,   
    T31.DetailDescription'+@U+' AS DetailDescription,   
    T31.StartDate,   
    T31.EndDate,   
    T31.MPSItemID,   
    T31.Alternate,   
    T31.Spec01ID,   
    T31.Spec02ID,   
    T31.Spec03ID,   
    T31.Spec04ID,   
    T31.Spec05ID,   
    T31.Spec06ID,   
    T31.Spec07ID,   
    T31.Spec08ID,   
    T31.Spec09ID,   
    T31.Spec10ID,  
    T31.OQuantity + isnull(T15.OQuantity,0) as AdjOQuantity,   
    T31.CQuantity + isnull(T15.CQuantity,0) as AdjCQuantity,  
    CASE WHEN ISNULL(T30.ProductID, '''') <> '''' THEN 1 ELSE 0 END IsMasterProduct,   
    ---- ---nguon luc di theo cong viec  
    CASE WHEN  NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 WITH(NOLOCK)   
           INNER JOIN D31T2330 ON D31T2320.JobID = D31T2330.JobID  
           WHERE D31T2320.JobID = T23.JobID)         -- SP co cong viec chua nhap quy trinh  
       OR NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 T1 WITH(NOLOCK)   
           INNER JOIN D31T2330 T2 WITH(NOLOCK) On T1.JobID =T2.JobID  
           INNER JOIN D31T2340 T3 WITH(NOLOCK) On T3.RoutingTransID = T2.RoutingTransID  
           WHERE T1.JobID = T23.JobID)              -- SP co cong viec, co quy trinh, nhung chua co nguon luc  
    THEN N''' +   
    CASE WHEN @Language  ='84'   
    THEN CASE WHEN @CodeTable = 0 THEN 'Chöa nhaäp' ELSE N'Chưa nhập' END  
    ELSE 'Not Enter'  END  + N'''   
    ELSE  CASE WHEN  NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 T1 WITH(NOLOCK)   
            LEFT JOIN D31T2330 T2 WITH(NOLOCK) On T1.JobID =T2.JobID  
            LEFT JOIN D31T2340 T3 WITH(NOLOCK) On T3.RoutingTransID = T2.RoutingTransID  
            WHERE T1.JobID = T23.JobID  
            AND isnull(T3.RDResourceID, '''') ='''' )            -- Nguon luc da nhap het  
      THEN N''' +   
      CASE WHEN @Language  ='84'   
      THEN CASE WHEN @CodeTable = 0 THEN 'Ñaõ nhaäp heát' ELSE N'Đã nhập hết' END   
      ELSE  'Entered All'  END  +'''  
      ELSE N''' +   
      CASE WHEN @Language  ='84'   
      THEN CASE WHEN @CodeTable = 0 THEN 'Ñaõ nhaäp 1 phaàn' ELSE N'Đã nhập 1 phần' END  
      ELSE  'Entered a part'  END  + N'''  
      END  
    END AS ResourceStatus,  
  
    CASE WHEN NOT EXISTS (SELECT top 1 1 FROM D36T2020 WITH(NOLOCK) WHERE JobID = T23.JobID)   
      THEN N' +   
      CASE WHEN @Language  ='84'   
      THEN CASE WHEN @CodeTable = 0 THEN '''Chöa laäp''' ELSE N'''Chưa lập''' END  
      ELSE '''Not Enter'''  END  +'   
      ELSE N' +   
      CASE WHEN @Language  ='84'   
      THEN CASE WHEN @CodeTable = 0 THEN '''Ñaõ laäp''' ELSE N'''Đã lập''' END  
      ELSE '''Entered'''  END  +'  
     END as ScheduleStatus,   
  
    T31.MDSVoucherNo,  
    T23.KCSEmployeeID,  
    KCS.ObjectName'+@U+' AS KCSEmployeeName,  
    T23.SupervisorID,  
    sup.ObjectName'+@U+' AS SupervisorName,  
    T30.PlantID,  
    Convert(Nvarchar(500),'''') PlantName,  
    Convert(Decimal(28,8),0) QTYComplete,  
    Convert(Decimal(28,8),0) QuantityLevel2,  
    T31.Ana01ID,T31.Ana02ID,T31.Ana03ID,T31.Ana04ID,T31.Ana05ID,T31.Ana06ID,T31.Ana07ID,T31.Ana08ID,T31.Ana09ID,T31.Ana10ID,  
    T30.PeriodID,T30.WorkCenterID,  
    T31.Num01, T31.Num02, T31.Num03, T31.Num04, T31.Num05,  
    T31.Num06, T31.Num07, T31.Num08, T31.Num09, T31.Num10,  
    T31.Num11, T31.Num12, T31.Num13, T31.Num14, T31.Num15,  
    T31.Num16, T31.Num17, T31.Num18, T31.Num19, T31.Num20,  
    T31.Str01U as Str01, T31.Str02U as Str02,  
    T31.Str03U as Str03, T31.Str04U as Str04,  
    T31.Str05U as Str05, T31.Str06U as Str06,  
    T31.Str07U as Str07, T31.Str08U as Str08,  
    T31.Str09U as Str09, T31.Str10U as Str10,  
    T31.Str11U as Str11, T31.Str12U as Str12,  
    T31.Str13U as Str13, T31.Str14U as Str14,  
    T31.Str15U as Str15, T31.Str16U as Str16,  
    T31.Str17U as Str17, T31.Str18U as Str18,  
    T31.Str19U as Str19, T31.Str20U as Str20,  
    T31.Dat01, T31.Dat02, T31.Dat03, T31.Dat04, T31.Dat05,  
    CONVERT(NVARCHAR(500),'''') AS AStatusName ,   
    CONVERT(NVARCHAR(500),'''') AS ApproverName ,  
    T30.AStatusID ,   
    T30.ApproverID ,   
    T30.ApprovalDate,   
    T30.ApprovalNotes,   
    T31.SalesOrderID,  
    T30.GroupSO,  
    CONVERT(NVARCHAR(250), '''') AS ProductName,  
    CONVERT(NVARCHAR(250), '''') AS ShortName  
 '  
 SET @Str30 =   
 '  
 INTO  #D31P2310_D31T2310  
   
 FROM  #D31P2310_ProOrderID T  
 INNER JOIN D31T2310 T31 WITH(NOLOCK)  
   ON T31.ProOrderID = T.ProOrderID  
 INNER JOIN D31T2300 T30 WITH(NOLOCK)  
   ON T31.ProOrderID=T30.ProOrderID  
 LEFT JOIN (  
    SELECT  T15.ProOrderTransID,   
       sum((2*AdjustType-1) * OQuantity) as OQuantity,   
       sum((2*AdjustType-1) * CQuantity) as CQuantity  
    FROM  D31T2305 T05 WITH(NOLOCK)  
    INNER JOIN D31T2315 T15 WITH(NOLOCK)  
      ON T05.AdjProOrderID = T15.AdjProOrderID  
    GROUP BY  T15.ProOrderTransID  
    ) T15  
   ON T15.ProOrderTransID = T31.ProOrderTransID  
 LEFT JOIN D31T2320 T23 WITH(NOLOCK)  
   On T23.ProOrderTransID = T31.ProOrderTransID  
 LEFT JOIN D07T0002 T02 WITH(NOLOCK)  
   ON T23.InventoryID = T02.InventoryID  
 LEFT JOIN D31T0010 T10 WITH(NOLOCK)  
   ON T23.JobStatus = T10.JobStatus   
 LEFT JOIN  D31T2300 T301 WITH(NOLOCK)           -- Ref...   
   ON  T30.RefProOrderID = T301.ProOrderID   
 LEFT JOIN  D32T1290 T32 WITH(NOLOCK)   
   ON  T30.ManLevelID = T32.ManLevelID  
 LEFT JOIN  D31T1050 T50 WITH(NOLOCK)  
   ON  T30.ProOrderTypeID = T50.ProOrderTypeID   
 LEFT JOIN  D31T1060 T60 WITH(NOLOCK)  
   ON  T30.ProOrderStatusID = T60.ProOrderStatusID   
 LEFT JOIN  D30T2010 T20 WITH(NOLOCK)   
   ON  T30.MPSVoucherID = T20.MPSVoucherID  
 LEFT JOIN  Object OBJ WITH(NOLOCK)   
   ON  OBJ.ObjectTypeID = ''NV'' AND   
    OBJ.ObjectID = T30.EmployeeID   
 LEFT JOIN  D31T1021 T21 WITH(NOLOCK) ON T21.TranTypeID = T30.TranTypeID  
 LEFT JOIN D32T1010 T1010 WITH(NOLOCK)  
    On T1010.InventoryID =  T23.InventoryID   
    AND T1010.UnitID = T23.UnitID  
    AND T1010.Model = T23.Model  AND T30.DivisionID =  T1010.DivisionID  
 LEFT JOIN [Object] Sup WITH(NOLOCK)  
   ON Sup.ObjectTypeID = ''NV''  
    AND Sup.ObjectID = T23.SupervisorID  
 LEFT JOIN [Object] KCS WITH(NOLOCK)  
   ON KCS.ObjectTypeID = ''NV''  
    AND KCS.ObjectID = T23.KCSEmployeeID        
 WHERE  T30.DivisionID = ''' + @DivisionID + '''  
    AND  (isnull(T21.DAGroupID, '''')=''''   
      Or isnull(T21.DAGroupID, '''') In (Select DAGroupID From lemonsys.dbo.D00V0080   
             Where UserID=''' +@UserID +''') Or ''LEMONADMIN''= ''' +@UserID +''')'  
    + CASE WHEN @ProductID = '' THEN '' ELSE ' AND Isnull(T23.InventoryID ,'''') LIKE ''%' + @ProductID + '%''' END  
    + CASE WHEN @JobNo = '' THEN '' ELSE ' AND isnull(T23.JobNo,'''') LIKE ''%' + @JobNo + '%''' END  
    + CASE WHEN @JobStatusID = '' OR @JobStatusID ='%' THEN '' ELSE ' AND  isnull(T23.JobStatus,'''')=  '''+ @JobStatusID + '''' END  
    + CASE WHEN @IsResource = 0 THEN '' ELSE ' AND ( NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 WITH(NOLOCK)   
                WHERE ProOrderTransID =  T31.ProOrderTransID)         
             OR NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 WITH(NOLOCK)   
                 INNER JOIN D31T2330 WITH(NOLOCK) ON D31T2320.JobID = D31T2330.JobID  
                 WHERE D31T2320.ProOrderTransID = T31.ProOrderTransID)           
             OR NOT EXISTS (SELECT TOP 1 1 FROM D31T2320 T1 WITH(NOLOCK)   
                 INNER JOIN D31T2330 T2 WITH(NOLOCK) On T1.JobID =T2.JobID  
                 INNER JOIN D31T2340 T3 WITH(NOLOCK) On T3.RoutingTransID = T2.RoutingTransID  
                 WHERE T1.ProOrderTransID = T31.ProOrderTransID)  
            ) ' END  
    + CASE WHEN @IsSchedule = 0 THEN '' ELSE ' AND NOT EXISTS (SELECT top 1 1 FROM D36T2020 WITH(NOLOCK) WHERE JobID = T23.JobID) ' END       
    + CASE WHEN @WorkCenterID = '' THEN '' ELSE 'AND T30.WorkCenterID = '''+@WorkCenterID+'''' END  
  
    
END   
  
--IF @StrFind <> '' SET @StrFind = ' WHERE ' + @StrFind  
  
DECLARE @T TINYINT = 0  
IF EXISTS (SELECT 1 FROM D91T9130 WHERE Value  = 1 AND Customize = 'AddColumnQM')  
BEGIN  
 SET @T = 1  
END  
   
  
SET @Str50 =   
'  
UPDATE  T1  
SET   T1.PlantName = T70.PlantNameU  
FROM  #D31P2310_D31T2310 T1  
INNER JOIN D91T1070 T70 WITH(NOLOCK)   
  ON T1.PlantID = T70.PlantID   
  
UPDATE  T1  
SET   T1.QTYComplete = T2.OQTY  
FROM  #D31P2310_D31T2310 T1  
INNER JOIN (  
     
   SELECT  T23.ProOrderID LinkBatchID,  
      ISNULL(T05.LinkTransID,ISNULL(T23.ProOrderTransID,'''')) AS LinkTransID,  
      SUM(OQTY) AS OQTY  
   FROM  D31T2105 T05 WITH(NOLOCK)   
   INNER JOIN D31T2310 T23 WITH(NOLOCK)  
    ON  T05.ProOrderID = T23.ProOrderID  
    AND  T05.LinkTransID = T23.ProOrderTransID  
   INNER JOIN D31T2300 T00 WITH(NOLOCK)  
    ON  T00.ProOrderID = T23.ProOrderID  
   WHERE  T00.DivisionID = '''+@DivisionID+'''  
      
   GROUP BY T23.ProOrderID,  
      ISNULL(T05.LinkTransID,ISNULL(T23.ProOrderTransID,''''))  
   ) T2  
 ON  T1.ProOrderTransID = T2.LinkTransID  
   AND  T1.ProOrderID = T2.LinkBatchID    
  
-- Update QuantityLevel2  
UPDATE  T1  
SET   T1.QuantityLevel2 = ROUND(CONVERT(DECIMAL(28,8),CASE WHEN ISNULL(T2.ConversionFactor, 0) = 0 THEN 0 ELSE (T1.CQuantity/T2.ConversionFactor)END),'+LTRIM(RTRIM(STR(@D07_QuantityDecimals)))+')   
FROM  #D31P2310_D31T2310 T1     
INNER JOIN D07T0004 T2   
  ON T1.ProductID = T2.InventoryID  
   AND T2.Orders = 2   
  
      
Update  T1  
SET   T1.HasMDO = 1  
FROM  #D31P2310_D31T2310 T1    
INNER JOIN  D31T2400 T2  
ON   T1.ProOrderID = T2.ProOrderID  
'+CASE WHEN @T = 1 THEN 'AND T2.MDOStatusID <> ''''' ELSE '' END+ '  
  
  
UPDATE  T00  
SET   T00.AStatusName = T500.Desc84U,  
   T00.ApproverName = Obj.ObjectNameU  
FROM  #D31P2310_D31T2310 T00  
LEFT JOIN D91V0500 T500 WITH (NOLOCK)  
 ON  T500.NKey = T00.AStatusID  
 AND  T500.DataID = ''ApprovalStatusID''  
 AND  T00.AStatusID <> ''''  
LEFT JOIN Object Obj WITH(NOLOCK)  
 ON  T00.ApproverID = Obj.L3UserID  
 AND  Obj.ObjectTypeID = ''NV''  
 AND  Obj.L3UserID <> ''''  
 AND  T00.ApproverID <> ''''  
  
UPDATE  T31  
SET   T31.SalesOrderNo = ISNULL(T16.VoucherNum, ''''),  
   T31.SO_VoucherNo = ISNULL(T16.VoucherNo, ''''),  
   T31.CustomerID = ISNULL(T16.CustomerID, ''''),  
   T31.CustomerName = ISNULL(T16.CustomerName'+@U+', '''')  
FROM  #D31P2310_D31T2310 T31  
INNER JOIN D05T0016 T16 WITH(NOLOCK) ON T16.QuotationID = T31.SalesOrderID  
  
UPDATE  T31  
SET   T31.ProductName = ISNULL(T02.InventoryName'+@U+', ''''),  
   T31.ShortName = ISNULL(T02.ShortName'+@U+', '''')  
FROM  #D31P2310_D31T2310 T31  
INNER JOIN D07T0002 T02 WITH(NOLOCK)  
   ON T31.ProductID = T02.InventoryID  
  
SELECT  CONVERT(BIT, 0) AS IsSelected, *   
FROM  #D31P2310_D31T2310  
'+   
CASE WHEN ISNULL(@StrFind,'') = '' THEN '' ELSE   
'   
WHERE  ' + @StrFind END +   
'   
ORDER BY ProOrderNo, JobNo, ProductID  
  
DROP TABLE #D31P2310_D31T2310  
'  
END  
  
--PRINT @Str10  
--PRINT @Str20  
--PRINT @Str30  
--PRINT @Str40  
--PRINT @Str50  
  
EXEC (@Str10 + @Str20 + @Str30 + @Str40 + @Str50)  
  
  
  
  
  
  
  
  
  
  
  
  