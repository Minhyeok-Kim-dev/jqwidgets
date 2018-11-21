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
<script src="<c:url value="/resources/jqwidgets/jqxcomplexinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		let template_decimalNotation = [{
		   	"bind" : "txtDecimalNotation",
		    "name" : "txtDecimalNotation",
			"type" : "complexinput",	
			"decimalNotation" : "exponential",	// property 설정
		    "value" : "22 - 3i"
		}];
		
		$("#jqxinputForm_decimalNotation").jqxForm({
		  	"template" : template_decimalNotation
		});
		
		
		// disabled
		let template_disabled = [{
		   	"bind" : "txtDisabled",
		    "name" : "txtDisabled",
			"type" : "complexinput",	
			"disabled" : true	// property 설정
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		
		
		// height
		let template_height = [{
		   	"bind" : "txtHeight",
			"name" : "txtHeight",
			"type" : "complexinput",	
			"height" : 40	// property 설정
		}];
		
		$("#jqxinputForm_height").jqxForm({
		  	"template" : template_height
		});
		

		// placeHolder
		let template_placeHolder = [{
		   	"bind" : "txtPlaceHolder",
			"name" : "txtPlaceHolder",
			"type" : "complexinput",	
			"placeHolder" : "this is a placeHolder text"	// property 설정
		}];
		
		$("#jqxinputForm_placeHolder").jqxForm({
		  	"template" : template_placeHolder
		});
		
		
		// roundedCorners
		let template_roundedCorners = [{
		   	"bind" : "txtRoundedCorners",
			"name" : "txtRoundedCorners",
			"type" : "complexinput",	
			"roundedCorners" : false	// property 설정
		}];
		
		$("#jqxinputForm_roundedCorners").jqxForm({
		  	"template" : template_roundedCorners
		});
		

		// rtl
		let template_rtl = [{
		   	"bind" : "txtRtl",
			"name" : "txtRtl",
			"type" : "complexinput",
			"spinButtons" : true,
			"rtl" : true	// property 설정
		}];
		
		$("#jqxinputForm_rtl").jqxForm({
		  	"template" : template_rtl
		});
		

		// spinButtons
		let template_spinButtons = [{
		   	"bind" : "txtSpinButtons",
			"name" : "txtSpinButtons",
			"type" : "complexinput",	
			"spinButtons" : true	// property 설정
		}];
		
		$("#jqxinputForm_spinButtons").jqxForm({
		  	"template" : template_spinButtons
		});
		

		// spinButtonsStep
		let template_spinButtonsStep = [{
		   	"bind" : "txtSpinButtonsStep",
			"name" : "txtSpinButtonsStep",
			"type" : "complexinput",	
			"spinButtons" : true,
			"spinButtonsStep" : 10	// property 설정
		}];
		
		$("#jqxinputForm_spinButtonsStep").jqxForm({
		  	"template" : template_spinButtonsStep
		});
		

		// template
		let template_template = [{
		   	"bind" : "txtTemplate",
			"name" : "txtTemplate",
			"type" : "complexinput",	
			"width" : "250px",
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
			"type" : "complexinput",
			"spinButtons" : true,
			"theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxinputForm_theme").jqxForm({
		  	"template" : template_theme
		});
		
		
		// value
		let template_value = [{
		   	"bind" : "txtValue",
			"name" : "txtValue",
			"type" : "complexinput",	
			"width" : "250px",
			"spinButtons" : true,
			"value" : "190 - 17i"	// property 설정
		}];
		
		$("#jqxinputForm_value").jqxForm({
		  	"template" : template_value
		});
		

		// width
		let template_width = [{
		   	"bind" : "txtWidth",
			"name" : "txtWidth",
			"type" : "complexinput",	
			"width" : 300,	// property 설정
		}];
		
		$("#jqxinputForm_width").jqxForm({
		  	"template" : template_width
		});
		
		
		
		/* Events */
		// change
		let template_event_change = [{
		    "bind" : "txtEventChange",
		    "name" : "txtEventChange",
			"type" : "complexinput",
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
			 	// new value
		        let value = args.value;
		        // old value
		        let oldValue = args.oldValue;
		        // 실수부
		        let realPart = args.realPart;
		        // 허수부
		        let imaginaryPart = args.imaginaryPart;
		        
		        $("#log_event_change").html("The change event has been triggered.<br />New value: " + value + 
		                "; old value: " + oldValue + "; real part: " + realPart + "; imaginary part: " + imaginaryPart + "<br />");
		    }
		    
		});
		

		/* Methods */
		// destroy
		let template_method_destroy = [{
		    "bind" : "txtMethodDestroy",
		    "name" : "txtMethodDestroy",
			"type" : "complexinput"	
		}];
		
		$("#jqxinputForm_method_destroy").jqxForm({
		  	"template" : template_method_destroy
		});
		
		
		/* 이벤트 설정 */
		let txtMethodDestroy = $("#jqxinputForm_method_destroy").jqxForm("getComponentByName", "txtMethodDestroy");
		 
		$("#btnDestroy").on("click", function() {
		   	txtMethodDestroy.jqxComplexInput("destroy");
		});
		
		
		// getReal
		let template_method_getReal = [{
		    "bind" : "txtMethodGetReal",
		    "name" : "txtMethodGetReal",
			"type" : "complexinput",
			"value" : "22 - 3i"
		}];
		
		$("#jqxinputForm_method_getReal").jqxForm({
		  	"template" : template_method_getReal
		});
		
		
		/* 이벤트 설정 */
		let txtMethodGetReal = $("#jqxinputForm_method_getReal").jqxForm("getComponentByName", "txtMethodGetReal");
		 
		$("#btnGetReal").on("click", function() {
		   	let realData = txtMethodGetReal.jqxComplexInput("getReal");
		   	alert(realData);
		});
		
		
		// getImaginary
		let template_method_getImaginary = [{
		    "bind" : "txtMethodGetImaginary",
		    "name" : "txtMethodGetImaginary",
			"type" : "complexinput",
		    "value" : "22 - 3i"
		}];
		
		$("#jqxinputForm_method_getImaginary").jqxForm({
		  	"template" : template_method_getImaginary
		});
		
		
		/* 이벤트 설정 */
		let txtMethodGetImaginary = $("#jqxinputForm_method_getImaginary").jqxForm("getComponentByName", "txtMethodGetImaginary");
		 
		$("#btnGetImaginary").on("click", function() {
		   	let imaginaryData = txtMethodGetImaginary.jqxComplexInput("getImaginary");
		   	alert(imaginaryData);
		});
		
		
		// render
		let template_method_render = [{
		    "bind" : "txtMethodRender",
		    "name" : "txtMethodRender",
			"type" : "complexinput",
		    "value" : "22 - 3i"
		}];
		
		$("#jqxinputForm_method_render").jqxForm({
		  	"template" : template_method_render
		});
		
		
		/* 이벤트 설정 */
		let txtMethodRender = $("#jqxinputForm_method_render").jqxForm("getComponentByName", "txtMethodRender");
		 
		$("#btnGetImaginary").on("click", function() {
		   	txtMethodRender.jqxComplexInput("render");
		});
		
		
		// refresh
		let template_method_refresh = [{
		    "bind" : "txtMethodRefresh",
		    "name" : "txtMethodRefresh",
			"type" : "complexinput",
		    "value" : "22 - 3i"
		}];
		
		$("#jqxinputForm_method_refresh").jqxForm({
		  	"template" : template_method_refresh
		});
		
		
		/* 이벤트 설정 */
		let txtMethodRefresh = $("#jqxinputForm_method_refresh").jqxForm("getComponentByName", "txtMethodRefresh");
		 
		$("#btnRefresh").on("click", function() {
		   	txtMethodRefresh.jqxComplexInput("refresh");
		});
		
		
		// val
		let template_method_val = [{
		    "bind" : "txtMethodVal",
		    "name" : "txtMethodVal",
			"type" : "complexinput",
		    "value" : "22 - 3i"
		}];

		$("#jqxinputForm_method_val").jqxForm({
		  	"template" : template_method_val
		});


		/* 이벤트 설정 */
		let txtMethodVal = $("#jqxinputForm_method_val").jqxForm("getComponentByName", "txtMethodVal");
		 
		$("#btnVal").on("click", function() {
			// Get value
		   	let val = txtMethodVal.jqxComplexInput("val");
		   	
		   	// Get value using jQuery
		   	let val2 = txtMethodVal.val();
		   	
		   	// Set value
		   	txtMethodVal.jqxComplexInput("val", "1 - 99i");
		   	txtMethodVal.jqxComplexInput("val", {real : 1, imaginary : -99});
		   	
		   	// Set value using jQuery
		   	txtMethodVal.val({real : 1, imaginary : -99});
		   	
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
						<p>복소수의 실수 부분과 허수부분을 표시할 표기법을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'default' - 10진수 표기법 (ex : '330000 - 200i')</p>
						<p>'exponential' - 지수 표기법  (ex : '3.3e+5 - 2e+2i')</p>
						<p>'scientific' - 과학적 표기법 (ex : '3.3×10⁵ - 2×10²i')</p>
						<p>'engineering' - 공학 표기법 (ex : '330×10³ - 200×10⁰i')</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_decimalNotation = [{
	"bind" : "txtDecimalNotation",
	"name" : "txtDecimalNotation",
	"type" : "text",	
	"decimalNotation" : "exponential"	// property 설정
}];

$("#jqxinputForm_decimalNotation").jqxForm({
  	"template" : template_decimalNotation
});

// case 2 : element에 property 설정
let txtDecimalNotation = $("#jqxinputForm_decimalNotation").jqxForm("getComponentByName", "txtDecimalNotation");
txtDecimalNotation.jqxComplexInput("decimalNotation", "scientific");


/* Get Property */
let txtDecimalNotation = $("#jqxinputForm_decimalNotation").jqxForm("getComponentByName", "txtDecimalNotation");
let decimalNotation = txtDecimalNotation.jqxComplexInput("decimalNotation"); 
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
	"type" : "complexinput",	
	"decimalNotation" : "exponential"	// property 설정
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxComplexInput("disabled", true);


/* Get Property */
let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxComplexInput("disabled"); 
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
						<p>위젯을 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_height = [{
   	"bind" : "txtHeight",
	"name" : "txtHeight",
	"type" : "complexinput",	
	"height" : 40	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxComplexInput("height", 40);


/* Get Property */
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxComplexInput("height"); 
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
	"type" : "complexinput",	
	"placeHolder" : "this is a placeHolder text"	// property 설정
}];

$("#jqxinputForm_placeHolder").jqxForm({
  	"template" : template_placeHolder
});

// case 2 : element에 property 설정
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
txtPlaceHolder.jqxComplexInput("placeHolder", "test text");


/* Get Property */
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
let placeHolder = txtPlaceHolder.jqxComplexInput("placeHolder"); 
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
	"type" : "complexinput",	
	"roundedCorners" : "false"	// property 설정
}];

$("#jqxinputForm_roundedCorners").jqxForm({
  	"template" : template_roundedCorners
});

// case 2 : element에 property 설정
let txtRoundedCorners = $("#jqxinputForm_roundedCorners").jqxForm("getComponentByName", "txtRoundedCorners");
txtRoundedCorners.jqxComplexInput("roundedCorners", false);


/* Get Property */
let txtRoundedCorners = $("#jqxinputForm_roundedCorners").jqxForm("getComponentByName", "txtRoundedCorners");
let roundedCorners = txtRoundedCorners.jqxComplexInput("roundedCorners"); 
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
	"type" : "complexinput",	
	"rtl" : true	// property 설정
}];

$("#jqxinputForm_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
txtRtl.jqxComplexInput("rtl", true);


/* Get Property */
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
let rtl = txtRtl.jqxComplexInput("rtl"); 
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
						<p>스핀버튼을 나타내는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_spinButtons = [{
   	"bind" : "txtSpinButtons",
	"name" : "txtSpinButtons",
	"type" : "complexinput",	
	"spinButtons" : true	// property 설정
}];

$("#jqxinputForm_spinButtons").jqxForm({
  	"template" : template_spinButtons
});

// case 2 : element에 property 설정
let txtSpinButtons = $("#jqxinputForm_spinButtons").jqxForm("getComponentByName", "txtSpinButtons");
txtRtl.jqxComplexInput("spinButtons", true);


/* Get Property */
let txtSpinButtons = $("#jqxinputForm_spinButtons").jqxForm("getComponentByName", "txtSpinButtons");
let spinButtons = txtSpinButtons.jqxComplexInput("spinButtons"); 
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
	"type" : "complexinput",	
	"spinButtons" : true,
	"spinButtonsStep" : 10	// property 설정
}];

$("#jqxinputForm_spinButtonsStep").jqxForm({
  	"template" : template_spinButtonsStep
});

// case 2 : element에 property 설정
let txtSpinButtonsStep = $("#jqxinputForm_spinButtonsStep").jqxForm("getComponentByName", "txtSpinButtonsStep");
txtSpinButtonsStep.jqxComplexInput("spinButtonsStep", true);


/* Get Property */
let txtSpinButtonsStep = $("#jqxinputForm_spinButtonsStep").jqxForm("getComponentByName", "txtSpinButtonsStep");
let spinButtonsStep = txtSpinButtonsStep.jqxComplexInput("spinButtonsStep"); 
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
	"type" : "complexinput",	
	"width" : "250px",
	"spinButtons" : true,
	"template" : "primary"	// property 설정
}];

$("#jqxinputForm_template").jqxForm({
  	"template" : template_template
});

// case 2 : element에 property 설정
let txtTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "txtTemplate");
txtTemplate.jqxComplexInput("template", "warning");


/* Get Property */
let txtTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "txtTemplate");
let template = txtTemplate.jqxComplexInput("template"); 
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
	"type" : "complexinput",
	"spinButtons" : true,	
	"theme" : "energyblue"	// property 설정
}];

$("#jqxinputForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
txtTheme.jqxComplexInput("theme", "energyblue");


/* Get Property */
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
let theme = txtTheme.jqxComplexInput("theme"); 
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
					""
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
	"type" : "complexinput",	
	"width" : "250px",
	"spinButtons" : true,
	"value" : "190 - 17i"	// property 설정
}];

$("#jqxinputForm_value").jqxForm({
  	"template" : template_value
});

// case 2 : element에 property 설정
let txtValue = $("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
txtValue.jqxComplexInput("value", "190 - 17i");


/* Get Property */
let txtValue = $("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
let value = txtValue.jqxComplexInput("value"); 
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
	"type" : "complexinput",	
	"width" : 300,	// property 설정
}];

$("#jqxinputForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
txtWidth.jqxComplexInput("width", "300px");


/* Get Property */
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
let width = txtWidth.jqxComplexInput("width"); 
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
    "bind" : "txtChange",
    "name" : "txtChange",
	"type" : "complexinput",	
	"width" : "250px"
}];

$("#jqxinputForm_event_change").jqxForm({
  	"template" : template_event_change
});


/* 이벤트 설정 */
let txtChange = $("#jqxinputForm_event_change").jqxForm("getComponentByName", "txtChange"); 
txtChange.on("change", function(event) {
	let args = event.args;
   	let type = args.type;					// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
   	let value = args.value;					// 새로운 값
   	let oldValue = args.oldValue;			// 이전 값
   	let realPart = args.realPart;			// 실수 부
   	let imaginaryPart = args.imaginaryPart;	// 허수 부
   
   	$("#log_change").html("type : " + type + " // value : " + value + " // oldValue :" + oldValue + 
   		"<br/> // realPart : " + realPart + " // imaginaryPart : " + imaginaryPart);
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
			<!-- destroy -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">destroy - /* 현재 미동작 */</span>
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
	"type" : "complexinput"	
}];

$("#jqxinputForm_method_destroy").jqxForm({
  	"template" : template_method_destroy
});


/* 이벤트 설정 */
let txtMethodDestroy = $("#jqxinputForm_method_destroy").jqxForm("getComponentByName", "txtMethodDestroy");
 
$("#btnDestroy").on("click", function() {
   	txtMethodDestroy.jqxComplexInput("destroy");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getReal -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getReal</span>
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
						<div id="jqxinputForm_method_getReal"></div>
						<input type="button" id="btnGetReal" value="GetReal" />
						<!-- Description -->
						<h4>Description</h4>
						<p>실수부 값을 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>complexNumber - Number(optional) - 입력한 경우 해당 복소수값의 실수부를 가져옵니다.</p>
						<h4>Return Value</h4>
						<p>Number</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_getReal = [{
    "bind" : "txtMethodGetReal",
    "name" : "txtMethodGetReal",
	"type" : "complexinput",
    "value" : "22 - 3i"
}];

$("#jqxinputForm_method_getReal").jqxForm({
  	"template" : template_method_getReal
});


/* 이벤트 설정 */
let txtMethodGetReal = $("#jqxinputForm_method_getReal").jqxForm("getComponentByName", "txtMethodGetReal");
 
$("#btnGetReal").on("click", function() {
   	let realData = txtMethodGetReal.jqxComplexInput("getReal");
   	alert(realData);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- getImaginary -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">getImaginary</span>
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
						<div id="jqxinputForm_method_getImaginary"></div>
						<input type="button" id="btnGetImaginary" value="GetImaginary" />
						<!-- Description -->
						<h4>Description</h4>
						<p>허수부 값을 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>complexNumber - Number(optional) - 입력한 경우 해당 복소수값의 허수부를 가져옵니다.</p>
						<h4>Return Value</h4>
						<p>Number</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_getImaginary = [{
    "bind" : "txtMethodGetImaginary",
    "name" : "txtMethodGetImaginary",
	"type" : "complexinput",
    "value" : "22 - 3i"
}];

$("#jqxinputForm_method_getImaginary").jqxForm({
  	"template" : template_method_getImaginary
});


/* 이벤트 설정 */
let txtMethodGetImaginary = $("#jqxinputForm_method_getImaginary").jqxForm("getComponentByName", "txtMethodGetImaginary");
 
$("#btnGetImaginary").on("click", function() {
   	let imaginaryData = txtMethodGetImaginary.jqxComplexInput("getImaginary");
   	alert(imaginaryData);
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
	"type" : "complexinput",
    "value" : "22 - 3i"
}];

$("#jqxinputForm_method_render").jqxForm({
  	"template" : template_method_render
});


/* 이벤트 설정 */
let txtMethodRender = $("#jqxinputForm_method_render").jqxForm("getComponentByName", "txtMethodRender");
 
$("#btnRender").on("click", function() {
   	txtMethodRender.jqxComplexInput("render");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- refresh -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">refresh</span>
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
	"type" : "complexinput",
    "value" : "22 - 3i"
}];

$("#jqxinputForm_method_refresh").jqxForm({
  	"template" : template_method_refresh
});


/* 이벤트 설정 */
let txtMethodRefresh = $("#jqxinputForm_method_refresh").jqxForm("getComponentByName", "txtMethodRefresh");
 
$("#btnRefresh").on("click", function() {
   	txtMethodRefresh.jqxComplexInput("refresh");
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
						<p>complexNumber - String/Object - object인 경우 object.real, object.imaginary 프로퍼티가 있어야 합니다.</p>
						<h4>Return Value</h4>
						<p>String</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_val = [{
    "bind" : "txtMethodVal",
    "name" : "txtMethodVal",
	"type" : "complexinput",
    "value" : "22 - 3i"
}];

$("#jqxinputForm_method_val").jqxForm({
  	"template" : template_method_val
});


/* 이벤트 설정 */
let txtMethodVal = $("#jqxinputForm_method_val").jqxForm("getComponentByName", "txtMethodVal");
 
$("#btnVal").on("click", function() {
	// Get value
   	let val = txtMethodVal.jqxComplexInput("val");
   	
   	// Get value using jQuery
   	let val2 = txtMethodVal.val();
   	
   	// Set value
   	txtMethodVal.jqxComplexInput("val", "1 - 99i");
   	txtMethodVal.jqxComplexInput("val", {real : 1, imaginary : -99});
   	
   	// Set value using jQuery
   	txtMethodVal.val({real : 1, imaginary : -99});
   	
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>