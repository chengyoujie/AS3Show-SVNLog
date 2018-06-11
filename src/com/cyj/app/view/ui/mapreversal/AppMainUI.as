/**Created by the Morn,do not modify.*/
package com.cyj.app.view.ui.mapreversal {
	import morn.core.components.*;
	import com.cyj.app.view.SvnItemView;
	import com.cyj.app.view.SvnTip;
	import com.cyj.app.view.ui.mapreversal.SvnItemViewUI;
	public class AppMainUI extends View {
		public var progExpFile:ProgressBar = null;
		public var txtUpLeftTime:Label = null;
		public var comPorject:ComboBox = null;
		public var txtSvnInfo:Label = null;
		public var appName:Label = null;
		public var btnCreate:Button = null;
		public var txtLog:Label = null;
		public var inputStartDay:TextInput = null;
		public var inputEndDay:TextInput = null;
		public var btnOutPut:Button = null;
		public var inputStartTime:TextInput = null;
		public var inputEndTime:TextInput = null;
		public var btnViewLog:Button = null;
		public var btnOpenDir:Button = null;
		public var inputGoDay:TextInput = null;
		public var btnOpenWeb:Button = null;
		public var listSvnLog:List = null;
		public var title:SvnItemViewUI = null;
		public var checkDele:CheckBox = null;
		public var btnTimeNow:Button = null;
		public var checkUse50:CheckBox = null;
		public var btnTimeLast:Button = null;
		public var btnGoDay:Button = null;
		public var tips:SvnTip = null;
		protected static var uiXML:XML =
			<View width="650" height="620">
			  <Image skin="png.comp.blank" x="0" y="0" width="650" height="620"/>
			  <ProgressBar skin="png.comp.progress" x="94" y="119" width="276" height="14" sizeGrid="5,5,5,5,1" var="progExpFile" value="0"/>
			  <Label text="开始时间" x="25" y="61" color="0x99ff00" width="71" height="18" align="center"/>
			  <Label text="结束时间" x="25" y="90" color="0x99ff00" width="71" height="18" align="center"/>
			  <Label text="上传进度" x="25" y="116" color="0x99ff00" width="71" height="18" align="center"/>
			  <Label text="预计时长:" x="36" y="138" color="0xffcc" width="57" height="18" align="left"/>
			  <Label text="0s" x="94" y="138" color="0xff0000" width="39" height="20" align="left" var="txtUpLeftTime"/>
			  <Label text="选择项目" x="26" y="28" color="0x99ff00" width="71" height="18" align="center"/>
			  <ComboBox labels="label1,label2" skin="png.guidecomp.combobox" x="96" y="25" width="108" height="23" var="comPorject" labelColors="0x08ffc8,0x038b6d,0x014c3b" itemColors="0x08ffc8,0x038b6d,0x014c3b" labelStroke="0" scrollBarSkin="png.guidecomp.vscroll"/>
			  <Label text="svn日志0文件0" x="142" y="138" color="0xff99" width="232" height="20" align="left" var="txtSvnInfo"/>
			  <Label text="天前" x="474" y="58" color="0x99ff00" width="34" height="18" align="center"/>
			  <Label text="应用界面" x="10" y="3" color="0xff9900" stroke="0" width="600" height="32" align="center" size="18" var="appName" isHtml="true"/>
			  <Button label="svn信息" skin="png.guidecomp.btn_四字常规_1" x="446" y="87" labelColors="0xc79a84,0xe0a98d,0x93827a" labelStroke="0x0" var="btnCreate" width="89" height="45" sizeGrid="10,"/>
			  <Label text="日志" x="2" y="565" width="645" height="49" color="0x33ff00" var="txtLog" wordWrap="true"/>
			  <Label text="made by cyj 2017.11.26" x="512" y="595" color="0x666666"/>
			  <TextInput text="2017-11-22" skin="png.guidecomp.textinput_文字输入底框_2" x="92" y="58" color="0x66ccff" width="145" height="22" var="inputStartDay"/>
			  <TextInput text="2017-11-23" skin="png.guidecomp.textinput_文字输入底框_2" x="92" y="91" color="0x66ccff" width="145" height="22" var="inputEndDay"/>
			  <Button label="打包资源" skin="png.guidecomp.btn_四字常规_1" x="546" y="87" labelColors="0xc79a84,0xe0a98d,0x93827a" labelStroke="0x0" var="btnOutPut" width="89" height="45" sizeGrid="10,"/>
			  <TextInput text="00:00:00" skin="png.guidecomp.textinput_文字输入底框_2" x="248" y="58" color="0xff66cc" width="145" height="22" var="inputStartTime"/>
			  <TextInput text="23:59:59" skin="png.guidecomp.textinput_文字输入底框_2" x="248" y="91" color="0xff6699" width="145" height="22" var="inputEndTime"/>
			  <Button label="Log" skin="png.guidecomp.btn_小按钮_1" x="600" y="2" labelColors="0xc79a84,0xe0a98d,0x93827a" labelStroke="0x0" var="btnViewLog" width="43" height="32" sizeGrid="10,"/>
			  <Button label="打开目录" skin="png.guidecomp.btn_四字常规_1" x="557" y="47.5" labelColors="0xc79a84,0xe0a98d,0x93827a" labelStroke="0x0" width="78" height="39" sizeGrid="10," var="btnOpenDir"/>
			  <TextInput text="15" skin="png.guidecomp.textinput_文字输入底框_2" x="445" y="58" color="0x66ccff" width="31" height="22" var="inputGoDay" restrict="0-9"/>
			  <Button skin="png.guidecomp.btn_小按钮_1" x="559" y="2" labelColors="0xc79a84,0xe0a98d,0x93827a" labelStroke="0x0" var="btnOpenWeb" width="43" height="32" sizeGrid="10," label="Web"/>
			  <List x="15" y="187" repeatY="14" spaceY="2" vScrollBarSkin="png.guidecomp.vscroll" var="listSvnLog" width="622" height="382">
			    <SvnItemView x="0" y="0" name="render" runtime="com.cyj.app.view.SvnItemView"/>
			  </List>
			  <SvnItemView x="20" y="163" var="title" runtime="com.cyj.app.view.ui.mapreversal.SvnItemViewUI"/>
			  <CheckBox label="是否删除临时文件" skin="png.guidecomp.checkbox_单选" x="394" y="134" labelColors="0xc79a84,0xe0a98d,0x93827a" labelStroke="0" var="checkDele" selected="true"/>
			  <Button label="当前" skin="png.guidecomp.btn_小按钮_1" labelColors="0xc79a84,0xe0a98d,0x93827a" var="btnTimeNow" labelStroke="0" width="42" height="28" x="396" y="90"/>
			  <CheckBox label="使用50上资源导出" skin="png.guidecomp.checkbox_单选" x="523" y="135" labelColors="0xc79a84,0xe0a98d,0x93827a" labelStroke="0" var="checkUse50" selected="true"/>
			  <Button label="上次" skin="png.guidecomp.btn_小按钮_1" labelColors="0xc79a84,0xe0a98d,0x93827a" var="btnTimeLast" labelStroke="0" width="42" height="28" x="396" y="56"/>
			  <Button label="GO" skin="png.guidecomp.btn_小按钮_1" labelColors="0xc79a84,0xe0a98d,0x93827a" var="btnGoDay" labelStroke="0" width="42" height="28" x="507" y="53"/>
			  <SvnTip x="0" y="0" var="tips" runtime="com.cyj.app.view.SvnTip"/>
			</View>;
		public function AppMainUI(){}
		override protected function createChildren():void {
			viewClassMap["com.cyj.app.view.SvnItemView"] = SvnItemView;
			viewClassMap["com.cyj.app.view.SvnTip"] = SvnTip;
			viewClassMap["com.cyj.app.view.ui.mapreversal.SvnItemViewUI"] = SvnItemViewUI;
			super.createChildren();
			createView(uiXML);
		}
	}
}