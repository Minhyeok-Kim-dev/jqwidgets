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
<script src="<c:url value="/resources/jqwidgets/jqxmaskedinput.js"/>"></script>
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
			"type" : "maskedinput",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "disabled",
			"disabled" : true	// property 설정
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		
		
		// height
		let template_height = [{
		   	"bind" : "txtHeight",
		    "name" : "txtHeight",
			"type" : "maskedinput",	
			"width" : "250px",	
			"height" : "25px",	
			"height" : 40	// property 설정
		}];
		
		$("#jqxinputForm_height").jqxForm({
		  	"template" : template_height
		});
		
		
		// mask
		let template_mask = [{
		   	"bind" : "txtMask",
		    "name" : "txtMask",
			"type" : "maskedinput",
			"mask" : "###-##-#####"	
		}];
		
		$("#jqxinputForm_mask").jqxForm({
		  	"template" : template_mask
		});
		
		
		// promptChar
		let template_promptChar = [{
			"bind" : "txtPromptChar",
			"name" : "txtPromptChar",
			"type" : "maskedinput",
			"mask" : "###-##-#####",
			"promptChar" : "#"	 // property 설정		
		}];
		
		$("#jqxinputForm_promptChar").jqxForm({
		  	"template" : template_promptChar
		});
		

		// readOnly
		let template_readOnly = [{
			"bind" : "txtReadOnly",
			"name" : "txtReadOnly",
			"type" : "maskedinput",
			"mask" : "###-##-#####",
			"readOnly" : true	 // property 설정		
		}];
		
		$("#jqxinputForm_readOnly").jqxForm({
		  	"template" : template_readOnly
		});
		

		// rtl
		let template_rtl = [{
			"bind" : "txtRtl",
			"name" : "txtRtl",
			"type" : "maskedinput",
			"mask" : "###-##-#####",
			"rtl" : true
		}];
		
		$("#jqxinputForm_rtl").jqxForm({
		  	"template" : template_rtl
		});
		

		// theme
		let template_theme = [{
			"bind" : "txtTheme",
			"name" : "txtTheme",
			"type" : "maskedinput",	
			"mask" : "###-##-#####",
			"theme" : "energyblue"	// property 설정
		}];
		
		
		// textAlign
		let template_textAlign = [{
			"bind" : "txtTextAlign",
			"name" : "txtTextAlign",
			"type" : "maskedinput",	
			"mask" : "###-##-#####",
			"textAlign" : "right"
		}];
		
		$("#jqxinputForm_textAlign").jqxForm({
		  	"template" : template_textAlign
		});
		

		// value
		let template_value= [{
			"bind" : "txtValue",
			"name" : "txtValue",
			"type" : "maskedinput",	
			"mask" : "###-##-#####",
			"value" : "12345"
		}];
		
		$("#jqxinputForm_value").jqxForm({
		  	"template" : template_value
		});

		
		// width
		let template_width= [{
			"bind" : "txtWidth",
			"name" : "txtWidth",
			"type" : "maskedinput",	
			"mask" : "###-##-#####",
			"width" : 300	// property 설정
		}];
		
		$("#jqxinputForm_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		// change
		let template_change = [{
		    "bind" : "txtChange",
		    "name" : "txtChange",
			"type" : "maskedinput",
			"mask" : "###-##-#####"	
		}];
		
		$("#jqxinputForm_change").jqxForm({
		  	"template" : template_change
		});
		
		
		/* 이벤트 설정 */
		let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
		txtChange.on("change", function(event) {
		   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
		   	let value = event.args.value;	// inputBox에 입력된 값
		   	let text = event.args.text;		// displayed text
		   
		   	$("#log_change").html("type : " + type + " // value : " + value + " // text : " + text);
		});
		
		
		// valueChanged
		let template_valueChanged = [{
		    "bind" : "txtValueChanged",
		    "name" : "txtValueChanged",
			"type" : "maskedinput",
			"mask" : "###-##-#####"	
		}];
		
		$("#jqxinputForm_valueChanged").jqxForm({
		  	"template" : template_valueChanged
		});
		
		
		/* 이벤트 설정 */
		let txtValueChanged = $("#jqxinputForm_valueChanged").jqxForm("getComponentByName", "txtValueChanged"); 
		txtValueChanged.on("valueChanged", function(event) {
			let value = event.args.value;	// inputBox에 입력된 값
			let text = event.args.text;		// displayed text
		   
		   	$("#log_valueChanged").html("value : " + value + " // text : " + text);
		});

		
		/* Methods */
		// clear
		let template_clear = [{
		    "bind" : "txtClear",
		    "name" : "txtClear",
			"type" : "maskedinput",
			"mask" : "###-##-#####"
		}];
		
		$("#jqxinputForm_clear").jqxForm({
		  	"template" : template_clear
		});
		
		
		/* 이벤트 설정 */
		let txtClear = $("#jqxinputForm_clear").jqxForm("getComponentByName", "txtClear");
		 
		$("#btnClear").on("click", function() {
		   	txtClear.jqxMaskedInput("clear");
		});
		
		
		// destroy
		let template_destroy = [{
		    "bind" : "txtDestroy",
		    "name" : "txtDestroy",
			"type" : "maskedinput",
			"mask" : "###-##-#####"
		}];
		
		$("#jqxinputForm_destroy").jqxForm({
		  	"template" : template_destroy
		});
		
		
		/* 이벤트 설정 */
		let txtDestroy = $("#jqxinputForm_destroy").jqxForm("getComponentByName", "txtDestroy");
		 
		$("#btnDestroy").on("click", function() {
		   	txtDestroy.jqxMaskedInput("destroy");
		});
		
		
		// focus
		let template_focus = [{
		    "bind" : "txtFocus",
		    "name" : "txtFocus",
			"type" : "maskedinput",
			"mask" : "###-##-#####"
		}];
		
		$("#jqxinputForm_focus").jqxForm({
		  	"template" : template_focus
		});
		
		
		/* 이벤트 설정 */
		let txtFocus = $("#jqxinputForm_focus").jqxForm("getComponentByName", "txtFocus");
		 
		$("#btnFocus").on("click", function() {
		   	txtFocus.jqxMaskedInput("focus");
		});
		
		
		// val
		let template_val = [{
		    "bind" : "txtVal",
		    "name" : "txtVal",
			"type" : "maskedinput",
			"mask" : "###-##-#####"
		}];

		$("#jqxinputForm_val").jqxForm({
		  	"template" : template_val
		});


		/* 이벤트 설정 */
		let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");
		 
		$("#btnVal").on("click", function() {
			// Get value using val method
		   	let val = txtVal.jqxMaskedInput("val");
		   	
		   	// Get value using jQuery val method
		   	val = txtVal.val();
			alert(val);
		   	
		   	// Set value using val method
		   	txtVal.jqxMaskedInput("val", "12345");
		   	
		   	// Set value using jQuery val method
		   	txtVal.val("1234567");
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
	"type" : "maskedinput",	
	"placeHolder" : "disabled",
	"disabled" : true	// property 설정
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxMaskedInput("disabled", true);


/* Get Property */

let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxMaskedInput("disabled"); 
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
						<p>위젯을 높이를 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_height = [{
	"bind" : "txtHeight",
	"name" : "txtHeight",
	"type" : "maskedinput",	
	"height" : 40	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxMaskedInput("height", "40px");


/* Get Property */

let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxMaskedInput("height"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- mask -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">mask</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"99999"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_mask"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>입력값의 mask를 설정하거나 가져옵니다.</p>
						<p>Mask characters :</p>
						<p> # - 자릿수 0~9 값 허용</p>
						<p> 9 - 자릿수 0~9 값 허용</p>
						<p> 0 - 자릿수 0~9 값 허용</p>
						<p> A - 자릿수 0~9 값, a~z, A~Z 허용</p>
						<p> L - a~z, A~Z 허용</p>
						<p> [abcd] - 괄호안의 문자만 허용. 연속된 문자, 숫자는 "-"으로 표기 (ex: [a-d], [0-5]) </p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_mask = [{
	"bind" : "txtMask",
	"name" : "txtMask",
	"type" : "maskedinput",
	"mask" : "###-##-#####"	// property 설정	
}];

$("#jqxinputForm_mask").jqxForm({
  	"template" : template_mask
});

// case 2 : element에 property 설정
let txtMask = $("#jqxinputForm_mask").jqxForm("getComponentByName", "txtMask");
txtMask.jqxMaskedInput("mask", "######-#######");


/* Get Property */

let txtMask = $("#jqxinputForm_mask").jqxForm("getComponentByName", "txtMask");
let mask = txtMask.jqxMaskedInput("mask"); 
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
						<p>입력값이 없는 경우 화면에 표시할 문자를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_promptChar = [{
	"bind" : "txtPromptChar",
	"name" : "txtPromptChar",
	"type" : "maskedinput",
	"mask" : "###-##-#####",
	"promptChar" : "#"	 // property 설정		
}];

$("#jqxinputForm_promptChar").jqxForm({
  	"template" : template_promptChar
});

// case 2 : element에 property 설정
let txtPromptChar = $("#jqxinputForm_promptChar").jqxForm("getComponentByName", "txtPromptChar");
txtPromptChar.jqxMaskedInput("promptChar", "######-#######");


/* Get Property */

let txtPromptChar = $("#jqxinputForm_promptChar").jqxForm("getComponentByName", "txtPromptChar");
let promptChar = txtPromptChar.jqxMaskedInput("promptChar"); 
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
						<div id="jqxinputForm_readOnly"></div>	<!-- TODO : Camel 미적용 case 처리? -->
						<!-- Description -->
						<h4>Description</h4>
						<p>readOnly property를 설정하거나 가져옵니다.</p>	
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_readOnly = [{
	"bind" : "txtReadOnly",
	"name" : "txtReadOnly",
	"type" : "maskedinput",
	"mask" : "###-##-#####",
	"readOnly" : true	 // property 설정		
}];

$("#jqxinputForm_readOnly").jqxForm({
  	"template" : template_readOnly
});

// case 2 : element에 property 설정
let txtReadOnly = $("#jqxinputForm_readOnly").jqxForm("getComponentByName", "txtReadOnly");
txtReadOnly.jqxMaskedInput("readOnly", true);


/* Get Property */

let txtReadOnly = $("#jqxinputForm_readOnly").jqxForm("getComponentByName", "txtReadOnly");
let readOnly = txtReadOnly.jqxMaskedInput("readOnly"); 
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
	"type" : "maskedinput",
	"mask" : "###-##-#####",
	"rtl" : true
}];

$("#jqxinputForm_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
txtRtl.jqxMaskedInput("rtl", true);


/* Get Property */

let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
let rtl = txtRtl.jqxMaskedInput("rtl"); 
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
	"type" : "maskedinput",	
	"mask" : "###-##-#####",
	"theme" : "energyblue"	// property 설정
}];

$("#jqxinputForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
txtTheme.jqxMaskedInput("theme", "energyblue");


/* Get Property */
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
let theme = txtTheme.jqxMaskedInput("theme"); 
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
						<p>텍스트 정렬방식을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p> "right" </p>
						<p> "left" </p>
						<h4>Code Example</h4>
<pre><code>

/* Set Property */
let template_textAlign = [{
	"bind" : "txtTextAlign",
	"name" : "txtTextAlign",
	"type" : "maskedinput",	
	"mask" : "###-##-#####",
	"textAlign" : "right"	// property 설정
}];

$("#jqxinputForm_textAlign").jqxForm({
  	"template" : template_textAlign
});

// case 2 : element에 property 설정
let txtTextAlign = $("#jqxinputForm_textAlign").jqxForm("getComponentByName", "txtTextAlign");
txtTextAlign .jqxMaskedInput("textAlign", "right");


/* Get Property */
let txtTextAlign = $("#jqxinputForm_textAlign").jqxForm("getComponentByName", "txtTextAlign");
let textAlign = txtTextAlign.jqxMaskedInput("textAlign"); 
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
					null
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
						<p>입력값을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>

/* Set Property */
let template_value= [{
	"bind" : "txtValue",
	"name" : "txtValue",
	"type" : "maskedinput",	
	"mask" : "###-##-#####",
	"value" : "12345"	// property 설정
}];

$("#jqxinputForm_value").jqxForm({
  	"template" : template_value
});

// case 2 : element에 property 설정
let txtValue = $("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
txtValue.jqxMaskedInput("value", "test value");


/* Get Property */
let txtValue = $("#jqxinputForm_value").jqxForm("getComponentByName", "txtValue");
let value = txtValue.jqxMaskedInput("value"); 
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
let template_width= [{
	"bind" : "txtWidth",
	"name" : "txtWidth",
	"type" : "maskedinput",	
	"mask" : "###-##-#####",
	"width" : 300	// property 설정
}];

$("#jqxinputForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
txtWidth.jqxMaskedInput("width", "350px");


/* Get Property */
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
let width = txtWidth.jqxMaskedInput("width"); 
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
	"type" : "maskedinput",
	"mask" : "###-##-#####"	
}];

$("#jqxinputForm_change").jqxForm({
  	"template" : template_change
});


/* 이벤트 설정 */
let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
txtChange.on("change", function(event) {
   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
	let value = event.args.value;	// inputBox에 입력된 값
	let text = event.args.text;		// displayed text
   
   	$("#log_change").html("type : " + type + " // value : " + value + " // text : " + text);
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
						<p>값이 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_valueChanged = [{
	"bind" : "txtValueChanged",
	"name" : "txtValueChanged",
	"type" : "maskedinput",
	"mask" : "###-##-#####"	
}];

$("#jqxinputForm_valueChanged").jqxForm({
  	"template" : template_valueChanged
});


/* 이벤트 설정 */
let txtValueChanged = $("#jqxinputForm_valueChanged").jqxForm("getComponentByName", "txtValueChanged"); 
txtValueChanged.on("valueChanged", function(event) {
	let value = event.args.value;	// inputBox에 입력된 값
	let text = event.args.text;		// displayed text
   
   	$("#log_valueChanged").html("value : " + value + " // text : " + text);
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
						<div id="jqxinputForm_clear"></div>
						<input type="button" id="btnClear" value="Clear" />
						<!-- Description -->
						<h4>Description</h4>
						<p>값을 초기화합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_clear = [{
    "bind" : "txtClear",
    "name" : "txtClear",
	"type" : "maskedinput",
	"mask" : "###-##-#####"
}];

$("#jqxinputForm_clear").jqxForm({
  	"template" : template_clear
});


/* 이벤트 설정 */
let txtClear = $("#jqxinputForm_clear").jqxForm("getComponentByName", "txtClear");
 
$("#btnClear").on("click", function() {
   	txtClear.jqxMaskedInput("clear");
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
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_destroy = [{
    "bind" : "txtDestroy",
    "name" : "txtDestroy",
	"type" : "maskedinput",
	"mask" : "###-##-#####"
}];

$("#jqxinputForm_destroy").jqxForm({
  	"template" : template_destroy
});


/* 이벤트 설정 */
let txtDestroy = $("#jqxinputForm_destroy").jqxForm("getComponentByName", "txtDestroy");
 
$("#btnDestroy").on("click", function() {
   	txtDestroy.jqxMaskedInput("destroy");
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
						<p>해당 위젯에 포커스를 설정합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_focus = [{
    "bind" : "txtFocus",
    "name" : "txtFocus",
	"type" : "maskedinput",
	"mask" : "###-##-#####"
}];

$("#jqxinputForm_focus").jqxForm({
  	"template" : template_focus
});


/* 이벤트 설정 */
let txtFocus = $("#jqxinputForm_focus").jqxForm("getComponentByName", "txtFocus");
 
$("#btnFocus").on("click", function() {
   	txtFocus.jqxMaskedInput("focus");
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
						<input type="button" id="btnVal" value="Val" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯의 값을 설정하거나 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>value - String</p>
						<h4>Return Value</h4>
						<p>String</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_val = [{
    "bind" : "txtVal",
    "name" : "txtVal",
	"type" : "maskedinput",
	"mask" : "###-##-#####"
}];

$("#jqxinputForm_val").jqxForm({
  	"template" : template_val
});


/* 이벤트 설정 */
let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");
 
$("#btnVal").on("click", function() {
	// Get value using val method
   	let val = txtVal.jqxMaskedInput("val");
   	
   	// Get value using jQuery val method
   	val = txtVal.val();
   	
   	alert(val);
   	
   	// Set value using val method
   	txtVal.jqxMaskedInput("val", 12345);
   	
   	// Set value using jQuery val method
   	txtVal.val(123456);
});
</code></pre>
						
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>