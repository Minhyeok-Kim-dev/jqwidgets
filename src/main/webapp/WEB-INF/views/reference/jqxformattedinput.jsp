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
<script src="<c:url value="/resources/jqwidgets/jqxformattedinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// disabled
		let template_disabled = [{
		   	"bind" : "txtDisabled",
		    "name" : "txtDisabled",
			"type" : "formattedinput",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "disabled",
			"disabled" : true	// property 설정
		}];

		$("#jqxinputForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		
		// height
		let template_decimalNotation = [{
		   	"bind" : "txtDecimalNotation",
			"name" : "txtDecimalNotation",
			"type" : "formattedinput",	
			"width" : "250px",	
			"height" : "25px",	
			"decimalNotation" : "exponential"	// property 설정
		}];
		
		$("#jqxinputForm_decimalNotation").jqxForm({
		  	"template" : template_decimalNotation
		});
		

		// dropDown
		let template_dropDown = [{
		   	"bind" : "txtDropDown",
			"name" : "txtDropDown",
			"type" : "formattedinput",	
			"dropDown" : true	// property 설정
		}];
		
		$("#jqxinputForm_dropDown").jqxForm({
		  	"template" : template_dropDown
		});
		

		// dropDownWidth
		let template_dropDownWidth = [{
		   	"bind" : "txtDropDownWidth",
			"name" : "txtDropDownWidth",
			"type" : "formattedinput",
			"dropDown" : true,
			"dropDownWidth" : 200	// property 설정
		}];
		
		$("#jqxinputForm_dropDownWidth").jqxForm({
		  	"template" : template_dropDownWidth
		});
		

		// height
		let template_height = [{
		   	"bind" : "txtHeight",
			"name" : "txtHeight",
			"type" : "formattedinput",
			"height" : 30	// property 설정
		}];
		
		$("#jqxinputForm_height").jqxForm({
		  	"template" : template_height
		});
		
		
		// min
		let template_min = [{
		   	"bind" : "txtMin",
			"name" : "txtMin",
			"type" : "formattedinput",
			"min" : "-200"	// property 설정
		}];
		
		$("#jqxinputForm_min").jqxForm({
		  	"template" : template_min
		});
		

		// max
		let template_max = [{
		   	"bind" : "txtMax",
			"name" : "txtMax",
			"type" : "formattedinput",
			"max" : "200"	// property 설정
		}];
		
		$("#jqxinputForm_max").jqxForm({
		  	"template" : template_max
		});
		

		// placeHolder
		let template_placeHolder = [{
		   	"bind" : "txtPlaceHolder",
			"name" : "txtPlaceHolder",
			"type" : "formattedinput",
			"placeHolder" : "This is a placeHolder text"	// property 설정
		}];
		
		$("#jqxinputForm_placeHolder").jqxForm({
		  	"template" : template_placeHolder
		});
		
		
		// popupZIndex
		let template_popupZIndex = [{
		   	"bind" : "txtPopupZIndex",
			"name" : "txtPopupZIndex",
			"type" : "formattedinput",
			"popupZIndex" : 1000	// property 설정
		}];
		
		$("#jqxinputForm_popupZIndex").jqxForm({
		  	"template" : template_popupZIndex
		});
		

		// roundedCorners
		let template_roundedCorners = [{
		   	"bind" : "txtRoundedCorners",
			"name" : "txtRoundedCorners",
			"type" : "formattedinput",
			"roundedCorners" : false	// property 설정
		}];
		
		$("#jqxinputForm_roundedCorners").jqxForm({
		  	"template" : template_roundedCorners
		});
		

		// rtl
		let template_rtl = [{
		   	"bind" : "txtRtl",
			"name" : "txtRtl",
			"type" : "formattedinput",
			"rtl" : true	// property 설정
		}];
		
		$("#jqxinputForm_rtl").jqxForm({
		  	"template" : template_rtl
		});
		

		// raddix
		let template_radix = [{
		   	"bind" : "txtRadix",
			"name" : "txtRadix",
			"type" : "formattedinput",
			"radix" : 16	// property 설정
		}];
		
		$("#jqxinputForm_radix").jqxForm({
		  	"template" : template_radix
		});
		

		// spinButtons
		let template_spinButtons = [{
		   	"bind" : "txtSpinButtons",
			"name" : "txtSpinButtons",
			"type" : "formattedinput",
			"spinButtons" : false	// property 설정
		}];
		
		$("#jqxinputForm_spinButtons").jqxForm({
		  	"template" : template_spinButtons
		});
		

		// spinButtonsStep
		let template_spinButtonsStep = [{
		   	"bind" : "txtSpinButtonsStep",
			"name" : "txtSpinButtonsStep",
			"type" : "formattedinput",
			"spinButtonsStep" : 2	// property 설정
		}];
		
		$("#jqxinputForm_spinButtonsStep").jqxForm({
		  	"template" : template_spinButtonsStep
		});
		
		
		// template
		let template_template = [{
		   	"bind" : "txtTemplate",
			"name" : "txtTemplate",
			"type" : "formattedinput",	
			"template" : "primary"	// property 설정
		}];
		
		$("#jqxinputForm_template").jqxForm({
		  	"template" : template_template
		});
		

		// theme
		let template_theme = [{
		   	"bind" : "txtTheme",
			"name" : "txtTheme",
			"type" : "formattedinput",	
			"theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxinputForm_theme").jqxForm({
		  	"template" : template_theme
		});
		

		// upperCase
		let template_upperCase = [{
		   	"bind" : "txtUpperCase",
			"name" : "txtUpperCase",
			"type" : "formattedinput",
			"radix" : 16,
			"upperCase" : true	// property 설정
		}];
		
		$("#jqxinputForm_upperCase").jqxForm({
		  	"template" : template_upperCase
		});
		

		// value
		let template_value = [{
		   	"bind" : "txtValue",
			"name" : "txtValue",
			"type" : "formattedinput",
			"radix" : 10,
			"value" : "1000"	// property 설정
		}];
		
		$("#jqxinputForm_value").jqxForm({
		  	"template" : template_value
		});
		
		
		// width
		let template_width = [{
		   	"bind" : "txtWidth",
			"name" : "txtWidth",
			"type" : "formattedinput",
			"width" : 100	// property 설정
		}];
		
		$("#jqxinputForm_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		let template_event_change = [{
			"bind" : "txtEventChange",
			"name" : "txtEventChange",
			"type" : "formattedinput",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_event_change").jqxForm({
		  	"template" : template_event_change
		});
		
		let txtEventChange = $("#jqxinputForm_event_change").jqxForm("getComponentByName", "txtEventChange"); 
		txtEventChange.on("change", function(event) {
		    let args = event.args;
		   	let type = args.type;			// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
		   	let value = args.value;			// inputBox에 입력된 값
		   	let oldValue = args.oldValue;	// 이전 값
		   	let radix = args.radix;			// 기수
		   
		   	$("#log_event_change").html("type : " + type + " // value : " + value + " // oldValue :" + oldValue + " // radix: " + radix );
		});
		
		
		// close
		let template_event_close = [{
			"bind" : "txtEventClose",
			"name" : "txtEventClose",
			"type" : "formattedinput",
			"spinButtons" : false,
			"dropDown" : true
		}];
		
		$("#jqxinputForm_event_close").jqxForm({
		  	"template" : template_event_close
		});
		
		let txtEventClose = $("#jqxinputForm_event_close").jqxForm("getComponentByName", "txtEventClose"); 
		txtEventClose.on("close", function(event) {
		   	$("#log_event_close").html("close event occurred");
		});
		
		
		// open
		let template_event_open = [{
			"bind" : "txtEventOpen",
			"name" : "txtEventOpen",
			"type" : "formattedinput",
			"spinButtons" : false,
			"dropDown" : true
		}];
		
		$("#jqxinputForm_event_open").jqxForm({
		  	"template" : template_event_open
		});
		
		let txtEventOpen = $("#jqxinputForm_event_open").jqxForm("getComponentByName", "txtEventOpen"); 
		txtEventOpen.on("open", function(event) {
		   	$("#log_event_open").html("open event occurred");
		});
		
		
		// radixChange
		let template_event_radixChange = [{
			"bind" : "txtEventRadixChange",
			"name" : "txtEventRadixChange",
			"type" : "formattedinput",
			"spinButtons" : false,
			"dropDown" : true
		}];
		
		$("#jqxinputForm_event_radixChange").jqxForm({
		  	"template" : template_event_radixChange
		});
		
		let txtEventRadixChange = $("#jqxinputForm_event_radixChange").jqxForm("getComponentByName", "txtEventRadixChange"); 
		txtEventRadixChange.on("radixChange", function(event) {
		   	$("#log_event_radixChange").html("Radix is changed");
		});

		
		/* Methods */
		// close
		let template_method_close = [{
		    "bind" : "txtMethodClose",
		    "name" : "txtMethodClose",
			"type" : "formattedinput",	
			"spinButtons" : false,
			"dropDown" : true
		}];
		
		$("#jqxinputForm_method_close").jqxForm({
		  	"template" : template_method_close
		});
		
		/* 이벤트 설정 */
		let txtMethodClose = $("#jqxinputForm_method_close").jqxForm("getComponentByName", "txtMethodClose");
		 
		$("#btnClose").on("click", function() {
		   	txtMethodClose.jqxFormattedInput("close");
		});
		
		
		// destroy
		let template_method_destroy = [{
			"bind" : "txtMethodDestroy",
			"name" : "txtMethodDestroy",
			"type" : "formattedinput",	
		}];
		
		$("#jqxinputForm_method_destroy").jqxForm({
		  	"template" : template_method_destroy
		});
		
		/* 이벤트 설정 */
		let txtMethodDestroy = $("#jqxinputForm_method_destroy").jqxForm("getComponentByName", "txtMethodDestroy");
		 
		$("#btnDestroy").on("click", function() {
		   	txtMethodDestroy.jqxFormattedInput("destroy");
		});
		
		
		// focus
		let template_method_focus = [{
			"bind" : "txtMethodFocus",
			"name" : "txtMethodFocus",
			"type" : "formattedinput",	
		}];
		
		$("#jqxinputForm_method_focus").jqxForm({
		  	"template" : template_method_focus
		});
		
		/* 이벤트 설정 */
		let txtMethodFocus = $("#jqxinputForm_method_focus").jqxForm("getComponentByName", "txtMethodFocus");
		 
		$("#btnFocus").on("click", function() {
		   	txtMethodFocus.jqxFormattedInput("focus");
		});
		
		
		// open
		let template_method_open = [{
			"bind" : "txtMethodOpen",
			"name" : "txtMethodOpen",
			"type" : "formattedinput",
			"showButtons" : false,
			"dropDown" : true	
		}];
		
		$("#jqxinputForm_method_open").jqxForm({
		  	"template" : template_method_open
		});
		
		/* 이벤트 설정 */
		let txtMethodOpen = $("#jqxinputForm_method_open").jqxForm("getComponentByName", "txtMethodOpen");
		 
		$("#btnOpen").on("click", function() {
		   	txtMethodOpen.jqxFormattedInput("open");
		});
		
		
		// render
		let template_method_render = [{
			"bind" : "txtMethodRender",
			"name" : "txtMethodRender",
			"type" : "formattedinput",
			"showButtons" : false,
			"dropDown" : true	
		}];
		
		$("#jqxinputForm_method_render").jqxForm({
		  	"template" : template_method_render
		});
		
		/* 이벤트 설정 */
		let txtMethodRender = $("#jqxinputForm_method_render").jqxForm("getComponentByName", "txtMethodRender");
		 
		$("#btnRender").on("click", function() {
		   	txtMethodRender.jqxFormattedInput("render");
		});
		
		
		// refresh
		let template_method_refresh = [{
			"bind" : "txtMethodRefresh",
			"name" : "txtMethodRefresh",
			"type" : "formattedinput",
			"radix" : "binary",
		    "value" : "11111101",
		    "spinButtons" : true
		}];
		
		$("#jqxinputForm_method_refresh").jqxForm({
		  	"template" : template_method_refresh
		});
		
		/* 이벤트 설정 */
		let txtMethodRefresh = $("#jqxinputForm_method_refresh").jqxForm("getComponentByName", "txtMethodRefresh");
		 
		$("#btnRefresh").on("click", function() {
		   	txtMethodRefresh.jqxFormattedInput("refresh");
		});
		
		
		// selectAll
		let template_method_selectAll = [{
			"bind" : "txtMethodSelectAll",
			"name" : "txtMethodSelectAll",
			"type" : "formattedinput",
			"radix" : "binary",
		    "value" : "11111101",
		    "spinButtons" : true
		}];
		
		$("#jqxinputForm_method_selectAll").jqxForm({
		  	"template" : template_method_selectAll
		});
		
		/* 이벤트 설정 */
		let txtMethodSelectAll = $("#jqxinputForm_method_selectAll").jqxForm("getComponentByName", "txtMethodSelectAll");
		 
		$("#btnSelectAll").on("click", function() {
		   	txtMethodSelectAll.jqxFormattedInput("selectAll");
		});
		
		
		// selectFirst
		let template_method_selectFirst = [{
			"bind" : "txtMethodSelectFirst",
			"name" : "txtMethodSelectFirst",
			"type" : "formattedinput",
			"radix" : "binary",
		    "value" : "11111101",
		    "spinButtons" : true
		}];
		
		$("#jqxinputForm_method_selectFirst").jqxForm({
		  	"template" : template_method_selectFirst
		});
		
		/* 이벤트 설정 */
		let txtMethodSelectFirst = $("#jqxinputForm_method_selectFirst").jqxForm("getComponentByName", "txtMethodSelectFirst");
		 
		$("#btnSelectFirst").on("click", function() {
		   	txtMethodSelectFirst.jqxFormattedInput("selectFirst");
		});
		
		
		// selectLast
		let template_method_selectLast = [{
			"bind" : "txtMethodSelectLast",
			"name" : "txtMethodSelectLast",
			"type" : "formattedinput",
			"radix" : "binary",
		    "value" : "11111101",
		    "spinButtons" : true
		}];
		
		$("#jqxinputForm_method_selectLast").jqxForm({
		  	"template" : template_method_selectLast
		});
		
		/* 이벤트 설정 */
		let txtMethodSelectLast = $("#jqxinputForm_method_selectLast").jqxForm("getComponentByName", "txtMethodSelectLast");
		 
		$("#btnSelectLast").on("click", function() {
		   	txtMethodSelectLast.jqxFormattedInput("selectLast");
		});
		
		
		// val
		let template_method_val = [{
			"bind" : "txtMethodVal",
			"name" : "txtMethodVal",
			"type" : "formattedinput",
			"radix" : "binary",
		    "value" : "11111101",
		    "spinButtons" : true
		}];

		$("#jqxinputForm_method_val").jqxForm({
		  	"template" : template_method_val
		});

		/* 이벤트 설정 */
		let txtMethodVal = $("#jqxinputForm_method_val").jqxForm("getComponentByName", "txtMethodVal");
		 
		$("#btnVal").on("click", function() {
			// get value 
			// - parameter를 추가하는 경우 기수가 적용된 데이터를 가져올 수 있습니다.
			// - Possible Values
			// 		기수 - 'binary', 'octal', 'decimal', 'hexadecimal'
			//		표기법 - 'exponential', 'scientific', 'engineering'
		   	let val = txtMethodVal.jqxFormattedInput("val");
		   	let val2 = txtMethodVal.jqxFormattedInput("val", 'decimal');
		   	
		   	// get value using jQuery 
		   	let val3 = txtMethodVal.val();
		   	
		   	alert(val + "//" + val2 + "//" + val3);
		   	
		   	// set value
		   	txtMethodVal.jqxFormattedInput("val", 250);
		   	
		   	// set value using jQuery
		   	txtMethodVal.val(300);
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
	"type" : "formattedinput",	
	"placeHolder" : "disabled",
	"disabled" : true	// property 설정
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxFormattedInput("disabled", true);


/* Get Property */
let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxFormattedInput("disabled"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- decimalNotation -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">decimalNotation</span>
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
						<div id="jqxinputForm_decimalNotation"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>10진수를 표시할 표기법을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'default' - 10진수 표현</p>
						<p>'exponential' - 지수표기법으로 10진수 표현 (ex : 1.59e+3)</p> 
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_decimalNotation = [{
   	"bind" : "txtDecimalNotation",
	"name" : "txtDecimalNotation",
	"type" : "formattedinput",	
	"decimalNotation" : "exponential"	// property 설정
}];

$("#jqxinputForm_decimalNotation").jqxForm({
  	"template" : template_decimalNotation
});

// case 2 : element에 property 설정
let txtDecimalNotation = $("#jqxinputForm_decimalNotation").jqxForm("getComponentByName", "txtDecimalNotation");
txtDecimalNotation.jqxFormattedInput("decimalNotation", "exponential");


/* Get Property */
let txtDecimalNotation = $("#jqxinputForm_decimalNotation").jqxForm("getComponentByName", "txtDecimalNotation");
let decimalNotation = txtDecimalNotation.jqxFormattedInput("decimalNotation"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- dropDown -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDown</span>
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
						<div id="jqxinputForm_dropDown"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운 사용여부를 설정하거나 가져옵니다.</p>
						<p>드롭다운은 기수 선택에 사용됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_dropDown = [{
   	"bind" : "txtDropDown",
	"name" : "txtDropDown",
	"type" : "formattedinput",	
	"dropDown" : true	// property 설정
}];

$("#jqxinputForm_dropDown").jqxForm({
  	"template" : template_dropDown
});

// case 2 : element에 property 설정
let txtDropDown = $("#jqxinputForm_dropDown").jqxForm("getComponentByName", "txtDropDown");
txtDropDown.jqxFormattedInput("dropDown", true);


/* Get Property */
let txtDropDown = $("#jqxinputForm_dropDown").jqxForm("getComponentByName", "txtDropDown");
let dropDown = txtDropDown.jqxFormattedInput("dropDown"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- dropDownWidth -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownWidth</span>
				</td>
				<td>
					<span>Number/String</span>
				</td>
				<td>
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_dropDownWidth"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운 너비를 설정하거나 가져옵니다.</p>
						<p>dropDown 프로퍼티 값은 true여야 합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_dropDownWidth = [{
   	"bind" : "txtDropDownWidth",
	"name" : "txtDropDownWidth",
	"type" : "formattedinput",
	"dropDown" : true	
	"dropDownWidth" : 200	// property 설정
}];

$("#jqxinputForm_dropDownWidth").jqxForm({
  	"template" : template_dropDownWidth
});

// case 2 : element에 property 설정
let txtDropDownWidth = $("#jqxinputForm_dropDownWidth").jqxForm("getComponentByName", "txtDropDownWidth");
txtDropDownWidth.jqxFormattedInput("dropDownWidth", 200);


/* Get Property */
let txtDropDownWidth = $("#jqxinputForm_dropDownWidth").jqxForm("getComponentByName", "txtDropDownWidth");
let dropDownWidth = txtDropDownWidth.jqxFormattedInput("dropDownWidth"); 
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
	"type" : "formattedinput",
	"height" : 30	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxFormattedInput("height", 30);


/* Get Property */
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxFormattedInput("height"); 
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
					<span>String</span>
				</td>
				<td>
					"-9223372036854775808"
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
						<p>위젯의 최소값을 설정하거나 가져옵니다. 최소값은 value와 동일한 숫자 시스템에 있어야합니다.</p>
						<p>min속성은 10진수로 '-9223372036854775808'(-26³) 이상으로 설정할 수 있습니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_min = [{
   	"bind" : "txtMin",
	"name" : "txtMin",
	"type" : "formattedinput",
	"min" : "-200"	// property 설정
}];

$("#jqxinputForm_min").jqxForm({
  	"template" : template_min
});

// case 2 : element에 property 설정
let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
txtMin.jqxFormattedInput("min", "-200");


/* Get Property */
let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
let min = txtMin.jqxFormattedInput("min"); 
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
					<span>String</span>
				</td>
				<td>
					"9223372036854775807"
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
						<p>위젯의 최대값을 설정하거나 가져옵니다. 최대값은 value와 동일한 숫자 시스템에 있어야합니다.</p>
						<p>max속성은 10진수로 '9223372036854775807'(26³ - 1) 이상으로 설정할 수 있습니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_max = [{
   	"bind" : "txtMax",
	"name" : "txtMax",
	"type" : "formattedinput",
	"max" : "200"	// property 설정
}];

$("#jqxinputForm_max").jqxForm({
  	"template" : template_max
});

// case 2 : element에 property 설정
let txtMax = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtMax");
txtMax.jqxFormattedInput("max", "200");


/* Get Property */
let txtMax = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtMax");
let max = txtMax.jqxFormattedInput("max"); 
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
						<p>placeHolder를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_placeHolder = [{
   	"bind" : "txtPlaceHolder",
	"name" : "txtPlaceHolder",
	"type" : "formattedinput",
	"placeHolder" : "This is a placeHolder text"	// property 설정
}];

$("#jqxinputForm_placeHolder").jqxForm({
  	"template" : template_placeHolder
});

// case 2 : element에 property 설정
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
txtPlaceHolder.jqxFormattedInput("placeHolder", "200");


/* Get Property */
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
let placeHolder = txtPlaceHolder.jqxFormattedInput("placeHolder"); 
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
					20000
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
	"type" : "formattedinput",
	"popupZIndex" : 1000	// property 설정
}];

$("#jqxinputForm_popupZIndex").jqxForm({
  	"template" : template_popupZIndex
});

// case 2 : element에 property 설정
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
txtPopupZIndex.jqxFormattedInput("popupZIndex", 10000);


/* Get Property */
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
let popupZIndex = txtPopupZIndex.jqxFormattedInput("popupZIndex"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- roundedCorners -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">roundedCorners</span>
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
						<div id="jqxinputForm_roundedCorners"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>둥근 모서리 기능을 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<p>이 프로퍼티는 CSS border-radius를 지원하는 브라우저에서 적용이 됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_roundedCorners = [{
   	"bind" : "txtRoundedCorners",
	"name" : "txtRoundedCorners",
	"type" : "formattedinput",
	"roundedCorners" : false	// property 설정
}];

$("#jqxinputForm_roundedCorners").jqxForm({
  	"template" : template_roundedCorners
});

// case 2 : element에 property 설정
let txtRoundedCorners = $("#jqxinputForm_roundedCorners").jqxForm("getComponentByName", "txtRoundedCorners");
txtRoundedCorners.jqxFormattedInput("roundedCorners", false);


/* Get Property */
let txtRoundedCorners = $("#jqxinputForm_roundedCorners").jqxForm("getComponentByName", "txtRoundedCorners");
let roundedCorners = txtRoundedCorners.jqxFormattedInput("roundedCorners"); 
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
	"type" : "formattedinput",
	"rtl" : true	// property 설정
}];

$("#jqxinputForm_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
txtRtl.jqxFormattedInput("rtl", true);


/* Get Property */
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
let rtl = txtRtl.jqxFormattedInput("rtl"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- radix -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">radix</span>
				</td>
				<td>
					<span>Number/String</span>
				</td>
				<td>
					10
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_radix"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 기수를 설정하거나 가져옵니다. 기수는 위젯의 값을 표시할 숫자 시스템을 지정합니다.</p>
						<h4>Possible Values</h4>
						<p>2 또는 'binary' - 2진수 숫자 시스템을 지정합니다. 0~1 숫자를 허용합니다.</p>
						<p>8 또는 'octal' - 8진수 숫자 시스템을 지정합니다. 0~7 숫자를 허용합니다.</p>
						<p>10 또는 'decimal' - 10진수 숫자 시스템을 지정합니다. 0~9 숫자를 허용합니다.</p>
						<p>16 또는 'hexadecimal' - 16진수 숫자 시스템을 지정합니다. 0~9 숫자, a~f 문자를 허용합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_radix = [{
   	"bind" : "txtRadix",
	"name" : "txtRadix",
	"type" : "formattedinput",
	"radix" : 16	// property 설정
}];

$("#jqxinputForm_radix").jqxForm({
  	"template" : template_radix
});

// case 2 : element에 property 설정
let txtRadix = $("#jqxinputForm_radix").jqxForm("getComponentByName", "txtRadix");
txtRadix.jqxFormattedInput("radix", 16);


/* Get Property */
let txtRadix = $("#jqxinputForm_radix").jqxForm("getComponentByName", "txtRadix");
let radix = txtRadix.jqxFormattedInput("radix"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- spinButtons -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">spinButtons</span>
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
						<div id="jqxinputForm_spinButtons"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>스핀버튼을 나타내는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_spinButtons = [{
   	"bind" : "txtSpinButtons",
	"name" : "txtSpinButtons",
	"type" : "formattedinput",
	"spinButtons" : false	// property 설정
}];

$("#jqxinputForm_spinButtons").jqxForm({
  	"template" : template_spinButtons
});

// case 2 : element에 property 설정
let txtSpinButtons = $("#jqxinputForm_spinButtons").jqxForm("getComponentByName", "txtSpinButtons");
txtSpinButtons.jqxFormattedInput("spinButtons", false);


/* Get Property */
let txtSpinButtons = $("#jqxinputForm_spinButtons").jqxForm("getComponentByName", "txtSpinButtons");
let spinButtons = txtSpinButtons.jqxFormattedInput("spinButtons"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- spinButtonsStep -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">spinButtonsStep</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					1
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_spinButtonsStep"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>스핀버튼의 증감수치를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_spinButtonsStep = [{
   	"bind" : "txtSpinButtonsStep",
	"name" : "txtSpinButtonsStep",
	"type" : "formattedinput",
	"spinButtonsStep" : 2	// property 설정
}];

$("#jqxinputForm_spinButtonsStep").jqxForm({
  	"template" : template_spinButtonsStep
});

// case 2 : element에 property 설정
let txtSpinButtonsStep = $("#jqxinputForm_spinButtonsStep").jqxForm("getComponentByName", "txtSpinButtonsStep");
txtSpinButtonsStep.jqxFormattedInput("spinButtonsStep", false);


/* Get Property */
let txtSpinButtonsStep = $("#jqxinputForm_spinButtonsStep").jqxForm("getComponentByName", "txtSpinButtonsStep");
let spinButtonsStep = txtSpinButtonsStep.jqxFormattedInput("spinButtonsStep"); 
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
					""
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
	"type" : "formattedinput",	
	"width" : "250px",
	"showTimeButton" : true,
	"template" : "primary"	// property 설정
}];

$("#jqxinputForm_template").jqxForm({
  	"template" : template_template
});

// case 2 : element에 property 설정
let txtTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "txtTemplate");
txtTemplate.jqxFormattedInput("template", "warning");


/* Get Property */
let txtTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "txtTemplate");
let template = txtTemplate.jqxFormattedInput("template"); 
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
	"type" : "formattedinput",	
	"theme" : "energyblue"	// property 설정
}];

$("#jqxinputForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
txtTheme.jqxFormattedInput("theme", "energyblue");


/* Get Property */
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
let theme = txtTheme.jqxFormattedInput("theme"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- upperCase -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">upperCase</span>
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
						<div id="jqxinputForm_upperCase"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>16진수인 경우 대문자로 나타내는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_upperCase = [{
   	"bind" : "txtUpperCase",
	"name" : "txtUpperCase",
	"type" : "formattedinput",
	"radix" : 16,
	"upperCase" : true	// property 설정
}];

$("#jqxinputForm_upperCase").jqxForm({
  	"template" : template_upperCase
});

// case 2 : element에 property 설정
let txtUpperCase = $("#jqxinputForm_upperCase").jqxForm("getComponentByName", "txtUpperCase");
txtUpperCase.jqxFormattedInput("upperCase", true);


/* Get Property */
let txtUpperCase = $("#jqxinputForm_upperCase").jqxForm("getComponentByName", "txtUpperCase");
let upperCase = txtUpperCase.jqxFormattedInput("upperCase"); 
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
					<span>String</span>
				</td>
				<td>
					"0"
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
						<p>위젯의 값을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_value = [{
   	"bind" : "txtValue",
	"name" : "txtValue",
	"type" : "formattedinput",
	"radix" : 10,
	"value" : "1000"	// property 설정
}];

$("#jqxinputForm_value").jqxForm({
  	"template" : template_value
});

// case 2 : element에 property 설정
let txtValue = $("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
txtValue.jqxFormattedInput("value", true);


/* Get Property */
let txtValue = $("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
let value = txtValue.jqxFormattedInput("value"); 
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
						<p>위젯의 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_width = [{
   	"bind" : "txtWidth",
	"name" : "txtWidth",
	"type" : "formattedinput",
	"width" : 100	// property 설정
}];

$("#jqxinputForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
txtWidth.jqxFormattedInput("width", 100);


/* Get Property */
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
let width = txtWidth.jqxFormattedInput("width"); 
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
						<div id="jqxinputForm_event_change"></div>
						<div id="log_event_change"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>값이 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_change = [{
	"bind" : "txtEventChange",
	"name" : "txtEventChange",
	"type" : "formattedinput",	
	"width" : "250px"
}];

$("#jqxinputForm_event_change").jqxForm({
  	"template" : template_event_change
});


/* 이벤트 설정 */
let txtEventChange = $("#jqxinputForm_event_change").jqxForm("getComponentByName", "txtEventChange"); 
txtEventChange.on("change", function(event) {
    let args = event.args;
   	let type = args.type;			// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
   	let value = args.value;			// inputBox에 입력된 값
   	let oldValue = args.oldValue;	// 이전 값
   	let radix = args.radix;			// 기수
   
   	$("#log_event_change").html("type : " + type + " // value : " + value + " // oldValue :" + oldValue + " // radix: " + radix );
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
						<div id="jqxinputForm_event_close"></div>
						<div id="log_event_close"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>popup이 닫힐 때 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_close = [{
	"bind" : "txtEventClose",
	"name" : "txtEventClose",
	"type" : "formattedinput",
	"spinButtons" : false,
	"dropDown" : true
}];

$("#jqxinputForm_event_close").jqxForm({
  	"template" : template_event_close
});


/* 이벤트 설정 */
let txtEventClose = $("#jqxinputForm_event_close").jqxForm("getComponentByName", "txtEventClose"); 
txtEventClose.on("close", function(event) {
   	$("#log_event_close").html("close event occurred");
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
						<div id="jqxinputForm_event_open"></div>
						<div id="log_event_open"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>popup이 열릴 때 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_open = [{
	"bind" : "txtEventOpen",
	"name" : "txtEventOpen",
	"type" : "formattedinput",
	"spinButtons" : false,
	"dropDown" : true
}];

$("#jqxinputForm_event_open").jqxForm({
  	"template" : template_event_open
});


/* 이벤트 설정 */
let txtEventOpen = $("#jqxinputForm_event_open").jqxForm("getComponentByName", "txtEventOpen"); 
txtEventOpen.on("open", function(event) {
   	$("#log_event_open").html("open event occurred");
});
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- radixChange -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">radixChange</span>
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
						<div id="jqxinputForm_event_radixChange"></div>
						<div id="log_event_radixChange"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>기수 변경 시 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_radixChange = [{
	"bind" : "txtEventRadixChange",
	"name" : "txtEventRadixChange",
	"type" : "formattedinput",
	"spinButtons" : false,
	"dropDown" : true
}];

$("#jqxinputForm_event_radixChange").jqxForm({
  	"template" : template_event_radixChange
});


/* 이벤트 설정 */
let txtEventRadixChange = $("#jqxinputForm_event_radixChange").jqxForm("getComponentByName", "txtEventRadixChange"); 
txtEventRadixChange.on("open", function(event) {
   	$("#log_event_radixChange").html("Radix is changed");
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
						<p>위젯의 popup을 닫습니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_close = [{
	"bind" : "txtMethodClose",
	"name" : "txtMethodClose",
	"type" : "formattedinput",	
	"spinButtons" : false,
	"dropDown" : true
}];

$("#jqxinputForm_method_close").jqxForm({
  	"template" : template_method_close
});

/* 이벤트 설정 */
let txtMethodClose = $("#jqxinputForm_method_close").jqxForm("getComponentByName", "txtMethodClose");
 
$("#btnClose").on("click", function() {
   	txtMethodClose.jqxFormattedInput("close");
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
						<div id="jqxinputForm_method_destroy"></div>
						<input type="button" id="btnDestroy" value="Destroy" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯을 제거합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_destroy = [{
	"bind" : "txtMethodDestroy",
	"name" : "txtMethodDestroy",
	"type" : "formattedinput",	
}];

$("#jqxinputForm_method_destroy").jqxForm({
  	"template" : template_method_destroy
});

/* 이벤트 설정 */
let txtMethodDestroy = $("#jqxinputForm_method_destroy").jqxForm("getComponentByName", "txtMethodDestroy");
 
$("#btnDestroy").on("click", function() {
   	txtMethodDestroy.jqxFormattedInput("destroy");
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
						<div id="jqxinputForm_method_focus"></div>
						<input type="button" id="btnFocus" value="Focus" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯에 포커스를 설정합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_focus = [{
	"bind" : "txtMethodFocus",
	"name" : "txtMethodFocus",
	"type" : "formattedinput",	
}];

$("#jqxinputForm_method_focus").jqxForm({
  	"template" : template_method_focus
});

/* 이벤트 설정 */
let txtMethodFocus = $("#jqxinputForm_method_focus").jqxForm("getComponentByName", "txtMethodFocus");
 
$("#btnFocus").on("click", function() {
   	txtMethodFocus.jqxFormattedInput("focus");
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
						<p>위젯의 popup을 엽니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_open = [{
	"bind" : "txtMethodOpen",
	"name" : "txtMethodOpen",
	"type" : "formattedinput",
	"showButtons" : false,
	"dropDown" : true	
}];

$("#jqxinputForm_method_open").jqxForm({
  	"template" : template_method_open
});

/* 이벤트 설정 */
let txtMethodOpen = $("#jqxinputForm_method_open").jqxForm("getComponentByName", "txtMethodOpen");
 
$("#btnOpen").on("click", function() {
   	txtMethodOpen.jqxFormattedInput("open");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- render -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">render</span>
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
						<div id="jqxinputForm_method_render"></div>
						<input type="button" id="btnRender" value="Render" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯을 렌더링합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_render = [{
	"bind" : "txtMethodRender",
	"name" : "txtMethodRender",
	"type" : "formattedinput",
	"showButtons" : false,
	"dropDown" : true	
}];

$("#jqxinputForm_method_render").jqxForm({
  	"template" : template_method_render
});

/* 이벤트 설정 */
let txtMethodRender = $("#jqxinputForm_method_render").jqxForm("getComponentByName", "txtMethodRender");
 
$("#btnRender").on("click", function() {
   	txtMethodRender.jqxFormattedInput("render");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- refresh -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">refresh - /* 현재 미동작 */</span>
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
						<div id="jqxinputForm_method_refresh"></div>
						<input type="button" id="btnRefresh" value="Refresh" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯을 새로고침합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_refresh = [{
	"bind" : "txtMethodRefresh",
	"name" : "txtMethodRefresh",
	"type" : "formattedinput",
	"radix" : "binary",
	"value" : "11111101",
	"spinButtons" : true
}];

$("#jqxinputForm_method_refresh").jqxForm({
  	"template" : template_method_refresh
});

/* 이벤트 설정 */
let txtMethodRefresh = $("#jqxinputForm_method_refresh").jqxForm("getComponentByName", "txtMethodRefresh");
 
$("#btnRefresh").on("click", function() {
   	txtMethodRefresh.jqxFormattedInput("refresh");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- selectAll -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">selectAll</span>
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
						<div id="jqxinputForm_method_selectAll"></div>
						<input type="button" id="btnSelectAll" value="SelectAll" />
						<!-- Description -->
						<h4>Description</h4>
						<p>전체 텍스트를 선택합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_selectAll = [{
	"bind" : "txtMethodSelectAll",
	"name" : "txtMethodSelectAll",
	"type" : "formattedinput",
	"radix" : "binary",
	"value" : "11111101",
	"spinButtons" : true
}];

$("#jqxinputForm_method_selectAll").jqxForm({
  	"template" : template_method_selectAll
});

/* 이벤트 설정 */
let txtMethodSelectAll = $("#jqxinputForm_method_selectAll").jqxForm("getComponentByName", "txtMethodSelectAll");
 
$("#btnSelectAll").on("click", function() {
   	txtMethodSelectAll.jqxFormattedInput("selectAll");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- selectFirst -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">selectFirst</span>
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
						<div id="jqxinputForm_method_selectFirst"></div>
						<input type="button" id="btnSelectFirst" value="SelectFirst" />
						<!-- Description -->
						<h4>Description</h4>
						<p>캐럿위치를 텍스트 맨 앞으로 보냅니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_selectFirst = [{
	"bind" : "txtMethodSelectFirst",
	"name" : "txtMethodSelectFirst",
	"type" : "formattedinput",
	"radix" : "binary",
	"value" : "11111101",
	"spinButtons" : true
}];

$("#jqxinputForm_method_selectFirst").jqxForm({
  	"template" : template_method_selectFirst
});

/* 이벤트 설정 */
let txtMethodSelectFirst = $("#jqxinputForm_method_selectFirst").jqxForm("getComponentByName", "txtMethodSelectFirst");
 
$("#btnSelectFirst").on("click", function() {
   	txtMethodSelectFirst.jqxFormattedInput("selectFirst");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- selectLast -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">selectLast</span>
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
						<div id="jqxinputForm_method_selectLast"></div>
						<input type="button" id="btnSelectLast" value="SelectLast" />
						<!-- Description -->
						<h4>Description</h4>
						<p>캐럿위치를 텍스트 맨 뒤로 보냅니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_selectLast = [{
	"bind" : "txtMethodSelectLast",
	"name" : "txtMethodSelectLast",
	"type" : "formattedinput",
	"radix" : "binary",
	"value" : "11111101",
	"spinButtons" : true
}];

$("#jqxinputForm_method_selectLast").jqxForm({
  	"template" : template_method_selectLast
});

/* 이벤트 설정 */
let txtMethodSelectLast = $("#jqxinputForm_method_selectLast").jqxForm("getComponentByName", "txtMethodSelectLast");
 
$("#btnSelectLast").on("click", function() {
   	txtMethodSelectLast.jqxFormattedInput("selectLast");
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
						<div id="jqxinputForm_method_val"></div>
						<input type="button" id="btnVal" value="Val" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 값을 설정하거나 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>value - String/Number</p>
						<p>parameter를 추가하는 경우 기수가 적용된 데이터를 가져올 수 있습니다.</p>
						<p>기수 - 'binary', 'octal', 'decimal', 'hexadecimal'</p>
						<p>표기법 - 'exponential', 'scientific', 'engineering'</p>
						<h4>Return Value</h4>
						<p>String</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_val = [{
	"bind" : "txtMethodVal",
	"name" : "txtMethodVal",
	"type" : "formattedinput",
	"radix" : "binary",
	"value" : "11111101",
	"spinButtons" : true
}];

$("#jqxinputForm_method_val").jqxForm({
  	"template" : template_method_val
});

/* 이벤트 설정 */
let txtMethodVal = $("#jqxinputForm_method_val").jqxForm("getComponentByName", "txtMethodVal");
 
$("#btnVal").on("click", function() {
	// get value 
   	let val = txtMethodVal.jqxFormattedInput("val");
   	let val2 = txtMethodVal.jqxFormattedInput("val", 'decimal');
   	
   	// get value using jQuery 
   	let val3 = txtMethodVal.val();
   	
   	alert(val + "//" + val2 + "//" + val3);
   	
   	// set value
   	txtMethodVal.jqxFormattedInput("val", 250);
   	
   	// set value using jQuery
   	txtMethodVal.val(300);
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>