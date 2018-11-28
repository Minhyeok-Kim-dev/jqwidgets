<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.apireference.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.energyblue.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.bootstrap.css"/>" />

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/documentation.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdatetimeinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcalendar.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/globalize/globalize.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/globalize/globalize.culture.ko-KR.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// animationType
		let template_animationType = [{
		   	"bind" : "txtAnimationType",
		    "name" : "txtAnimationType",
			"type" : "datetime",	
			"width" : "250px",	
			"animationType" : "fade"
		}];
		
		$("#jqxinputForm_animationType").jqxForm({
		  	"template" : template_animationType
		});
			
		
		// allowNullDate
		let template_allowNullDate = [{
		   	"bind" : "txtAllowNullDate",
		    "name" : "txtAllowNullDate",
			"type" : "datetime",	
			"width" : "250px",	
			"allowNullDate" : false	// property 설정
		}];
		
		$("#jqxinputForm_allowNullDate").jqxForm({
		  	"template" : template_allowNullDate
		});
		
		
		// allowKeyboardDelete
		let template_allowKeyboardDelete = [{
		   	"bind" : "txtAllowKeyboardDelete",
		    "name" : "txtAllowKeyboardDelete",
			"type" : "datetime",	
			"width" : "250px",	
			"allowKeyboardDelete" : false	// property 설정
		}];
		
		$("#jqxinputForm_allowKeyboardDelete").jqxForm({
		  	"template" : template_allowKeyboardDelete
		});
		

		// clearString
		let template_clearString = [{
		   	"bind" : "txtClearString",
		    "name" : "txtClearString",
			"type" : "datetime",	
			"width" : "250px",	
			"showFooter" : true, 	// 하단 푸터 출력
			"clearString" : "초기화"	// property 설정
		}];
		
		$("#jqxinputForm_clearString").jqxForm({
		  	"template" : template_clearString
		});

		
		// culture
		let template_culture = [{
		   	"bind" : "txtCulture",
		    "name" : "txtCulture",
			"type" : "datetime",	
			"width" : "250px",	
			"culture" : "ko-KR"	// property 설정
		}];
		
		$("#jqxinputForm_culture").jqxForm({
		  	"template" : template_culture
		});
		
		
		// closeDelay
		let template_closeDelay = [{
		   	"bind" : "txtCloseDelay",
		    "name" : "txtCloseDelay",
			"type" : "datetime",	
			"width" : "250px",
			"closeDelay" : 1000	// property 설정	
		}];
		
		$("#jqxinputForm_closeDelay").jqxForm({
		  	"template" : template_closeDelay
		});
		
		
		// closeCalendarAfterSelection
		let template_closeCalendarAfterSelection = [{
		   	"bind" : "txtCloseCalendarAfterSelection",
		    "name" : "txtCloseCalendarAfterSelection",
			"type" : "datetime",	
			"width" : "250px",
			"closeCalendarAfterSelection" : false
		}];
		
		$("#jqxinputForm_closeCalendarAfterSelection").jqxForm({
		  	"template" : template_closeCalendarAfterSelection
		});
		

		// dropDownHorizontalAlignment
		let template_dropDownHorizontalAlignment = [{
		   	"bind" : "txtDropDownHorizontalAlignment",
		    "name" : "txtDropDownHorizontalAlignment",
			"type" : "datetime",	
			"width" : "250px",
			"dropDownHorizontalAlignment" : "right"
		}];
		
		$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm({
		  	"template" : template_dropDownHorizontalAlignment
		});
		
		
		// dropDownVerticalAlignment
		let template_dropDownVerticalAlignment = [{
		   	"bind" : "txtDropDownVerticalAlignment",
		    "name" : "txtDropDownVerticalAlignment",
			"type" : "datetime",	
			"width" : "250px",
			"dropDownVerticalAlignment" : "top"
		}];
		
		$("#jqxinputForm_dropDownVerticalAlignment").jqxForm({
		  	"template" : template_dropDownVerticalAlignment
		});
		

		// disabled
		let template_disabled= [{
		   	"bind" : "txtDisabled",
		    "name" : "txtDisabled",
			"type" : "datetime",	
			"width" : "250px",
			"disabled" : true	// property 설정
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		

		// enableBrowserBoundsDetection
		let template_enableBrowserBoundsDetection = [{
		   	"bind" : "txtEnableBrowserBoundsDetection",
		    "name" : "txtEnableBrowserBoundsDetection",
			"type" : "datetime",	
			"width" : "250px",
			"enableBrowserBoundsDetection" : true	// property 설정
		}];
		
 		$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm({
		  	"template" : template_enableBrowserBoundsDetection
		});
		
		
		// enableAbsoluteSelection
		let template_enableAbsoluteSelection = [{
		   	"bind" : "txtEnableAbsoluteSelection",
		    "name" : "txtEnableAbsoluteSelection",
			"type" : "datetime",	
			"width" : "250px",
			"enableAbsoluteSelection" : true	// property 설정
		}];
		
		$("#jqxinputForm_enableAbsoluteSelection").jqxForm({
		  	"template" : template_enableAbsoluteSelection
		});
		
		
		// firstDayOfWeek
		let template_firstDayOfWeek = [{
		   	"bind" : "txtFirstDayOfWeek",
		    "name" : "txtFirstDayOfWeek",
			"type" : "datetime",	
			"width" : "250px",
			"firstDayOfWeek" : 1	// property 설정 (월화수목금토일 순서)
		}];
		
		$("#jqxinputForm_firstDayOfWeek").jqxForm({
		  	"template" : template_firstDayOfWeek
		});
		
		
		// formatString
		let template_formatString = [{
		   	"bind" : "txtFormatString",
		    "name" : "txtFormatString",
			"type" : "datetime",	
			"width" : "250px",
			"formatString" : "yyyy-MM-dd hh:mm:ss"	// property 설정
		}];
		
		$("#jqxinputForm_formatString").jqxForm({
		  	"template" : template_formatString
		});
		

		// height
		let template_height = [{
		   	"bind" : "txtHeight",
		    "name" : "txtHeight",
			"type" : "datetime",	
			"width" : "250px",
			"height" : 40	// property 설정
		}];
		
		$("#jqxinputForm_height").jqxForm({
		  	"template" : template_height
		});
		

		// min
		let template_min = [{
		   	"bind" : "txtMin",
		    "name" : "txtMin",
			"type" : "datetime",	
			"width" : "250px",
			"min" : new Date(2018, 0, 1)	// property 설정
		}];
		
		$("#jqxinputForm_min").jqxForm({
		  	"template" : template_min
		});
		
		
		// max
		let template_max = [{
		   	"bind" : "txtMax",
		    "name" : "txtMax",
			"type" : "datetime",	
			"width" : "250px",
			"max" : new Date(2018, 0, 1)	// property 설정
		}];
		
		$("#jqxinputForm_max").jqxForm({
		  	"template" : template_max
		});
		

		// openDelay
		let template_openDelay = [{
		   	"bind" : "txtOpenDelay",
		    "name" : "txtOpenDelay",
			"type" : "datetime",	
			"width" : "250px",
			"openDelay" : 1000	// property 설정
		}];
		
		$("#jqxinputForm_openDelay").jqxForm({
		  	"template" : template_openDelay
		});
		
		
		// placeHolder
		let template_placeHolder = [{
		   	"bind" : "txtPlaceHolder",
		    "name" : "txtPlaceHolder",
			"type" : "datetime",	
			"width" : "250px",
			"placeHolder" : "This text is a placeHolder"	// property 설정
		}];
		
		$("#jqxinputForm_placeHolder").jqxForm({
		  	"template" : template_placeHolder
		});

		let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
		txtPlaceHolder.val(null);
		
		// popupZIndex
		let template_popupZIndex = [{
		   	"bind" : "txtPopupZIndex",
		    "name" : "txtPopupZIndex",
			"type" : "datetime",	
			"width" : "250px",
			"popupZIndex" : 999999	// property 설정
		}];
		
		$("#jqxinputForm_popupZIndex").jqxForm({
		  	"template" : template_popupZIndex
		});
		
		
		// rtl
		let template_rtl = [{
		   	"bind" : "txtRtl",
		    "name" : "txtRtl",
			"type" : "datetime",	
			"width" : "250px",
			"rtl" : true	// property 설정
		}];
		
		$("#jqxinputForm_rtl").jqxForm({
		  	"template" : template_rtl
		});
		

		// readonly
		let template_readonly = [{
		   	"bind" : "txtReadonly",
		    "name" : "txtReadonly",
			"type" : "datetime",	
			"width" : "250px",
			"readonly" : true	// property 설정
		}];
		
		$("#jqxinputForm_readonly").jqxForm({
		  	"template" : template_readonly
		});
		

		// showFooter
		let template_showFooter = [{
		   	"bind" : "txtShowFooter",
		    "name" : "txtShowFooter",
			"type" : "datetime",	
			"width" : "250px",
			"showFooter" : true	// property 설정
		}];
		
		$("#jqxinputForm_showFooter").jqxForm({
		  	"template" : template_showFooter
		});
		

		// selectionMode
		let template_selectionMode = [{
		   	"bind" : "txtSelectionMode",
			"name" : "txtSelectionMode",
			"type" : "datetime",	
			"width" : "450px",
			"selectionMode" : "range"	// property 설정
		}];
		
		$("#jqxinputForm_selectionMode").jqxForm({
		  	"template" : template_selectionMode
		});
		
		
		// showWeekNumbers
		let template_showWeekNumbers = [{
		   	"bind" : "txtShowWeekNumbers",
			"name" : "txtShowWeekNumbers",
			"type" : "datetime",	
			"width" : "250px",
			"showWeekNumbers" : true	// property 설정
		}];
		
		$("#jqxinputForm_showWeekNumbers").jqxForm({
		  	"template" : template_showWeekNumbers
		});
		
		
		// showTimeButton
		let template_showTimeButton = [{
		   	"bind" : "txtShowTimeButton",
			"name" : "txtShowTimeButton",
			"type" : "datetime",	
			"width" : "250px",
			"showTimeButton" : true	// property 설정
		}];
		
		$("#jqxinputForm_showTimeButton").jqxForm({
		  	"template" : template_showTimeButton
		});
		

		// showCalendarButton
		let template_showCalendarButton = [{
		   	"bind" : "txtShowCalendarButton",
			"name" : "txtShowCalendarButton",
			"type" : "datetime",	
			"width" : "250px",
			"showCalendarButton" : false	// property 설정
		}];
		
		$("#jqxinputForm_showCalendarButton").jqxForm({
		  	"template" : template_showCalendarButton
		});
		
		
		// theme
		let template_theme= [{
		   	"bind" : "txtTheme",
			"name" : "txtTheme",
			"type" : "datetime",	
			"width" : "250px",
			"theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxinputForm_theme").jqxForm({
		  	"template" : template_theme
		});
		
		
		// template
		let template_template = [{
		   	"bind" : "txtTemplate",
			"name" : "txtTemplate",
			"type" : "datetime",	
			"width" : "250px",
			"showTimeButton" : true,
			"template" : "primary"	// property 설정
		}];
		
		$("#jqxinputForm_template").jqxForm({
		  	"template" : template_template
		});
		

		// textAlign
		let template_textAlign = [{
		   	"bind" : "txtTextAlign",
			"name" : "txtTextAlign",
			"type" : "datetime",	
			"width" : "250px",
			"textAlign" : "right"	// property 설정
		}];
		
		$("#jqxinputForm_textAlign").jqxForm({
		  	"template" : template_textAlign
		});
		

		// todayString
		let template_todayString = [{
		   	"bind" : "txtTodayString",
			"name" : "txtTodayString",
			"type" : "datetime",	
			"width" : "250px",	
			"showFooter" : true, 	// 하단 푸터 출력
			"todayString" : "오늘날짜로"	// property 설정
		}];
		
		$("#jqxinputForm_todayString").jqxForm({
		  	"template" : template_todayString
		});
		
		// case 2 : element에 property 설정
		let txtTodayString = 
			$("#jqxinputForm_todayString").jqxForm("getComponentByName", "txtTodayString");
		// txtTodayString.jqxDateTimeInput("todayString", "new text");
		
		
		/* Get Property */
		let todayString = txtTodayString.jqxDateTimeInput("todayString");
		
		// value
		let template_value = [{
		   	"bind" : "txtValue",
			"name" : "txtValue",
			"type" : "datetime",	
			"width" : "250px",	
			"showFooter" : true, 	// 하단 푸터 출력
			// "value" : new Date(2018, 11, 31)	// property 설정
		}];
		
		$("#jqxinputForm_value").jqxForm({
		  	"template" : template_value
		});
		

		// width
		let template_width = [{
		   	"bind" : "txtWidth",
			"name" : "txtWidth",
			"type" : "datetime",	
			"width" : "250px",		// property 설정
		}];
		
		$("#jqxinputForm_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		// change
		let template_change = [{
		    "bind" : "txtChange",
		    "name" : "txtChange",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_change").jqxForm({
		  	"template" : template_change
		});
		
		
		/* 이벤트 설정 */
		let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
		txtChange.on("change", function(event) {
		   	let date = event.args.date;		// inputBox에 입력된 값
		   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
		   	let value = txtChange.val();
		   	
		   	$("#log_change").html("date : " + date + " // type : " + type + " // value : " + value);
		});
		
		
		// close
		let template_close = [{
			"bind" : "txtClose",
			"name" : "txtClose",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_close").jqxForm({
		  	"template" : template_close
		});
		
		
		/* 이벤트 설정 */
		let txtClose = $("#jqxinputForm_close").jqxForm("getComponentByName", "txtClose"); 
		txtClose.on("close", function(event) {
		   	$("#log_close").html("close event occurred");
		});
		
		
		// open
		let template_open = [{
			"bind" : "txtOpen",
			"name" : "txtOpen",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_open").jqxForm({
		  	"template" : template_open
		});
		
		
		/* 이벤트 설정 */
		let txtOpen = $("#jqxinputForm_open").jqxForm("getComponentByName", "txtOpen"); 
		txtOpen.on("open", function(event) {
		   	$("#log_open").html("Open event occurred");
		});
		
		
		// textchanged
		let template_textchanged = [{
			"bind" : "txtTextchanged",
			"name" : "txtTextchanged",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_textchanged").jqxForm({
		  	"template" : template_textchanged
		});
		
		
		/* 이벤트 설정 */
		let txtTextchanged = $("#jqxinputForm_textchanged").jqxForm("getComponentByName", "txtTextchanged"); 
		txtTextchanged.on("textchanged", function(event) {
		   	$("#log_textchanged").html("text changed : " + txtTextchanged.val());
		});
		
		
		// valueChanged
		/* 초기설정 */
		let template_valueChanged = [{
			"bind" : "txtValueChanged",
			"name" : "txtValueChanged",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_valueChanged").jqxForm({
		  	"template" : template_valueChanged
		});
		
		
		/* 이벤트 설정 */
		let txtValueChanged = $("#jqxinputForm_valueChanged").jqxForm("getComponentByName", "txtValueChanged"); 
		txtValueChanged.on("valueChanged", function(event) {
		   	$("#log_valueChanged").html("value changed : " + event.args.date);
		});

		
		/* Methods */
		// close
		let template_method_close = [{
		    "bind" : "txtMethodClose",
		    "name" : "txtMethodClose",
			"type" : "datetime",	
			"width" : "300px",	
			"dropDownHorizontalAlignment" : "right"
		}];
		
		$("#jqxinputForm_method_close").jqxForm({
		  	"template" : template_method_close
		});
		
		
		/* 이벤트 설정 */
		let txtMethodClose = $("#jqxinputForm_method_close").jqxForm("getComponentByName", "txtMethodClose");
		 
		$("#btnClose").on("click", function() {
		    txtMethodClose.jqxDateTimeInput("close");
		});
		
		
		// destroy
		let template_destroy = [{
		    "bind" : "txtDestroy",
		    "name" : "txtDestroy",
			"type" : "datetime",	
			"width" : "250px",	
		}];
		
		$("#jqxinputForm_destroy").jqxForm({
		  	"template" : template_destroy
		});
		
		
		/* 이벤트 설정 */
		let txtDestroy = $("#jqxinputForm_destroy").jqxForm("getComponentByName", "txtDestroy");
		 
		$("#btnDestroy").on("click", function() {
		    txtDestroy.jqxDateTimeInput("destroy");
		});
		
		
		// focus
		let template_focus = [{
		    "bind" : "txtFocus",
		    "name" : "txtFocus",
			"type" : "datetime",	
			"width" : "250px",	
		}];
		
		$("#jqxinputForm_focus").jqxForm({
		  	"template" : template_focus
		});
		
		
		/* 이벤트 설정 */
		let txtFocus = $("#jqxinputForm_focus").jqxForm("getComponentByName", "txtFocus");
		 
		$("#btnFocus").on("click", function() {
		    txtFocus.jqxDateTimeInput("focus");
		});
		
		
		// getRange
		let template_getRange = [{
		    "bind" : "txtGetRange",
		    "name" : "txtGetRange",
			"type" : "datetime",	
			"width" : "450px",
			"selectionMode" : "range"	
		}];
		
		$("#jqxinputForm_getRange").jqxForm({
		  	"template" : template_getRange
		});
		
		
		let txtGetRange = $("#jqxinputForm_getRange").jqxForm("getComponentByName", "txtGetRange");
		
		/* Sets the range */
		txtGetRange.jqxDateTimeInput("setRange", new Date(2018, 1, 1), new Date(2018, 11, 31));
		
		/* 이벤트 설정 */
		$("#btnGetRange").on("click", function() {
		    let range = txtGetRange.jqxDateTimeInput("getRange");
		    let from = range.from;
		    let to = range.to;
		    
		    alert("range -> from : " + from + " // to : " + to);
		});
		
		
		// getText
		let template_getText = [{
		    "bind" : "txtGetText",
		    "name" : "txtGetText",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_getText").jqxForm({
		  	"template" : template_getText
		});
		
		
		/* 이벤트 설정 */
		$("#btnGetText").on("click", function() {
			let txtGetText = $("#jqxinputForm_getText").jqxForm("getComponentByName", "txtGetText");
		    let text = txtGetText.jqxDateTimeInput("getText");
		    
		    alert("text : " + text);
		});
		
		
		// getDate
		let template_getDate = [{
		    "bind" : "txtGetDate",
		    "name" : "txtGetDate",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_getDate").jqxForm({
		  	"template" : template_getDate
		});
		
		
		/* 이벤트 설정 */
		$("#btnGetDate").on("click", function() {
			let txtGetDate = $("#jqxinputForm_getDate").jqxForm("getComponentByName", "txtGetDate");
		    let date = txtGetDate.jqxDateTimeInput("getDate");
		    
		    alert("date : " + date);
		});
		
		
		// getMaxDate
		let template_getMaxDate = [{
		    "bind" : "txtGetMaxDate",
		    "name" : "txtGetMaxDate",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_getMaxDate").jqxForm({
		  	"template" : template_getMaxDate
		});
		
		
		/* 이벤트 설정 */
		$("#btnGetMaxDate").on("click", function() {
			let txtGetMaxDate = $("#jqxinputForm_getMaxDate").jqxForm("getComponentByName", "txtGetMaxDate");
		    let maxDate = txtGetMaxDate.jqxDateTimeInput("getMaxDate");
		    
		    alert("max date : " + maxDate);
		});
		
		
		// getMinDate
		let template_getMinDate = [{
		    "bind" : "txtGetMinDate",
		    "name" : "txtGetMinDate",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_getMinDate").jqxForm({
		  	"template" : template_getMinDate
		});
		
		
		/* 이벤트 설정 */
		$("#btnGetMinDate").on("click", function() {
			let txtGetMinDate = $("#jqxinputForm_getMinDate").jqxForm("getComponentByName", "txtGetMinDate");
		    let minDate = txtGetMinDate.jqxDateTimeInput("getMinDate");
		    
		    alert("min date : " + minDate);
		});
		
		
		// open
		let template_method_open = [{
		    "bind" : "txtMethodOpen",
		    "name" : "txtMethodOpen",
			"type" : "datetime",	
			"width" : "250px",	
		}];
		
		$("#jqxinputForm_method_open").jqxForm({
		  	"template" : template_method_open
		});
		
		
		/* 이벤트 설정 */
		let txtMethodOpen = $("#jqxinputForm_method_open").jqxForm("getComponentByName", "txtMethodOpen");
		 
		$("#btnOpen").on("click", function() {
		    txtMethodOpen.jqxDateTimeInput("open");
		});
		
		
		// setRange
		let template_setRange = [{
			"bind" : "txtSetRange",
			"name" : "txtSetRange",
			"type" : "datetime",	
			"width" : "450px",	
			"selectionMode" : "range"
		}];
		
		$("#jqxinputForm_setRange").jqxForm({
		  	"template" : template_setRange
		});
		
		
		/* 이벤트 설정 */
		let txtSetRange = $("#jqxinputForm_setRange").jqxForm("getComponentByName", "txtSetRange");
		 
		$("#btnSetRange").on("click", function() {
			let startDate = new Date(2018, 0, 1);
			let endDate = new Date(2018, 11, 31);	
		    txtSetRange.jqxDateTimeInput("setRange", startDate, endDate);
		});
		
		
		// setMaxDate
		let template_setMaxDate = [{
			"bind" : "txtSetMaxDate",
			"name" : "txtSetMaxDate",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_setMaxDate").jqxForm({
		  	"template" : template_setMaxDate
		});
		
		
		/* 이벤트 설정 */
		$("#btnSetMaxDate").on("click", function() {
			let txtSetMaxDate = $("#jqxinputForm_setMaxDate").jqxForm("getComponentByName", "txtSetMaxDate");
			let maxDate = new Date(2017, 11, 31);
		
		    txtSetMaxDate.jqxDateTimeInput("setMaxDate", maxDate);
		});
		
		
		// setMinDate
		let template_setMinDate = [{
			"bind" : "txtSetMinDate",
			"name" : "txtSetMinDate",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_setMinDate").jqxForm({
		  	"template" : template_setMinDate
		});
		
		
		/* 이벤트 설정 */
		$("#btnSetMinDate").on("click", function() {
			let txtSetMinDate = $("#jqxinputForm_setMinDate").jqxForm("getComponentByName", "txtSetMinDate");
			let minDate = new Date(2018, 11, 31);
		
		    txtSetMinDate.jqxDateTimeInput("setMinDate", minDate);
		});
		
		
		// setDate
		let template_setDate = [{
			"bind" : "txtSetDate",
			"name" : "txtSetDate",
			"type" : "datetime",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_setDate").jqxForm({
		  	"template" : template_setDate
		});
		
		
		/* 이벤트 설정 */
		$("#btnSetDate").on("click", function() {
			let txtSetDate = $("#jqxinputForm_setDate").jqxForm("getComponentByName", "txtSetDate");
			let date = new Date(2018, 11, 31);
		
		    txtSetDate.jqxDateTimeInput("setDate", date);
		});
		
		
		// val
		let template_val = [{
			"bind" : "txtVal",
			"name" : "txtVal",
			"type" : "datetime",	
			"width" : "250px"
		}];

		$("#jqxinputForm_val").jqxForm({
		  	"template" : template_val
		});


		/* 이벤트 설정 */
		$("#btnVal").on("click", function() {
			let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");
			let date = new Date(2018, 11, 31);
			txtVal.jqxDateTimeInput("val", date);
		});
	});
</script>

<div class="search">
	<div class="search">
		<input id="searchField" type="text" placeholder="I am searching for" value="" autocomplete="off">
	</div>
</div>
<div id="properties">
	<h2 class="documentation-top-header">Properties</h2>
	
	<table class="documentation-table">
		<tbody>
			<tr>
            	<th>Name</th>
                <th>Type</th>
                <th>Default</th>
			</tr>
			<!-- animationType -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationType</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"slide"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_animationType"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>애니메이션을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'fade'</p>
						<p>'slide'</p>
						<p>'none'</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_animationType = [{
   	"bind" : "txtAnimationType",
	"name" : "txtAnimationType",
	"type" : "datetime",	
	"width" : "250px",	
	"animationType" : "fade"	// property 설정
}];

$("#jqxinputForm_animationType").jqxForm({
  	"template" : template_animationType
});

// case 2 : element에 property 설정
let txtAnimationType = 
	$("#jqxinputForm_animationType").jqxForm("getComponentByName", "txtAnimationType");
txtAnimationType.jqxDateTimeInput("animationType", "none");


/* Get Property */
let txtAnimationType = 
	$("#jqxinputForm_animationType").jqxForm("getComponentByName", "txtAnimationType");
let animationType = txtAnimationType.jqxDateTimeInput("animationType"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- allowNullDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">allowNullDate</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					true
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_allowNullDate"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>값에 null을 허용하거나 허용하는지 여부를 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_allowNullDate = [{
   	"bind" : "txtAllowNullDate",
	"name" : "txtAllowNullDate",
	"type" : "datetime",	
	"width" : "250px",	
	"allowNullDate" : false	// property 설정
}];

$("#jqxinputForm_allowNullDate").jqxForm({
  	"template" : template_allowNullDate
});

// case 2 : element에 property 설정
let txtAllowNullDate = 
	$("#jqxinputForm_allowNullDate").jqxForm("getComponentByName", "txtAllowNullDate");
txtAllowNullDate.jqxDateTimeInput("allowNullDate", true);


/* Get Property */
let txtAllowNullDate = 
	$("#jqxinputForm_allowNullDate").jqxForm("getComponentByName", "txtAllowNullDate");
let allowNullDate = txtAllowNullDate.jqxDateTimeInput("allowNullDate"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- allowKeyboardDelete -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">allowKeyboardDelete</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					true
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_allowKeyboardDelete"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>'del' 키로 전체값을 삭제하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_allowKeyboardDelete = [{
   	"bind" : "txtAllowKeyboardDelete",
	"name" : "txtAllowKeyboardDelete",
	"type" : "datetime",	
	"width" : "250px",	
	"allowKeyboardDelete" : false	// property 설정
}];

$("#jqxinputForm_allowKeyboardDelete").jqxForm({
  	"template" : template_allowKeyboardDelete
});

// case 2 : element에 property 설정
let txtAllowKeyboardDelete = 
	$("#jqxinputForm_allowKeyboardDelete").jqxForm("getComponentByName", "txtAllowKeyboardDelete");
txtAllowKeyboardDelete.jqxDateTimeInput("allowKeyboardDelete", true);


/* Get Property */
let txtAllowKeyboardDelete = 
	$("#jqxinputForm_allowKeyboardDelete").jqxForm("getComponentByName", "txtAllowKeyboardDelete");
let allowKeyboardDelete = txtAllowKeyboardDelete.jqxDateTimeInput("allowKeyboardDelete"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- clearString -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">clearString</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"Clear"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_clearString"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calandar 하단에 초기화 기능을 수행하는 'Clear'문자열을 설정하거나 가져옵니다.</p>
						<p>위 기능을 사용하려면 'showFooter' 프로퍼티가 true여야 합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_clearString = [{
   	"bind" : "txtClearString",
	"name" : "txtClearString",
	"type" : "datetime",	
	"width" : "250px",	
	"showFooter" : true, 	// 하단 푸터 출력
	"clearString" : "초기화"	// property 설정
}];

$("#jqxinputForm_clearString").jqxForm({
  	"template" : template_clearString
});

// case 2 : element에 property 설정
let txtClearString = 
	$("#jqxinputForm_clearString").jqxForm("getComponentByName", "txtClearString");
txtClearString.jqxDateTimeInput("clearString", "new text");


/* Get Property */
let txtClearString = 
	$("#jqxinputForm_clearString").jqxForm("getComponentByName", "txtClearString");
let clearString = txtClearString.jqxDateTimeInput("clearString"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- culture -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">culture</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"default"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_culture"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>jqxDateTimeInput의 언어셋을 설정하거나 가져옵니다. cultureInfo의 name 속성을 사용합니다.</p>
						<p>위 기능을 사용하려면 '해당 언어셋.js' 파일이 필요합니다.(ex : globalize/globalize.culture.ko-KR.js)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_culture = [{
   	"bind" : "txtCulture",
	"name" : "txtCulture",
	"type" : "datetime",	
	"width" : "250px",	
	"culture" : "ko-KR"	// property 설정
}];

$("#jqxinputForm_culture").jqxForm({
  	"template" : template_culture
});

// case 2 : element에 property 설정
let txtCulture = 
	$("#jqxinputForm_culture").jqxForm("getComponentByName", "txtCulture");
txtCulture.jqxDateTimeInput("culture", "en-US");


/* Get Property */
let txtCulture = 
	$("#jqxinputForm_culture").jqxForm("getComponentByName", "txtCulture");
let culture = txtCulture.jqxDateTimeInput("culture"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- closeDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">closeDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					400
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_closeDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar가 숨겨지는 애니메이션 속도를 설정하거나 가져옵니다. (ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_closeDelay = [{
   	"bind" : "txtCloseDelay",
	"name" : "txtCloseDelay",
	"type" : "datetime",	
	"width" : "250px",
	"closeDelay" : 1000	// property 설정	
}];

$("#jqxinputForm_closeDelay").jqxForm({
  	"template" : template_closeDelay
});

// case 2 : element에 property 설정
let txtCloseDelay = 
	$("#jqxinputForm_closeDelay").jqxForm("getComponentByName", "txtCloseDelay");
txtCloseDelay.jqxDateTimeInput("closeDelay", "2000");


/* Get Property */
let txtCloseDelay = 
	$("#jqxinputForm_closeDelay").jqxForm("getComponentByName", "txtCloseDelay");
let closeDelay = txtCloseDelay.jqxDateTimeInput("closeDelay"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- closeCalendarAfterSelection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">closeCalendarAfterSelection</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					true
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_closeCalendarAfterSelection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar에서 값 선택 후 popup이 종료되는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_closeCalendarAfterSelection = [{
   	"bind" : "txtCloseCalendarAfterSelection",
	"name" : "txtCloseCalendarAfterSelection",
	"type" : "datetime",	
	"width" : "250px",
	"closeCalendarAfterSelection" : false	// property 설정
}];

$("#jqxinputForm_closeCalendarAfterSelection").jqxForm({
  	"template" : template_closeCalendarAfterSelection
});

// case 2 : element에 property 설정
let txtCloseCalendarAfterSelection = 
	$("#jqxinputForm_closeCalendarAfterSelection").jqxForm("getComponentByName", "txtCloseCalendarAfterSelection");
txtCloseCalendarAfterSelection.jqxDateTimeInput("closeCalendarAfterSelection", true);


/* Get Property */
let txtCloseCalendarAfterSelection = 
	$("#jqxinputForm_closeCalendarAfterSelection").jqxForm("getComponentByName", "txtCloseCalendarAfterSelection");
let closeCalendarAfterSelection = txtCloseCalendarAfterSelection.jqxDateTimeInput("closeCalendarAfterSelection"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- dropDownHorizontalAlignment -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownHorizontalAlignment</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"left"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_dropDownHorizontalAlignment"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar에서 Dropdown의 수평 정렬 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'left'</p>
						<p>'right'</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_dropDownHorizontalAlignment = [{
   	"bind" : "txtDropDownHorizontalAlignment",
	"name" : "txtDropDownHorizontalAlignment",
	"type" : "datetime",	
	"width" : "250px",
	"dropDownHorizontalAlignment" : "right"	// property 설정
}];

$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm({
  	"template" : template_dropDownHorizontalAlignment
});

// case 2 : element에 property 설정
let txtDropDownHorizontalAlignment = 
	$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm("getComponentByName", "txtDropDownHorizontalAlignment");
txtDropDownHorizontalAlignment.jqxDateTimeInput("dropDownHorizontalAlignment", "left");


/* Get Property */
let txtDropDownHorizontalAlignment = 
	$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm("getComponentByName", "txtDropDownHorizontalAlignment");
let dropDownHorizontalAlignment = txtDropDownHorizontalAlignment.jqxDateTimeInput("dropDownHorizontalAlignment"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- dropDownVerticalAlignment -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownVerticalAlignment</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"bottom"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_dropDownVerticalAlignment"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar에서 Dropdown의 수직 정렬 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'top'</p>
						<p>'bottom'</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_dropDownVerticalAlignment = [{
   	"bind" : "txtDropDownVerticalAlignment",
	"name" : "txtDropDownVerticalAlignment",
	"type" : "datetime",	
	"width" : "250px",
	"dropDownVerticalAlignment" : "top"	// property 설정
}];

$("#jqxinputForm_dropDownVerticalAlignment").jqxForm({
  	"template" : template_dropDownVerticalAlignment
});

// case 2 : element에 property 설정
let txtDropDownVerticalAlignment = 
	$("#jqxinputForm_dropDownVerticalAlignment").jqxForm("getComponentByName", "txtDropDownVerticalAlignment");
txtDropDownVerticalAlignment.jqxDateTimeInput("dropDownVerticalAlignment", "bottom");


/* Get Property */
let txtDropDownVerticalAlignment = 
	$("#jqxinputForm_dropDownVerticalAlignment").jqxForm("getComponentByName", "txtDropDownVerticalAlignment");
let dropDownVerticalAlignment = txtDropDownVerticalAlignment.jqxDateTimeInput("dropDownVerticalAlignment"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- disabled -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">disabled</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_disabled"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯을 비활성화하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_disabled = [{
   	"bind" : "txtDisabled",
	"name" : "txtDisabled",
	"type" : "datetime",	
	"width" : "250px",
	"disabled" : true	// property 설정
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = 
	$("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxDateTimeInput("disabled", false);


/* Get Property */
let txtDisabled = 
	$("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxDateTimeInput("disabled"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- enableBrowserBoundsDetection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableBrowserBoundsDetection</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_enableBrowserBoundsDetection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯 아래에 충분한 공간이 없는 경우 Calendar popup이 위에 열리는 프로퍼티를 설정하거나 가져옵니다. </p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_enableBrowserBoundsDetection = [{
   	"bind" : "txtEnableBrowserBoundsDetection",
	"name" : "txtEnableBrowserBoundsDetection",
	"type" : "datetime",	
	"width" : "250px",
	"enableBrowserBoundsDetection" : true	// property 설정
}];

$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm({
  	"template" : template_enableBrowserBoundsDetection
});

// case 2 : element에 property 설정
let txtEnableBrowserBoundsDetection = 
	$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm("getComponentByName", "txtEnableBrowserBoundsDetection");
txtEnableBrowserBoundsDetection.jqxDateTimeInput("enableBrowserBoundsDetection", false);


/* Get Property */
let txtEnableBrowserBoundsDetection = 
	$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm("getComponentByName", "txtEnableBrowserBoundsDetection");
let enableBrowserBoundsDetection = 
	txtEnableBrowserBoundsDetection.jqxDateTimeInput("enableBrowserBoundsDetection"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- enableAbsoluteSelection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableAbsoluteSelection</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_enableAbsoluteSelection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯에 입력시 1개 텍스트씩 선택되도록 하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_enableAbsoluteSelection = [{
   	"bind" : "txtEnableAbsoluteSelection",
	"name" : "txtEnableAbsoluteSelection",
	"type" : "datetime",	
	"width" : "250px",
	"enableAbsoluteSelection" : true	// property 설정
}];

$("#jqxinputForm_enableAbsoluteSelection").jqxForm({
  	"template" : template_enableAbsoluteSelection
});

// case 2 : element에 property 설정
let txtEnableAbsoluteSelection = 
	$("#jqxinputForm_enableAbsoluteSelection").jqxForm("getComponentByName", "txtEnableAbsoluteSelection");
txtEnableAbsoluteSelection.jqxDateTimeInput("enableAbsoluteSelection", false);


/* Get Property */
let txtEnableAbsoluteSelection = 
	$("#jqxinputForm_enableAbsoluteSelection").jqxForm("getComponentByName", "txtEnableAbsoluteSelection");
let enableAbsoluteSelection = 
	txtEnableAbsoluteSelection.jqxDateTimeInput("enableAbsoluteSelection"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- firstDayOfWeek -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">firstDayOfWeek</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					0
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_firstDayOfWeek"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar popup의 컬럼 순서를 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<p>기본값으로 일요일(0)을 처음컬럼으로 설정합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_firstDayOfWeek = [{
   	"bind" : "txtFirstDayOfWeek",
	"name" : "txtFirstDayOfWeek",
	"type" : "datetime",	
	"width" : "250px",
	"firstDayOfWeek" : 1	// property 설정
}];

$("#jqxinputForm_firstDayOfWeek").jqxForm({
  	"template" : template_firstDayOfWeek
});

// case 2 : element에 property 설정
let txtFirstDayOfWeek = 
	$("#jqxinputForm_firstDayOfWeek").jqxForm("getComponentByName", "txtFirstDayOfWeek");
txtFirstDayOfWeek.jqxDateTimeInput("firstDayOfWeek", false);


/* Get Property */
let txtFirstDayOfWeek = 
	$("#jqxinputForm_firstDayOfWeek").jqxForm("getComponentByName", "txtFirstDayOfWeek");
let firstDayOfWeek = 
	txtFirstDayOfWeek.jqxDateTimeInput("firstDayOfWeek"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- formatString -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">formatString</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"dd/MM/yyyy"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_formatString"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>date time의 포맷을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'d'		- 일 표기 (1자리)</p>
						<p>'dd'		- 일 표기 (2자리)</p>
						<p>'ddd'	- 요일 표기 (약어명)</p>
						<p>'dddd'	- 요일 표기 (전체명)</p>
						<p>'h'		- 시 표기 1 ~12</p>
						<p>'hh'		- 시 표기 01 ~ 12</p>
						<p>'H'		- 시 표기 0 ~ 23</p>
						<p>'HH'		- 시 표기 00 ~ 23</p>
						<p>'m'		- 분 표기 0 ~ 59</p>
						<p>'mm'		- 분 표기 00 ~ 59</p>
						<p>'M'		- 월 표기 1 ~ 12</p>
						<p>'MM'		- 월 표기 01 ~ 12</p>
						<p>'MMM'	- 월 표기 (약어명)</p>
						<p>'MMMM'	- 월 표기 (전체명)</p>
						<p>'s'		- 초 표기 0 ~ 59</p>
						<p>'ss'		- 초 표기 00 ~ 59</p>
						<p>'t'		- 정오표기 A/M</p>
						<p>'tt'		- 정오표기 AM/PM</p>
						<p>'y'		- 년도 표기 0 ~ 99</p>
						<p>'yy'		- 년도 표기 00 ~ 99</p>
						<p>'yyy'	- 년도 표기 (3자리)</p>
						<p>'yyyy'	- 년도 표기 (4자리)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_formatString = [{
   	"bind" : "txtFormatString",
	"name" : "txtFormatString",
	"type" : "datetime",	
	"width" : "250px",
	"formatString" : "yyyy-MM-dd hh:mm:ss"	// property 설정
}];

$("#jqxinputForm_formatString").jqxForm({
  	"template" : template_formatString
});

// case 2 : element에 property 설정
let txtFormatString = $("#jqxinputForm_formatString").jqxForm("getComponentByName", "txtFormatString");
txtFormatString.jqxDateTimeInput("formatString", "dd");


/* Get Property */
let txtFormatString = 
	$("#jqxinputForm_formatString").jqxForm("getComponentByName", "txtFormatString");
let formatString = txtFormatString.jqxDateTimeInput("formatString"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- height -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">height</span>
				</td>
				<td>
					<span>Number/String</span>
				</td>
				<td>
					25
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_height"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_height = [{
   	"bind" : "txtHeight",
	"name" : "txtHeight",
	"type" : "datetime",	
	"width" : "250px",
	"height" : 40	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxDateTimeInput("height", 50);


/* Get Property */
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxDateTimeInput("height"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- min -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">min</span>
				</td>
				<td>
					<span>Date</span>
				</td>
				<td>
					Date(1900, 1, 1)
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_min"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 최소 날짜값을 설정하거나 가져옵니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_min = [{
   	"bind" : "txtMin",
	"name" : "txtMin",
	"type" : "datetime",	
	"width" : "250px",
	"min" : new Date(2018, 0, 1)	// property 설정
}];

$("#jqxinputForm_min").jqxForm({
  	"template" : template_min
});

// case 2 : element에 property 설정
let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
txtMin.jqxDateTimeInput("min", new Date(2010, 0, 1));


/* Get Property */
let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
let min = txtMin.jqxDateTimeInput("min"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- max -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">max</span>
				</td>
				<td>
					<span>Date</span>
				</td>
				<td>
					Date(2100, 0, 1)
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_max"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 최대 날짜값을 설정하거나 가져옵니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_max = [{
   	"bind" : "txtMax",
	"name" : "txtMax",
	"type" : "datetime",	
	"width" : "250px",
	"max" : new Date(2018, 0, 1)	// property 설정
}];

$("#jqxinputForm_max").jqxForm({
  	"template" : template_max
});

// case 2 : element에 property 설정
let txtMax = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtMax");
txtMax.jqxDateTimeInput("max", new Date(2020, 0, 1));


/* Get Property */
let txtMax = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtMax");
let max = txtMax.jqxDateTimeInput("max"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- openDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">openDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					250
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_openDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar가 나타나는 애니메이션 속도를 설정하거나 가져옵니다. (ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_openDelay = [{
   	"bind" : "txtOpenDelay",
	"name" : "txtOpenDelay",
	"type" : "datetime",	
	"width" : "250px",
	"openDelay" : 1000	// property 설정
}];

$("#jqxinputForm_openDelay").jqxForm({
  	"template" : template_openDelay
});

// case 2 : element에 property 설정
let txtOpenDelay = $("#jqxinputForm_openDelay").jqxForm("getComponentByName", "txtOpenDelay");
txtOpenDelay.jqxDateTimeInput("openDelay", 2000);


/* Get Property */
let txtOpenDelay = $("#jqxinputForm_openDelay").jqxForm("getComponentByName", "txtOpenDelay");
let openDelay = txtOpenDelay.jqxDateTimeInput("openDelay"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- placeHolder -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">placeHolder</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					""
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_placeHolder"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>placeHolder 텍스트를 설정하거나 가져옵니다.</p>
						<p>placeHolder는 값이 null인 경우 나타납니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_placeHolder = [{
   	"bind" : "txtPlaceHolder",
	"name" : "txtPlaceHolder",
	"type" : "datetime",	
	"width" : "250px",
	"placeHolder" : "This text is placeHolder"	// property 설정
}];

$("#jqxinputForm_placeHolder").jqxForm({
  	"template" : template_placeHolder
});

// case 2 : element에 property 설정
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
txtPlaceHolder.val(null);
txtPlaceHolder.jqxDateTimeInput("placeHolder", "test msg");


/* Get Property */
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
let placeHolder = txtPlaceHolder.jqxDateTimeInput("placeHolder"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- popupZIndex -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">popupZIndex</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					2000
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_popupZIndex"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>popup의 z-index를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_popupZIndex = [{
   	"bind" : "txtPopupZIndex",
	"name" : "txtPopupZIndex",
	"type" : "datetime",	
	"width" : "250px",
	"popupZIndex" : 999999	// property 설정
}];

$("#jqxinputForm_popupZIndex").jqxForm({
  	"template" : template_popupZIndex
});

// case 2 : element에 property 설정
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
txtPopupZIndex.jqxDateTimeInput("popupZIndex", 1000);


/* Get Property */
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
let popupZIndex = txtPopupZIndex.jqxDateTimeInput("popupZIndex"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- rtl -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">rtl</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_rtl"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>우측정렬을 사용할지 설정하거나 현재 우측정렬상태인지 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_rtl = [{
   	"bind" : "txtRtl",
	"name" : "txtRtl",
	"type" : "datetime",	
	"width" : "250px",
	"rtl" : true	// property 설정
}];

$("#jqxinputForm_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
txtRtl.jqxDateTimeInput("rtl", true);


/* Get Property */
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
let rtl = txtRtl.jqxDateTimeInput("rtl"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- readonly -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">readonly</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_readonly"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>readonly property를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_readonly = [{
	"bind" : "txtReadonly",
	"name" : "txtReadonly",
	"type" : "datetime",	
	"width" : "250px",
	"readonly" : true	// property 설정
}];

$("#jqxinputForm_readonly").jqxForm({
  	"template" : template_readonly
});

// case 2 : element에 property 설정
let txtReadonly = $("#jqxinputForm_readonly").jqxForm("getComponentByName", "txtReadonly");
txtReadonly.jqxDateTimeInput("readonly", true);


/* Get Property */
let txtReadonly = $("#jqxinputForm_readonly").jqxForm("getComponentByName", "txtReadonly");
let readonly = txtReadonly.jqxDateTimeInput("readonly"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- showFooter -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">showFooter</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_showFooter"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar 하단 footer를 나타내는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_showFooter = [{
   	"bind" : "txtShowFooter",
	"name" : "txtShowFooter",
	"type" : "datetime",	
	"width" : "250px",
	"showFooter" : true	// property 설정
}];

$("#jqxinputForm_showFooter").jqxForm({
  	"template" : template_showFooter
});

// case 2 : element에 property 설정
let txtShowFooter = $("#jqxinputForm_showFooter").jqxForm("getComponentByName", "txtShowFooter");
txtShowFooter.jqxDateTimeInput("showFooter", true);


/* Get Property */
let txtShowFooter = $("#jqxinputForm_showFooter").jqxForm("getComponentByName", "txtShowFooter");
let showFooter = txtShowFooter.jqxDateTimeInput("showFooter"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- selectionMode -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">selectionMode</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"default"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_selectionMode"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar의 선택모드를 설정합니다</p>
						<h4>Possible Values</h4>
						<p>'none' - 선택안함</p>
						<p>'default' - 한개선택</p>
						<p>'range' - 범위선택</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_selectionMode = [{
   	"bind" : "txtSelectionMode",
	"name" : "txtSelectionMode",
	"type" : "datetime",	
	"width" : "450px",
	"selectionMode" : "range"	// property 설정
}];

$("#jqxinputForm_selectionMode").jqxForm({
  	"template" : template_selectionMode
});

// case 2 : element에 property 설정
let txtSelectionMode = $("#jqxinputForm_selectionMode").jqxForm("getComponentByName", "txtSelectionMode");
txtSelectionMode.jqxDateTimeInput("selectionMode", "none");


/* Get Property */
let txtSelectionMode = $("#jqxinputForm_selectionMode").jqxForm("getComponentByName", "txtSelectionMode");
let selectionMode = txtSelectionMode.jqxDateTimeInput("selectionMode"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- showWeekNumber -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">showWeekNumbers</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_showWeekNumbers"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar의 좌측에 주 번호를 출력하는 property를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_showWeekNumbers = [{
   	"bind" : "txtShowWeekNumbers",
	"name" : "txtShowWeekNumbers",
	"type" : "datetime",	
	"width" : "250px",
	"showWeekNumbers" : true	// property 설정
}];

$("#jqxinputForm_showWeekNumbers").jqxForm({
  	"template" : template_showWeekNumbers
});

// case 2 : element에 property 설정
let txtShowWeekNumbers = $("#jqxinputForm_showWeekNumbers").jqxForm("getComponentByName", "txtShowWeekNumbers");
txtShowWeekNumbers.jqxDateTimeInput("showWeekNumbers", true);


/* Get Property */
let txtShowWeekNumbers = $("#jqxinputForm_showWeekNumbers").jqxForm("getComponentByName", "txtShowWeekNumbers");
let showWeekNumbers = txtShowWeekNumbers.jqxDateTimeInput("showWeekNumbers"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- showTimeButton -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">showTimeButton</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_showTimeButton"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>시간 popup button property를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_showTimeButton = [{
   	"bind" : "txtShowTimeButton",
	"name" : "txtShowTimeButton",
	"type" : "datetime",	
	"width" : "250px",
	"showTimeButton" : true	// property 설정
}];

$("#jqxinputForm_showTimeButton").jqxForm({
  	"template" : template_showTimeButton
});

// case 2 : element에 property 설정
let txtShowTimeButton = $("#jqxinputForm_showTimeButton").jqxForm("getComponentByName", "txtShowTimeButton");
txtShowTimeButton.jqxDateTimeInput("showTimeButton", true);


/* Get Property */
let txtShowTimeButton = $("#jqxinputForm_showTimeButton").jqxForm("getComponentByName", "txtShowTimeButton");
let showTimeButton = txtShowTimeButton.jqxDateTimeInput("showTimeButton"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- showCalendarButton -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">showCalendarButton</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					true
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_showCalendarButton"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>달력 popup button property를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_showCalendarButton = [{
   	"bind" : "txtShowCalendarButton",
	"name" : "txtShowCalendarButton",
	"type" : "datetime",	
	"width" : "250px",
	"showCalendarButton" : false	// property 설정
}];

$("#jqxinputForm_showCalendarButton").jqxForm({
  	"template" : template_showCalendarButton
});

// case 2 : element에 property 설정
let txtShowCalendarButton = $("#jqxinputForm_showCalendarButton").jqxForm("getComponentByName", "txtShowCalendarButton");
txtShowCalendarButton.jqxDateTimeInput("showCalendarButton", true);


/* Get Property */
let txtShowCalendarButton = $("#jqxinputForm_showCalendarButton").jqxForm("getComponentByName", "txtShowTimeButton");
let showCalendarButton = txtShowCalendarButton.jqxDateTimeInput("showCalendarButton"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- theme -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">theme</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					""
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_theme"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 theme를 설정합니다.</p>
						<p>css파일은 한 쌍으로 사용되며 jqx.base.css, jqx.[theme name].css로 구분됩니다. </p>
						<p>base stylesheet는 위젯의 레이아웃을 설정하며. theme name stylesheet는 위젯의 색상 및 배경을 담당합니다.</p>
						<p>include 순서는 base -> theme 순으로 진행하여야 합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Include stylesheets */
<xmp>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.energyblue.css"/>" />
</xmp>

/* Set Property */
let template_theme = [{
   	"bind" : "txtTheme",
	"name" : "txtTheme",
	"type" : "datetime",	
	"width" : "250px",
	"theme" : "energyblue"	// property 설정
}];

$("#jqxinputForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
txtTheme.jqxDateTimeInput("theme", "energyblue");


/* Get Property */
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
let theme = txtTheme.jqxDateTimeInput("theme"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- template -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">template</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"default"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_template"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼들의 기본 스타일을 설정하거나 가져옵니다.</p>
						<h4>Possible Value</h4>
						<p>'default' - 기본 템플릿. 'theme'에 의존한다.</p>
						<p>'primary' - dark blue 스타일</p>
						<p>'success' - green 스타일</p>
						<p>'warning' - orange 스타일</p>
						<p>'danger' - red 스타일</p>
						<p>'info' - blue 스타일</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_template = [{
   	"bind" : "txtTemplate",
	"name" : "txtTemplate",
	"type" : "datetime",	
	"width" : "250px",
	"showTimeButton" : true,
	"template" : "primary"	// property 설정
}];

$("#jqxinputForm_template").jqxForm({
  	"template" : template_template
});

// case 2 : element에 property 설정
let txtTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "txtTemplate");
txtTemplate.jqxDateTimeInput("template", "warning");


/* Get Property */
let txtTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "txtTemplate");
let template = txtTemplate.jqxDateTimeInput("template"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- textAlign -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">textAlign</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"left"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_textAlign"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>text 정렬위치를 설정하거나 가져옵니다.</p>
						<h4>Possible Value</h4>
						<p>'left'</p>
						<p>'right'</p>
						<p>'center'</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_textAlign = [{
   	"bind" : "txtTextAlign",
	"name" : "txtTextAlign",
	"type" : "datetime",	
	"width" : "250px",
	"textAlign" : "right"	// property 설정
}];

$("#jqxinputForm_textAlign").jqxForm({
  	"template" : template_textAlign
});

// case 2 : element에 property 설정
let txtTextAlign = $("#jqxinputForm_textAlign").jqxForm("getComponentByName", "txtTextAlign");
txtTextAlign.jqxDateTimeInput("template", "warning");


/* Get Property */
let txtTextAlign = $("#jqxinputForm_textAlign").jqxForm("getComponentByName", "txtTextAlign");
let textAlign = txtTextAlign.jqxDateTimeInput("textAlign"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- todayString -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">todayString</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"Today"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_todayString"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calandar 하단에 입력 값을 오늘날짜로 설정을 수행하는 'Today'문자열을 설정하거나 가져옵니다.</p>
						<p>위 기능을 사용하려면 'showFooter' 프로퍼티가 true여야 합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_todayString = [{
   	"bind" : "txtTodayString",
	"name" : "txtTodayString",
	"type" : "datetime",	
	"width" : "250px",	
	"showFooter" : true, 	// 하단 푸터 출력
	"todayString" : "오늘날짜로"	// property 설정
}];

$("#jqxinputForm_todayString").jqxForm({
  	"template" : template_todayString
});

// case 2 : element에 property 설정
let txtTodayString = 
	$("#jqxinputForm_todayString").jqxForm("getComponentByName", "txtTodayString");
txtTodayString.jqxDateTimeInput("todayString", "new text");


/* Get Property */
let txtTodayString = 
	$("#jqxinputForm_todayString").jqxForm("getComponentByName", "txtTodayString");
let todayString = txtTodayString.jqxDateTimeInput("todayString"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- value -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">value</span>
				</td>
				<td>
					<span>Date</span>
				</td>
				<td>
					오늘 날짜
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_value"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 값을 가져오거나 설정합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_value = [{
   	"bind" : "txtValue",
	"name" : "txtValue",
	"type" : "datetime",	
	"width" : "250px",	
	"showFooter" : true, 	// 하단 푸터 출력
	"value" : new Date(2018, 11, 31)	// property 설정
}];

$("#jqxinputForm_value").jqxForm({
  	"template" : template_value
});

// case 2 : element에 property 설정
let txtValue = 
	$("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
txtValue.jqxDateTimeInput("value", new Date());


/* Get Property */
let txtValue = 
	$("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
let value = txtValue.jqxDateTimeInput("value"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- width -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">width</span>
				</td>
				<td>
					<span>Number/String</span>
				</td>
				<td>
					200
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_width"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 너비를 가져오거나 설정합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_width = [{
   	"bind" : "txtWidth",
	"name" : "txtWidth",
	"type" : "datetime",	
	"width" : "250px",		// property 설정
}];

$("#jqxinputForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let txtWidth = 
	$("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
txtWidth.jqxDateTimeInput("width", new Date());


/* Get Property */
let txtValue = 
	$("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
let width = txtWidth.jqxDateTimeInput("width"); 
</code></pre>
                    </div>
                </td>
            </tr>
        </tbody>
	</table>
</div>
<div id="events">
	<h2 class="documentation-top-header">Events</h2>
	
	<table class="documentation-table">
		<tbody>
			<!-- change -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">change</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_change"></div>
						<div id="log_change"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>값이 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_change = [{
	"bind" : "txtChange",
	"name" : "txtChange",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_change").jqxForm({
  	"template" : template_change
});


/* 이벤트 설정 */
let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
txtChange.on("change", function(event) {
   	let date = event.args.date;		// inputBox에 입력된 값
   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
   
   	$("#log_change").html("date : " + date + " // type : " + type);
});
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- close -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">close</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_close"></div>
						<div id="log_close"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar popup이 닫힌 후 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_close = [{
	"bind" : "txtClose",
	"name" : "txtClose",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_close").jqxForm({
  	"template" : template_close
});


/* 이벤트 설정 */
let txtClose = $("#jqxinputForm_close").jqxForm("getComponentByName", "txtClose"); 
txtClose.on("close", function(event) {
   	$("#log_close").html("Close event occurred");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- open -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">open</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_open"></div>
						<div id="log_open"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar popup이 열린 후 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_open = [{
	"bind" : "txtOpen",
	"name" : "txtOpen",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_open").jqxForm({
  	"template" : template_open
});


/* 이벤트 설정 */
let txtOpen = $("#jqxinputForm_open").jqxForm("getComponentByName", "txtOpen"); 
txtOpen.on("open", function(event) {
   	$("#log_open").html("Open event occurred");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- textchanged TODO : Camel 미적용 method 처리-->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">textchanged</span>	
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_textchanged"></div>
						<div id="log_textchanged"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>text가 변경된 후 trigger됩니다.</p>
						<p>textchanged -> valueChanged 순서로 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_textchanged = [{
	"bind" : "txtTextchanged",
	"name" : "txtTextchanged",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_textchanged").jqxForm({
  	"template" : template_textchanged
});


/* 이벤트 설정 */
let txtTextchanged = $("#jqxinputForm_textchanged").jqxForm("getComponentByName", "txtTextchanged"); 
txtTextchanged.on("textchanged", function(event) {
   	$("#log_textchanged").html("text changed");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- valueChanged -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">valueChanged</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_valueChanged"></div>
						<div id="log_valueChanged"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>value가 변경된 후 trigger됩니다.</p>
						<p>textchanged -> valueChanged 순서로 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_valueChanged = [{
	"bind" : "txtValueChanged",
	"name" : "txtValueChanged",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_valueChanged").jqxForm({
  	"template" : template_valueChanged
});


/* 이벤트 설정 */
let txtValueChanged = $("#jqxinputForm_valueChanged").jqxForm("getComponentByName", "txtValueChanged"); 
txtValueChanged.on("valueChanged", function(event) {
   	$("#log_valueChanged").html("value changed : " + event.args.date);
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>
<div id="methods">
	<h2 class="documentation-top-header">Methods</h2>
	
	<table class="documentation-table">
		<tbody>
			<!-- close -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">close</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_method_close"></div>
						<input type="button" id="btnClose" value="Close" />
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar popup을 닫습니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_close = [{
	"bind" : "txtMethodClose",
	"name" : "txtMethodClose",
	"type" : "datetime",	
	"width" : "300px",	
	"dropDownHorizontalAlignment" : "right"
}];

$("#jqxinputForm_method_close").jqxForm({
  	"template" : template_method_close
});


/* 이벤트 설정 */
let txtMethodClose = $("#jqxinputForm_method_close").jqxForm("getComponentByName", "txtMethodClose");
 
$("#btnClose").on("click", function() {
    txtMethodClose.jqxDateTimeInput("close");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- destroy -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">destroy</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_destroy"></div>
						<input type="button" id="btnDestroy" value="Destroy" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯을 제거합니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_destroy = [{
	"bind" : "txtDestroy",
	"name" : "txtDestroy",
	"type" : "datetime",	
	"width" : "250px",	
}];

$("#jqxinputForm_destroy").jqxForm({
  	"template" : template_destroy
});


/* 이벤트 설정 */
let txtDestroy = $("#jqxinputForm_destroy").jqxForm("getComponentByName", "txtDestroy");
 
$("#btnDestroy").on("click", function() {
    txtDestroy.jqxDateTimeInput("destroy");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- focus -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">focus</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_focus"></div>
						<input type="button" id="btnFocus" value="Focus" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯에 focus를 설정합니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_focus = [{
	"bind" : "txtFocus",
	"name" : "txtFocus",
	"type" : "datetime",	
	"width" : "250px",	
}];

$("#jqxinputForm_focus").jqxForm({
  	"template" : template_focus
});


/* 이벤트 설정 */
let txtFocus = $("#jqxinputForm_focus").jqxForm("getComponentByName", "txtFocus");
 
$("#btnFocus").on("click", function() {
    txtFocus.jqxDateTimeInput("focus");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getRange -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getRange</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_getRange"></div>
						<input type="button" id="btnGetRange" value="GetRange" />
						<!-- Description -->
						<h4>Description</h4>
						<p>selectionMode가 'range'인 경우 'from', 'to'값을 가져옵니다.</p>
						<h4>Parameter type</h4>
						<p>Date/String</p>
						<h4>Return Value</h4>
						<p>Object -> obj.from, obj.to 필드는 date object입니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_getRange = [{
	"bind" : "txtGetRange",
	"name" : "txtGetRange",
	"type" : "datetime",	
	"width" : "450px",
	"selectionMode" : "range"	
}];

$("#jqxinputForm_getRange").jqxForm({
  	"template" : template_getRange
});


let txtGetRange = $("#jqxinputForm_getRange").jqxForm("getComponentByName", "txtGetRange");

/* Sets the range */
txtGetRange.jqxDateTimeInput("setRange", new Date(2018, 1, 1), new Date(2018, 11, 31));

/* 이벤트 설정 */
$("#btnGetRange").on("click", function() {
    let range = txtGetRange.jqxDateTimeInput("getRange");
    let from = range.from;
    let to = range.to;
    
    alert("range -> from : " + from + " // to : " + to);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getText -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getText</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_getText"></div>
						<input type="button" id="btnGetText" value="GetText" />
						<!-- Description -->
						<h4>Description</h4>
						<p>input field의 text를 반환합니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>String</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_getText = [{
	"bind" : "txtGetText",
	"name" : "txtGetText",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_getText").jqxForm({
  	"template" : template_getText
});


/* 이벤트 설정 */
$("#btnGetText").on("click", function() {
	let txtGetText = $("#jqxinputForm_getText").jqxForm("getComponentByName", "txtGetText");
    let text = txtGetText.jqxDateTimeInput("getText");
    
    alert("text : " + text);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getDate</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_getDate"></div>
						<input type="button" id="btnGetDate" value="GetDate" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 입력된 값의 날짜를 반환합니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>Date</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_getDate = [{
	"bind" : "txtGetDate",
	"name" : "txtGetDate",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_getDate").jqxForm({
  	"template" : template_getDate
});


/* 이벤트 설정 */
$("#btnGetDate").on("click", function() {
	let txtGetDate = $("#jqxinputForm_getDate").jqxForm("getComponentByName", "txtGetDate");
    let date = txtGetDate.jqxDateTimeInput("getDate");
    
    alert("date : " + date);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getMaxDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getMaxDate</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_getMaxDate"></div>
						<input type="button" id="btnGetMaxDate" value="GetMaxDate" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 위젯의 최대 입력가능 날짜를 반환합니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>Date</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_getMaxDate = [{
	"bind" : "txtGetMaxDate",
	"name" : "txtGetMaxDate",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_getMaxDate").jqxForm({
  	"template" : template_getMaxDate
});


/* 이벤트 설정 */
$("#btnGetMaxDate").on("click", function() {
	let txtGetMaxDate = $("#jqxinputForm_getMaxDate").jqxForm("getComponentByName", "txtGetMaxDate");
    let maxDate = txtGetMaxDate.jqxDateTimeInput("getMaxDate");
    
    alert("max date : " + maxDate);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getMinDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getMinDate</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_getMinDate"></div>
						<input type="button" id="btnGetMinDate" value="GetMinDate" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 위젯의 최소 입력가능 날짜를 반환합니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>Date</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_getMinDate = [{
	"bind" : "txtGetMinDate",
	"name" : "txtGetMinDate",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_getMinDate").jqxForm({
  	"template" : template_getMinDate
});


/* 이벤트 설정 */
$("#btnGetMinDate").on("click", function() {
	let txtGetMinDate = $("#jqxinputForm_getMinDate").jqxForm("getComponentByName", "txtGetMinDate");
    let minDate = txtGetMinDate.jqxDateTimeInput("getMinDate");
    
    alert("min date : " + minDate);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- open -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">open</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_method_open"></div>
						<input type="button" id="btnOpen" value="Open" />
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar popup을 엽니다.</p>
						<h4>Parameter type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_open = [{
	"bind" : "txtMethodOpen",
	"name" : "txtMethodOpen",
	"type" : "datetime",	
	"width" : "250px",	
}];

$("#jqxinputForm_method_open").jqxForm({
  	"template" : template_method_open
});


/* 이벤트 설정 */
let txtMethodOpen = $("#jqxinputForm_method_open").jqxForm("getComponentByName", "txtMethodOpen");
 
$("#btnOpen").on("click", function() {
    txtMethodOpen.jqxDateTimeInput("open");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- setRange -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">setRange</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_setRange"></div>
						<input type="button" id="btnSetRange" value="SetRange" />
						<!-- Description -->
						<h4>Description</h4>
						<p>selectionMode가 'range'인 경우 'from', 'to'값을 설정합니다.</p>
						<h4>Parameter type</h4>
						<p>start date - Date/String</p>
						<p>end date - Date/String</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_setRange = [{
	"bind" : "txtSetRange",
	"name" : "txtSetRange",
	"type" : "datetime",	
	"width" : "450px",
	"selectionMode" : "range"	
}];

$("#jqxinputForm_setRange").jqxForm({
  	"template" : template_setRange
});


/* 이벤트 설정 */
let txtSetRange = $("#jqxinputForm_setRange").jqxForm("getComponentByName", "txtSetRange");
 
$("#btnSetRange").on("click", function() {
	let startDate = new Date(2018, 0, 1);
	let endDate = new Date(2018, 11, 31);	
    txtSetRange.jqxDateTimeInput("setRange", startDate, endDate);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- setRange -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">setRange</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_setRange"></div>
						<input type="button" id="btnSetRange" value="SetRange" />
						<!-- Description -->
						<h4>Description</h4>
						<p>selectionMode가 'range'인 경우 'from', 'to'값을 설정합니다.</p>
						<h4>Parameter type</h4>
						<p>start date - Date/String</p>
						<p>end date - Date/String</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_setRange = [{
	"bind" : "txtSetRange",
	"name" : "txtSetRange",
	"type" : "datetime",	
	"width" : "450px",
	"selectionMode" : "range"	
}];

$("#jqxinputForm_setRange").jqxForm({
  	"template" : template_setRange
});


/* 이벤트 설정 */
let txtSetRange = $("#jqxinputForm_setRange").jqxForm("getComponentByName", "txtSetRange");
 
$("#btnSetRange").on("click", function() {
	let startDate = new Date(2018, 0, 1);
	let endDate = new Date(2018, 11, 31);	
    txtSetRange.jqxDateTimeInput("setRange", startDate, endDate);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- setMaxDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">setMaxDate</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_setMaxDate"></div>
						<input type="button" id="btnSetMaxDate" value="SetMaxDate" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 위젯의 최대 입력가능 날짜를 설정합니다.</p>
						<h4>Parameter type</h4>
						<p>date - Date/String</p>
						<h4>Return Value</h4>
						<p>Date</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_setMaxDate = [{
	"bind" : "txtSetMaxDate",
	"name" : "txtSetMaxDate",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_setMaxDate").jqxForm({
  	"template" : template_setMaxDate
});


/* 이벤트 설정 */
$("#btnSetMaxDate").on("click", function() {
	let txtSetMaxDate = $("#jqxinputForm_setMaxDate").jqxForm("getComponentByName", "txtSetMaxDate");
	let maxDate = new Date(2018, 11, 31);

    txtSetMaxDate.jqxDateTimeInput("setMaxDate", maxDate);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- setMinDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">setMinDate</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_setMinDate"></div>
						<input type="button" id="btnSetMinDate" value="SetMinDate" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 위젯의 최소 입력가능 날짜를 설정합니다.</p>
						<h4>Parameter type</h4>
						<p>date - Date/String</p>
						<h4>Return Value</h4>
						<p>Date</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_setMinDate = [{
	"bind" : "txtSetMinDate",
	"name" : "txtSetMinDate",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_setMinDate").jqxForm({
  	"template" : template_setMinDate
});


/* 이벤트 설정 */
$("#btnSetMinDate").on("click", function() {
	let txtSetMinDate = $("#jqxinputForm_setMinDate").jqxForm("getComponentByName", "txtSetMinDate");
	let minDate = new Date(2018, 11, 31);

    txtSetMinDate.jqxDateTimeInput("setMinDate", minDate);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- setDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">setDate</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_setDate"></div>
						<input type="button" id="btnSetDate" value="SetDate" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 위젯의 날짜를 설정합니다.</p>
						<h4>Parameter type</h4>
						<p>date - Date/String</p>
						<h4>Return Value</h4>
						<p>Date</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_setDate = [{
	"bind" : "txtSetDate",
	"name" : "txtSetDate",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_setDate").jqxForm({
  	"template" : template_setDate
});


/* 이벤트 설정 */
$("#btnSetDate").on("click", function() {
	let txtSetDate = $("#jqxinputForm_setDate").jqxForm("getComponentByName", "txtSetDate");
	let date = new Date(2018, 11, 31);

    txtSetDate.jqxDateTimeInput("setDate", date);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- val -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">val</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_val"></div>
						<input type="button" id="btnVal" value="SetVal" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 위젯의 날짜를 설정하거나 가져옵니다.</p>
						<h4>Parameter type</h4>
						<p>date1 - Date/String(optional)</p>
						<p>date2 - Date/String(optional) - selectionMode가 "range인 경우 사용"</p>
						<h4>Return Value</h4>
						<p>Date/String</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_val = [{
	"bind" : "txtVal",
	"name" : "txtVal",
	"type" : "datetime",	
	"width" : "250px"
}];

$("#jqxinputForm_val").jqxForm({
  	"template" : template_val
});


/* 이벤트 설정 */
$("#btnVal").on("click", function() {
	let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");

	// ex : 2018-12-31 설정
	// using Date param.
    txtVal.jqxDateTimeInput("val", new Date(2018, 11, 31));
    
    // using String param.
    txtVal.jqxDateTimeInput("val", "2018/11/31");
    
    // using jQuery.
    txtVal.val("2018/11/31");
    
    // set null.
    txtVal.val(null);
    
    // set range using Date param.
    txtVal.val(new Date(2018, 0, 1), new Date(2018, 11, 31));
    
    // set range using String param.
    txtVal.val("2018/0/1", "2018/11/31");
    
    // get date. return value is String.
    let dateString = txtVal.jqxDateTimeInput("val");
    
    // get date. return value is Date object.
    let date = txtVal.jqxDateTimeInput("val", "date");
    
    // get date. using jQuery. return value is String.
    dateString = txtVal.val();
    
    // get date. using jQuery. return value is Date object.
    dateString = txtVal.val("date");
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>