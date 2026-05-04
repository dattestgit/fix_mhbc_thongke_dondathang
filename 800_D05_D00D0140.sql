-- Author  : DATNGUYEN
-- Purpose : Add data to table
-- Date    : 04/05/2026
-- ID      : 313226

USE LEMONSYS
ALTER TABLE LEMONSYS.DBO.D00T0141 DISABLE TRIGGER ALL

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0140 WITH(NOLOCK) WHERE ScreenID = N'Z_Q00713_D05F0707')
INSERT INTO D00T0140(ScreenID, ScreenName, ModuleID, DateEntered, DateLastModified, CreatedUser, ModifiedUser, ScreenNameEnglish, OrderNo, ScreenType, 
ScreenNameVietNamese, RelationScreenID, ScreenNameVietNameseU, ScreenNameEnglishU, IsLemonWeb, FormActive, Level, IsLW4, FormActiveLW4, FormCallLW4, Disabled, DeviceType)
VALUES (N'Z_Q00713_D05F0707',N'Thống kê đơn hàng bán',N'D05','05/04/2026','05/04/2026',N'LEMONADMIN',N'LEMONADMIN',N'Sales Orders Report',5550
,N'I',N'Thống kê đơn hàng bán',N'',N'Thống kê đơn hàng bán',N'',0,N'',0,0,N'',N'',0,N'D')

ELSE
--N'Z_Q00713_D05F0707'
UPDATE D00T0140
SET ScreenID =N'Z_Q00713_D05F0707',ScreenName = N'Thống kê đơn hàng bán',ModuleID = N'D05',DateEntered = '05/04/2026',DateLastModified = 
'05/04/2026',CreatedUser = N'LEMONADMIN',ModifiedUser = N'LEMONADMIN',ScreenNameEnglish = N'Sales Orders Report',OrderNo = 5550,ScreenType = N'I'
,ScreenNameVietNamese = N'Thống kê đơn hàng bán',RelationScreenID = N'',
ScreenNameVietNameseU = N'Thống kê đơn hàng bán',ScreenNameEnglishU = N'Sales Orders Report',
IsLemonWeb = 0,FormActive = N'',Level = 0,IsLW4 = 0,FormActiveLW4 = N'',FormCallLW4 = N'',DeviceType = N'D'
WHERE ScreenID = N'Z_Q00713_D05F0707'
ALTER TABLE LEMONSYS.DBO.D00T0141 ENABLE TRIGGER ALL


select top 1 1 from LEMONSYS..D00T0140 WIH(NOLOCK) WHERE ScreenID='Z_Q00713_D30F0707' 

select top 1 1 from LEMONSYS..D00T0140 WIH(NOLOCK) WHERE ScreenID=N'Z_Q00713_D05F0707'


select * from LEMONSYS..D00T0140 WHERE ModuleID=N'D05'and OrderNo=5550


select * from LEMONSYS..D00T0140 WHERE ModuleID=N'D05' and ScreenType=N'I'
order by OrderNo asc


select * from LEMONSYS..D00T0140 WIH(NOLOCK) WHERE ScreenID like 'D30' 


select * from LEMONSYS..D00T0141 WIH(NOLOCK) WHERE ScreenID =N'Z_Q00713_D05F0707'