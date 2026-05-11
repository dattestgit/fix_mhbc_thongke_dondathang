USE LEMONSYS


Declare @XmlContent xml,@XAMLContent xml, @XmlContent01 xml,@XAMLContent01 xml

Set @XmlContent=N'
<form version="4.0.0" formID="ZQ00713D05F0707" type="Inquiry" caption="*Thống kê đơn hàng bán">
	<parameters>
		<parameter name="pFormIDPermission" dataType="text" value="ZQ00713D05F0707" />
	</parameters>
	<variables>
	    <variable name="vDivisionID" control="tdbcDivisionID" dataType="text" binding="DivisionID"/>
	
	    <variable name="vchkPeriod" control="chkPeriod" dataType="number" binding="" />
	    <variable name="vPeriodFr" control="tdbcPeriodIDFr" dataType="text" binding="Period"/>
	    <variable name="vPeriodTo" control="tdbcPeriodIDTo" dataType="text" binding="Period"/>
	
	    <variable name="vchkRDVoucherDate" control="chkRDVoucherDate" dataType="number" binding="" />
	    <variable name="vRDVoucherDateFrom" control="txbRDVoucherDateFrom" dataType="date" binding="" />
	    <variable name="vRDVoucherDateTo" control="txbRDVoucherDateTo" dataType="date" binding="" />
	 	
	
	    <variable name="vVoucherNo" control="txbVoucherNo" dataType="text" binding="" />
	
		<variable name="vDeliveryDate" control="txbDeliveryDate" dataType="date" binding="" />
			
	    <variable name="vStatusSO" control="tdbcStatusSO" dataType="text" binding="ID" />
	</variables>

	<datasets>
	    <dataset name="Divisions"
	        queryText="SELECT DISTINCT T99.DivisionID AS DivisionID, T16.DivisionNameU AS DivisionName, 1 AS DisplayOrder FROM D90T9999 T99 WITH(NOLOCK) INNER JOIN D91T0016 T16 WITH(NOLOCK) ON T99.DivisionID = T16.DivisionID INNER JOIN D91T0060 T60 WITH(NOLOCK) ON T99.DivisionID = T60.DivisionID WHERE T16.Disabled = 0 AND T60.UserID = value[''pUserID''] UNION ALL SELECT N''%'' AS DivisionID, N''[Tất cả]'' AS DivisionName, 0 AS DisplayOrder ORDER BY DisplayOrder, DivisionID" />
	
	    <dataset name="Periods"
	        queryText="SELECT DISTINCT REPLACE(STR(TranMonth, 2), '' '', ''0'') + ''/'' + STR(TranYear, 4) AS Period, TranMonth, TranYear FROM D90T9999 WITH(NOLOCK) ORDER BY TranYear DESC, TranMonth DESC" />
	
	    <dataset name="StatusSO"
	        queryText="EXEC D05P0007 ''Status_D05F1621'', value[''vDivisionID''], value[''pUserID''], value[''pLanguage''], value[''pCodeTable''], '''', 4" />
	
	    <dataset name="dsCreateCol"
	        queryText="EXEC Z_Q00713_D05P0707 
	            value[''vDivisionID''], value[''vchkPeriod''], value[''vPeriodFr''], value[''vPeriodTo''], value[''vchkRDVoucherDate''], value[''vRDVoucherDateFrom''], value[''vRDVoucherDateTo''], 0, value[''vVoucherNo''], value[''vDeliveryDate''], value[''vStatusSO'']" />
	
	    <dataset name="dsGridData"
	        queryText="EXEC Z_Q00713_D05P0707 
	            value[''vDivisionID''], value[''vchkPeriod''], value[''vPeriodFr''], value[''vPeriodTo''], value[''vchkRDVoucherDate''], value[''vRDVoucherDateFrom''], value[''vRDVoucherDateTo''], 1, value[''vVoucherNo''], value[''vDeliveryDate''], value[''vStatusSO'']" />
	</datasets>

		<commands>
		<command name="cmdFilter">
			<add type="required" control="tdbcDivisionID"/>
			<add type="addCol" control="tdbgGrid" dataset="dsCreateCol"/>
			<add type="load" control="tdbgGrid" dataset="dsGridData"/>
		</command>

	</commands>
	<form-items>
	    <control name="tdbcDivisionID" type="combo" dataset="Divisions" event="SelectedIndexChanged" required="true"/>
	
	    <control name="tdbcPeriodIDFr" type="combo" dataset="Periods" dataDependent="tdbcDivisionID"/>
	    <control name="tdbcPeriodIDTo" type="combo" dataset="Periods" dataDependent="tdbcDivisionID"/>
	
	    <control name="tdbcStatusSO" type="combo" dataset="StatusSO" dataDependent="tdbcDivisionID"/>
	
	    <control name="txbRDVoucherDateFrom" type="DateEdit" require="true"/>
	    <control name="txbRDVoucherDateTo" type="DateEdit" require="true"/>
	
	    <control name="txbDeliveryDate" type="DateEdit"/>

	
	    <control name="btnFilter" type="button" event="Click" command="cmdFilter" hotKey="F5"/>
	    <control name="tdbgGrid" type="grid"/>
	</form-items>
</form>
'

Set @XAMLContent=N'
<UserControl 
	xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" 
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" 
    xmlns:dxg="http://schemas.devexpress.com/winfx/2008/xaml/grid" 
    xmlns:dxc="http://schemas.devexpress.com/winfx/2008/xaml/core" 
    xmlns:dxe="http://schemas.devexpress.com/winfx/2008/xaml/editors"
    xmlns:dxcn="http://schemas.devexpress.com/winfx/2008/xaml/core/internal" 
    xmlns:dxlc="http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol" 
    xmlns:dxgt="http://schemas.devexpress.com/winfx/2008/xaml/grid/themekeys" 
	xmlns:L3="clr-namespace:Lemon3.Controls.DevExp;assembly=D99D0451"
    xmlns:local="clr-namespace:Lemon3.DAF.Libs;assembly=D89D0051" Height="Auto" Width="Auto">
  <UserControl.Resources>
        <ResourceDictionary>
            <dxcn:BrushSet x:Key="{dxgt:GridRowThemeKey ResourceKey=CellBackgroundBrushes}">
                <dxcn:BrushSet.Elements>
                    <dxcn:BrushInfo x:Key="Focused" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=CellBorderFocusedBrush}}" />
                    <dxcn:BrushInfo x:Key="Selected" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=BorderSelectedBrush}}" />
                    <dxcn:BrushInfo x:Key="FocusedAndSelected" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=BorderFocusedBrush}}" />
                    <dxcn:BrushInfo x:Key="BorderBrush" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=GridDataRowDelimiterBrush}}" />
                    <dxcn:BrushInfo x:Key="BorderBrushFocusedRow" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=GridDataRowDelimiterBrush}}" />
                </dxcn:BrushSet.Elements>
            </dxcn:BrushSet>
            <!--Begin định dạng thuộc tính cho Header của cột-->
            <Style TargetType="dxg:GridColumnHeader">
                <Setter Property="dxg:BaseGridColumnHeader.ShowFilterButtonOnHover" Value="True" />
                <Setter Property="BorderThickness" Value="0" />
                <Setter Property="Background" Value="#F0F7FF" />
                <Setter Property="MaxHeight" Value="37" />
                <Setter Property="FontFamily" Value="Segoe UI" />
                <Setter Property="FontSize" Value="12" />
            </Style>
            <!--End định dạng thuộc tính cho Header của cột-->
            <!--Begin định dạng thuộc tính cho thuộc tính của cột-->
            <Style TargetType="dxg:GridColumn">
                <Setter Property="HorizontalHeaderContentAlignment" Value="Center" />
                <Setter Property="AllowBestFit" Value="True" />
                <Setter Property="HeaderTemplate">
                    <Setter.Value>
                        <DataTemplate>
                            <TextBlock Text="{Binding}" TextAlignment="Center" VerticalAlignment="Center" TextWrapping="Wrap" Foreground="{DynamicResource GridControlHeaderTextColour}" />
                        </DataTemplate>
                    </Setter.Value>
                </Setter>
            </Style>
            <!--End định dạng thuộc tính cho thuộc tính của cột-->
            <Style x:Key="SelectedRowStyle" TargetType="{x:Type dxg:RowControl}">
                <Setter Property="FontFamily" Value="Segoe UI" />
                <Setter Property="FontSize" Value="12" />
                <Style.Triggers>
                    <DataTrigger Binding="{Binding Path=IsSelected}" Value="True">
                        <Setter Property="Background" Value="#FFF0F5" />
                        <Setter Property="Foreground" Value="Black" />
                    </DataTrigger>
                    <Trigger Property="dxg:GridViewBase.IsFocusedRow" Value="True">
                        <Setter Property="Background" Value="#D7EED4" />
                        <Setter Property="Foreground" Value="Black" />
                    </Trigger>
                </Style.Triggers>
            </Style>
            <!--Begin định dạng thuộc tính cho thuộc tính của cột Header Template in DataGrid Control (dxg:GridControl) Áp dụng cho thuộc tính ColumnHeaderTemplate-->
            <!--<dxg:GridColumn.HeaderTemplate>				<DataTemplate>					<TextBlock Text="{Binding}" FontWeight="Bold"/>				</DataTemplate>			</dxg:GridColumn.HeaderTemplate>-->
            <Style TargetType="dxg:TableView">
                <Setter Property="ColumnHeaderTemplate">
                    <Setter.Value>
                        <DataTemplate>
                            <ContentControl Content="{Binding}" Width="{Binding Width, RelativeSource={RelativeSource FindAncestor, AncestorType={x:Type DataGridColumnHeader}}}" Background="LightSkyBlue" TextBlock.FontWeight="Bold" TextBlock.FontFamily="Segoe UI" TextBlock.FontSize="12" TextBlock.TextAlignment="Center" VerticalContentAlignment="Top" HorizontalContentAlignment="Stretch" />
                        </DataTemplate>
                    </Setter.Value>
                </Setter>
            </Style>
            <!--End định dạng thuộc tính cho thuộc tính của cột Header Template in DataGrid Control (dxg:GridControl) Áp dụng cho thuộc tính ColumnHeaderTemplate-->
        </ResourceDictionary>
    </UserControl.Resources>
  <Border BorderBrush="Black" BorderThickness="1">
  <Grid Margin="0,2,0,-2">
        <Grid.RowDefinitions>
            <RowDefinition Height="40" />
            <RowDefinition Height="40" />
            <RowDefinition Height="40" />
	 		<RowDefinition Height="40" />
            <RowDefinition Height="*"/>
        </Grid.RowDefinitions>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="80" />
            <ColumnDefinition Width="120" />
            <ColumnDefinition Width="30"/>
            <ColumnDefinition Width="120" />
            <ColumnDefinition Width="80"/>
            <ColumnDefinition Width="120" />
            <ColumnDefinition Width="120" />
            <ColumnDefinition Width="30" />
            <ColumnDefinition Width="30*"/>
            <ColumnDefinition Width="20*"/>
        </Grid.ColumnDefinitions>

		<!--Begin Don vi-->
		<Label x:Name="lblDivisionID" Content="Đơn vị" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Height="20" Width="Auto" Grid.Column="0" Grid.Row="0"/>
        <dxg:LookUpEdit x:Name="tdbcDivisionID" Grid.Row="0" Grid.Column="1" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Width="120" Height="22" DisplayMember="DivisionID" ValueMember="DivisionID" AutoPopulateColumns="False" PopupWidth="250" ImmediatePopup="True" PopupContentTemplate="{DynamicResource DivisionIDStadard}" />
        <!--End Don vi-->

		<!--Begin Ky-->
        <RadioButton Content="Kỳ" x:Name="chkPeriod" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Height="22" Width="30" Grid.Row="1" Grid.Column="0" IsChecked = "True"/>
        <dxg:LookUpEdit x:Name="tdbcPeriodIDFr" Grid.Row="1" Grid.Column="1" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Width="120" Height="22" DisplayMember="Period" ValueMember="Period" AutoPopulateColumns="False" PopupWidth="20" ImmediatePopup="True" PopupContentTemplate="{DynamicResource PeriodIDStadard}" />
        <dxg:LookUpEdit x:Name="tdbcPeriodIDTo" Grid.Row="1" Grid.Column="3" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Width="120" Height="22" DisplayMember="Period" ValueMember="Period" AutoPopulateColumns="False" PopupWidth="20" ImmediatePopup="True" PopupContentTemplate="{DynamicResource PeriodIDStadard}" />
        <!--End Ky-->

        <RadioButton Content="Ngày" x:Name="chkRDVoucherDate" HorizontalAlignment="Left" Margin="0,10,0,0" Grid.Row="2" Grid.Column="0" VerticalAlignment="Top" Height="22" Width="Auto" />
        <dxe:DateEdit x:Name="txbRDVoucherDateFrom" Grid.Row="2" Grid.Column="1" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Width="120" Height="22" Mask="dd/MM/yyyy" MaskType="DateTime" DisplayFormatString="dd/MM/yyyy" NullValue="01/01/1900" Visibility="{Binding IsChecked, ElementName=optReportDate}" DateTime="{Binding To, Mode=TwoWay, RelativeSource={RelativeSource AncestorType={x:Type Window}}, UpdateSourceTrigger=PropertyChanged}" IsEnabled="True"/>
        <dxe:DateEdit x:Name="txbRDVoucherDateTo" Grid.Row="2" Grid.Column="3" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Width="120" Height="22" Mask="dd/MM/yyyy" MaskType="DateTime" DisplayFormatString="dd/MM/yyyy" NullValue="01/01/1900" Visibility="{Binding IsChecked, ElementName=optReportDate}" DateTime="{Binding To, Mode=TwoWay, RelativeSource={RelativeSource AncestorType={x:Type Window}}, UpdateSourceTrigger=PropertyChanged}" IsEnabled="True"/>
 
		<!--Begin don han-->
		<Label x:Name="lblVoucherNo" Content="Số chứng từ" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Width="100" Grid.Column="5" Grid.Row="1" />
        <dxg:PrintTextEdit x:Name="txbVoucherNo" EditValue="VoucherNo" HorizontalAlignment="Left" Margin="0,10,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" 
		Width="120" Grid.Column="6" Grid.Row="1" />
	 

		<Label x:Name="lblDeliveryDate" Content="Ngày giao" Grid.Row="3" Grid.Column="0" Margin="0,10,0,0" Height="20" />
		<dxe:DateEdit x:Name="txbDeliveryDate" Grid.Row="3" Grid.Column="1" Width="120" Height="22" Margin="0,10,0,0" Mask="dd/MM/yyyy" MaskType="DateTime" DisplayFormatString="dd/MM/yyyy" NullValue="01/01/1900" />

	 
	 	<Label x:Name="lblStatusSO" Content="Trạng thái" Grid.Row="0" Grid.Column="5" Margin="0,10,0,0" Height="20" />
		<dxg:LookUpEdit x:Name="tdbcStatusSO"
		                Grid.Row="0"
		                Grid.Column="6"
		                Width="120"
		                Height="22"
		                Margin="0,10,0,0"
		                DisplayMember="Name"
		                ValueMember="ID"
		                AutoPopulateColumns="True"
		                PopupWidth="280"
		                ImmediatePopup="True"/>

		<!--Begin Button Loc-->
		<Button x:Name="btnFilter" Content="Lọc (F5)" Grid.Row="2" Grid.Column="8" HorizontalAlignment="Left" VerticalAlignment="Top" Width="82" Margin="40,10,0,0" 
		Height="22" RenderTransformOrigin="1.25,0.5" />
		<!--Begin Button Loc-->

		<!--Begin Grid-->
        <L3:L3GridControl x:Name="tdbgGrid" Grid.Row="4" Grid.ColumnSpan="18" AutoExpandAllGroups="True">
            <!--Menu-->
            <dxg:GridControl.ContextMenu>
                <ContextMenu>
                    <MenuItem x:Name="mnuListAll" Header="Liệt kê tất cả" />
                    <MenuItem x:Name="mnuExportExcelDirect" Header="Xuất Excel báo cáo" />
                </ContextMenu>
            </dxg:GridControl.ContextMenu>
            <!--Grid view-->
            <dxg:GridControl.View>
                <dxg:TableView x:Name="gridview1" AutoWidth="False" ShowGroupPanel="True" ShowAutoFilterRow="True" AllowEditing="False"  AllowPerPixelScrolling="True">
                    <dxg:TableView.FormatConditions>
                        <dxg:FormatCondition Expression="[StyleExcel] = ''(B)''">
                            <dxc:Format FontWeight="Bold" />
                        </dxg:FormatCondition>
                    </dxg:TableView.FormatConditions>
                </dxg:TableView>
            </dxg:GridControl.View>
        </L3:L3GridControl>
        <!--End Grid-->
    </Grid>
  </Border>
</UserControl>
'

SET @XmlContent01 = ''
SET @XAMLContent01 = ''

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0147 WITH(NOLOCK) WHERE MenuItemID = 'ZQ00713D05F0707')
BEGIN 
	INSERT INTO D00T0147(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PerrmissionSreenID, FormID, ProgramName, ProgramType, Parameter, LCode, 
	Disabled, IsAnchor, IsBlance, SqlCheckForm, XAMLContent, XmlContent, XmlContent01, XAMLContent01)
	VALUES (N'05',N'ZQ00713D05F0707',N'I',400,N'Z_Q00713_D05F0707',N'D89F4000',N'D89D4951',N'DAF40',N'',N'',0,0,0,N'',@XAMLContent,@XmlContent,@XmlContent01,@XAMLContent01)
END
ELSE
BEGIN 
	UPDATE D00T0147
	SET ModuleID = N'05',MenuItemID = N'ZQ00713D05F0707',MenuGroupID = N'I',DisplayOrder = 410,PerrmissionSreenID = N'Z_Q00713_D05F0707',
	 FormID = N'D89F4000', ProgramName = N'D89D4951', ProgramType = N'DAF40', SqlCheckForm = N'', Disabled = 0,XmlContent = @XmlContent,
	  XAMLContent = @XAMLContent, XmlContent01 = @XmlContent01, XAMLContent01 = @XAMLContent01
	WHERE MenuItemID = 'ZQ00713D05F0707'
END
select *from LEMONSYS..D00T0147 where PerrmissionSreenID = N'Z_Q00713_D05F0707'

select *from LEMONSYS..D00T0140 where ModuleID=N'D31' and ScreenNameVietNameseU=N'Lệnh sản xuất'

