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
<script src="<c:url value="/resources/jqwidgets/jqxnumberinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxbuttons.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// allowNull
		let template_allowNull = [{
			"bind" : "txtAllowNull",
			"name" : "txtAllowNull",
			"type" : "numberinput",	
			"allowNull" : false	// property 설정
		}];
		
		$("#jqxinputForm_allowNull").jqxForm({
		  	"template" : template_allowNull
		});
		

		// decimal
		let template_decimal = [{
			"bind" : "txtDecimal",
			"name" : "txtDecimal",
			"type" : "numberinput",	
			"decimal" : 200	// property 설정
		}];
		
		$("#jqxinputForm_decimal").jqxForm({
		  	"template" : template_decimal
		});
		

		// disabled
		let template_disabled = [{
			"bind" : "txtDisabled",
			"name" : "txtDisabled",
			"type" : "numberinput",	
			"disabled" : true	// property 설정
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		
		
		// decimalDigits
		let template_decimalDigits = [{
			"bind" : "txtDecimalDigits",
			"name" : "txtDecimalDigits",
			"type" : "numberinput",	
			"decimalDigits" : 5	// property 설정
		}];
		
		$("#jqxinputForm_decimalDigits").jqxForm({
		  	"template" : template_decimalDigits
		});
		
		
		// decimalSeparator
		let template_decimalSeparator = [{
			"bind" : "txtDecimalSeparator",
			"name" : "txtDecimalSeparator",
			"type" : "numberinput",	
			"decimalSeparator" : ","	// property 설정
		}];
		
		$("#jqxinputForm_decimalSeparator").jqxForm({
		  	"template" : template_decimalSeparator
		});
		

		// digits
		let template_digits = [{
			"bind" : "txtDigits",
			"name" : "txtDigits",
			"type" : "numberinput",	
			"digits" : 5	// property 설정
		}];
		
		$("#jqxinputForm_digits").jqxForm({
		  	"template" : template_digits
		});
		

		// groupSeparator
		let template_groupSeparator = [{
			"bind" : "txtGroupSeparator",
			"name" : "txtGroupSeparator",
			"type" : "numberinput",	
			"groupSeparator" : "."	// property 설정
		}];
		
		$("#jqxinputForm_groupSeparator").jqxForm({
		  	"template" : template_groupSeparator
		});
		
		
		// groupSize
		let template_groupSize = [{
			"bind" : "txtGroupSize",
			"name" : "txtGroupSize",
			"type" : "numberinput",	
			"groupSize" : 5	// property 설정
		}];
		
		$("#jqxinputForm_groupSize").jqxForm({
		  	"template" : template_groupSize
		});
		

		// height
		let template_height = [{
			"bind" : "txtHeight",
			"name" : "txtHeight",
			"type" : "numberinput",	
			"height" : 40	// property 설정
		}];
		
		$("#jqxinputForm_height").jqxForm({
		  	"template" : template_height
		});
		

		// inputMode
		let template_inputMode = [{
			"bind" : "txtInputMode",
			"name" : "txtInputMode",
			"type" : "numberinput",	
			"inputMode" : "simple"	// property 설정
		}];
		
		$("#jqxinputForm_inputMode").jqxForm({
		  	"template" : template_inputMode
		});
		

		// min
		let template_min = [{
			"bind" : "txtMin",
			"name" : "txtMin",
			"type" : "numberinput",	
			"min" : -30	// property 설정
		}];
		
		$("#jqxinputForm_min").jqxForm({
		  	"template" : template_min
		});

		
		// max
		let template_max = [{
			"bind" : "txtMax",
			"name" : "txtMax",
			"type" : "numberinput",	
			"max" : 30	// property 설정
		}];
		
		$("#jqxinputForm_max").jqxForm({
		  	"template" : template_max
		});
		
		
		// negativeSymbol
		let template_negativeSymbol = [{
			"bind" : "txtNegativeSymbol",
			"name" : "txtNegativeSymbol",
			"type" : "numberinput",	
			"negativeSymbol" : "#"	// property 설정
		}];
		
		$("#jqxinputForm_negativeSymbol").jqxForm({
		  	"template" : template_negativeSymbol
		});
		
		
		// placeHolder
		let template_placeHolder = [{
			"bind" : "txtPlaceHolder",
			"name" : "txtPlaceHolder",
			"type" : "numberinput",	
			"placeHolder" : "This is a placeHolder text"	// property 설정
		}];
		
		$("#jqxinputForm_placeHolder").jqxForm({
		  	"template" : template_placeHolder
		});
		

		// promptChar
		let template_promptChar = [{
			"bind" : "txtPromptChar",
			"name" : "txtPromptChar",
			"type" : "numberinput",	
			"promptChar" : "#"	// property 설정
		}];
		
		$("#jqxinputForm_promptChar").jqxForm({
		  	"template" : template_promptChar
		});
		

		// rtl
		let template_rtl = [{
			"bind" : "txtRtl",
			"name" : "txtRtl",
			"type" : "numberinput",
			"spinButtons" : true,
			"rtl" : true	// property 설정
		}];
		
		$("#jqxinputForm_rtl").jqxForm({
		  	"template" : template_rtl
		});
		

		// readOnly
		let template_readOnly = [{
			"bind" : "txtReadOnly",
			"name" : "txtReadOnly",
			"type" : "numberinput",	
			"readOnly" : true	// property 설정
		}];
		
		$("#jqxinputForm_readOnly").jqxForm({
		  	"template" : template_readOnly
		});
		

		// spinMode
		let template_spinMode = [{
			"bind" : "txtSpinMode",
			"name" : "txtSpinMode",
			"type" : "numberinput",	
			"spinButtons" : true,
			"spinMode" : "simple"	// property 설정
		}];
		
		$("#jqxinputForm_spinMode").jqxForm({
		  	"template" : template_spinMode
		});
		
		
		// spinButtons
		let template_spinButtons = [{
			"bind" : "txtSpinButtons",
			"name" : "txtSpinButtons",
			"type" : "numberinput",
			"spinButtons" : true	// property 설정
		}];
		
		$("#jqxinputForm_spinButtons").jqxForm({
		  	"template" : template_spinButtons
		});
		

		// spinButtonsWidth
		let template_spinButtonsWidth= [{
			"bind" : "txtSpinButtonsWidth",
			"name" : "txtSpinButtonsWidth",
			"type" : "numberinput",
			"spinButtons" : true,
			"spinButtonsWidth" : 10	// property 설정
		}];
		
		$("#jqxinputForm_spinButtonsWidth").jqxForm({
		  	"template" : template_spinButtonsWidth
		});
		

		// spinButtonsStep
		let template_spinButtonsStep= [{
			"bind" : "txtSpinButtonsStep",
			"name" : "txtSpinButtonsStep",
			"type" : "numberinput",
			"spinButtons" : true,
			"spinButtonsStep" : 2	// property 설정
		}];
		
		$("#jqxinputForm_spinButtonsStep").jqxForm({
		  	"template" : template_spinButtonsStep
		});
		

		// symbol
		let template_symbol = [{
			"bind" : "txtSymbol",
			"name" : "txtSymbol",
			"type" : "numberinput",
			"symbol" : "$"	// property 설정
		}];
		
		$("#jqxinputForm_symbol").jqxForm({
		  	"template" : template_symbol
		});
		

		// symbolPosition
		let template_symbolPosition = [{
			"bind" : "txtSymbolPosition",
			"name" : "txtSymbolPosition",
			"type" : "numberinput",
			"symbol" : "%",
			"symbolPosition" : "right"	// property 설정
		}];
		
		$("#jqxinputForm_symbolPosition").jqxForm({
		  	"template" : template_symbolPosition
		});
		
		
		// textAlign
		let template_textAlign = [{
			"bind" : "txtTextAlign",
			"name" : "txtTextAlign",
			"type" : "numberinput",
			"textAlign" : "left"	// property 설정
		}];
		
		$("#jqxinputForm_textAlign").jqxForm({
		  	"template" : template_textAlign
		});
		
		
		// template
		let template_template = [{
		   	"bind" : "txtTemplate",
			"name" : "txtTemplate",
			"type" : "numberinput",	
			"spinButtons" : true,
			"template" : "primary"	// property 설정
		}];
		
		$("#jqxinputForm_template").jqxForm({
		  	"template" : template_template
		});
		
		
		// theme
		let template_theme = [{
		   	"bind" : "txtTheme",
			"name" : "txtTheme",
			"type" : "numberinput",
			"spinButtons" : true,
			"theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxinputForm_theme").jqxForm({
		  	"template" : template_theme
		});
		
		
		// width
		let template_width = [{
		   	"bind" : "txtWidth",
			"name" : "txtWidth",
			"type" : "numberinput",	
			"width" : 300	// property 설정
		}];
		
		$("#jqxinputForm_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		// change
		let template_event_change = [{
		    "bind" : "txtEventChange",
		    "name" : "txtEventChange",
			"type" : "numberinput",	
			"spinButtons" : true,
			"width" : "250px"
		}];
		
		$("#jqxinputForm_event_change").jqxForm({
		  	"template" : template_event_change
		});
		
		
		/* 이벤트 설정 */
		let txtEventChange = $("#jqxinputForm_event_change").jqxForm("getComponentByName", "txtEventChange"); 
		txtEventChange.on("change", function(event) {
			let args = event.args;
			
			if(args) {
			   	let value = args.value;		// inputBox에 입력된 값
			   	let type = args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
			   
			   	$("#log_event_change").html("value : " + value + " // type : " + type);
		   	}
		});
		
		
		// textchanged	 - TODO : Camel적용
		let template_event_textchanged = [{
			"bind" : "txtEventTextChanged",
			"name" : "txtEventTextChanged",
			"type" : "numberinput",	
			"spinButtons" : true
		}];
		
		$("#jqxinputForm_event_textchanged").jqxForm({
		  	"template" : template_event_textchanged
		});
		
		
		/* 이벤트 설정 */
		let txtEventTextChanged = $("#jqxinputForm_event_textchanged").jqxForm("getComponentByName", "txtEventTextChanged"); 
		txtEventTextChanged.on("change", function(event) {
			let args = event.args;
			
			if(args) {
			   	let value = args.value;
			   
			   	$("#log_event_textchanged").html("value : " + value);
		   	}
		});
		
		
		// valueChanged
		let template_event_valueChanged = [{
			"bind" : "txtEventValueChanged",
			"name" : "txtEventValueChanged",
			"type" : "numberinput",	
			"spinButtons" : true
		}];
		
		$("#jqxinputForm_event_valueChanged").jqxForm({
		  	"template" : template_event_valueChanged
		});
		
		
		/* 이벤트 설정 */
		let txtEventValueChanged = $("#jqxinputForm_event_valueChanged").jqxForm("getComponentByName", "txtEventValueChanged"); 
		txtEventValueChanged.on("change", function(event) {
			let args = event.args;
			
			if(args) {
			   	let value = args.value;
			   
			   	$("#log_event_valueChanged").html("value : " + value);
		   	}
		});
		
		
		/* Methods */
		// clear
		let template_method_clear = [{
		    "bind" : "txtMethodClear",
		    "name" : "txtMethodClear",
			"type" : "numberinput",
			"decimal" : 333
		}];
		
		$("#jqxinputForm_method_clear").jqxForm({
		  	"template" : template_method_clear
		});
		
		
		/* 이벤트 설정 */
		let txtMethodClear = $("#jqxinputForm_method_clear").jqxForm("getComponentByName", "txtMethodClear");
		 
		$("#btnClear").on("click", function() {
		   	txtMethodClear.jqxNumberInput("clear");
		});
		
		
		// destroy
		let template_method_destroy = [{
			"bind" : "txtMethodDestroy",
			"name" : "txtMethodDestroy",
			"type" : "numberinput"
		}];
		
		$("#jqxinputForm_method_destroy").jqxForm({
		  	"template" : template_method_destroy
		});
		
		
		/* 이벤트 설정 */
		let txtMethodDestroy = $("#jqxinputForm_method_destroy").jqxForm("getComponentByName", "txtMethodDestroy");
		 
		$("#btnDestroy").on("click", function() {
		   	txtMethodDestroy.jqxNumberInput("destroy");
		});
		
		
		// focus
		let template_method_focus = [{
			"bind" : "txtMethodFocus",
			"name" : "txtMethodFocus",
			"type" : "numberinput"
		}];
		
		$("#jqxinputForm_method_focus").jqxForm({
		  	"template" : template_method_focus
		});
		
		
		/* 이벤트 설정 */
		let txtMethodFocus = $("#jqxinputForm_method_focus").jqxForm("getComponentByName", "txtMethodFocus");
		 
		$("#btnFocus").on("click", function() {
		   	txtMethodFocus.jqxNumberInput("focus");
		});
		
		
		// getDecimal
		let template_method_getDecimal = [{
			"bind" : "txtMethodGetDecimal",
			"name" : "txtMethodGetDecimal",
			"type" : "numberinput",
			"decimal" : 333
		}];
		
		$("#jqxinputForm_method_getDecimal").jqxForm({
		  	"template" : template_method_getDecimal
		});
		
		
		/* 이벤트 설정 */
		let txtMethodGetDecimal = $("#jqxinputForm_method_getDecimal").jqxForm("getComponentByName", "txtMethodGetDecimal");
		 
		$("#btnGetDecimal").on("click", function() {
		   	let val = txtMethodGetDecimal.jqxNumberInput("getDecimal");
		   	alert("value : " + val);
		});
		
		
		// setDecimal
		let template_method_setDecimal = [{
			"bind" : "txtMethodSetDecimal",
			"name" : "txtMethodSetDecimal",
			"type" : "numberinput"
		}];
		
		$("#jqxinputForm_method_setDecimal").jqxForm({
		  	"template" : template_method_setDecimal
		});
		
		
		/* 이벤트 설정 */
		let txtMethodSetDecimal = $("#jqxinputForm_method_setDecimal").jqxForm("getComponentByName", "txtMethodSetDecimal");
		 
		$("#btnSetDecimal").on("click", function() {
			txtMethodSetDecimal.jqxNumberInput("setDecimal", 333);
		});
		
		
		// val
		let template_method_val = [{
			"bind" : "txtMethodVal",
			"name" : "txtMethodVal",
			"type" : "numberinput"
		}];
		
		$("#jqxinputForm_method_val").jqxForm({
		  	"template" : template_method_val
		});
		
		
		/* 이벤트 설정 */
		let txtMethodVal = $("#jqxinputForm_method_val").jqxForm("getComponentByName", "txtMethodVal");
		 
		$("#btnVal").on("click", function() {
			// Get value
			let value = txtMethodVal.jqxNumberInput("val");
			
			// Get value using jQuery
			let value2 = txtMethodVal.val();
			
			// Set value
			txtMethodVal.jqxNumberInput("val", "333");
			
			// Set value using jQuery
			txtMethodVal.val("33333");
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
			<!-- allowNull -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">allowNull</span>
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
						<div id="jqxinputForm_allowNull"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>null값을 허용할지 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_allowNull = [{
	"bind" : "txtAllowNull",
	"name" : "txtAllowNull",
	"type" : "numberinput",	
	"allowNull" : false	// property 설정
}];

$("#jqxinputForm_allowNull").jqxForm({
  	"template" : template_allowNull
});

// case 2 : element에 property 설정
let txtAllowNull = $("#jqxinputForm_allowNull").jqxForm("getComponentByName", "txtAllowNull");
txtAllowNull.jqxNumberInput("allowNull", true);


/* Get Property */

let txtAllowNull= $("#jqxinputForm_allowNull").jqxForm("getComponentByName", "txtAllowNull");
let allowNull = txtAllowNull.jqxNumberInput("allowNull"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- decimal -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">decimal</span>
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
						<div id="jqxinputForm_decimal"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 숫자값을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_decimal = [{
	"bind" : "txtDecimal",
	"name" : "txtDecimal",
	"type" : "numberinput",	
	"decimal" : 200	// property 설정
}];

$("#jqxinputForm_decimal").jqxForm({
  	"template" : template_decimal
});

// case 2 : element에 property 설정
let txtDecimal = $("#jqxinputForm_decimal").jqxForm("getComponentByName", "txtDecimal");
txtDecimal.jqxNumberInput("decimal", true);


/* Get Property */

let txtDecimal = $("#jqxinputForm_decimal").jqxForm("getComponentByName", "txtDecimal");
let decimal = txtDecimal.jqxNumberInput("decimal"); 
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
	"type" : "numberinput",	
	"disabled" : true	// property 설정
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxNumberInput("disabled", true);


/* Get Property */

let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxNumberInput("disabled"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- decimalDigits -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">decimalDigits</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					2
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_decimalDigits"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>숫자값의 소수점 자릿수를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_disabled = [{
	"bind" : "txtDecimalDigits",
	"name" : "txtDecimalDigits",
	"type" : "numberinput",	
	"decimalDigits" : 5	// property 설정
}];

$("#jqxinputForm_decimalDigits").jqxForm({
  	"template" : template_decimalDigits
});

// case 2 : element에 property 설정
let txtDecimalDigits = $("#jqxinputForm_decimalDigits").jqxForm("getComponentByName", "txtDecimalDigits");
txtDecimalDigits.jqxNumberInput("decimalDigits", 5);


/* Get Property */

let txtDecimalDigits = $("#jqxinputForm_decimalDigits").jqxForm("getComponentByName", "txtDecimalDigits");
let decimalDigits = txtDecimalDigits.jqxNumberInput("decimalDigits"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- decimalSeparator -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">decimalSeparator</span>
				</td>
				<td>
					<span>Char</span>
				</td>
				<td>
					"."
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_decimalSeparator"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>소수점 구분 텍스트를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_decimalSeparator = [{
	"bind" : "txtDecimalSeparator",
	"name" : "txtDecimalSeparator",
	"type" : "numberinput",	
	"decimalSeparator" : ","	// property 설정
}];

$("#jqxinputForm_decimalSeparator").jqxForm({
  	"template" : template_decimalSeparator
});

// case 2 : element에 property 설정
let txtDecimalSeparator = $("#jqxinputForm_decimalSeparator").jqxForm("getComponentByName", "txtDecimalSeparator");
txtDecimalSeparator.jqxNumberInput("decimalSeparator", ",");


/* Get Property */

let txtDecimalSeparator = $("#jqxinputForm_decimalSeparator").jqxForm("getComponentByName", "txtDecimalSeparator");
let decimalSeparator = txtDecimalSeparator.jqxNumberInput("decimalSeparator"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- digits -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">digits</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					8
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_digits"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>숫자의 자릿수를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_digits = [{
	"bind" : "txtDigits",
	"name" : "txtDigits",
	"type" : "numberinput",	
	"digits" : 5	// property 설정
}];

$("#jqxinputForm_digits").jqxForm({
  	"template" : template_digits
});

// case 2 : element에 property 설정
let txtDigits = $("#jqxinputForm_digits").jqxForm("getComponentByName", "txtDigits");
txtDigits.jqxNumberInput("digits", 5);


/* Get Property */

let txtDigits = $("#jqxinputForm_digits").jqxForm("getComponentByName", "txtDigits");
let digits = txtDigits.jqxNumberInput("digits"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- groupSeparator -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">groupSeparator</span>
				</td>
				<td>
					<span>Char</span>
				</td>
				<td>
					","
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_groupSeparator"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>숫자의 그룹단위 구분 텍스트를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_groupSeparator = [{
	"bind" : "txtGroupSeparator",
	"name" : "txtGroupSeparator",
	"type" : "numberinput",	
	"groupSeparator" : "."	// property 설정
}];

$("#jqxinputForm_groupSeparator").jqxForm({
  	"template" : template_groupSeparator
});

// case 2 : element에 property 설정
let txtGroupSeparator = $("#jqxinputForm_groupSeparator").jqxForm("getComponentByName", "txtGroupSeparator");
txtGroupSeparator.jqxNumberInput("groupSeparator", ".");


/* Get Property */

let txtGroupSeparator = $("#jqxinputForm_groupSeparator").jqxForm("getComponentByName", "txtGroupSeparator");
let groupSeparator = txtGroupSeparator.jqxNumberInput("groupSeparator"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- groupSize -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">groupSize</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					3
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_groupSize"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>숫자의 그룹단위 구분 길이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_groupSize = [{
	"bind" : "txtGroupSize",
	"name" : "txtGroupSize",
	"type" : "numberinput",	
	"groupSize" : 5	// property 설정
}];

$("#jqxinputForm_groupSize").jqxForm({
  	"template" : template_groupSize
});

// case 2 : element에 property 설정
let txtGroupSize = $("#jqxinputForm_groupSize").jqxForm("getComponentByName", "txtGroupSize");
txtGroupSize.jqxNumberInput("groupSize", 5);


/* Get Property */

let txtGroupSize = $("#jqxinputForm_groupSize").jqxForm("getComponentByName", "txtGroupSize");
let groupSize = txtGroupSize.jqxNumberInput("groupSize"); 
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
	"type" : "numberinput",	
	"height" : 40	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxNumberInput("height", "40px");


/* Get Property */

let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxNumberInput("height"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- inputMode -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">inputMode</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"advanced"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_inputMode"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>입력모드를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"simple" - 숫자만 입력되는 기본 텍스트박스입니다.</p>
						<p>"advanced" - 숫자그룹 마스킹이 적용된 텍스트박스입니다. (ex : 금액처리 1,000,000)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_inputMode = [{
	"bind" : "txtInputMode",
	"name" : "txtInputMode",
	"type" : "numberinput",	
	"inputMode" : "simple"	// property 설정
}];

$("#jqxinputForm_inputMode").jqxForm({
  	"template" : template_inputMode
});

// case 2 : element에 property 설정
let txtInputMode = $("#jqxinputForm_inputMode").jqxForm("getComponentByName", "txtInputMode");
txtInputMode.jqxNumberInput("inputMode", "simple");


/* Get Property */

let txtInputMode = $("#jqxinputForm_inputMode").jqxForm("getComponentByName", "txtInputMode");
let inputMode = txtInputMode.jqxNumberInput("inputMode"); 
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
					<span>Number</span>
				</td>
				<td>
					-99999999
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
						<p>입력 최솟값</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_min = [{
	"bind" : "txtMin",
	"name" : "txtMin",
	"type" : "numberinput",	
	"min" : -30	// property 설정
}];

$("#jqxinputForm_min").jqxForm({
  	"template" : template_min
});

// case 2 : element에 property 설정
let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
txtMin.jqxNumberInput("min", -30);


/* Get Property */

let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
let min = txtMin.jqxNumberInput("min"); 
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
					<span>Number</span>
				</td>
				<td>
					99999999
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
						<p>입력 최댓값</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_max = [{
	"bind" : "txtMax",
	"name" : "txtMax",
	"type" : "numberinput",	
	"max" : 30	// property 설정
}];

$("#jqxinputForm_max").jqxForm({
  	"template" : template_max
});

// case 2 : element에 property 설정
let txtMax = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtMax");
txtMax.jqxNumberInput("max", 30);


/* Get Property */

let txtMax = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMax");
let max = txtMax.jqxNumberInput("max"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- negativeSymbol -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">negativeSymbol</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"-"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_negativeSymbol"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>음수 기호를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_negativeSymbol = [{
	"bind" : "txtNegativeSymbol",
	"name" : "txtNegativeSymbol",
	"type" : "numberinput",	
	"negativeSymbol" : "#"	// property 설정
}];

$("#jqxinputForm_negativeSymbol").jqxForm({
  	"template" : template_negativeSymbol
});

// case 2 : element에 property 설정
let txtNegativeSymbol = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtNegativeSymbol");
txtNegativeSymbol.jqxNumberInput("negativeSymbol", "#");


/* Get Property */

let txtNegativeSymbol = $("#jqxinputForm_negativeSymbol").jqxForm("getComponentByName", "txtNegativeSymbol");
let negativeSymbol = txtNegativeSymbol.jqxNumberInput("negativeSymbol"); 
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
						<p>placeHolder를 설정하거나 가져옵니다. (값이 null인 경우)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_placeHolder = [{
	"bind" : "txtPlaceHolder",
	"name" : "txtPlaceHolder",
	"type" : "numberinput",	
	"placeHolder" : "This is a placeHolder text"	// property 설정
}];

$("#jqxinputForm_placeHolder").jqxForm({
  	"template" : template_placeHolder
});

// case 2 : element에 property 설정
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
txtPlaceHolder.jqxNumberInput("placeHolder", "#");


/* Get Property */

let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
let placeHolder = txtPlaceHolder.jqxNumberInput("placeHolder"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- promptChar -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">promptChar</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"_"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_promptChar"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>입력값이 없는 문자의 마스킹 텍스트를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_promptChar = [{
	"bind" : "txtPromptChar",
	"name" : "txtPromptChar",
	"type" : "numberinput",	
	"promptChar" : "#"	// property 설정
}];

$("#jqxinputForm_promptChar").jqxForm({
  	"template" : template_promptChar
});

// case 2 : element에 property 설정
let txtPromptChar = $("#jqxinputForm_promptChar").jqxForm("getComponentByName", "txtPromptChar");
txtPromptChar.jqxNumberInput("promptChar", "#");


/* Get Property */

let txtPromptChar = $("#jqxinputForm_promptChar").jqxForm("getComponentByName", "txtPromptChar");
let promptChar = txtPromptChar.jqxNumberInput("promptChar"); 
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
	"type" : "numberinput",
	"spinButtons" : true,	
	"rtl" : true	// property 설정
}];

$("#jqxinputForm_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
txtRtl.jqxNumberInput("rtl", true);


/* Get Property */

let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
let rtl = txtRtl.jqxNumberInput("rtl"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- readOnly -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">readOnly</span>
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
						<div id="jqxinputForm_readOnly"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>readOnly 프로퍼티를 설정하거나 가져욥니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_readOnly = [{
	"bind" : "txtReadOnly",
	"name" : "txtReadOnly",
	"type" : "numberinput",	
	"readOnly" : true	// property 설정
}];

$("#jqxinputForm_readOnly").jqxForm({
  	"template" : template_readOnly
});

// case 2 : element에 property 설정
let txtReadOnly = $("#jqxinputForm_readOnly").jqxForm("getComponentByName", "txtReadOnly");
txtReadOnly.jqxNumberInput("readOnly", true);


/* Get Property */

let txtReadOnly = $("#jqxinputForm_readOnly").jqxForm("getComponentByName", "txtReadOnly");
let readOnly = txtReadOnly.jqxNumberInput("readOnly"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- spinMode -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">spinMode</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"advanced"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_spinMode"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>spinButton의 모드를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'advanced' - 현재 캐럿이 위치한 부분의 값이 증감합니다.</p>
						<p>'simple' - 정수부분의 값이 증감합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_spinMode = [{
	"bind" : "txtSpinMode",
	"name" : "txtSpinMode",
	"type" : "numberinput",
	"spinButtons" : true,	
	"spinMode" : "simple"	// property 설정
}];

$("#jqxinputForm_spinMode").jqxForm({
  	"template" : template_spinMode
});

// case 2 : element에 property 설정
let txtSpinMode = $("#jqxinputForm_spinMode").jqxForm("getComponentByName", "txtSpinMode");
txtSpinMode.jqxNumberInput("spinMode", "simple");


/* Get Property */

let txtSpinMode = $("#jqxinputForm_spinMode").jqxForm("getComponentByName", "txtSpinMode");
let spinMode = txtSpinMode.jqxNumberInput("spinMode"); 
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
					false
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
						<p>spinButton을 화면에 나타내는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_spinButtons = [{
	"bind" : "txtSpinButtons",
	"name" : "txtSpinButtons",
	"type" : "numberinput",
	"spinButtons" : true	// property 설정
}];

$("#jqxinputForm_spinButtons").jqxForm({
  	"template" : template_spinButtons
});

// case 2 : element에 property 설정
let txtSpinButtons = $("#jqxinputForm_spinButtons").jqxForm("getComponentByName", "txtSpinButtons");
txtSpinButtons.jqxNumberInput("spinButtons", true);


/* Get Property */

let txtSpinButtons = $("#jqxinputForm_spinButtons").jqxForm("getComponentByName", "txtSpinButtons");
let spinButtons = txtSpinButtons.jqxNumberInput("spinButtons"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- spinButtonsWidth -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">spinButtonsWidth</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					18
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_spinButtonsWidth"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>spinButton의 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_spinButtonsWidth= [{
	"bind" : "txtSpinButtonsWidth",
	"name" : "txtSpinButtonsWidth",
	"type" : "numberinput",
	"spinButtons" : true,
	"spinButtonsWidth" : 10	// property 설정
}];

$("#jqxinputForm_spinButtonsWidth").jqxForm({
  	"template" : template_spinButtonsWidth
});

// case 2 : element에 property 설정
let txtSpinButtonsWidth = $("#jqxinputForm_spinButtonsWidth").jqxForm("getComponentByName", "txtSpinButtonsWidth");
txtSpinButtonsWidth.jqxNumberInput("spinButtonsWidth", 10);


/* Get Property */

let txtSpinButtonsWidth = $("#jqxinputForm_spinButtonsWidth").jqxForm("getComponentByName", "txtSpinButtonsWidth");
let spinButtonsWidth = txtSpinButtonsWidth.jqxNumberInput("spinButtonsWidth"); 
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
						<p>spinButton의 증감수치를 설정한거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_spinButtonsStep = [{
	"bind" : "txtSpinButtonsStep",
	"name" : "txtSpinButtonsStep",
	"type" : "numberinput",
	"spinButtons" : true,
	"spinButtonsStep" : 2	// property 설정
}];

$("#jqxinputForm_spinButtonsStep").jqxForm({
  	"template" : template_spinButtonsStep
});

// case 2 : element에 property 설정
let txtSpinButtonsStep = $("#jqxinputForm_spinButtonsStep").jqxForm("getComponentByName", "txtSpinButtonsStep");
txtSpinButtonsStep.jqxNumberInput("spinButtonsStep", 2);


/* Get Property */

let txtSpinButtonsStep = $("#jqxinputForm_spinButtonsStep").jqxForm("getComponentByName", "txtSpinButtonsStep");
let spinButtonsStep = txtSpinButtonsStep.jqxNumberInput("spinButtonsStep"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- symbol -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">symbol</span>
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
						<div id="jqxinputForm_symbol"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>화폐단위 또는 백분율을 나타내는 문자열을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_symbol = [{
	"bind" : "txtSymbol",
	"name" : "txtSymbol",
	"type" : "numberinput",
	"symbol" : "$"	// property 설정
}];

$("#jqxinputForm_symbol").jqxForm({
  	"template" : template_symbol
});

// case 2 : element에 property 설정
let txtSymbol = $("#jqxinputForm_symbol").jqxForm("getComponentByName", "txtSymbol");
txtSymbol.jqxNumberInput("symbol", "$");


/* Get Property */

let txtSymbol = $("#jqxinputForm_symbol").jqxForm("getComponentByName", "txtSymbol");
let symbol = txtSymbol.jqxNumberInput("symbol"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- symbolPosition -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">symbolPosition</span>
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
						<div id="jqxinputForm_symbolPosition"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>화폐단위 또는 백분율을 나타내는 문자열의 위치를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"left"</p>
						<p>"right"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_symbolPosition = [{
	"bind" : "txtSymbolPosition",
	"name" : "txtSymbolPosition",
	"type" : "numberinput",
	"symbol" : "%",
	"symbolPosition" : "right"	// property 설정
}];

$("#jqxinputForm_symbolPosition").jqxForm({
  	"template" : template_symbolPosition
});

// case 2 : element에 property 설정
let txtSymbolPosition = $("#jqxinputForm_symbolPosition").jqxForm("getComponentByName", "txtSymbolPosition");
txtSymbolPosition.jqxNumberInput("symbolPosition", "right");


/* Get Property */

let txtSymbolPosition = $("#jqxinputForm_symbolPosition").jqxForm("getComponentByName", "txtSymbolPosition");
let symbolPosition = txtSymbolPosition.jqxNumberInput("symbolPosition"); 
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
					"right"
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
						<p>텍스트의 정렬위치를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"left"</p>
						<p>"right"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_textAlign = [{
	"bind" : "txtTextAlign",
	"name" : "txtTextAlign",
	"type" : "numberinput",
	"textAlign" : "left"	// property 설정
}];

$("#jqxinputForm_textAlign").jqxForm({
  	"template" : template_textAlign
});

// case 2 : element에 property 설정
let txtTextAlign = $("#jqxinputForm_textAlign").jqxForm("getComponentByName", "txtTextAlign");
txtTextAlign.jqxNumberInput("textAlign", "right");


/* Get Property */

let txtTextAlign = $("#jqxinputForm_textAlign").jqxForm("getComponentByName", "txtTextAlign");
let textAlign = txtTextAlign.jqxNumberInput("textAlign"); 
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
	"type" : "numberinput",	
	"spinButtons" : true,
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
	"type" : "numberinput",	
	"theme" : "energyblue"	// property 설정
}];

$("#jqxinputForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
txtTheme.jqxNumberInput("theme", "energyblue");


/* Get Property */
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
let theme = txtTheme.jqxNumberInput("theme"); 
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
	"type" : "numberinput",	
	"width" : 300	// property 설정
}];

$("#jqxinputForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
txtWidth.jqxNumberInput("width", "300px");


/* Get Property */
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
let width = txtWidth.jqxNumberInput("width"); 
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
	"type" : "numberinput",	
	"spinButtons" : true
}];

$("#jqxinputForm_event_change").jqxForm({
  	"template" : template_event_change
});


/* 이벤트 설정 */
let txtEventChange = $("#jqxinputForm_event_change").jqxForm("getComponentByName", "txtEventChange"); 
txtEventChange.on("change", function(event) {
	let args = event.args;
	
	if(args) {
	   	let value = args.value;		// inputBox에 입력된 값
	   	let type = args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
	   
	   	$("#log_event_change").html("value : " + value + " // type : " + type);
   	}
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- textchanged -->
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
						<div id="jqxinputForm_event_textchanged"></div>
						<div id="log_event_textchanged"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>텍스트값이 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_textchanged = [{
	"bind" : "txtEventTextChanged",
	"name" : "txtEventTextChanged",
	"type" : "numberinput",	
	"spinButtons" : true
}];

$("#jqxinputForm_event_textchanged").jqxForm({
  	"template" : template_event_textchanged
});


/* 이벤트 설정 */
let txtEventTextChanged = $("#jqxinputForm_event_textchanged").jqxForm("getComponentByName", "txtEventTextChanged"); 
txtEventTextChanged.on("change", function(event) {
	let args = event.args;
	
	if(args) {
	   	let value = args.value;
	   
	   	$("#log_event_textchanged").html("value : " + value);
   	}
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
						<div id="jqxinputForm_event_valueChanged"></div>
						<div id="log_event_valueChanged"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>값이 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_valueChanged = [{
	"bind" : "txtEventValueChanged",
	"name" : "txtEventValueChanged",
	"type" : "numberinput",	
	"spinButtons" : true
}];

$("#jqxinputForm_event_valueChanged").jqxForm({
  	"template" : template_event_valueChanged
});


/* 이벤트 설정 */
let txtEventValueChanged = $("#jqxinputForm_event_valueChanged").jqxForm("getComponentByName", "txtEventValueChanged"); 
txtEventValueChanged.on("change", function(event) {
	let args = event.args;
	
	if(args) {
	   	let value = args.value;
	   
	   	$("#log_event_valueChanged").html("value : " + value);
   	}
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
			<!-- clear -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">clear</span>
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
						<div id="jqxinputForm_method_clear"></div>
						<input type="button" id="btnClear" value="Clear" />
						<!-- Description -->
						<h4>Description</h4>
						<p>값을 지웁니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_clear = [{
	"bind" : "txtMethodClear",
	"name" : "txtMethodClear",
	"type" : "numberinput",
	"decimal" : 333
}];

$("#jqxinputForm_method_clear").jqxForm({
  	"template" : template_method_clear
});


/* 이벤트 설정 */
let txtMethodClear = $("#jqxinputForm_method_clear").jqxForm("getComponentByName", "txtMethodClear");
 
$("#btnClear").on("click", function() {
   	txtMethodClear.jqxNumberInput("clear");
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
						<p>위젯을 제거합니다.</p>
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
	"type" : "numberinput"
}];

$("#jqxinputForm_method_destroy").jqxForm({
  	"template" : template_method_destroy
});


/* 이벤트 설정 */
let txtMethodDestroy = $("#jqxinputForm_method_destroy").jqxForm("getComponentByName", "txtMethodDestroy");
 
$("#btnDestroy").on("click", function() {
   	txtMethodDestroy.jqxNumberInput("destroy");
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
						<p>위젯에 포커스를 설정합니다.</p>
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
	"type" : "numberinput"
}];

$("#jqxinputForm_method_focus").jqxForm({
  	"template" : template_method_focus
});


/* 이벤트 설정 */
let txtMethodFocus = $("#jqxinputForm_method_focus").jqxForm("getComponentByName", "txtMethodFocus");
 
$("#btnFocus").on("click", function() {
   	txtMethodFocus.jqxNumberInput("focus");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getDecimal -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getDecimal</span>
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
						<div id="jqxinputForm_method_getDecimal"></div>
						<input type="button" id="btnGetDecimal" value="GetDecimal" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 값을 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>Number</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_getDecimal = [{
	"bind" : "txtMethodGetDecimal",
	"name" : "txtMethodGetDecimal",
	"type" : "numberinput",
	"decimal" : 333
}];

$("#jqxinputForm_method_getDecimal").jqxForm({
  	"template" : template_method_getDecimal
});


/* 이벤트 설정 */
let txtMethodGetDecimal = $("#jqxinputForm_method_getDecimal").jqxForm("getComponentByName", "txtMethodGetDecimal");
 
$("#btnGetDecimal").on("click", function() {
	let val = txtMethodGetDecimal.jqxNumberInput("getDecimal");
	alert("value : " + val);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- setDecimal -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">setDecimal</span>
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
						<div id="jqxinputForm_method_setDecimal"></div>
						<input type="button" id="btnSetDecimal" value="SetDecimal" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 값을 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>value - Number</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_setDecimal = [{
	"bind" : "txtMethodSetDecimal",
	"name" : "txtMethodSetDecimal",
	"type" : "numberinput"
}];

$("#jqxinputForm_method_setDecimal").jqxForm({
  	"template" : template_method_setDecimal
});


/* 이벤트 설정 */
let txtMethodSetDecimal = $("#jqxinputForm_method_setDecimal").jqxForm("getComponentByName", "txtMethodSetDecimal");
 
$("#btnSetDecimal").on("click", function() {
	txtMethodSetDecimal.jqxNumberInput("setDecimal", 333);
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
						<p>value - String</p>
						<h4>Return Value</h4>
						<p>String</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_val = [{
	"bind" : "txtMethodVal",
	"name" : "txtMethodVal",
	"type" : "numberinput"
}];

$("#jqxinputForm_method_val").jqxForm({
  	"template" : template_method_val
});


/* 이벤트 설정 */
let txtMethodVal = $("#jqxinputForm_method_val").jqxForm("getComponentByName", "txtMethodVal");
 
$("#btnVal").on("click", function() {
	// Get value
	let value = txtMethodVal.jqxNumberInput("val");
	
	// Get value using jQuery
	let value2 = txtMethodVal.val();
	
	// Set value
	txtMethodVal.jqxNumberInput("val", "333");
	
	// Set value using jQuery
	txtMethodVal.val("333");
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>