  
  
  
  
  
  
  
  
  
  
-- D05P0007   
-- <Summary>  
---- Load du lieu cho combo Trang thai  
-- <Param>  
----   
-- <Return>  
----   
-- <Reference>  
---- Nghiep vu\ Don hang   
---- Truy van \ Don hang \ Dieu chinh  
-- <History>  
---- Create on 19/11/2013 by Bao Chi (61095): Thay cau SELECT ben ngoai code thanh Store  
----   
---- Modified on 11/12/2013 by Bao Chi (ID 61881) Trang thai duyet  
---- Modified on 07/07/2015 by Vu Thi Tho (ID 76110 ) Bo sung do nguon cho textbox Trang thai duyet man hinh Chao gia  
---- Modified on 17/08/2015 by Vu Thi Tho (ID 77542 ) Bo sung phan quyen man hinh D05F5631  
---- Modified on 19/07/2017 by Bao Tran (99814): Bo sung Astatusname  
---- Modified on 27/05/2019 by TUYETMY (120120): Chinh sua hien thi trang thai duyet phieu bao gia Them moi (QAStatus)  
---- Modified on 05/11/2019 by THANHTUYEN (123394): Bo sung do nguon trang thai khach hang (CStatus)  
---- Modified on 22/11/2019 by Bich Thuan (126422): Chi sua trang thai duyet cua Bao gia QAStatus  
---- Modified on 07/01/2022 by MYLAI (211508): Bo sung combo Trang thai duyet   
---- Modified on 18/04/2022 by THAONGUYEN (231012): Bo sung combo Trang thai don hang tai man hinh D05F1621, bo sung IsUseEnteringStatus  
---- Modified on 23/10/2022 by NGOCTHAO (250425): Bo sung do nguon trang thai Duyet so luong (QAStatusDetail)  
---- Modified on 24/06/2024 by THAONGUYEN (280247): Bo sung chi do nguon trang thai don hang hien tai theo thiet lap dac thu cho phep sua don hang khi duyet  
---- Modified on 04/10/2024 by TRUONGGIANG (284619): Bo sung trang thai huy phan quyen theo man hinh D05F1603 @PermissionD05F1603  
---- Modified on 20/11/2024 by KHATUAN (): Fix loi combo trang trai  
-- <Example>  
---- EXEC D05P0007 'AStatus', 'TUONGAN', 'LEMONADMIN', '84', 1, ''  
---- Exec D05P0007 'AStatus', 'TUONGAN', 'LEMONADMIN', '84', 1, '05MQ0N000000159'  
---- EXEC D05P0007 'QAStatus', 'TUONGAN', 'LEMONADMIN', '84', 1, '05MQ0Y000000040'  
  
CREATE PROCEDURE D05P0007  
 @Type AS VARCHAR(20), -- Truyen mac dinh la 'AStatus', 'QAStatus' : Man hinh Chao gia  
   @DivisionID AS VARCHAR(20),  
   @UserID AS VARCHAR(20),  
   @Language AS VARCHAR(2),  
   @CodeTable TINYINT,   
   @QuotationID AS VARCHAR(20),--   
   @PermissionD05F5631 INT = 4  
  
AS   
SET NOCOUNT ON   
  
DECLARE @U VARCHAR(1)  
SET @U = CASE WHEN @CodeTable = 0 THEN '' ELSE 'U' END  
  
DECLARE @StrSQL AS NVARCHAR(4000)  
SELECT @StrSQL = N''  
  
DECLARE @Status AS INT  
  
DECLARE @PermissionD05F1631  TINYINT,  
  @IsApprovingProcess TINYINT,  
  @IsApprovingProcessQO TINYINT,  
  @IsApproveQuotations TINYINT,  
  @IsUseEnteringStatus TINYINT = 0   
  ,@PermissionD05F1603 TINYINT = 0,  
  @IsCustomerApprovalSO TINYINT = 0  
    
SELECT @PermissionD05F1631 = CASE WHEN T01.Permission < 2 THEN 0 ELSE 1 END  
FROM lemonsys.dbo.D00V0001 T01  
WHERE T01.UserID = @UserID  
  AND T01.ScreenID = 'D05F1631'     
  AND T01.ModuleID = 'D05'  
  AND T01.CompanyID = DB_NAME()  
  
SELECT @IsApprovingProcess = IsApprovingProcess,  
  @IsApprovingProcessQO = IsApprovingProcessQO,  
  @IsApproveQuotations = IsApproveQuotations,  
  @IsUseEnteringStatus = IsUseEnteringStatus   
FROM D05T0100  
  
--Dac thu Cong Thanh  
SELECT @IsCustomerApprovalSO = Value FROM D91T9130 WHERE Customize = 'IsCustomerApprovalSO'  
  
----Bo sung phan quyen theo man hinh D05F1603 (ID:284619 - line 135 - 136)  
SELECT  @PermissionD05F1603 = T1.Permission  
FROM  LEMONSYS..D00T0141 T1   
INNER JOIN LEMONSYS..D00T0131 T2  
  ON T1.RightID = T2.RightID  
INNER JOIN LEMONSYS..D00T0031 T3   
  ON T2.AccessID = T3.AccessID  
  AND T3.CompanyID = DB_NAME()  
  AND T1.ScreenID IN ('D05F1603')  
  AND T3.UserID = @UserID  
  
IF @QuotationID = '' -- Them moi  
BEGIN    
  
 IF @Type = 'AStatus'  
 BEGIN   
  IF @IsApprovingProcess = 0  
  BEGIN   
  SET @StrSQL = @StrSQL + N'  
   SELECT StatusID AS ID, '  
     + CASE WHEN @Language = '84'   
     THEN ' StatusName'+@U+' '  
     ELSE ' StatusName01'+@U+' '   
     END +   
     '  AS Name,   
       
     CASE WHEN '+STR(@PermissionD05F1631)+' = 0 AND '+STR(@IsUseEnteringStatus)+' = 0  
      THEN CASE WHEN StatusID = 2 THEN 1 ELSE 0 END  
      WHEN '+STR(@PermissionD05F1631)+' = 0 AND '+STR(@IsUseEnteringStatus)+' = 1  
      THEN CASE WHEN StatusID = 4 THEN 1 ELSE 0 END  
      ELSE CASE WHEN StatusID = 3 THEN 1 ELSE 0 END  
     END AS  StatusDefault ,  
       
     CONVERT(NVARCHAR(100), '  
     + CASE WHEN @Language = '84'   
     THEN CASE WHEN @CodeTable = 1   
       THEN N' CASE WHEN StatusID = 3 THEN N''Duyệt''             
                  ELSE N''Chưa duyệt''  END '  
       ELSE ' CASE WHEN StatusID = 3 THEN ''Duyeät''   
              ELSE ''Chöa duyeät''  END '  
       END  
     ELSE ' CASE WHEN StatusID = 3 THEN ''Approved''  
               ELSE ''New'' END '              
             
     END + ') AS AStatusName   
   FROM D05V1602   
   WHERE Type = ''AStatus''   
   '+ CASE WHEN @PermissionD05F1631 = 1 AND @IsUseEnteringStatus = 0 AND @IsCustomerApprovalSO = 0 THEN 'AND StatusID IN (2,3' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'  
     WHEN @PermissionD05F1631 = 1 AND @IsUseEnteringStatus = 1 AND @IsCustomerApprovalSO = 0 THEN 'AND StatusID IN (4,2,3' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'  
     WHEN @PermissionD05F1631 = 0 AND @IsUseEnteringStatus = 1 THEN 'AND StatusID IN (4,2' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'  
     ELSE 'AND StatusID IN (2' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')' END  
  
  END  
  ELSE -- @IsApprovingProcess = 1  
  BEGIN   
  SET @StrSQL = @StrSQL + N'  
   SELECT StatusID AS ID, '  
     + CASE WHEN @Language = '84'   
     THEN ' StatusName'+@U+' '  
     ELSE ' StatusName01'+@U+' '   
     END +   
     '  AS Name,   
       
  
     --CASE WHEN StatusID = 2 THEN 1 ELSE 0 END AS StatusDefault,   
     CASE WHEN '+STR(@IsUseEnteringStatus)+' = 1  
       THEN CASE WHEN StatusID = 4 THEN 1 ELSE 0 END        
       ELSE CASE WHEN StatusID = 2 THEN 1 ELSE 0 END   
     END AS StatusDefault,   
       
     CONVERT(NVARCHAR(100), N'  
     + CASE WHEN @Language = '84'   
     THEN CASE WHEN @CodeTable = 1   
       THEN N'''Chưa duyệt'' '   
       ELSE '''Chöa duyeät'''  
       END  
     ELSE '''New'''   
     END + ') AS AStatusName        
       
   FROM D05V1602   
   WHERE Type = ''AStatus''   
   '+ CASE WHEN @IsUseEnteringStatus = 1 THEN 'AND StatusID IN (4,2' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END +')'   
    ELSE 'AND StatusID IN (2' + CASE WHEN @PermissionD05F1603 >=2 THEN ',9' ELSE '' END + ')' END   
    
  END  
  
  PRINT @StrSQL  
  EXEC  (@StrSQL)  
  
 END  
 IF @Type ='QAStatus'  
 BEGIN  
  IF (@IsApprovingProcessQO = 1 OR @IsApproveQuotations = 1) AND @PermissionD05F5631 < 3  
  BEGIN  
   SET @StrSQL = @StrSQL + '  
    SELECT StatusID, 0 AS AStatus, '+ CASE WHEN @Language = '84' THEN +' StatusName'+@U+'' ELSE +'StatusName01'+@U+'' END +' AS AStatusName   
    FROM D05V1602   
    WHERE Type=''QAStatus'' AND StatusID = 0  
    '  
  END  
  ELSE  
  BEGIN  
   SET @StrSQL = @StrSQL + '  
    SELECT StatusID, 90 AS AStatus, '+ CASE WHEN @Language = '84' THEN +' StatusName'+@U+'' ELSE +'StatusName01'+@U+'' END +' AS AStatusName   
    FROM D05V1602   
    WHERE Type=''QAStatus'' AND StatusID = 1   
    UNION  
    SELECT StatusID, 0 AS AStatus, '+ CASE WHEN @Language = '84' THEN +' StatusName'+@U+'' ELSE +'StatusName01'+@U+'' END +' AS AStatusName   
    FROM D05V1602   
    WHERE Type=''QAStatus'' AND StatusID = 0  
    '  
  END   
  PRINT (@StrSQL)  
  EXEC (@StrSQL)  
     
 END  
  
END  
ELSE -- @QuotationID <> '' -- Sua, xem  
BEGIN   
 IF @Type = 'AStatus'  
 BEGIN   
  SELECT @Status = CASE WHEN RIGHT(LEFT(status,8),1) = '1' THEN '8'  
        WHEN RIGHT(LEFT(status,9),1) = '1' THEN CASE WHEN @PermissionD05F1603 >= 2 THEN '9' ELSE '' END  
        WHEN RIGHT(LEFT(status,3),1) = '1' THEN '3'   
        WHEN RIGHT(LEFT(status,2),1) = '1' THEN '2'   
        WHEN RIGHT(LEFT(status,1),1) = '1' THEN '1'           
            
                   
       END   
       FROM D05T0016 WITH (NOLOCK)         WHERE QuotationID = @QuotationID  
        AND Status <> '0111000000'  
        
  SELECT @Status = CASE WHEN RIGHT(LEFT(status,4),1) = '1' THEN '4' END   
  FROM D05T0016 WITH (NOLOCK)  
  WHERE QuotationID = @QuotationID  
    AND Status = '0111000000'  
  
  IF EXISTS (SELECT TOP 1 1 FROM D91T9130 WITH(NOLOCK) WHERE Customize = 'IsAllowEditSOApproval' AND Value = 1)  
  AND EXISTS (SELECT TOP 1 1 FROM D05T0016 WITH (NOLOCK) WHERE QuotationID = @QuotationID AND ProfessionKind = 'O' AND AStatus NOT IN (0, 100))  
  BEGIN   
   SET @StrSQL = @StrSQL + '  
    SELECT StatusID AS ID,  '  
      + CASE WHEN @Language = '84'   
      THEN ' StatusName'+@U+' '  
      ELSE ' StatusName01'+@U+' '   
      END +   
      '  AS Name,   
      0 AS StatusDefault ,  
      CONVERT(NVARCHAR(100), '  
      + CASE WHEN @Language = '84'   
      THEN CASE WHEN @CodeTable = 1   
        THEN N' CASE WHEN StatusID = 3 THEN N''Duyệt''             
                ELSE N''Chưa duyệt''  END '  
        ELSE ' CASE WHEN StatusID = 3 THEN ''Duyeät''   
               ELSE ''Chöa duyeät''  END '  
        END  
      ELSE ' CASE WHEN StatusID = 3 THEN ''Approved''  
             ELSE ''New'' END '              
             
      END + ') AS AStatusName, CASE WHEN StatusID = 4 THEN 0 ELSE 1 END AS DisplayOrder  
    FROM D05V1602   
    WHERE Type = ''AStatus''  
    AND  StatusID = '+STR(@Status)+'  
   '  
  END  
  ELSE  
  BEGIN  
   SET @StrSQL = @StrSQL + '  
    SELECT StatusID AS ID,  '  
      + CASE WHEN @Language = '84'   
      THEN ' StatusName'+@U+' '  
      ELSE ' StatusName01'+@U+' '   
      END +   
      '  AS Name,   
      0 AS StatusDefault ,  
      CONVERT(NVARCHAR(100), '  
      + CASE WHEN @Language = '84'   
      THEN CASE WHEN @CodeTable = 1   
        THEN N' CASE WHEN StatusID = 3 THEN N''Duyệt''             
                ELSE N''Chưa duyệt''  END '  
        ELSE ' CASE WHEN StatusID = 3 THEN ''Duyeät''   
               ELSE ''Chöa duyeät''  END '  
        END  
      ELSE ' CASE WHEN StatusID = 3 THEN ''Approved''  
             ELSE ''New'' END '              
             
      END + ') AS AStatusName, CASE WHEN StatusID = 4 THEN 0 ELSE 1 END AS DisplayOrder  
    FROM D05V1602   
    WHERE Type = ''AStatus''  
    AND  StatusID = '+STR(@Status)+'  
     
    UNION  
    '  
    
   IF @IsApprovingProcess = 0  
   BEGIN   
   SET @StrSQL = @StrSQL + '  
    SELECT StatusID AS ID,  '  
      + CASE WHEN @Language = '84'   
      THEN ' StatusName'+@U+' '  
      ELSE ' StatusName01'+@U+' '   
      END +   
      '  AS Name,   
      0 AS StatusDefault  ,  
      CONVERT(NVARCHAR(100), '  
      + CASE WHEN @Language = '84'   
      THEN CASE WHEN @CodeTable = 1   
        THEN N' CASE WHEN StatusID = 3 THEN N''Duyệt''             
                ELSE N''Chưa duyệt''  END '  
        ELSE ' CASE WHEN StatusID = 3 THEN ''Duyeät''   
               ELSE ''Chöa duyeät''  END '  
        END  
      ELSE ' CASE WHEN StatusID = 3 THEN ''Approved''  
             ELSE ''New'' END '              
             
      END + ') AS AStatusName, CASE WHEN StatusID = 4 THEN 0 ELSE 1 END AS DisplayOrder  
    FROM D05V1602   
    WHERE Type = ''AStatus''   
    '+ CASE WHEN @PermissionD05F1631 = 1 AND @IsUseEnteringStatus = 0 THEN 'AND StatusID IN (2,3' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'  
      WHEN @PermissionD05F1631 = 1 AND @IsUseEnteringStatus = 1 THEN 'AND StatusID IN (4,2,3' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'  
      WHEN @PermissionD05F1631 = 0 AND @IsUseEnteringStatus = 1 THEN 'AND StatusID IN (4,2' + CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'  
      ELSE 'AND StatusID IN (2'+ CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')' END+'  
    ORDER BY DisplayOrder  
      '  
     
   END  
   ELSE -- @IsApprovingProcess = 1  
   BEGIN   
   SET @StrSQL = @StrSQL + '  
    SELECT StatusID AS ID,  '  
      + CASE WHEN @Language = '84' THEN ' StatusName'+@U+' ' ELSE ' StatusName01'+@U+' '  END + ' AS Name,   
      0 AS StatusDefault , CONVERT(NVARCHAR(100), '  
      + CASE WHEN @Language = '84' THEN CASE WHEN @CodeTable = 1   
         THEN N' CASE WHEN StatusID = 3 THEN N''Duyệt''             
                 ELSE N''Chưa duyệt''  END '  
         ELSE ' CASE WHEN StatusID = 3 THEN ''Duyeät''   
                ELSE ''Chöa duyeät''  END '  
         END  
      ELSE ' CASE WHEN StatusID = 3 THEN ''Approved''  
             ELSE ''New'' END '              
      END + ') AS AStatusName, CASE WHEN StatusID = 4 THEN 0 ELSE 1 END AS DisplayOrder   
    FROM D05V1602   
    WHERE Type = ''AStatus''   
    '+ CASE WHEN @IsUseEnteringStatus = 1 THEN 'AND StatusID IN (4,2'+ CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'  
       ELSE 'AND StatusID IN (2'+ CASE WHEN @PermissionD05F1603 >= 2 THEN ',9' ELSE '' END + ')'END +'  
    ORDER BY DisplayOrder  
    '   
   END  
  END  
  PRINT @StrSQL  
  EXEC  (@StrSQL)  
  
 END  
 IF @Type ='QAStatus'  
 BEGIN  
  SET @StrSQL = @StrSQL + '  
   SELECT AStatus,  '  
     + CASE WHEN @Language = '84'   
        THEN CASE WHEN @CodeTable = 1   
           THEN N' CASE WHEN AStatus = 100 THEN N''Từ chối''  
               WHEN AStatus = 90 THEN N''Duyệt''             
               ELSE N''Chưa duyệt''  END '  
           ELSE ' CASE  WHEN AStatus = 100 THEN ''Töø choái''  
               WHEN AStatus = 90 THEN N''Duyeät''   
               ELSE ''Chöa duyeät''  END '  
          END  
       ELSE ' CASE WHEN AStatus = 0 THEN ''New''  
        WHEN AStatus = 90 THEN ''Approved''   
        ELSE ''Not Approved'' END '              
            
     END + ' AS AStatusName  
   FROM D05T0016 WITH(NOLOCK)  
   WHERE QuotationID = '''+@QuotationID+'''  
   '  
  PRINT (@StrSQL)  
  EXEC (@StrSQL)  
 END   
  
END  
  
IF @Type='CStatus'  
 BEGIN  
   
  SET @StrSQL = @StrSQL + '  
    SELECT StatusID, '+ CASE WHEN @Language = '84' THEN +' StatusName'+@U+'' ELSE +'StatusName01'+@U+'' END +' AS AStatusName   
    FROM D05V1604  
    WHERE Type=''CStatus''   
    '  
  PRINT (@StrSQL)  
  EXEC (@StrSQL)  
  RETURN  
 END  
  
----- Combo Duyet so luong  
IF @Type='QAStatusDetail'  
 BEGIN  
   
  SET @StrSQL = @StrSQL + '  
    SELECT StatusID, '+ CASE WHEN @Language = '84' THEN +' StatusName'+@U+'' ELSE +'StatusName01'+@U+'' END +' AS AStatusName   
    FROM D05V2310  
    WHERE Type=''QAStatusDetail''   
    '  
  PRINT (@StrSQL)  
  EXEC (@StrSQL)  
  RETURN  
 END  
  
-- Combo Trang thai Don hang tai D05F1621  
IF @Type = 'Status_D05F1621'  
BEGIN  
 SET @StrSQL = @StrSQL + '  
  SELECT  ''%'' AS IDKey, '+N'N''<Tất cả>'' AS IDName, 0 AS DisplayOrder   
  '+ CASE WHEN @IsUseEnteringStatus = 1 THEN '  
  UNION ALL  
  SELECT  ''4'' AS IDKey, IDNameU AS IDName, 1 AS DisplayOrder   
  FROM  D05T7777 WITH (NOLOCK)   
  WHERE  IDKey = ''12''  
    AND Type1 = ''O'' AND Type2 = ''0'' AND Type3 = ''0'' AND FormName = ''D05F1621''    
  ' ELSE '' END +'  
  UNION ALL   
  SELECT  IDKey, IDNameU AS IDName, 1 AS DisplayOrder   
  FROM  D05T7777 WITH (NOLOCK)   
  WHERE  IDKey IN (''2'',''3'',''8'',''9'')   
    AND Type1 = ''O'' AND Type2 = ''0'' AND Type3 = ''0'' AND FormName = ''D05F0300''    
  '  
 PRINT (@StrSQL)  
 EXEC (@StrSQL)  
 RETURN  
END  
  
  
  
  
  
  
  