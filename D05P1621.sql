  
  
-- <Summary>  
---- Truy van Don hang thay cho Store D05P0015  
-- <Param>  
----   
-- <Return>  
----   
-- <Reference>  
----   
-- <History>  
---- Create by Dang Hong Trang on 11/03/2009  
---- last Modified by Thu Trang, bo sung MoudleID  
---- last Modified on 07/05/2009  by Thu Trang, bo sung LocationNo, LimitDate  
---- last Modified on 08/06/2009  by Bui Huu Le bo sung ObjectTypeID,ObjectID,EmployeeID,CurrencyID  
---- last Modified on 08/06/2009  by Dang Hong Trang : Khi kiem tra phieu giao hang cua don hang thi khong kiem tra cac phieu giao hang da huy  
---- Last Modified on 11/06/2009  by Nguyen Hoang Tuan : Cai tien toc do cham don hang  
---- Last Modified on 30/06/2009  by Dang Hong Trang : Them IsProOrderD31  
---- Last Modified on 02/07/2009  by Dang Hong Trang : Them ProOrderNumD31  
---- Last Modified on 24/07/2009  by Thu Trang: sua loi ProOrderNo  
---- Last Modified on 24/07/2009  by Thu Trang: bo sung loc tu ky den ky  
---- Last Modified on 16/09/2009  by Bui Huu Le: bo sung IsCreditLimit  
---- Last Modified on 15/09/2009  by Thu Trang: fix ky  
---- Last Modified on 30/11/2009  by Bui Huu Le: bo sung AutoLockVoucher  
---- Last Modified on 05 Feb 2010  by Nguyen Hoang Tuan: Cai tien toc do  
---- Last Modified on 08 Feb 2010  by Bui Huu Le : sua loi tim kiem theo mat hang bi loi   
---- Last Modified on 04/05/2010  by Thu Trang , bo sung thong tin phu  
---- Last Modified on 01/06/2010  by Thu Trang, fix loi   
---- Last Modified on 11/10/2010  by Thu Trang, truy van cac hop dong ban d49   
---- Last Modified on 22/2/2011  by Lan Huong: Bo sung Pick  
---- Last Modified on 11/07/2011  by Le Thi Ni: Sua EmName thanh PreparedByName, them EmployeeName  
---- Last Modified on 29/09/2011  by Lai Van Duy: Cho phep xem du lieu da Archive (ID: 42970)  
---- Last Modified on 04/09/2011  by Lai Van Duy: Khong co sua xoa du lieu da Archive (ID: 42969 )  
---- Last Modified on 08/10/2011  by Lai Van Duy: Cho phep xem du lieu chi tiet da Archive (ID:43407)  
---- Modified on 09/11/2012 by Thu Trang (52317): Bo sung dieu kien update lai Status  
---- Modified on 22/05/2013 by Bao Tran (56760): Bo sung OrderNum, Orderby theo OrderNum  
---- Modified on 13/12/2013 by Hoang Nam: bo sung NOLOCk  
---- Modified on 13/10/2016 by Luu Hoang Hai (91602): Nang do dai truong LocationNo  
-- <Example>  
---- Exec  D05P1621  'TUONGAN', 3, 2009, 'LEMONADMIN', '84', 'A', '01/13/2000','02/13/2009','kh','04HCM0001','01ABC001','01ABC001', 1,'and (((T1.VoucherNum Like ''%1%'')))'  
---- Exec D05P1621 'TUONGAN', 5, 2009, 'LEMONADMIN', '84', '',  NULL,  NULL, '', '', '', '', 0,  ''  
 CREATE PROCEDURE D05P1621  
 @DivisionID  VARCHAR(50),  
 @TranMonthFrom  INT,  
 @TranYearFrom  INT,  
 @UserID   VARCHAR(50)= '',  
 @Language   VARCHAR(50)= '',  
 @VoucherNum  VARCHAR(50)= '',  
 @DateFrom  DATETIME = Null,    
 @DateTo   DATETIME = Null,   
 @ObjectTypeID VARCHAR(50)= '',    
 @ObjectID  VARCHAR(50)= '',    
 @FromInventoryID VARCHAR(50)= '',   
 @ToInventoryID  VARCHAR(50)= '',  
 @ShowDetail  TINYINT = 0,  
 @Condition  VARCHAR(8000) = '',  
 @ModuleID   VARCHAR(20)='05',  
 @IsTime   TINYINT=0, --- =4 : loc het khong theo ky va ngay  
 @TranMonthTo    INT=0,  
 @TranYearTo  INT=0,  
 @TranTypeID AS VARCHAR(20)='',  
 @QuotationNo AS VARCHAR(20)='',  
 @Status AS VARCHAR(20)='',  
 @IsArchived tinyint = 0  
AS  
  
SET NOCOUNT ON  
  
DECLARE @Select VARCHAR(8000)  
DECLARE @From VARCHAR(8000)  
DECLARE @From1 VARCHAR(8000)  
DECLARE @Where VARCHAR(8000)  
DECLARE @UpdateInfo AS VARCHAR(8000)  
  
SET @Select=''  
SET @From=''  
SET @From1=''  
SET @Where=''  
SET @UpdateInfo = ''  
IF @ObjectTypeID = '%' SET @ObjectTypeID = ''  
IF @ObjectID = '%' SET @ObjectID = ''  
IF @Status = '%' SET @Status = ''  
  
  
SET @Condition = ISNULL(@Condition,'')  
  
SET @Select = '   
SELECT DISTINCT   
  T1.QuotationID as ID,    T1.VoucherNum,    T1.QuotationDate AS Date,   
  T1.CustomerName AS CusName,   Object.ObjectAddress AS CusStreet,   
  F.ObjectName AS PreparedByName,   T1.DivisionID, B.IDKey, '  
  + CASE WHEN @Language = '84' THEN 'B.IDName' ELSE 'B.IDName01' END + ' AS IDName,   
  T1.VoucherTypeID,     T1.BatchID,    T1.VoucherNo,   
  T1.StatusPrint,     T1.ShiftID,  
  T1.CreateUserID,  
  CASE WHEN T15.isAdjusted IS NULL THEN 0 ELSE T15.isAdjusted END as isAdjusted,  
  D05T1020.InvoiceForm,   
  T1.Locked,    
  T1.Description,   
  0 AS Status,  
  T1.ObjectTypeID AS ObjectTypeID,  
  T1.CustomerID AS ObjectID,  
  T1.EmployeeID as EmployeeID,  
  T1.CurrencyID,  
  T1.VoucherDate,  
  A.Amount As OAmount,  
  A.CAmount AS CAmount,  
  CASE WHEN ISNULL(D31.SalesOrderID,'''') = '''' THEN 0 ELSE 1 END AS IsProOrderD31,  
  D31.ProOrderNo as ProOrderNumD31,T1.TranMonth + T1.TranYear*100 as Period,  
  D05T1020.IsCreditLimit, D05T1020.TranTypeID, D05T1020.AutoLockVoucher,  
  T1.PreparedBy,T1.ModuleID,  
  CASE WHEN ISNULL(D07T0011.SOID,'''') = '''' THEN CONVERT(BIT,0) ELSE CONVERT(BIT,1) END AS SendedToD07,  
  T1.Pick,  
  Isnull(E.ObjectName,'''') AS EmployeeName  
  
'  
  
--SET @From = '  
--FROM   D05T0016  T1   WITH (NOLOCK)   
--LEFT JOIN ( SELECT T2.QuotationID,Sum(isnull(T2.Amount,0)+Isnull(T2.OVAT,0)-isnull(T2.OriginalReduce,0)) AS Amount,  
--             sum(Isnull(T2.CAmount,0) +isnull(T2.CVAT,0) -isnull(T2.CReduce,0)) AS CAmount  
--      FROM D05T0017 T2  WITH (NOLOCK)   
--      GROUP BY T2.QuotationID  
--       ) A ON T1.QuotationID= A.QuotationID  
--   INNER JOIN ( SELECT  A.QuotationID, A.DivisionID, A.StatusCurrent AS IDKey, D05T7777.IDName , D05T7777.IDName01   
--          FROM   
--          ( SELECT  QuotationID, DivisionID,   
--          StatusCurrent = (CASE WHEN RIGHT(status,1)=''1'' THEN ''10''                             
--                WHEN RIGHT(LEFT(status,9),1)=''1'' THEN ''9''                             
--                       WHEN RIGHT(LEFT(status,8),1)=''1'' THEN ''8''                             
--                        WHEN RIGHT(LEFT(status,7),1)=''1'' THEN ''7''                             
--                     WHEN RIGHT(LEFT(status,6),1)=''1'' THEN ''6''                             
--                        WHEN RIGHT(LEFT(status,5),1)=''1'' THEN ''5''                             
--                        WHEN RIGHT(LEFT(status,4),1)=''1'' THEN ''4''                             
--                        WHEN RIGHT(LEFT(status,3),1)=''1'' THEN ''3''                              
--                        WHEN RIGHT(LEFT(status,2),1)=''1'' THEN ''2''                            
--                        WHEN RIGHT(LEFT(status,1),1)=''1'' THEN ''1''         
--              END)   
--        FROM  D05T0016   
--        WHERE DivisionID = ''' + @DivisionID + '''  
--       ) A    
          
--        LEFT JOIN D05T7777  ON isnull(D05T7777.IDKey,'''') = A.StatusCurrent   
--             AND D05T7777.Type1 = ''O''   
--             AND D05T7777.Type2 = 0   
--             AND D05T7777.Type3 = 0   
--             AND D05T7777.FormName = ''D05F0300''   
--          ) B  ON T1.QuotationID = B.QuotationID   
--         AND T1.DivisionID = B.DivisionID   
           
--    LEFT JOIN Object  ON Object.ObjectID = T1.CustomerID   
--         AND Object.ObjectTypeID = T1.ObjectTypeID      
           
--    LEFT JOIN Object E  ON T1.EmployeeID = E.ObjectID   
--         AND E.ObjectTypeID = ''NV''  
           
--    LEFT JOIN Object F  ON T1.PreparedBy = F.ObjectID   
--         AND F.ObjectTypeID = ''NV''  
              
--    LEFT JOIN( SELECT  TranTypeID, DAGroupID, InvoiceForm,IsCreditLimit,AutoLockVoucher  
--       FROM D05T1020  
--      )D05T1020  ON D05T1020.TranTypeID = T1.TranTypeID  
          
--    LEFT JOIN(  SELECT  SalesOrderID, 1 AS isAdjusted   
--       FROM D05T2025  
--       WHERE DivisionID ='''+@DivisionID+'''  
--       GROUP BY SalesOrderID  
--      ) T15  ON  T15.SalesOrderID = T1.QuotationID  
--    LEFT JOIN (     
--        --DON HANG DA LAP LENH SX  
--        SELECT DISTINCT  D31T2310.SalesOrderID, MIN(D31T2300.ProOrderNo) as ProOrderNo  
--        FROM  D31T2300   
--        INNER JOIN D31T2310 ON D31T2310.ProOrderID = D31T2300.ProOrderID  
--        GROUP BY SalesOrderID  
          
--       ) D31 ON T1.QuotationID = D31.SalesOrderID  
      
--    LEFT JOIN D07T0011  ON T1.QuotationID = D07T0011.SOID  
--    '  
  
SET @Where  = '  
WHERE   T1.DivisionID = ''' + @DivisionID + '''  
  AND ProfessionKind = ''O''  
  AND ( T1.ModuleID = ''' + @ModuleID + ''' OR T1.ModuleID IN ('''',''50'',''49'') )  
  AND (isnull(DAGroupID, '''') = '''' OR DAGroupID in ( SELECT  DAGroupID   
                FROM  lemonsys.dbo.D00V0080   
                WHERE  UserID = ''' + @UserID + ''')  
           OR ''LEMONADMIN'' = ''' + @UserID + ''')'     
  +  CASE WHEN @VoucherNum = ''  THEN '' ELSE ' AND T1.VoucherNum LIKE ''%' + @VoucherNum+ '%''' END  
  + CASE WHEN @QuotationNo = ''  THEN '' ELSE ' AND T1.VoucherNo LIKE ''' + @QuotationNo + '%''' END  
  + CASE WHEN @TranTypeID = ''  THEN '' ELSE ' AND T1.TranTypeID = ''' + @TranTypeID + '''' END  
  +  CASE WHEN @ObjectTypeID = ''   THEN '' ELSE ' AND T1.ObjectTypeID LIKE '''+ @ObjectTypeID + '''' END  
  +  CASE WHEN @ObjectID  = ''   THEN '' ELSE ' AND T1.CustomerID LIKE '''+ @ObjectID + '''' END  
  +   CASE WHEN @Status =''   THEN '' ELSE ' AND B.IDKey LIKE '''+@Status+''' ' END    
                  
IF @Istime =0   
    SET @WHERE =  @WHERE + 'AND T1.TranMonth + T1.TranYear *100 = '+Str(@TranMonthFrom + @TranyearFrom*100)+''    
          +  CASE WHEN @DateFrom=NULL THEN '' ELSE ' AND T1.QuotationDate >= CONVERT(DATETIME, '''+ CONVERT(VARCHAR(10), ISNULL(@DateFrom, '01/01/1900'), 103)+''', 103)'  END  
          +  CASE WHEN @DateTo=NULL  THEN '' ELSE ' AND T1.QuotationDate <= CONVERT(DATETIME, '''+ CONVERT(VARCHAR(10), ISNULL(@DateTo,'01/01/2100'), 103)+''', 103)' END    
IF @Istime =1   
    SET @WHERE = @WHERE + ' AND T1.QuotationDate >= ''' + CONVERT(varchar(20), @DateFrom, 101) + '''AND T1.QuotationDate <= ''' + CONVERT(varchar(20), @DateTo, 101) +'''  
            AND T1.TranMonth + T1.TranYear *100 = '+Str(@TranMonthFrom + @TranyearFrom*100)+'  
           '     
IF @Istime =2   
    SET @WHERE = @WHERE + '  AND T1.TranMonth + T1.TranYear *100 Between '+Str(@TranMonthFrom + @TranyearFrom*100)+'AND '+Str(@TranMonthTo + @TranyearTo*100)+''    
     
IF @Istime =3    
BEGIN  
 SET @WHERE = @WHERE + '  AND T1.TranMonth + T1.TranYear *100 Between '+Str(@TranMonthFrom + @TranyearFrom*100)+'AND '+Str(@TranMonthTo + @TranyearTo*100)+'  
             AND T1.QuotationDate >= ''' + CONVERT(varchar(20), @DateFrom, 101) + '''AND T1.QuotationDate <= ''' + CONVERT(varchar(20), @DateTo, 101) +''''  
      
END  
IF @ShowDetail = 0  
BEGIN  
  SET @Select =  @Select + '  
  ,Convert(Varchar(20),'''') as InventoryID, Convert(Varchar(500),'''') as ItemName, Convert(Varchar(250),'''') as InventoryName ,   
  Convert(Varchar(20),'''') as UnitID,0 as Quantity, 0 as UnitPrice, 0 as Amount, 0 as ReduceQuantity,   
  0 as RateReduce, 0 as OriginalReduce, Convert(Varchar(250),'''') as Notes, Convert(Varchar(250),'''') as ShortName  ,   
  Convert(Varchar(20),'''') as Spec01ID, Convert(Varchar(20),'''') as Spec02ID,Convert(Varchar(20),'''') as Spec03ID, Convert(Varchar(20),'''') as Spec04ID, Convert(Varchar(20),'''') as Spec05ID ,  
  Convert(Varchar(20),'''') as Spec06ID, Convert(Varchar(20),'''') as Spec07ID, Convert(Varchar(20),'''') as Spec08ID, Convert(Varchar(20),'''') as Spec09ID, Convert(Varchar(20),'''') as Spec10ID ,   
  Convert(Varchar(20),'''') as Ana01ID, Convert(Varchar(20),'''') as Ana02ID, Convert(Varchar(20),'''') as Ana03ID, Convert(Varchar(20),'''') as Ana04ID, Convert(Varchar(20),'''') as Ana05ID ,   
  Convert(Varchar(20),'''') as Ana06ID, Convert(Varchar(20),'''') as Ana07ID, Convert(Varchar(20),'''') as Ana08ID, Convert(Varchar(20),'''') as Ana09ID, Convert(Varchar(20),'''') as Ana10ID,  
  null as DeliveryDate ,Convert(Varchar(100),'''') as LocationNo, null as LimitDate,  
  Convert(Decimal(28,8),0) as NRef1,Convert(Decimal(28,8),0) as NRef2,  
  Convert(Decimal(28,8),0) as NRef3,Convert(Decimal(28,8),0) as NRef4,Convert(Decimal(28,8),0) as NRef5,  
  Convert(Varchar(250),'''') as DRef1,Convert(Varchar(250),'''') as DRef2,  
  Convert(Varchar(250),'''') as DRef3,Convert(Varchar(250),'''') as DRef4,Convert(Varchar(250),'''') as DRef5,  
  null as DateRef1,null as DateRef2,null as DateRef3,null as DateRef4,null as DateRef5, 0 As OrderNum '  
END  
  
  
IF  @ShowDetail=1  
BEGIN  
 SET @Select =  @Select + '  
  , T2.InventoryID, T2.ItemName AS InventoryName , T2.UnitID, T2.Quantity, T2.UnitPrice, T2.Amount,  T2.ReduceQuantity,   
  T2.RateReduce, T2.OriginalReduce, T2.Notes, T2.ShortName  ,   
  T2.Spec01ID, T2.Spec02ID, T2.Spec03ID, T2.Spec04ID, T2.Spec05ID ,T2.Spec06ID, T2.Spec07ID, T2.Spec08ID, T2.Spec09ID, T2.Spec10ID ,   
  T2.Ana01ID, T2.Ana02ID, T2.Ana03ID, T2.Ana04ID, T2.Ana05ID , T2.Ana06ID, T2.Ana07ID, T2.Ana08ID, T2.Ana09ID, T2.Ana10ID, T2.DeliveryDate ,  
  T2.LocationNo, T10.LimitDate,  
  T2.NRef1,T2.NRef2,T2.NRef3,T2.NRef4,T2.NRef5,  
  T2.DRef1,T2.DRef2,T2.DRef3,T2.DRef4,T2.DRef5,  
  T2.DateRef1,T2.DateRef2,T2.DateRef3,T2.DateRef4,T2.DateRef5, T2.OrderNum '  
  
 --SET @From =  @From + '  
 --  INNER JOIN D05T0017 T2  WITH (NOLOCK)   
 --        ON T1.QuotationID = T2.QuotationID   
 --        AND T1.DivisionID = T2.DivisionID  
 --  LEFT JOIN D07T1011 T11  
 --        ON T2.QuotationID = T11.RefVoucherID   
 --        AND T2.QuotationItemID = T11.RefTransID  
           
 --  LEFT JOIN D07T1010 T10  
 --        ON T11.RDVoucherID = T10.RDVoucherID  
 --        AND T11.TransactionID = T10.TransactionID  
 --        AND T11.R_D = T10.R_D  
 --        AND T11.SplitNo = T10.SplitNo  
 --   '  
 SET @Where = @Where +   
 CASE WHEN @FromInventoryID = '' or @FromInventoryID = '%'  THEN '' ELSE ' AND T2.InventoryID >= '''+ @FromInventoryID+'''' END+  
 CASE WHEN @ToInventoryID = '' or @ToInventoryID= '%' THEN '' ELSE ' AND T2.InventoryID <= '''+ @ToInventoryID+''''  END     
END  
EXEC D05P1625 @DivisionID, 0, @FROM OUTPUT, @ShowDetail  
  
SET @UpdateInfo = '  
UPDATE #Data  
SET  Status = 1  
FROM  
(  
 SELECT DISTINCT QuotationID AS LinkQuotationID  
 FROM D05T1702 WITH(NOLOCk)  
 UNION ALL  
 SELECT DISTINCT LinkBatchID AS LinkQuotationID  
 FROM D05T0037 WITH(NOLOCk)  
 INNER JOIN D05T0036 WITH(NOLOCk) ON D05T0036.BatchID = D05T0037.BatchID AND D05T0036.DivisionID = D05T0037.DivisionID AND D05T0036.Cancelled=0  
 UNION ALL  
 SELECT SOID AS LinkQuotationID  
 FROM D07T0011 T11 WITH(NOLOCk)  
 INNER JOIN D07T0009 T09 WITH(NOLOCk)  
   ON T11.RDVoucherID = T09.RDVoucherID  
 WHERE KindVoucherID in (2,3) and T11.ModuleID=''05''   
    
) AS A  
WHERE #Data.ID = A.LinkQuotationID  
'  
 --PRINT  (@SELECT + ' INTO #Data' )  
 --PRINT  (@FROM + @WHERE)  
 -- PRINT  (@UpdateInfo + ' SELECT * FROM #Data ORDER BY Date  DESC, VoucherNum DESC')  
IF (@IsArchived = 0)  
BEGIN  
 EXEC (@SELECT + ', T1.DataSource' + ' INTO #Data' + @FROM + @WHERE +  @UpdateInfo + ' SELECT * FROM #Data where 1 = 1 '+ @Condition +' ORDER BY Date  DESC, VoucherNum DESC, OrderNum')  
 --print (@SELECT + ' INTO #Data' + @FROM + @WHERE +  @UpdateInfo + ' SELECT * FROM #Data where 1 = 1 '+ @Condition +' ORDER BY Date  DESC, VoucherNum DESC')  
END  
ELSE  
BEGIN  
 EXEC D05P1625 @DivisionID, @IsArchived, @From1 OUTPUT, @ShowDetail  
 EXEC (@SELECT + ', T1.DataSource' + ' INTO #Data' + @FROM + @WHERE + ' INSERT INTO #Data ' + @SELECT + ', ''ARC'' AS DataSource' + @FROM1 + @WHERE  + @UpdateInfo + ' SELECT * FROM #Data where 1 = 1 '+ @Condition +' ORDER BY Date  DESC, VoucherNum DESC, O
rderNum')  
 --print (@SELECT + ' INTO #Data' + @FROM + @WHERE )  
 --PRINT ( ' INSERT INTO #Data ' + @SELECT + @FROM1 + @WHERE  + @UpdateInfo + ' SELECT * FROM #Data where 1 = 1 '+ @Condition +' ORDER BY Date  DESC, VoucherNum DESC')  
END  
  
  
  
  
