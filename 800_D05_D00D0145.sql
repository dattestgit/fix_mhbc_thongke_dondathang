-- Author  : DATNGUYEN
-- Purpose : Add data to table
-- Date    : 04/05/2026
-- ID      : 313226


USE LEMONSYS

Declare @XmlContent xml,@XAMLContent xml
Set @XmlContent=N''''''
Set @XAMLContent=N''''''
IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0145 WITH(NOLOCK) WHERE MenuItemID = 'ZQ00713D05F0707')
INSERT INTO D00T0145(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PermissionScreenID, FormID, ProgramName, ProgramType, 
Parameters, LCode, IsBalance, SqlCheckForm, IsAnchor, IsCheckClosedBook, Disabled, XmlContent, XAMLContent)
VALUES (N'05',N'ZQ00713D05F0707',N'I',250,N'Z_Q00713_D05F0707',N'D89F4000',N'D89D4951',N'DAF40',N'',N'',0,N'',0,0,0,'','')

ELSE
UPDATE D00T0145
SET ModuleID = N'05',MenuItemID = N'ZQ00713D05F0707',MenuGroupID = N'I',DisplayOrder = 250,PermissionScreenID = N'Z_Q00713_D05F0707',
FormID = N'D89F4000',ProgramName = N'D89D4951',ProgramType = N'DAF40',Parameters = N'',LCode = N'',IsBalance = 0,SqlCheckForm = N'',
IsAnchor = 0,IsCheckClosedBook = 0,Disabled = 0,XmlContent = @XmlContent,XAMLContent = @XAMLContent
WHERE MenuItemID = 'ZQ00713D05F0707'



select * from LEMONSYS..D00T0145 where ModuleID =N'05'
--where MenuItemID =N'ZQ00713D05F0707'
