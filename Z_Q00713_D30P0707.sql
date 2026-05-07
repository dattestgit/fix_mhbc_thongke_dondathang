--IF EXISTS (SELECT TOP 1 1 FROM DBO.SYSOBJECTS WITH(NOLOCK) WHERE ID = OBJECT_ID(N'[DBO].[Z_Q00713_D30P0707]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
--DROP PROCEDURE [DBO].[Z_Q00713_D30P0707]
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_NULLS ON
--GO
--sp_helptext 'Z_Q00713_D30P0707'



-- <Summary>
---- Z_Q00713_D30F0707
-- <Param>
---- 
-- <Return>
---- 
-- <Reference>
---- D05 \ Thong ke phan tich \ *Thong ke don hang ban - Z_Q00713_D30F0707
-- <History>
---- Create on 04/05/2026 by DATNGUYEN(ID313226)
---- 
---- Modified on 04/05/2026 by DATNGUYEN(ID313226)
-- <Example>
---- LoadLocationNo: EXEC Z_B00107_D07P3021  N'%', 1, N'10/2022', N'10/2022', 0, '09/29/2022', '09/29/2022', N'(''%'')', N'(''DUNGLO002'';''DUNGLO001'')', N'%', N'(''%'')', N'(''%'')', N'%', '09/29/2022', 'LEMONADMIN', 'F51DCST0231', 1, '84', 0, 'LoadLocationNo' 
---- LoadTimelineExpDate: EXEC Z_B00107_D07P3021  N'%', 1, N'10/2022', N'10/2022', 0, '09/29/2022', '09/29/2022', N'(''%'')', N'(''%'')', N'', N'()', N'(''%'')', N'', '09/29/2022', 'LEMONADMIN', 'F51DCST0231', 1, '84', 0, 'LoadTimelineExpDate' 
---- Generate Column: EXEC Z_B00107_D07P3021  N'%', 1, N'01/2022',N'08/2022', 0, '09/05/2022', '09/05/2022', 0, '09/05/2022', '09/05/2022', '09/05/2022', 1, 0, N'KH', N'(''CCT134'')', N'(''HK0078'')', N'%', N'(''%'')', 'LEMONADMIN', 'F51DCST0231', 1, '84', 0 
---- Query data: EXEC Z_B00107_D07P3021  N'%', 1, N'10/2022', N'10/2022', 0, '09/29/2022', '09/29/2022', N'(''%'')', N'(''DUNGLO001'';''DUNGLO002'')', N'%', N'(''%'')', N'(''%'';''DUNGLO003-0822-001'';''DUNGLO001-0722-001'';''DUNGLO002-0722-001'')', N'%', '09/29/2022', 'LEMONADMIN', 'F51DCST0231', 1, '84',1, 'LoadData' 
----


ALTER PROCEDURE Z_Q00713_D30P0707
( 
	@DivisionID				VARCHAR(50) = '',
	@IsPeriod				TINYINT = 0,
	@PeriodFrom				VARCHAR(50) = '',
	@PeriodTo				VARCHAR(50) = '',
	@IsRDVoucherDate		TINYINT = 0,	---- Cho phep loc theo ngay ph
	@DateRDVoucherDateFrom	DATETIME = '',		---- Ngay hop dong tu
	@DateRDVoucherDateTo	DATETIME = '',	---- Ngay hop dong Den
	@Mode					TINYINT = 0 ,
	@VoucherNo				VARCHAR(Max) = ''
) 
AS 
SET NOCOUNT ON

DECLARE		@SQLGenCol00 NVARCHAR(4000),
			@SQLGenCol01 NVARCHAR(4000),
			@SQLGenCol02 NVARCHAR(4000),
			@SQLGenCol03 NVARCHAR(4000),
			@SQLGenCol04 NVARCHAR(4000),
			@SQLCreTble NVARCHAR(4000),
			@SQL00 NVARCHAR(4000),
			@SQL01 NVARCHAR(4000),
			@SQL02 NVARCHAR(4000),		
			@SQL03 NVARCHAR(4000),
			@SQL04 NVARCHAR(4000),
			@SQL05 NVARCHAR(4000),
			@SQL06 NVARCHAR(MAX),
			@SQL07 NVARCHAR(MAX),
			@SQL08 NVARCHAR(MAX),
			@SQL09 NVARCHAR(MAX),
			@SQL10 NVARCHAR(MAX),
			@U  VARCHAR(1),
			@FromMonth		TINYINT,
			@FromYear		INT,
			@ToMonth		TINYINT,
			@ToYear			INT
DECLARE @D90_ConvertedDecimals TINYINT, @D07_QuantityDecimals TINYINT, @D07_UnitCostDecimals TINYINT, 
		@UnitPriceDecimal AS TINYINT,
		@OriginalDecimal	TINYINT,
		@ConvertedDecimal	TINYINT
SELECT	@D90_ConvertedDecimals = D90_ConvertedDecimals,
		@D07_QuantityDecimals = D07_QuantityDecimals,
		@D07_UnitCostDecimals = D07_UnitCostDecimals
FROM D91T0025 WITH(NOLOCK)
SELECT	@UnitPriceDecimal = UnitPriceDecimals,
		@OriginalDecimal = OriginalDecimal,
		@ConvertedDecimal = ConvertedDecimal
FROM	D91V0010 WHERE CurrencyID = 'VND'
SET	@SQLGenCol00= N''
SET	@SQLGenCol01= N''
SET	@SQLGenCol02= N''
SET	@SQLGenCol03= N''
SET @SQLGenCol04 =N''
SET @SQLCreTble	= N''
SET	@SQL00		= N''
SET	@SQL01		= N''
SET	@SQL02		= N''
SET	@SQL03		= N''
SET	@SQL04		= N''
SET	@SQL05		= N''
SET	@SQL06		= N''
SET	@SQL07		= N''
SET	@SQL08		= N''
SET	@SQL09		= N''
SET	@SQL10		= N''
SET	@FromMonth	= LEFT(@PeriodFrom,2)
SET	@FromYear	= RIGHT(@PeriodFrom,4)
SET	@ToMonth	= LEFT(@PeriodTo,2)
SET	@ToYear		= RIGHT(@PeriodTo,4)

DECLARE @DirectorName AS NVARCHAR(1000)
DECLARE @ChiefAccountantName AS NVARCHAR(1000)
DECLARE @DivisionName AS NVARCHAR(1000)

DECLARE 	@PeriodField VARCHAR(2000),
			@FromPeriod  VARCHAR(2000),
			@ToPeriod VARCHAR(2000)

SELECT 	@PeriodField = CASE WHEN @IsPeriod = 1 THEN 'TranMonth+TranYear*100' ELSE 'RDVoucherDate' END,
		@FromPeriod = CASE WHEN @IsPeriod = 1 THEN LTRIM(RTRIM(STR(@FromMonth+@FromYear*100))) ELSE ''''+CONVERT(VARCHAR(10), @DateRDVoucherDateFrom, 101)+'''' END,
		@ToPeriod = CASE WHEN @IsPeriod = 1 then LTRIM(RTRIM(STR(@ToMonth+@ToYear*100))) ELSE ''''+CONVERT(VARCHAR(10), @DateRDVoucherDateTo, 101)+'''' END

IF @Mode = 0
BEGIN
		SET @SQLGenCol00 = N'
		CREATE TABLE #StructTable
		(
		   Level			TINYINT, 
		   ParentNodeID		VARCHAR(50),
		   CaptionID		VARCHAR(50),
		   CaptionName		NVARCHAR(500),
		   FieldName		VARCHAR(50),
		   ColMergeNum		TINYINT, 
		   RowMergeNum		TINYINT,
		   ColID			TINYINT,
		   IsLocked			TINYINT,
		   DataFormat		VARCHAR(50),
		   Length			INT,
		   DataType			VARCHAR(50),
		   ControlType		VARCHAR(50),
		   DisplayOrder		INT IDENTITY(1, 1),
		   Expression		VARCHAR(1000),
		   DefaultValues	VARCHAR(1000),
		   SumFooter		VARCHAR(50),
		   IsHide			TINYINT DEFAULT(0),
		   DatatypeServer	VARCHAR(50),
		   Fix				NVARCHAR(50)		---Fix cung cot ''L''
		)	
	'
		SET @SQLGenCol01 = N'
		INSERT INTO #StructTable (Level, ParentNodeID, CaptionID, CaptionName, FieldName, ColMergeNum, RowMergeNum, ColID, DataType, Length, IsLocked, SumFooter, DatatypeServer, DataFormat, IsHide, Fix)	
		VALUES 
		(0, '''', ''OrderNo'', N''STT'', ''OrderNo'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''VoucherNo'', N''Đơn hàng'', ''VoucherNo'', 1, 2 , NULL, ''S'', 110, NULL, '''', ''NVARCHAR(250)'', NULL, 0,''''),
		(0, '''', ''VoucherDate'', N''Ngày nhận'', ''VoucherDate'', 1, 2 , NULL, ''S'', 90, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''Deliverydate'', N''Ngày giao'', ''Deliverydate'', 1, 2 , NULL, ''S'', 90, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''ObjectID'', N''Mã khách hàng'', ''ObjectID'', 1, 2 , NULL, ''S'', 150, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''ObjectName'', N''Khách hàng'', ''ObjectName'', 1, 2 , NULL, ''S'', 250, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''LengthValue'', N''Dài'', ''LengthValue'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''WidthValue'', N''Rộng'', ''WidthValue'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''HeightValue'', N''Cao'', ''HeightValue'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''Quantity'', N''Số lượng'', ''Quantity'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''KhoK'', N''Khổ K'', ''KhoK'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''KhoD'', N''Khổ D'', ''KhoD'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''StructureID'', N''Kết cấu'', ''StructureID'', 1, 2 , NULL, ''S'',250, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		(0, '''', ''WaveID'', N''Sóng'', ''WaveID'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,'''')

		--(0, '''', ''specifications1'', N''Dài'', ''specifications1'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''specifications2'', N''Rộng'', ''specifications2'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''specifications3'', N''Cao'', ''specifications3'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),


		--(0, '''', ''String01'', N''Sóng'', ''String01'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String02'', N''Khổ'', ''String02'', 1, 2 , NULL, ''S'', 80, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String03'', N''Kết cấu'', ''String03'', 1, 2 , NULL, ''S'',250, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String04'', N''Quy cách'', ''String04'', 1, 2 , NULL, ''S'', 110, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String05'', N''Quy cách bổ sung'', ''String05'', 1, 2 , NULL, ''S'', 110, NULL, '''', ''NVARCHAR(500)'', NULL, 0,'''')





		SELECT		*
		FROM		#StructTable
		ORDER BY	DisplayOrder

		DROP TABLE	#StructTable
		'
	

	--PRINT @SQLGenCol00
	--PRINT @SQLGenCol01
	--PRINT @SQLGenCol02
	--PRINT @SQLGenCol03
	--PRINT @SQLGenCol04
	--SELECT LEN(@SQLGenCol00)
	--SELECT LEN(@SQLGenCol01)
	--SELECT LEN(@SQLGenCol02)
	--SELECT LEN(@SQLGenCol03)
	--SELECT LEN(@SQLGenCol04)

	EXEC(@SQLGenCol00 + @SQLGenCol01 + @SQLGenCol02 + @SQLGenCol03 + @SQLGenCol04)
	RETURN
END

IF @Mode = 1 
BEGIN
SET @SQL00 = N'
--Cột 0: Đơn hàdng → Lấy Số đơn hàng bán
--Cột 1: Ngày nhận → Ngày phiếu của đơn hàng
--Cột 2: Ngày giao → Ngày Giao hàng trên lướt chi tiết
--Cột 3: Mã khách hàng -> Mã KH đơn hàng
--Cột 4: Quy cách mặt hàng Dài → Cắt chuỗi từ quy cách
--Cột 5: Quy cách mặt hàng Rộng → Cắt chuỗi từ quy cách
--Cột 6: Quy cách mặt hàng Cao → Cắt chuỗi từ quy cách
--VD: 35.5X60X15 Dài: 35.5 Rộng: 60 Cao: 15 ( Cách nhau bởi ký tự X)
--Cột 7: SLTT → Để trống
--Cột 8: SLKH → Số lượng của đơn hàng
--Cột 9: STT → Để trống
--Cột 10: Sóng → Thông tin phụ số 5 Đơn hàng
--Cột 11: Khổ → Để trống
--Cột 12: Kết cấu → Thông tin phụ số 4 Đơn hàng
--Cột 13: Quy cách → Để trống
--Cột 14: Quy cách bổ sung → Để trống
--Cột 15: Số lượng → Để trống
--Cột 16: Mặt C → Để trống
--Cột 17: Sóng C → Để trống
--Cột 18: Mặt B → Để trống
--Cột 19: Sóng B → Để trống
--Cột 20: Mặt E → Để trống
--Cột 21: Sóng E → Để trống
--Cột 22: Đáy in → Để trống
--Cột 23: S -> Để trống
--Cột 24: L → Để trống
--Cột 25: Mã lô → Để trống
--PaperSize
--135.00000000
--SpecGT01
--43.00000000
--S_Quantity	L_Quantity
--861.29990000	638.00000000
	select 1 AS OrderNo_,
		 VoucherNum AS VoucherNo,CONVERT(varchar,VoucherDate,103) AS VoucherDate ,CONVERT(varchar,T2.DeliveryDate,103) AS Deliverydate,CustomerID AS ObjectID,CONVERT(Nvarchar(500),'''') AS ObjectName
		, CASE WHEN CHARINDEX(''X'', T2.Spec01ID) - 1 = - 1 THEN '''' ELSE  CONVERT(nvarchar,LEFT(T2.Spec01ID, CHARINDEX(''X'', T2.Spec01ID) - 1)) END as specifications1
		, CONVERT(nvarchar,'''') as specifications2
		,CASE WHEN CHARINDEX(''X'', T2.Spec01ID) - 1 = -1 THEN '''' ELSE CONVERT(nvarchar,right(T2.Spec01ID, CHARINDEX(''X'', REVERSE(T2.Spec01ID)) - 1)) END as specifications3
		,CONVERT(decimal,T4.ExOQuantity) QuantityTT
		,T2.Spec01ID
		,CONVERT(decimal,T2.CQuantity) QuantityKH
		,CONVERT(decimal,T4.NUM01) OrderNo
		,CONVERT(nvarchar,DRef5U) String01
		,CONVERT(decimal,round(T4.PaperSize,0)) String02
		,CONVERT(nvarchar,DRef4U) String03
		,CONVERT(decimal,round(T4.SpecGT01,2))  as String04
		,CONVERT(decimal,round(T4.SpecGT02,2)) as String05
		,CONVERT(decimal,round(T4.PaperQuantity,2)) Quantity
		,CONVERT(nvarchar,'''') String06
		,CONVERT(nvarchar,'''') String07
		,CONVERT(nvarchar,'''') String08
		,CONVERT(nvarchar,'''') String09
		'
SET @SQL01 = N'
		,CONVERT(nvarchar,'''') String10
		,CONVERT(nvarchar,'''') String11

		,CONVERT(decimal,round(T4.S_Quantity,0))  String12
		,CONVERT(decimal,round(T4.L_Quantity,0))   String13

		,CONVERT(nvarchar,T2.InventoryID )+ ''_1'' LocationNo
		,CONVERT(nvarchar,'''' ) StringD
		,T4.ProOrderID
		,T3.Icode06ID AS Icode06
		,T1.ObjectTypeID
		INTO #D05T0016_1
		from D05T0016 T1
		INNER JOIN D05T0017 T2 ON T1.QuotationID = T2.QuotationID
		INNER JOIN D07T0002 T3 ON T2.InventoryID = T3.InventoryID
		INNER JOIN D31T2310 T4 ON T2.QuotationID = T4.SalesOrderID AND T2.QuotationItemID = T4.SalesOrderItemID

		WHERE 1 = 1 
		'+CASE WHEN @IsPeriod = 1 THEN 'AND ( T1.Tranmonth+Tranyear*100) BETWEEN '+@FromPeriod+' AND '+@ToPeriod+' '  ELSE '' END +'
		'+CASE WHEN @IsRDVoucherDate = 1 THEN 'AND CONVERT(NVARCHAR(500),VoucherDate,111) BETWEEN '''+CONVERT(NVARCHAR(500),@DateRDVoucherDateFrom,103)+''' AND '''+CONVERT(NVARCHAR(500),@DateRDVoucherDateTo,103)+''' '  ELSE '' END +'
		'+CASE WHEN @VoucherNo = '' THEN '' ELSE 'AND T1.VoucherNum = '''+@VoucherNo+''' ' END+'
		AND T1.ProfessionKind = ''O''
		UNION ALL
		select 2 AS OrderNo_,
		 VoucherNum AS VoucherNo,CONVERT(varchar,VoucherDate,103) AS VoucherDate ,CONVERT(varchar,T2.DeliveryDate,103) AS Deliverydate,CustomerID AS ObjectID,CONVERT(Nvarchar,'''') AS ObjectName
		, CASE WHEN CHARINDEX(''X'', T2.Spec01ID) - 1 = - 1 THEN '''' ELSE  CONVERT(nvarchar,LEFT(T2.Spec01ID, CHARINDEX(''X'', T2.Spec01ID) - 1)) END as specifications1
		, CONVERT(nvarchar,'''') as specifications2
		,CASE WHEN CHARINDEX(''X'', T2.Spec01ID) - 1 = -1 THEN '''' ELSE CONVERT(nvarchar,right(T2.Spec01ID, CHARINDEX(''X'', REVERSE(T2.Spec01ID)) - 1)) END as specifications3
		,CONVERT(decimal,T4.ExOQuantity) QuantityTT
		,T2.Spec01ID
		,CONVERT(decimal,T2.CQuantity) QuantityKH
		,CONVERT(decimal,T4.NUM01) OrderNo
		,CONVERT(nvarchar,DRef5U) String01
		,CONVERT(nvarchar,T4.PaperSize) String02
		,CONVERT(nvarchar,DRef4U) String03
		,CONVERT(nvarchar,T4.SpecGT01) String04
		,CONVERT(nvarchar,T4.SpecGT02) String05
		,CONVERT(decimal,T4.PaperQuantity) Quantity
		,CONVERT(nvarchar,'''') String06
		,CONVERT(nvarchar,'''') String07
		,CONVERT(nvarchar,'''') String08
		,CONVERT(nvarchar,'''') String09
		,CONVERT(nvarchar,'''') String10
		,CONVERT(nvarchar,'''') String11
		,CONVERT(nvarchar,T4.S_Quantity) String12
		,CONVERT(nvarchar,T4.L_Quantity) String13
		,CONVERT(nvarchar,T2.InventoryID )+ ''_1'' LocationNo
		,CONVERT(nvarchar,'''' ) StringD
		,T4.ProOrderID
		,T3.Icode06ID AS Icode06
		,T1.ObjectTypeID
		from D05T0016 T1
		INNER JOIN D05T0017 T2 ON T1.QuotationID = T2.QuotationID
		INNER JOIN D07T0002 T3 ON T2.InventoryID = T3.InventoryID
		INNER JOIN D31T2310 T4 ON T2.QuotationID = T4.SalesOrderID AND T2.QuotationItemID = T4.SalesOrderItemID
		
		WHERE 1 = 1 
		'+CASE WHEN @IsPeriod = 1 THEN 'AND ( T1.Tranmonth+Tranyear*100) BETWEEN '+@FromPeriod+' AND '+@ToPeriod+' '  ELSE '' END +'
		'+CASE WHEN @IsRDVoucherDate = 1 THEN 'AND CONVERT(NVARCHAR(500),VoucherDate,111) BETWEEN '''+CONVERT(NVARCHAR(500),@DateRDVoucherDateFrom,103)+''' AND '''+CONVERT(NVARCHAR(500),@DateRDVoucherDateTo,103)+''' '  ELSE '' END +'
		'+CASE WHEN @VoucherNo = '' THEN '' ELSE 'AND T1.VoucherNum = '''+@VoucherNo+''' ' END+'
		AND T1.ProfessionKind = ''O''
		'SET @SQL02= N'
		UNION ALL
		select 3 AS OrderNo_,
		 VoucherNum AS VoucherNo,CONVERT(varchar,VoucherDate,103) AS VoucherDate ,CONVERT(varchar,T2.DeliveryDate,103) AS Deliverydate,CustomerID AS ObjectID,CONVERT(Nvarchar,'''') AS ObjectName
		, CASE WHEN CHARINDEX(''X'', T2.Spec01ID) - 1 = - 1 THEN '''' ELSE  CONVERT(nvarchar,LEFT(T2.Spec01ID, CHARINDEX(''X'', T2.Spec01ID) - 1)) END as specifications1
		, CONVERT(nvarchar,'''') as specifications2
		,CASE WHEN CHARINDEX(''X'', T2.Spec01ID) - 1 = -1 THEN '''' ELSE CONVERT(nvarchar,right(T2.Spec01ID, CHARINDEX(''X'', REVERSE(T2.Spec01ID)) - 1)) END as specifications3
		,CONVERT(decimal,T4.ExOQuantity) QuantityTT
		,T2.Spec01ID
		,CONVERT(decimal,T2.CQuantity) QuantityKH
		,CONVERT(decimal,T4.NUM01) OrderNo
		,CONVERT(nvarchar,DRef5U) String01
		,CONVERT(nvarchar,T4.PaperSize) String02
		,CONVERT(nvarchar,DRef4U) String03
		,CONVERT(nvarchar,T4.SpecGT01) String04
		,CONVERT(nvarchar,T4.SpecGT02) String05
		,CONVERT(decimal,T4.PaperQuantity) Quantity
		,CONVERT(nvarchar,'''') String06
		,CONVERT(nvarchar,'''') String07
		,CONVERT(nvarchar,'''') String08
		,CONVERT(nvarchar,'''') String09
		,CONVERT(nvarchar,'''') String10
		,CONVERT(nvarchar,'''') String11
		,CONVERT(nvarchar,T4.S_Quantity) String12
		,CONVERT(nvarchar,T4.L_Quantity) String13
		,CONVERT(nvarchar,T2.InventoryID )+ ''_1'' LocationNo
		,CONVERT(nvarchar,'''' ) StringD
		,T4.ProOrderID
		,T3.Icode06ID AS Icode06
		,T1.ObjectTypeID
		from D05T0016 T1
		INNER JOIN D05T0017 T2 ON T1.QuotationID = T2.QuotationID
		INNER JOIN D07T0002 T3 ON T2.InventoryID = T3.InventoryID
		INNER JOIN D31T2310 T4 ON T2.QuotationID = T4.SalesOrderID AND T2.QuotationItemID = T4.SalesOrderItemID
		
		WHERE 1 = 1 
		'+CASE WHEN @IsPeriod = 1 THEN 'AND ( T1.Tranmonth+Tranyear*100) BETWEEN '+@FromPeriod+' AND '+@ToPeriod+' '  ELSE '' END +'
		'+CASE WHEN @IsRDVoucherDate = 1 THEN 'AND CONVERT(NVARCHAR(500),VoucherDate,111) BETWEEN '''+CONVERT(NVARCHAR(500),@DateRDVoucherDateFrom,103)+''' AND '''+CONVERT(NVARCHAR(500),@DateRDVoucherDateTo,103)+''' '  ELSE '' END +'
		'+CASE WHEN @VoucherNo = '' THEN '' ELSE 'AND T1.VoucherNum = '''+@VoucherNo+''' ' END+'
		AND T1.ProfessionKind = ''O''
		


			'SET @SQL03= N'
		
		UPDATE #D05T0016_1 
		SET specifications2 = CASE WHEN CHARINDEX(''X'', [Spec01ID]) - 1 = -1 THEN '''' ELSE CONVERT(nvarchar,SUBSTRING([Spec01ID], CHARINDEX(''X'', [Spec01ID]) + 1,  CHARINDEX(''X'', [Spec01ID], CHARINDEX(''X'', 
		[Spec01ID]) + 1) - CHARINDEX(''X'', [Spec01ID]) - 1 )) END
		WHERE  LEN(Spec01ID)  - LEN(REPLACE(Spec01ID, ''x'', ''''))  = 2

		select T3.LocationNo,T4.Lcode01ID,T3.CQuantity,T1.ProOrderID,MatFactor INTO #TUDT from #D05T0016_1 T1 INNER JOIN D31T2400 T2 ON T1.ProOrderID = T2.ProOrderID INNER JOIN D31T2410 T3 ON T2.MDOVoucherID = T3.MDOVoucherID
		INNER JOIN D07T1210 T4 ON T3.LocationNo = T4.LocationNo

--- 3 ký tự đầu cột Kết cấu (12) so với mã phân tích 1 lô của NVL, đưa mã Lô của NVL vào cột Đáy in (22) 
  --   - Ký tự 456 so với mã phân tích 1 lô của NVL, đưa mã Lô của NVL vào cột Sóng C (Cột 17) 
  --   - Ký tự 789 so với mã phân tích 1 lô của NVL, đưa mã Lô của NVL vào cột Mặt B (Cột 18) 
  --   - Ký tự 10,11,12 so với mã phân tích 1 lô của NVL, đưa mã Lô của NVL vào cột Sóng B (Cột 19) 
  --   - Ký tự 13,14,15 so với mã phân tích 1 lô của NVL, đưa mã Lô của NVL vào cột Mặt E ( Cột 20) 
  --   - Ký tự 16,17,18 so với mã phân tích 1 lô của NVL, đưa mã Lô của NVL vào cột Sóng E (Cột 21) 
  --   - Ký tự 19,20,21 so với mã phân tích 1 lô của NVL, đưa mã Lô của NVL vào cột Mặt C ( Cột 16) 
  --	(0, '''', ''String06'', N''Mặt C'', ''String06'', 1, 2 , NULL, ''S'', 150, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String07'', N''Sóng C'', ''String07'', 1, 2 , NULL, ''S'', 150, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String08'', N''Mặt B'', ''String08'', 1, 2 , NULL, ''S'', 150, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String09'', N''Sóng B'', ''String09'', 1, 2 , NULL, ''S'', 150, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String10'', N''Mặt E'', ''String10'', 1, 2 , NULL, ''S'', 150, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),
		--(0, '''', ''String11'', N''Sóng E'', ''String11'', 1, 2 , NULL, ''S'', 150, NULL, '''', ''NVARCHAR(500)'', NULL, 0,''''),


		UPDATE T1 
		SET T1.StringD = T2.LocationNo
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON LEFT(T1.String03,3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 1
		
		UPDATE T1 
		SET T1.StringD = Round(T2.CQuantity,0)
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON LEFT(T1.String03,3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 2



		UPDATE T1 
		SET T1.String07 = T2.LocationNo
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 4, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 1 and T2.MatFactor = 1.47


		UPDATE T1 
		SET T1.String07 = Round(T2.CQuantity,0)
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 4, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 2 and T2.MatFactor = 1.47

		
		UPDATE T1 
		SET T1.String08 = T2.LocationNo
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 7, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 1
		'SET @SQL04= N'
		UPDATE T1 
		SET T1.String08 = Round(T2.CQuantity,0)
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 7, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 2

		UPDATE T1 
		SET T1.String09 = T2.LocationNo
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 10, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 1 and T2.MatFactor = 1.4 

		UPDATE T1 
		SET T1.String09 = Round(T2.CQuantity,0)
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 10, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 2 and T2.MatFactor = 1.4 

		UPDATE T1 
		SET T1.String10 = T2.LocationNo
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 13, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 1

		UPDATE T1 
		SET T1.String10 = Round(T2.CQuantity,0)
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 13, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 2

		UPDATE T1 
		SET T1.String11 =T2.LocationNo
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 16, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 1 and T2.MatFactor = 1.36

		UPDATE T1 
		SET T1.String11 = Round(T2.CQuantity,0)
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 16, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 2 and T2.MatFactor = 1.36

		UPDATE T1 
		SET T1.String06 = T2.LocationNo
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 19, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 1

		UPDATE T1 
		SET T1.String06 = Round(T2.CQuantity,0)
		FROM #D05T0016_1 T1 
		INNER JOIN #TUDT T2 ON SUBSTRING(T1.String03, 19, 3) = T2.Lcode01ID and T1.ProOrderID = T2.ProOrderID AND OrderNo_ = 2

--Icode06 của mã hàng trên đơn hàng là 
--- CTMN : Thêm chữ "Chống Thấm" ở cột 22
--- CTMT : 
--     . Cột 10 ( Sóng) là C, hoặc BC: Thêm chữ "Chống Thấm" ở cột 16 ( Mặt C)
--     . Cột 10 ( Sóng) là B, BE : Thêm chữ "Chống Thấm" ở cột 18 ( Mặt B)
--- CT2M :Thêm chữ "Chống Thấm" ở cột 22
--      . Cột 10 ( Sóng) là C, hoặc BC: Thêm chữ "Chống Thấm" ở cột 16 ( Mặt C)
--      . Cột 10 ( Sóng) là B, BE : Thêm chữ "Chống Thấm" ở cột 18 ( Mặt B)


		UPDATE T1 
		SET T1.String06 = N''Chống thấm''
		FROM #D05T0016_1 T1 
		WHERE  OrderNo_ = 3 AND (String01 = ''C'' OR String01 = ''BC'' ) AND T1.Icode06 = ''CTMT''

		UPDATE T1 
		SET T1.String08 = N''Chống thấm''
		FROM #D05T0016_1 T1 
		WHERE  OrderNo_ = 3 AND (String01 = ''B'' OR String01 = ''BE'' ) AND T1.Icode06 = ''CTMT''

		UPDATE T1 
		SET T1.String08 = N''Chống thấm''
		FROM #D05T0016_1 T1 
		WHERE  OrderNo_ = 3 AND (String01 = ''B'' OR String01 = ''BE'' ) AND T1.Icode06 = ''CT2M''

		UPDATE T1 
		SET T1.String06 = N''Chống thấm''
		FROM #D05T0016_1 T1 
		WHERE  OrderNo_ = 3 AND (String01 = ''C'' OR String01 = ''BC'' ) AND T1.Icode06 = ''CTMT''


		UPDATE T1 
		SET T1.StringD = N''Chống thấm''
		FROM #D05T0016_1 T1 
		WHERE  OrderNo_ = 3 AND T1.Icode06 = ''CTMN''


		
		UPDATE T1 
		SET T1.ObjectName =  T2.ObjectNameU
		FROM #D05T0016_1 T1 INNER JOIN Object T2 ON T1.ObjectID = T2.ObjectID AND T1.ObjectTypeID = T2.ObjectTypeID

		
		
		SELECT SUBSTRING(String03, 19, 3) as String06_,SUBSTRING(String03, 16, 3) AS String11_,SUBSTRING(String03, 13, 3) AS String10_,SUBSTRING(String03, 10, 3) AS String09_,SUBSTRING(String03, 7, 3) AS String08_,SUBSTRING(String03, 4, 3) AS String07_, * 
		FROM #D05T0016_1 ORDER BY VoucherNo,OrderNo_
	'
	
	--SELECT LEN(@SQL00)
	--SELECT LEN(@SQL01)
	--SELECT LEN(@SQL02)
	--SELECT LEN(@SQL03)
	--SELECT LEN(@SQL04)
	--SELECT LEN(@SQL05)
	--SELECT LEN(@SQL06)
	--SELECT LEN(@SQL07)
	--SELECT LEN(@SQL08)
	--SELECT LEN(@SQL09)
	--SELECT LEN(@SQL10)

	PRINT @SQL00
	PRINT @SQL01
	PRINT @SQL02
	PRINT @SQL03
	PRINT @SQL04
	PRINT @SQL05
	PRINT @SQL06
	PRINT @SQL07
	PRINT @SQL08
	PRINT @SQL09
	PRINT @SQL10


	EXEC (@SQL00 + @SQL01 + @SQL02 + @SQL03 + @SQL04 + @SQL05 + @SQL06 + @SQL07 + @SQL08 + @SQL09 + @SQL10)
END

	


GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO

