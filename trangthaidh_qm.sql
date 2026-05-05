  
  
  
  
  
  
  
  
  
  
  
  
  
  
-- <Summary>  
---- Do nguon cho Master  
-- <Param>  
----   
-- <Return>  
----   
-- <Reference>  
---- D05 / Nghiep vu/ Don hang  
-- <History>  
---- Create on 18/12/2012 by Bao Chi (ID 52535)  
----   
---- Modified on 21/12/2012 by Bao Chi (ID 52077) Bo sung truong QAStatus  
---- Modified on 11/12/2013 by Bao Chi (ID 61881) Trang thai duyet  
---- Modified on 02/07/2014 by Thanh Truc (65414): Bo sung truong TransportTypeID, TransportID  
---- Modified on 04/08/2014 by Thi Tho (69029): Bo sung khi AStatus = 90: Trang thai Duyet  
---- Modified on 14/01/2015 by Vu Thi Tho (71660): Bo sung lay them truong IsVATPrice  
---- Modified on 24/11/2016 by Luu Hoang Hai (90905): Bo sung chiet khau thanh toan  
---- Modified on 13/04/2017 by Hong Tram (86650): Bo sung trang thai duyet la tu choi   
---- Modified on 25/10/2017 by Bao Tram (103050): Lap don hang tu hop dong D49   
---- Modified on 26/11/2017 by Dan Tam (96871): Bo sung loai nghiep vu  
---- Modified on 10/12/2017 by Dan Tam : sua loi DivisionID  
---- Modified on 30/06/2021 by MYLAI (165320): Bo sung ke thua Mode = 2  
---- Modified on 20/12/2021 by Thi Thu (180300): bo sung Dung sai ExceedMaster,lay max cua Dung sai chi tiet  
---- Modified on 13/04/2022 by THAONGUYEN (ultra): Sua cach lay user duyet  
---- Modified on 28/07/2022 by NGUYENLUAN(244379): Sua loi khi ke thua tai D05F1601 (Mode = 2, Thay doi care Key01ID='D05F1602_CO' thanh D91T9009.Key01ID = 'D05F1621_Inherit' AND D91T9009.FormID = 'D05F1621_Inherit')   
---- Modified on 08/03/2023 by HAN (255629): Bo sung PrePaymentOAmount, OverdueOAmount, OAmountCalDiscount, IsApplyPrePayment  
---- Modified on 12/05/2023 by THAONGUYEN (256059): Bo sung SalesTypeID  
---- Modified on 22/05/2023 by HAN (256072): Bo sung AsmAdjustmentListID, MinPrePayOAmount  
---- Modified on 11/07/2023 by THAONGUYEN (258962): Bo sung @FormID  
---- Modified on 11/09/2023 by HAN (262453): Bo sung ExtendDebtDay - Gia han ngay no qua han  
---- Modified on 03/05/2024 by HAN (213695) : Sua fix load AStatusName ( Trong TH duyet nhieu cap : Nhung tao don hang tu dong - mac dinh da duyet chu khong co day vao D84 dang bi hien hien Chua duyet)  
---- Modified on 15/11/2024 by TRUNGKIEN (284568) : Bo sung IsLockPriceList - dieu kien rem combo Bang gia  
---- Modified on 24/12/2024 by THAONGUYEN (289456): Bo sung DebtSettID, DebtSettVoucherNo  
-- <Example>  
----EXEC D05P1652 '05MO0J000000643' , 'DIGINET', 1,0  
----EXEC D05P1652 '05GA0J000000136' , 'DIGINET', 1,1  
  
CREATE PROCEDURE D05P1652  
(   
 @QuotationID Varchar (20), -- Xem phieu dieu chinh truyen AdjGroupID     
 @DivisionID Varchar (20),  
 @CodeTable Tinyint,  
 @Mode Tinyint,  -- 0 Xem, sua don hang, Them moi phieu dieu chinh  
       -- 1 : Xem phieu dieu chinh   
 @Language Varchar (20) = '84',  
 @FormID VARCHAR(50) = '' -- = 'D05F2125' khi goi tu man hinh truy van don hang dieu chinh, goi tu duong khac truyen ''  
)   
AS   
SET NOCOUNT ON  
DECLARE @sSQL AS VARCHAR(MAX),   
  @sSQL1 AS NVARCHAR(MAX),  
  @sSQL2 AS NVARCHAR(MAX),  
  @U VARCHAR(1),  
  @HostName VARCHAR(50)  
  
SELECT @HostName = HOST_NAME()  
  
SELECT @sSQL1 = N'' , @sSQL2 = N''  
    
SET @U = CASE WHEN @CodeTable = 0 THEN '' ELSE 'U' END  
  
  
DECLARE @IsApprovingProcess Tinyint,  
  @IsApprovingProcessSOAdj TINYINT = 0  
  
SET @IsApprovingProcess = 0  
  
SELECT @IsApprovingProcess = ISNULL(IsApprovingProcess,0),    
  @IsApprovingProcessSOAdj = IsApprovingProcessSOAdj  
FROM D05T0100 WITH (NOLOCK)  
  
SET @sSQL ='   
 SELECT  QuotationID,SUM(DeliveryQTY) AS DeliveryQTy, MAX(ExceedDetailQty) AS ExceedMaster  
 INTO  #Tmp_D05T0017   
 FROM  D05T0017   
 WHERE  QuotationID = '''+@QuotationID+'''  
 GROUP BY QuotationID   
  '  
IF @Mode IN (0, 2)  
BEGIN  
 SET @sSQL = @sSQL + '  
       
  SELECT  D05T0016.QuotationID, D05T0016.DivisionID, D05T0016.CustomerID,  
    D05T0016.ContactPerson'+@U+' AS ContactPerson, D05T0016.QuotationDate,   
    D05T0016.TranMonth, D05T0016.TranYear, D05T0016.DiscountID, D05T0016.CurrencyID,  
    D05T0016.EmployeeID, D05T0016.QuotationHeader'+@U+' AS QuotationHeader,  
    D05T0016.TradeTerms'+@U+' AS TradeTerms,   
    D05T0016.QuotationFooter'+@U+' AS QuotationFooter,  
    D05T0016.Closed, D05T0016.VoucherNum, VoucherTypeID,  
    D05T0016.Ref1'+@U+' AS Ref1, D05T0016.Ref2'+@U+' AS Ref2,   
    D05T0016.Ref3'+@U+' AS Ref3, D05T0016.Ref4'+@U+' AS Ref4, D05T0016.Ref5'+@U+' AS Ref5,  
    D05T0016.ProfessionKind, D05T0016.ObjectTypeID,  
    D05T0016.Status, D05T0016.BatchID, D05T0016.DueDate,  
    D05T0016.VoucherNo, D05T0016.Deposit, D05T0016.OriginalReduce,  
    D05T0016.RateReduce, D05T0016.ReduceMethod, D05T0016.SalesVoucherID,  
    D05T0016.CustomerName'+@U+' AS CustomerName,   
    D05T0016.ShiftID, D05T0016.StatusPrint,  
    D05T0016.ExchangeRate, D05T0016.Operator, D05T0016.TranTypeID, T22.IssueTranType,  
    D05T0016.VoucherDate, D05T0016.PaymentTermID, D05T0016.PaymentMethodID,  
    D05T0016.DeliveryMethodID, D05T0016.PriceListID, D05T0016.CReduce,  
    D05T0016.Description'+@U+' AS Description,   
    D05T0016.Locked, D05T0016.LockedUserID, D05T0016.LockedDate,  
    D05T0016.Pick, D05T0016.ShipAddressID, D05T0016.ShipAddress'+@U+' AS ShipAddress,  
    D05T0016.BankAccountNo, D05T0016.BankID, D05T0016.ApproveDate, D05T0016.ApproveNotes'+@U+' ASApproveNotes,  
    D05T0016.ApproveUser, D05T0016.VATObjectTypeID, D05T0016.VATObjectID,  
    D05T0016.VATObjectName'+@U+' AS VATObjectName, D05T0016.VATItemName'+@U+' AS VATItemName, D05T0016.VATNo,  
    D05T0016.StatusVoucher, D05T0016.ValidTo,  
    D05T0016.IsLC, D05T0016.MasterWareHouseID, D05T0016.ModuleID,  
    D05T0016.VATObjectAddress'+@U+' AS VATObjectAddress, D05T0016.InvoiceStatus, D05T0016.PreparedBy,  
    D05T0016.DataSource, D05T0016.AdjGroupID, D05T0016.SurveyorID, D05T0016.DebtManagerTypeID,  
    D05T0016.DebtManagerID, D05T0016.IsInvoicing, D05T0016.AStatus,  D05T0016.ProjectID, D05T0016.Disabled,  
    D05T0016.CreateUserID, D05T0016.CreateDate,  
    D05T0016.LastModifyDate, D05T0016.LastModifyUserID,   
    CASE WHEN RIGHT(status,1) = ''1'' THEN ''10''   
      WHEN RIGHT(LEFT(status,9),1) = ''1'' THEN ''9''  
      WHEN RIGHT(LEFT(status,8),1) = ''1'' THEN ''8''   
      WHEN RIGHT(LEFT(status,7),1) = ''1'' THEN ''7''     
      WHEN RIGHT(LEFT(status,6),1) = ''1'' THEN ''6''       
      WHEN RIGHT(LEFT(status,5),1) = ''1'' THEN ''5''      
      WHEN RIGHT(LEFT(status,4),1) = ''1'' THEN ''4''  
      WHEN RIGHT(LEFT(status,3),1) = ''1'' THEN ''3''    
      WHEN RIGHT(LEFT(status,2),1) = ''1'' THEN ''2''    
      WHEN RIGHT(LEFT(status,1),1) = ''1'' THEN ''1''     
    END AS StatusID,   
    CASE WHEN DeliveryQTy <> 0 THEN 1 ELSE 0 END AS SendedToD07,  
    D05T0016.QAStatus,  
    D05T0016.TransportID,D05T0016.TransportTypeID, '  
 SET @sSQL1 = N'     
     CONVERT(Int, 1) AS ApprovalLevel, CONVERT(NVARCHAR(100),'  
    + CASE WHEN @Language = '84'  
    THEN N'  
     CASE WHEN '+STR(@CodeTable)+ N' = 1  
       THEN    
       CASE WHEN D05T0016.AStatus = 1 OR D05T0016.AStatus = 90  
         THEN N''Duyệt - User: '' +D05T0016.ApproveUser  
         WHEN D05T0016.AStatus = 100  
         THEN N''Từ chối''  
         ELSE N''Chưa duyệt''  
       END   
      ELSE   
       CASE WHEN D05T0016.AStatus = 1 OR D05T0016.AStatus = 90  
         THEN ''Duyeät - User: '' +D05T0016.ApproveUser  
         WHEN D05T0016.AStatus = 100  
         THEN N''Töø choái''  
         ELSE ''Chöa duyeät''   
       END   
      END   
      '  
         
    ELSE N'   
     CASE WHEN D05T0016.AStatus = 1 OR D05T0016.AStatus = 90  
       THEN ''Approved - User: '' +D05T0016.ApproveUser  
       ELSE ''New''   
     END '  
    END + '   
    ) AS AStatusName,  
    D05T0016.IsVATPrice,  
    D05T0016.PAdjustmentListID AS AdjustmentListID,  
    D05T0016.MasterContractID, D05T0016.MasterContractNo, D05T0017.ExceedMaster,   
    CONVERT(DECIMAL(28,8),0) AS PrePaymentOAmount, CONVERT(DECIMAL(28,8),0) AS OverdueOAmount, CONVERT(DECIMAL(28,8),0) AS OAmountCalDiscount, CONVERT(TINYINT,0) AS  IsApplyPrePayment  
    ,D05T0016.SalesTypeID,  CONVERT(VARCHAR(4000),'''') AS  AsmAdjustmentListID , CONVERT(DECIMAL(28,8),0) AS MinPrePayOAmount, CONVERT(DECIMAL(28,8),0) AS ExtendDebtDay  
    , CONVERT(TINYINT, 0) AS IsLockPriceListID, CONVERT(VARCHAR(50), '''') AS DebtSettID, CONVERT(VARCHAR(50), '''') AS DebtSettVoucherNo  
  INTO  #D05P1652_Temp       
  FROM  D05T0016   
  LEFT JOIN #Tmp_D05T0017  D05T0017   
    ON D05T0016.QuotationID=D05T0017.QuotationID   
  LEFT JOIN D05T1022 T22 WITH(NOLOCK) ON T22.TranTypeID = D05T0016.TranTypeID  
  WHERE  D05T0016.QuotationID = '''+@QuotationID+'''   
     AND D05T0016.DivisionID = '''+@DivisionID+'''  
  
  '  
END  
  
ELSE  
  
BEGIN  
 SET @sSQL = @sSQL + '  
  SELECT  TOP 1   
    D05T0016.QuotationID, D05T0016.DivisionID, D05T0016.CustomerID,  
    D05T0016.ContactPerson'+@U+' AS ContactPerson, D05T0016.QuotationDate,   
    D05T0016.TranMonth, D05T0016.TranYear, D05T0016.DiscountID, D05T0016.CurrencyID,  
    D05T0016.EmployeeID, D05T0016.QuotationHeader'+@U+' AS QuotationHeader,  
    D05T0016.TradeTerms'+@U+' AS TradeTerms,   
    D05T0016.QuotationFooter'+@U+' AS QuotationFooter,  
    D05T0016.Closed, D05T0016.VoucherNum, VoucherTypeID,  
    D05T0016.Ref1'+@U+' AS Ref1, D05T0016.Ref2'+@U+' AS Ref2,   
    D05T0016.Ref3'+@U+' AS Ref3, D05T0016.Ref4'+@U+' AS Ref4, D05T0016.Ref5'+@U+' AS Ref5,  
    D05T0016.ProfessionKind, D05T0016.ObjectTypeID,  
    D05T0016.Status, D05T0016.BatchID, D05T0016.DueDate,  
    D05T0016.VoucherNo, D05T0016.Deposit, D05T0016.OriginalReduce,  
    D05T0016.RateReduce, D05T0016.ReduceMethod, D05T0016.SalesVoucherID,  
    D05T0016.CustomerName'+@U+' AS CustomerName,   
    D05T0016.ShiftID, D05T0016.StatusPrint,  
    D05T0016.ExchangeRate, D05T0016.Operator, D05T0016.TranTypeID,  
    D05T0016.VoucherDate, D05T0016.PaymentTermID, D05T0016.PaymentMethodID,  
    D05T0016.DeliveryMethodID, D05T0016.PriceListID, D05T0016.CReduce,  
    D05T0016.Description'+@U+' AS Description,   
    D05T0016.Locked, D05T0016.LockedUserID, D05T0016.LockedDate,  
    D05T0016.Pick, D05T0016.ShipAddressID, D05T0016.ShipAddress'+@U+' AS ShipAddress,  
    D05T0016.BankAccountNo, D05T0016.BankID, D05T0016.ApproveDate, D05T0016.ApproveNotes'+@U+' ASApproveNotes,  
    D05T0016.ApproveUser, D05T0016.VATObjectTypeID, D05T0016.VATObjectID,  
    D05T0016.VATObjectName'+@U+' AS VATObjectName, D05T0016.VATItemName'+@U+' AS VATItemName, D05T0016.VATNo,  
    D05T0016.StatusVoucher, D05T0016.ValidTo,   
    D05T0016.IsLC, D05T0016.MasterWareHouseID, D05T0016.ModuleID,  
    D05T0016.VATObjectAddress'+@U+' AS VATObjectAddress, D05T0016.InvoiceStatus, D05T0016.PreparedBy,  
    D05T0016.DataSource, D05T0016.AdjGroupID, D05T0016.SurveyorID, D05T0016.DebtManagerTypeID,  
    D05T0016.DebtManagerID, D05T0016.IsInvoicing, D05T0016.AStatus,  D05T0016.ProjectID, D05T0016.Disabled,  
    D05T0016.CreateUserID, D05T0016.CreateDate,  
    D05T0016.LastModifyDate, D05T0016.LastModifyUserID,   
    CASE WHEN RIGHT(status,1) = ''1'' THEN ''10''   
      WHEN RIGHT(LEFT(status,9),1) = ''1'' THEN ''9''  
      WHEN RIGHT(LEFT(status,8),1) = ''1'' THEN ''8''   
      WHEN RIGHT(LEFT(status,7),1) = ''1'' THEN ''7''     
      WHEN RIGHT(LEFT(status,6),1) = ''1'' THEN ''6''       
      WHEN RIGHT(LEFT(status,5),1) = ''1'' THEN ''5''      
      WHEN RIGHT(LEFT(status,4),1) = ''1'' THEN ''4''  
      WHEN RIGHT(LEFT(status,3),1) = ''1'' THEN ''3''    
      WHEN RIGHT(LEFT(status,2),1) = ''1'' THEN ''2''    
      WHEN RIGHT(LEFT(status,1),1) = ''1'' THEN ''1''     
    END AS StatusID,   
    CASE WHEN DeliveryQTy <> 0 THEN 1 ELSE 0 END AS SendedToD07,  
    D05T0016.QAStatus,  
    D05T0016.TransportID,D05T0016.TransportTypeID,  
    '  
SET @sSQL1 = N'     
     CONVERT(Int, 1) AS ApprovalLevel, CONVERT(NVARCHAR(100),'  
    + CASE WHEN @Language = '84'  
    THEN N'  
     CASE WHEN '+STR(@CodeTable)+ N' = 1  
       THEN    
       CASE WHEN D05T0016.AStatus = 1   
         THEN N''Duyệt - User: '' +D05T0016.ApproveUser   
         WHEN D05T0016.AStatus = 100  
         THEN N''Từ chối''  
         ELSE N''Chưa duyệt''   
       END   
      ELSE   
       CASE WHEN D05T0016.AStatus = 1   
         THEN ''Duyeät - User: '' +D05T0016.ApproveUser  
         WHEN D05T0016.AStatus = 100  
         THEN N''Töø choái''  
         ELSE ''Chöa duyeät''   
       END   
      END   
      '  
         
    ELSE N'   
     CASE WHEN D05T0016.AStatus = 1   
       THEN ''Approved - User: '' +D05T0016.ApproveUser  
       ELSE ''New''   
     END '  
    END + '   
    ) AS AStatusName,  
    D05T0016.IsVATPrice,  
    D05T0016.PAdjustmentListID AS AdjustmentListID,  
    D05T0016.MasterContractID, D05T0016.MasterContractNo, D05T0017.ExceedMaster, CONVERT(DECIMAL(28,8),0) AS PrePaymentOAmount, CONVERT(DECIMAL(28,8),0) AS OverdueOAmount, CONVERT(DECIMAL(28,8),0) AS OAmountCalDiscount, CONVERT(TINYINT,0) AS  IsApplyPreP
ayment  
    ,D05T0016.SalesTypeID, CONVERT(VARCHAR(4000),'''') AS  AsmAdjustmentListID , CONVERT(DECIMAL(28,8),0) AS MinPrePayOAmount, CONVERT(DECIMAL(28,8),0) AS ExtendDebtDay  
    , CONVERT(TINYINT, 0) AS IsLockPriceListID, CONVERT(VARCHAR(50), '''') AS DebtSettID, CONVERT(VARCHAR(50), '''') AS DebtSettVoucherNo   
  INTO  #D05P1652_Temp     
  FROM  D05T0016   
  LEFT JOIN #Tmp_D05T0017 D05T0017   
    ON D05T0016.QuotationID=D05T0017.QuotationID   
  WHERE  D05T0016.AdjGroupID = '''+@QuotationID+'''   
     AND D05T0016.DivisionID = '''+@DivisionID+'''  
  
  '  
END  
  
IF @Mode IN ( 0 , 2) ---- 2 : Ke thua  
BEGIN  
 SET @sSQL1 = @sSQL1 + '  
  IF EXISTS ( SELECT TOP 1 1 FROM #D05P1652_Temp T1 INNER JOIN D05T1022 T2 WITH(NOLOCK) ON T1.TranTypeID = T2.TranTypeID WHERE IsUsePrePayment = 1 )  ---- Neu co su dung thi moi update  
  BEGIN  
     SELECT  VoucherID,  
        FieldName,  
        NumValue,  
        StrValue,  
        DateValue  
     INTO  #PrePayment_TMP  
     FROM  D05T2041 WITH(NOLOCK)  
     WHERE  VoucherID = '''+@QuotationID+'''   
     AND   TypeID   = ''PrePayment''  
  
     UPDATE  #D05P1652_Temp  
     SET   PrePaymentOAmount = ISNULL (( SELECT TOP 1 NumValue  FROM #PrePayment_TMP WHERE FieldName = ''PrePaymentOAmount'' ),0),  
        IsApplyPrePayment = ISNULL (( SELECT TOP 1 NumValue FROM #PrePayment_TMP WHERE FieldName = ''IsApplyPrePayment'' ),0),  
        OverdueOAmount = ISNULL (( SELECT TOP 1 NumValue FROM #PrePayment_TMP WHERE FieldName = ''OverdueOAmount'' ),0),  
        OAmountCalDiscount = ISNULL (( SELECT TOP 1 NumValue FROM #PrePayment_TMP WHERE FieldName = ''OAmountCalDiscount'' ),0),  
        ExtendDebtDay = ISNULL (( SELECT TOP 1 NumValue FROM #PrePayment_TMP WHERE FieldName = ''ExtendDebtDay'' ),0)  
  END  
  
  IF EXISTS ( SELECT TOP 1 1 FROM D14T0000 WITH(NOLOCK) WHERE IsUseAssumption = 1 )  ---- Neu co su dung thi moi update  
  BEGIN  
     SELECT  VoucherID,  
        FieldName,  
        NumValue,  
        StrValue,  
        DateValue  
     INTO  #PromotionAsm_TMP  
     FROM  D05T2041 WITH(NOLOCK)  
     WHERE  VoucherID = '''+@QuotationID+'''   
     AND   TypeID   = ''PromotionAsm''  
  
     UPDATE  #D05P1652_Temp  
     SET   AsmAdjustmentListID = ISNULL (( SELECT TOP 1 StrValue  FROM #PromotionAsm_TMP WHERE FieldName = ''AsmAdjustmentListID'' ),''''),  
        MinPrePayOAmount = ISNULL (( SELECT TOP 1 NumValue FROM #PromotionAsm_TMP WHERE FieldName = ''MinPrePayOAmount'' ),0)  
  END  
  
  UPDATE A  
  SET IsLockPriceListID = 1  
  FROM #D05P1652_Temp A  
  INNER JOIN D49T2000 B  
    ON A.MasterContractID = B.ContractID  
    AND A.PriceListID = B.PriceListID  
  
 '  
END  
  
  
IF @Mode = 2  
BEGIN  
 SET @sSQL1 = @sSQL1 + '  
  UPDATE  #D05P1652_Temp  
  SET   #D05P1652_Temp.StatusID = 2  
  WHERE  QuotationID = '''+@QuotationID+'''   
     AND DivisionID = '''+@DivisionID+'''  
  
  --NGUYENLUAN(244379)  
  DELETE FROM D91T9009 WHERE Key01ID = ''D05F1621_Inherit'' AND FormID = ''D05F1621_Inherit''  
  INSERT INTO D91T9009 (HostID, FormID, Key01ID, Key02ID, Key03ID)  
  SELECT '''+@HostName+''' AS HostID, ''D05F1621_Inherit'' AS FormID , ''D05F1621_Inherit'' AS Key01ID, '''+@DivisionID+''' AS Key02ID, '''+@QuotationID+''' AS Key03ID  
 '  
END  
  
IF @Mode IN (0,1)  
BEGIN   
 SET @sSQL1 = @sSQL1 + '  
  UPDATE  T1  
  SET   T1.DebtSettID = T2.VoucherID, T1.DebtSettVoucherNo = T2.VoucherNo  
  FROM  #D05P1652_Temp T1  
  INNER JOIN D05T2185 T2 WITH(NOLOCK)  
    ON T1.QuotationID = T2.SOID    
 '  
END  
  
IF @IsApprovingProcess = 1   
BEGIN   
SET @sSQL2 = @sSQL2 +   
  N'   
  SELECT DISTINCT T84.VoucherID AS QuotationID, T84.ApproverID, T84.ApprovalStatus, T84.ApprovalLevel  
  INTO #D05P1652_T84  
  FROM D84T2000 T84 WITH (NOLOCK)   
  INNER JOIN #D05P1652_Temp TMP ON TMP.QuotationID = T84.VoucherID AND TMP.ApproveUser = T84.ApproverID  
    
  UPDATE A   
  SET A.AStatusName = '  
       + CASE WHEN @Language = '84'  
         THEN N'  
         CASE WHEN '+STR(@CodeTable)+ N' = 1  
           THEN    
            CASE ISNULL(B.ApprovalStatus,0)   
            WHEN 1 THEN N''Duyệt (Cấp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.LastApproveUserID+ '')''  
            WHEN 100 THEN N''Từ chối (Cấp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.LastApproveUserID+ '')''  
            ELSE N''Chưa duyệt''  
            END  
           ELSE   
            CASE ISNULL(B.ApprovalStatus,0)   
            WHEN 1 THEN ''Duyeät (Caáp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.LastApproveUserID+ '')''  
            WHEN 100 THEN ''Töø choái (Caáp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.LastApproveUserID+ '')''  
            ELSE ''Chöa duyeät''  
            END  
           END '     
        ELSE '   
          CASE ISNULL(B.ApprovalStatus,0)   
            WHEN 1 THEN N''Approved (level '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.LastApproveUserID+ '')''  
            WHEN 100 THEN N''Cancel (level '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.LastApproveUserID+ '')''  
            ELSE N''New''  
          END    
          '        
        END + '   
  FROM #D05P1652_Temp A   
  INNER JOIN (  
    SELECT  C.QuotationID, C.LastApproveLevel, D.ApproverID AS LastApproveUserID,  
      D.ApprovalStatus, D.ApprovalLevel  
    FROM (  
     SELECT QuotationID, MAX(ApprovalLevel) LastApproveLevel  
     FROM #D05P1652_T84  
     WHERE ApprovalStatus <> 0     
     GROUP BY QuotationID  
     ) C   
    INNER JOIN #D05P1652_T84 D ON  C.QuotationID = D.QuotationID   
          AND C.LastApproveLevel = D.ApprovalLevel  
   ) B ON A.QuotationID = B.QuotationID   
     
  '  
END  
  
---- Neu co thiet lap su dung quy trinh duyet DH dieu chinh thi khi them moi phieu dieu chinh, update trang thai phieu la nhan don hang va update thong tin duyet  
IF @IsApprovingProcessSOAdj = 1 AND @FormID = 'D05F2125'  
BEGIN   
 IF @Mode = 0   
 BEGIN   
  SET @sSQL2 = @sSQL2 + N'  
   UPDATE  #D05P1652_Temp  
   SET   Status = ''0100000000'',     
      StatusID = ''2'',       
      AStatus = 0,  
      ApproveUser = '''',  
      AStatusName = '+ CASE WHEN @Language = '84' THEN N'CASE WHEN '+STR(@CodeTable)+ N' = 1 THEN N''Chưa duyệt'' ELSE ''Chöa duyeät'' END '     
           ELSE ' N''New'' ' END +',  
      ApproveDate = NULL  
   WHERE  QuotationID = '''+@QuotationID+'''   
     AND DivisionID = '''+@DivisionID+'''  
  '  
 END  
  
 IF @Mode = 1  
 BEGIN  
  SET @sSQL2 = @sSQL2 + N'   
   SELECT  T05.QuotationID, T05.ApproveUser, T84.ApprovalStatus AS AStatus, MAX(T84.ApprovalLevel) AS ApprovalLevel  
   INTO  #D05P1652_T84_1  
   FROM  D84T2000 T84 WITH(NOLOCK)   
   INNER JOIN D05T0016 T05 WITH(NOLOCK)  
     ON T84.VoucherID = T05.AdjGroupID  
   WHERE  T84.VoucherID = '''+@QuotationID+'''  
     AND T84.ApprovalStatus <> 0   
   GROUP BY T05.QuotationID, T05.ApproveUser, T84.ApprovalStatus  
  
   UPDATE  A   
   SET   A.AStatusName = '+ CASE WHEN @Language = '84' THEN N'  
            CASE WHEN '+STR(@CodeTable)+ N' = 1  
              THEN    
              CASE ISNULL(B.AStatus,0)   
                WHEN 0 THEN N''Chưa duyệt''  
                WHEN 100 THEN N''Từ chối (Cấp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.ApproveUser+ '')''  
                ELSE N''Duyệt (Cấp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.ApproveUser+ '')''  
                END  
              ELSE   
              CASE ISNULL(B.AStatus,0)   
                WHEN 0 THEN ''Chöa duyeät''   
                WHEN 100 THEN ''Töø choái (Caáp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.ApproveUser+ '')''  
                ELSE ''Duyeät (Caáp '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.ApproveUser+ '')''  
                END  
              END '     
          ELSE '   
             CASE ISNULL(B.AStatus,0)   
               WHEN 0 THEN N''New''   
               WHEN 100 THEN N''Cancel (Level '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.ApproveUser+ '')''  
               ELSE N''Approved (Level '' + LTRIM(RTRIM(STR(ISNULL(B.ApprovalLevel,0)))) + '' - User: '' +B.ApproveUser+ '')''  
             END  '  
          END +'   
   FROM  #D05P1652_Temp A   
   INNER JOIN #D05P1652_T84_1 B WITH(NOLOCK)  
     ON A.QuotationID = B.QuotationID   
  '  
 END  
END  
  
--PRINT(@sSQL)  
--PRINT(@sSQL1)  
--PRINT(@sSQL2)  
    
EXEC (@sSQL + @sSQL1 + @sSQL2 + 'SELECT * FROM #D05P1652_Temp' )  
  
  
  
  
  
  
  
  
  
  
  
  
  
  