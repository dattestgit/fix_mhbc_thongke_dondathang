--IF EXISTS (SELECT TOP 1 1 FROM DBO.SYSOBJECTS WITH(NOLOCK) WHERE ID = OBJECT_ID(N'[DBO].[Z_Q00713_D05P0707]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
--DROP PROCEDURE [DBO].[Z_Q00713_D05P0707]
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_NULLS ON
--GO
--sp_helptext 'Z_Q00713_D05P0707'



-- <Summary>
---- Z_Q00713_D05F0707
-- <Param>
---- 
-- <Return>
---- 
-- <Reference>
---- D05 \ Thong ke phan tich \ *Thong ke don hang ban - Z_Q00713_D05F0707
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


ALTER PROCEDURE Z_Q00713_D05P0707
( 
	@DivisionID				VARCHAR(50) = '',
	@IsPeriod				TINYINT = 0,
	@PeriodFrom				VARCHAR(50) = '',
	@PeriodTo				VARCHAR(50) = '',
	@IsRDVoucherDate		TINYINT = 0,	---- Cho phep loc theo ngay ph
	@DateRDVoucherDateFrom	DATETIME = '',		---- Ngay hop dong tu
	@DateRDVoucherDateTo	DATETIME = '',	---- Ngay hop dong Den
	@Mode					TINYINT = 0 ,
	@VoucherNo				VARCHAR(Max) = '',

	@DeliveryDateTo DATETIME = '',
	@DeliveryDateFrom DATETIME= '',
	@StatusSO VARCHAR(50) = '%' 
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
--DECLARE @D90_ConvertedDecimals TINYINT, @D07_QuantityDecimals TINYINT, @D07_UnitCostDecimals TINYINT, 
--		@UnitPriceDecimal AS TINYINT,
--		@OriginalDecimal	TINYINT,
--		@ConvertedDecimal	TINYINT
--SELECT	@D90_ConvertedDecimals = D90_ConvertedDecimals,
--		@D07_QuantityDecimals = D07_QuantityDecimals,
--		@D07_UnitCostDecimals = D07_UnitCostDecimals
--FROM D91T0025 WITH(NOLOCK)
--SELECT	@UnitPriceDecimal = UnitPriceDecimals,
--		@OriginalDecimal = OriginalDecimal,
--		@ConvertedDecimal = ConvertedDecimal
--FROM	D91V0010 WHERE CurrencyID = 'VND'
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
--Cột 1:[STT] Số thứ tự
--Cột 2:[Số phiếu] Số phiếu đơn hàng
--Cột 3:[Ngày nhận] Ngày nhận hàng
--Cột 4:[Ngày giao] Ngày giao hàng
--Cột 5:[Mã khách hàng] Mã Khách hàng
--Cột 6:[Tên Khách hàng] Tên Khách hàng
--Cột 7:[Tên hàng] Tên hàng hóa
--Cột 8:[Dài] Chỉ số Dài của Quy cách 01
--Cột 9:[Rộng] Chỉ số Rộng của Quy cách 01
--Cột 10:[Cao] Chỉ số Cao của Quy cách 01
--VD: 35.5X60X15 Dài: 35.5 Rộng: 60 Cao: 15 ( Cách nhau bởi ký tự X)
--Cột 11:[Số lượng] Số lượng đơn hàng
--Cột 12:[Khổ K] Theo công thức Rộng+Cao
--Cột 13:[Khổ D] Theo công thức ((Dài+ Rộng)*2)+4
--Cột 14:[Kết cấu] Thông tin phụ đơn hàng
--Cột 15:[Sóng] Thông tin phụ đơn hàng

SELECT
		T1.QuotationID,
		T2.QuotationItemID,
		ISNULL(T2.OrderNum, 0) AS OrderNum,

		T1.VoucherNum AS VoucherNo,
		T1.VoucherDate AS VoucherDateRaw,
		CONVERT(VARCHAR(10), T1.VoucherDate, 103) AS VoucherDate,

		T2.DeliveryDate AS DeliveryDateRaw,
		CONVERT(VARCHAR(10), T2.DeliveryDate, 103) AS Deliverydate,

		T1.ObjectTypeID,
		T1.CustomerID AS ObjectID,
		ISNULL(NULLIF(T1.CustomerNameU, N''''), ISNULL(O.ObjectNameU, N'''')) AS ObjectName,

		T2.InventoryID,
		ISNULL(NULLIF(T2.ItemNameU, N''''), ISNULL(I.InventoryNameU, N'''')) AS InventoryName,

		ISNULL(T2.Spec01ID, '''') AS Spec01ID,

		CASE 
			WHEN CHARINDEX(''X'', UPPER(ISNULL(T2.Spec01ID, ''''))) > 1
				THEN LEFT(ISNULL(T2.Spec01ID, ''''), CHARINDEX(''X'', UPPER(ISNULL(T2.Spec01ID, ''''))) - 1)
			ELSE ''''
		END AS LengthValue,

		CONVERT(NVARCHAR(500), '''') AS WidthValue,

		CASE 
			WHEN CHARINDEX(''X'', REVERSE(UPPER(ISNULL(T2.Spec01ID, '''')))) > 0
			     AND CHARINDEX(''X'', UPPER(ISNULL(T2.Spec01ID, ''''))) > 0
				THEN RIGHT(ISNULL(T2.Spec01ID, ''''), CHARINDEX(''X'', REVERSE(UPPER(ISNULL(T2.Spec01ID, '''')))) - 1)
			ELSE ''''
		END AS HeightValue,

		CONVERT(DECIMAL(28, 8), ISNULL(NULLIF(T2.CQuantity, 0), T2.Quantity)) AS Quantity,

		CONVERT(NVARCHAR(500), '''') AS KhoK,
		CONVERT(NVARCHAR(500), '''') AS KhoD,

		ISNULL(T2.DRef4U, '''') AS StructureID,
		ISNULL(T2.DRef5U, '''') AS WaveID,

		T1.StatusVoucher AS StatusSO

	INTO #D05T0016_1

	FROM D05T0016 T1 WITH(NOLOCK)
	INNER JOIN D05T0017 T2 WITH(NOLOCK)
		ON T1.QuotationID = T2.QuotationID
	LEFT JOIN Object O WITH(NOLOCK)
		ON O.ObjectTypeID = T1.ObjectTypeID
		AND O.ObjectID = T1.CustomerID
	LEFT JOIN D07T0002 I WITH(NOLOCK)
		ON I.InventoryID = T2.InventoryID

	WHERE 1 = 1
		AND T1.ProfessionKind IN (''O'', ''RO'')
		'
SET @SQL01 = N'
		' + CASE 
				WHEN ISNULL(@DivisionID, '') IN ('', '%') THEN '' 
				ELSE ' AND T1.DivisionID = ''' + REPLACE(@DivisionID, '''', '''''') + ''' '
			END + '

		' + CASE 
				WHEN @IsPeriod = 1 THEN 
					' AND (T1.TranMonth + T1.TranYear * 100) BETWEEN ' + @FromPeriod + ' AND ' + @ToPeriod + ' '
				ELSE ''
			END + '

		' + CASE 
				WHEN @IsRDVoucherDate = 1 THEN 
					' AND CONVERT(DATE, T1.VoucherDate) BETWEEN ''' 
					+ CONVERT(VARCHAR(10), @DateRDVoucherDateFrom, 112) 
					+ ''' AND ''' 
					+ CONVERT(VARCHAR(10), @DateRDVoucherDateTo, 112) 
					+ ''' '
				ELSE ''
			END + '

		' + CASE 
				WHEN ISNULL(@VoucherNo, '') = '' THEN ''
				ELSE ' AND T1.VoucherNum LIKE ''%' + REPLACE(@VoucherNo, '''', '''''') + '%'' '
			END + '

		' + CASE 
				WHEN ISNULL(CONVERT(VARCHAR(8), @DeliveryDateFrom, 112), '') IN ('', '19000101') THEN ''
				ELSE ' AND CONVERT(DATE, T2.DeliveryDate) >= ''' + CONVERT(VARCHAR(10), @DeliveryDateFrom, 112) + ''' '
			END + '

		' + CASE 
				WHEN ISNULL(CONVERT(VARCHAR(8), @DeliveryDateTo, 112), '') IN ('', '19000101') THEN ''
				ELSE ' AND CONVERT(DATE, T2.DeliveryDate) <= ''' + CONVERT(VARCHAR(10), @DeliveryDateTo, 112) + ''' '
			END + '

		' + CASE 
				WHEN ISNULL(@StatusSO, '%') IN ('', '%') THEN ''
				ELSE ' AND T1.StatusVoucher = ''' + REPLACE(@StatusSO, '''', '''''') + ''' '
			END + '
		'SET @SQL02= N'
		UPDATE #D05T0016_1
	SET WidthValue = 
		CASE 
			WHEN CHARINDEX(''X'', UPPER(Spec01ID)) > 0
			     AND CHARINDEX(''X'', UPPER(Spec01ID), CHARINDEX(''X'', UPPER(Spec01ID)) + 1) > CHARINDEX(''X'', UPPER(Spec01ID))
			THEN SUBSTRING
				 (
					Spec01ID,
					CHARINDEX(''X'', UPPER(Spec01ID)) + 1,
					CHARINDEX(''X'', UPPER(Spec01ID), CHARINDEX(''X'', UPPER(Spec01ID)) + 1) 
						- CHARINDEX(''X'', UPPER(Spec01ID)) - 1
				 )
			ELSE ''''
		END
	WHERE ISNULL(Spec01ID, '''') <> ''''
		


		'SET @SQL03= N'
		
		UPDATE #D05T0016_1
		SET 
			KhoK = 
				CASE 
					WHEN ISNUMERIC(WidthValue) = 1 AND ISNUMERIC(HeightValue) = 1
						THEN CONVERT(NVARCHAR(500), CONVERT(DECIMAL(28, 8), WidthValue) + CONVERT(DECIMAL(28, 8), HeightValue))
					ELSE ''''
				END,
			KhoD =
				CASE 
					WHEN ISNUMERIC(LengthValue) = 1 AND ISNUMERIC(WidthValue) = 1
						THEN CONVERT(NVARCHAR(500), ((CONVERT(DECIMAL(28, 8), LengthValue) + CONVERT(DECIMAL(28, 8), WidthValue)) * 2) + 4)
					ELSE ''''
			END


		'SET @SQL04= N'
		
		SELECT
				ROW_NUMBER() OVER
				(
					ORDER BY VoucherDateRaw DESC, VoucherNo, OrderNum, QuotationItemID
				) AS OrderNo,

				VoucherNo,
				VoucherDate,
				Deliverydate,
				ObjectID,
				ObjectName,
				InventoryName,
				LengthValue,
				WidthValue,
				HeightValue,
				Quantity,
				KhoK,
				KhoD,
				StructureID,
				WaveID
			FROM #D05T0016_1
			ORDER BY VoucherDateRaw DESC, VoucherNo, OrderNum, QuotationItemID

			DROP TABLE #D05T0016_1
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

	--PRINT @SQL00
	--PRINT @SQL01
	--PRINT @SQL02
	--PRINT @SQL03
	--PRINT @SQL04
	--PRINT @SQL05
	--PRINT @SQL06
	--PRINT @SQL07
	--PRINT @SQL08
	--PRINT @SQL09
	--PRINT @SQL10


	EXEC (@SQL00 + @SQL01 + @SQL02 + @SQL03 + @SQL04 + @SQL05 + @SQL06 + @SQL07 + @SQL08 + @SQL09 + @SQL10)
END

	


GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO

