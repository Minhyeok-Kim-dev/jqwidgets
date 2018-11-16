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
<script src="<c:url value="/resources/jqwidgets/jqxpasswordinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxtooltip.js"/>"></script>
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
		  	"type" : "password",	
		  	"disabled" : true	// property 설정
		}];

		$("#jqxinputForm_disabled").jqxForm({
		  "template" : template_disabled
		});

		
		// height
		let template_height = [{
		    "bind" : "txtHeight",
		    "name" : "txtHeight",
			"type" : "password",	
			"width" : "250px",	
			"height" : "25px",	// property 설정
		}];
		
		$("#jqxinputForm_height").jqxForm({
		  	"template" : template_height
		});
		
	
		// localization
		let template_localization = [{
		    "bind" : "txtLocalization",
		    "name" : "txtLocalization",
			"type" : "password",	
			"width" : "250px",	
			"showStrength" : true,
			"localization" : {
				"passwordStrengthString" : "비밀번호 단계",
				"tooShort" : "짧음",
				"weak" : "약함",
				"fair" : "보통",
				"good" : "좋음",
				"strong" : "강함",
				"showPasswordString" : "비밀번호 보이게"
			}
		}];
		
		$("#jqxinputForm_localization").jqxForm({
		  	"template" : template_localization
		});
		
		let txtLocalization = $("#jqxinputForm_localization").jqxForm("getComponentByName", "txtLocalization");
		
		let testLocalization = 
		{
			"passwordStrengthString" : "label message",
			"tooShort" : "tooShort message",
			"weak" : "weak message",
			"fair" : "fair message",
			"good" : "good message",
			"strong" : "strong message",
			"showPasswordString" : "tooltip message"
		}
		
		
		// maxLength
		let template_maxLength = [{
		 	"bind" : "txtMaxLength",
		 	"name" : "txtMaxLength",
		 	"type" : "password",
		 	"width" : "200px",
		 	"maxLength" : 5	// property 설정
		}];
		
		$("#jqxinputForm_maxLength").jqxForm({
		  	"template" : template_maxLength
		});
		
		
		// placeHolder
		let template_placeHolder = [{
		  	"bind" : "txtPlaceHolder",
		  	"name" : "txtPlaceHolder",
		  	"type" : "password",
		  	"width" : "200px",
		  	"placeHolder" : "This is a placeHolder"	// property 설정
		}];
		
		$("#jqxinputForm_placeHolder").jqxForm({
		  	"template" : template_placeHolder
		});
		
		
		// passwordStrength
		let template_passwordStrength = [{
		  	"bind" : "txtPasswordStrength",
		  	"name" : "txtPasswordStrength",
		  	"type" : "password",
		  	"width" : "250px",	
			"showStrength" : true,	// passwordStrength 프로퍼티를 사용하려면 true로 설정
		  	"passwordStrength" : function(password, characters, defaultStrength) {
		  		let length = password.length;
		  		let letters = characters.letters;
		  		let numbers = characters.numbers;
		  		let specialKeys = characters.specialKeys;
		  		let strengthCoefficient = letters + numbers + (2 * specialKeys) + (letters * numbers * specialKeys);	// 강도 계수
		  		let strengthValue;
		  		
		  		if(length < 4) {
		  			strengthValue = "Too Short";
		  		} else if(strengthCoefficient < 10) {
		  			strengthValue = "Weak";
		  		} else if(strengthCoefficient < 20) {
		  			strengthValue = "Fair";
		  		} else if(strengthCoefficient < 30) {
		  			strengthValue = "Good";
		  		} else {
		  			strengthValue = "Strong";
		  		}
		  		
		  		return strengthValue;
		  	}
		}];
		
		$("#jqxinputForm_passwordStrength").jqxForm({
		  	"template" : template_passwordStrength
		});
		
		
		// rtl
		let template_rtl = [{
		  	"bind" : "txtRtl",
		  	"name" : "txtRtl",
		  	"type" : "password",
		  	"width" : "200px",
		  	"placeHolder" : "Press a key",
		  	"rtl" : true	// property 설정
		}];

		$("#jqxinputForm_rtl").jqxForm({
		    "template" : template_rtl
		});

		let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
		let rtl = txtRtl.jqxPasswordInput("rtl");
		

		// strengthColors
		let template_strengthColors = [{
		  	"bind" : "txtStrengthColors",
		  	"name" : "txtStrengthColors",
		  	"type" : "password",
		  	"width" : "200px",
		  	"showStrength" : true,
		  	"strengthColors" : {
		  		"tooShort" : "Red",
		  		"weak" : "Red",
		  		"fair" : "Yellow",
		  		"good" : "Blue",
		  		"strong" : "Green"
		  	}
		}];
		
		$("#jqxinputForm_strengthColors").jqxForm({
		    "template" : template_strengthColors
		});
		

		// showStrength
		let template_showStrength = [{
		  	"bind" : "txtShowStrength",
		  	"name" : "txtShowStrength",
		  	"type" : "password",
		  	"width" : "200px",
		  	"placeHolder" : "Press a key",
		  	"showStrength" : true	// property 설정
		}];
		
		$("#jqxinputForm_showStrength").jqxForm({
		    "template" : template_showStrength
		});
		
		
		// showStrengthPosition
		let template_showStrengthPosition = [{
		  	"bind" : "txtShowStrengthPosition",
		  	"name" : "txtShowStrengthPosition",
		  	"type" : "password",
		  	"width" : "200px",
		  	"placeHolder" : "Press a key",
		  	"showStrength" : true,
		  	"showStrngthPosition" : "left"	
		}];
		
		$("#jqxinputForm_showStrengthPosition").jqxForm({
		    "template" : template_showStrengthPosition
		});
		
		
		// strengthTypeRender
		let template_strengthTypeRenderer = [{
		  	"bind" : "txtStrengthTypeRenderer",
		  	"name" : "txtStrengthTypeRenderer",
		  	"type" : "password",
		  	"width" : "200px",
		  	"placeHolder" : "Press a key",
		  	"showStrength" : true,
		  	"showStrngthPosition" : "left",	
		  	"strengthTypeRender" : function(password, characters, defaultStrength) { // property 설정
		  		let length = password.length;
		  		let letters = characters.letters;
		  		let numbers = character.numbers;
		  		let specialKeys = characters.specialKeys;
		  		let strengthCoefficient = letters + number + (2 * specialKeys) + (letters * numbers * specialKeys);	// 강도 계수
		  		let strengthValue;
		  		let color;
		  		
		  		if(length < 8) {
		  			strengthValue = "Too Short";
		  			color = "rgb(170, 0, 51)";
		  		} else if(strengthCoefficient < 20) {
		  			strengthValue = "Weak";
		  			color = "rgb(170, 0, 51)";
		  		} else if(strengthCoefficient < 30) {
		  			strengthValue = "Fair";
		  			color = "rgb(255, 204, 51)";
		  		} else if(strengthCoefficient < 40) {
		  			strengthValue = "Good";
		  			color = "rgb(45, 152, 243)";
		  		} else {
		  			strengthValue = "Strong";
		  			color = "rgb(118, 194, 97)";
		  		}
		  		
		  		return "<div style='color: " + color + ";'>" + strengthValue + "</div>";
		  	}
		}];
		
		$("#jqxinputForm_strengthTypeRenderer").jqxForm({
		    "template" : template_strengthTypeRenderer
		});
		
		
		// showPasswordIcon
		let template_showPasswordIcon = [{
		  	"bind" : "txtShowPasswordIcon",
		  	"name" : "txtShowPasswordIcon",
		  	"type" : "password",
		  	"width" : "200px",
		  	"showPasswordIcon" : false // property 설정
		}];
		
		$("#jqxinputForm_showPasswordIcon").jqxForm({
		    "template" : template_showPasswordIcon
		});
		
		
		// theme
		let template_theme = [{
		  	"bind" : "txtTheme",
		  	"name" : "txtTheme",
		  	"type" : "password",
		  	"width" : "200px",
		  	"theme" : "energyblue"	// property 설정	
		}];
		
		$("#jqxinputForm_theme").jqxForm({
		  	"template" : template_theme
		});
	
		
		// width
		let template_width = [{
		  	"bind" : "txtWidth",
		  	"name" : "txtWidth",
		  	"type" : "password",
		  	"width" : "300px"	// property 설정	
		}];
		
		$("#jqxinputForm_width").jqxForm({
		  	"template" : template_width
		});
		

		/* Events */
		// change
		let template_change = [{
		    "bind" : "txtChange",
		    "name" : "txtChange",
			"type" : "password",	
			"width" : "250px",	
			"height" : "25px",
		}];
		
		$("#jqxinputForm_change").jqxForm({
		  	"template" : template_change
		});
		
		
		/* 이벤트 설정 */
		let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
		txtChange.on("change", function(event) {
		   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
		   	let value = txtChange.val();	// inputBox에 입력된 값
		   
		   	$("#log_change").html("type : " + type + " // value : " + value);
		});
		
		
		/* Methods */
		// render
		let template_render = [{
		    "bind" : "txtRender",
		    "name" : "txtRender",
			"type" : "password",	
			"width" : "250px"
		}];
		
		$("#jqxinputForm_render").jqxForm({
		  	"template" : template_render
		});
		
		
		/* 이벤트 설정 */
		let txtRender = $("#jqxinputForm_render").jqxForm("getComponentByName", "txtRender");
		 
		$("#btnRender").on("click", function() {
		   	txtRender.jqxPasswordInput("render");
		});
		
		
		// refresh
		let template_refresh = [{
		    "bind" : "txtRefresh",
		    "name" : "txtRefresh",
			"type" : "password",	
			"width" : "250px",	
			"height" : "25px"
		}];
		
		$("#jqxinputForm_refresh").jqxForm({
		  	"template" : template_refresh
		});
		
		
		/* 이벤트 설정 */
		let txtRefresh = $("#jqxinputForm_refresh").jqxForm("getComponentByName", "txtRefresh");
		 
		$("#btnRefresh").on("click", function() {
		   	txtRefresh.jqxPasswordInput("refresh");
		});
		
		
		// val
		let template_val = [{
		    "bind" : "txtVal",
		    "name" : "txtVal",
			"type" : "password",	
			"width" : "250px"	
		}];
		
		$("#jqxinputForm_val").jqxForm({
		  	"template" : template_val
		});
		
		
		/* 이벤트 설정 */
		let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");
		txtVal.val("test text");
		
		$("#btnGetVal").on("click", function() {
			// get text
			let val = txtVal.val();
		   	alert(val);
		});
		
		$("#btnSetVal").on("click", function() {
			// set text
			txtVal.val("new text!!!!");
		});
		/*
		txtLocalization.jqxPasswordInput("localization", testLocalization);
		let localization = txtLocalization.jqxPasswordInput("localization");
		
		let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
		let disabled = txtDisabled.jqxPasswordInput("disabled");
		 */
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
// case 1 : 초기화 시점에 property 설정
let template_disabled = [{
	"bind" : "txtDisabled",
    "name" : "txtDisabled",
  	"type" : "password",	
  	"disabled" : true	// property 설정
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxPasswordInput("disabled", true);


/* Get Property */

let txtDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxPasswordInput("disabled"); 
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
					"auto"
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
						<p>jqxpasswordinput의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_height = [{
    "bind" : "txtHeight",
    "name" : "txtHeight",
	"type" : "password",	
	"width" : "250px",	
	"height" : "25px",	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxPasswordInput("height", "40px");


/* Get Property */
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxPasswordInput("height");
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- localization -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">localization</span>
				</td>
				<td>
					<span>Object</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_localization"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯에서 사용되는 다양한 텍스트를 설정하거나 가져옵니다. 지역화에 유용하게 사용됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_localization = [{
    "bind" : "txtHeight",
    "name" : "txtHeight",
	"type" : "password",	
	"width" : "250px",	
	"showStrength" : true,	// localization 나타나게 하려면 true로 설정
	"localization" : {		// property 설정
		"passwordStrengthString" : "비밀번호 단계",
		"tooShort" : "짧음",
		"weak" : "약함",
		"fair" : "보통",
		"good" : "좋음",
		"strong" : "강함",
		"showPasswordString" : "비밀번호 보이게"
	}
}];

$("#jqxinputForm_localization").jqxForm({
  	"template" : template_localization
});

// case 2 : element에 property 설정
let txtLocalization = $("#jqxinputForm_localization").jqxForm("getComponentByName", "txtLocalization");
		
let testLocalization = 
{
	"passwordStrengthString" : "label message",
	"tooShort" : "tooShort message",
	"weak" : "weak message",
	"fair" : "fair message",
	"good" : "good message",
	"strong" : "strong message",
	"showPasswordString" : "tooltip message"
}

txtLocalization.jqxPasswordInput("localization", testLocalization);


/* Get Property */
let txtLocalization = $("#jqxinputForm_localization").jqxForm("getComponentByName", "txtLocalization");
let localization = txtLocalization.jqxPasswordInput("localization");
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- maxLength -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">maxLength</span>
				</td>
				<td>
					<span>Number</span>
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
						<div id="jqxinputForm_maxLength"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>입력할 최대 문자열 길이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_maxLength = [{
 	"bind" : "txtMaxLength",
 	"name" : "txtMaxLength",
 	"type" : "password",
 	"width" : "200px",
 	"maxLength" : 5	// property 설정
}];

$("#jqxinputForm_maxLength").jqxForm({
  	"template" : template_maxLength
});

// case 2 : element에 property 설정
let txtMaxLength = $("#jqxinputForm_maxLength").jqxForm("getComponentByName", "txtMaxLength");
txtMaxLength.jqxPasswordInput("maxLength", 3);


/* Get Property */
let txtMaxLength = $("#jqxinputForm_maxLength").jqxForm("getComponentByName", "txtMaxLength");
let maxLength = txtMaxLength.jqxPasswordInput("maxLength"); 
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
					null
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
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_placeHolder = [{
  	"bind" : "txtPlaceHolder",
  	"name" : "txtPlaceHolder",
  	"type" : "password",
  	"width" : "200px",
  	"placeHolder" : "This is a placeHolder"	// property 설정
}];

$("#jqxinputForm_placeHolder").jqxForm({
  	"template" : template_placeHolder
});

// case 2 : element에 property 설정
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
txtPlaceHolder.jqxPasswordInput("placeHolder", "changed text!");


/* Get Property */
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
let placeHolder = txtPlaceHolder.jqxPasswordInput("placeHolder");
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- passwordStrength -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">passwordStrength</span>
				</td>
				<td>
					<span>function</span>
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
						<div id="jqxinputForm_passwordStrength"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>비밀번호 강도를 정의하는 콜백함수입니다. 3개의 parameter가 사용됩니다.</p>
						<p> - First parameter : 비밀번호 값</p>
						<p> - Second parameter : 다른 형태의 문자 개수를 포함하는 객체 (letters:문자, numbers:숫자, specialKeys:특수키)</p>
						<p> - Third parameter : 강도별 텍스트를 나타내는 객체 (내장된 규칙을 기반으로 수행)</p>
						<p>Note: 해당 프로퍼티를 사용하려면 "showStrength" 프로퍼티를 "true"로 설정해 주어야합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_passwordStrength = [{
  	"bind" : "txtPasswordStrength",
  	"name" : "txtPasswordStrength",
  	"type" : "password",
  	"showStrength" : true,	// passwordStrength 프로퍼티를 사용하려면 true로 설정
  	"passwordStrength" : function(password, characters, defaultStrength) {
  		let length = password.length;
  		let letters = characters.letters;
  		let numbers = characters.numbers;
  		let specialKeys = characters.specialKeys;
  		let strengthCoefficient = letters + number + (2 * specialKeys) + (letters * numbers * specialKeys);	// 강도 계수
  		let strengthValue;
  		
  		if(length < 4) {
  			strengthValue = "Too Short";
  		} else if(strengthCoefficient < 10) {
  			strengthValue = "Weak";
  		} else if(strengthCoefficient < 20) {
  			strengthValue = "Fail";
  		} else if(strengthCoefficient < 30) {
  			strengthValue = "Good";
  		} else {
  			strengthValue = "Strong";
  		}
  		
  		return strengthValue;
  	}
}];

$("#jqxinputForm_passwordStrength").jqxForm({
  	"template" : template_passwordStrength
});

// case 2 : element에 property 설정
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
txtPlaceHolder.jqxPasswordInput("placeHolder", "changed text!");


/* Get Property */
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
let placeHolder = txtPlaceHolder.jqxPasswordInput("placeHolder");
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
// case 1 : 초기화 시점에 property 설정
let template_rtl = [{
  	"bind" : "txtRtl",
  	"name" : "txtRtl",
  	"type" : "password",
  	"width" : "200px",
  	"placeHolder" : "Press a key",
  	"rtl" : true	// property 설정
}];

$("#jqxinputForm_rtl").jqxForm({
    "template" : template_rtl
});

/* Get Property */
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
let rtl = txtRtl.jqxPasswordInput("rtl");


</code></pre>
                    </div>
                </td>
            </tr>
            <!-- strengthColors -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">strengthColors</span>
				</td>
				<td>
					<span>Object</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_strengthColors"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>강도에 따른 툴팁 색상을 설정하거나 가져옵니다.</p>
						<p>강도는 'tooShort', 'weak', 'fail', 'good', 'strong' 총 5단계로 구성됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_strengthColors = [{
  	"bind" : "txtStrengthColors",
  	"name" : "txtStrengthColors",
  	"type" : "password",
  	"width" : "200px",
  	"showStrength" : true,
  	"strengthColors" : {	// property 설정
  		"tooShort" : "Red",
  		"weak" : "Red",
  		"fair" : "Yellow",
  		"good" : "Blue",
  		"strong" : "Green"
  	}
}];

$("#jqxinputForm_strengthColors").jqxForm({
    "template" : template_strengthColors
});

// case 2 : element에 property 설정
let txtStrengthColors = $("#jqxinputForm_strengthColors").jqxForm("getComponentByName", "txtStrengthColors");
let strengthColors = {
        "tooShort" : "rgb(255, 0, 0)",
  		"weak" : "rgb(0, 255, 0)",
  		"fair" : "rgb(0, 0, 255)",
  		"good" : "rgb(255, 255, 255)",
  		"strong" : "rgb(0, 0, 0)"
};

txtStrengthColors.jqxPasswordInput("strengthColors", strengthColors);


/* Get Property */
let txtStrengthColors = $("#jqxinputForm_strengthColors").jqxForm("getComponentByName", "txtStrengthColors");
let strengthColors = txtRtl.jqxPasswordInput("strengthColors");


</code></pre>
                    </div>
                </td>
            </tr>
            <!-- showStrength -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">showStrength</span>
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
						<div id="jqxinputForm_showStrength"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>비밀번호 강도 툴팁이 나타나도록 설정하거나 설정 값을 가져옵니다.</p>
						<p>jqtooltip.js 파일이 필요합니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_showStrength = [{
  	"bind" : "txtShowStrength",
  	"name" : "txtShowStrength",
  	"type" : "password",
  	"width" : "200px",
  	"placeHolder" : "Press a key",
  	"showStrength" : true	// property 설정
}];

$("#jqxinputForm_showStrength").jqxForm({
    "template" : template_showStrength
});

// case 2 : element에 property 설정
let txtShowStrength = $("#jqxinputForm_showStrength").jqxForm("getComponentByName", "txtShowStrength");
txtShowStrength.jqxPasswordInput("showStrength", false);


/* Get Property */
let txtShowStrength = $("#jqxinputForm_showStrength").jqxForm("getComponentByName", "txtShowStrength");
let showStrength = txtShowStrength.jqxPasswordInput("showStrength");
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- showStrengthPosition -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">showStrengthPosition</span>
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
						<div id="jqxinputForm_showStrengthPosition"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>비밀번호 강도 툴팁의 위치를 설정하거나 가져옵니다.</p>
						<p>'top', 'bottom', 'left', 'right'값을 설정할 수 있습니다.</p>
						<p>jqtooltip.js 파일이 필요합니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_showStrengthPosition = [{
  	"bind" : "txtShowStrengthPosition",
  	"name" : "txtShowStrengthPosition",
  	"type" : "password",
  	"width" : "200px",
  	"placeHolder" : "Press a key",
  	"showStrength" : true,
  	"showStrngthPosition" : "left"	// property 설정
}];

$("#jqxinputForm_showStrengthPosition").jqxForm({
    "template" : template_showStrengthPosition
});

// case 2 : element에 property 설정
let txtShowStrengthPosition = $("#jqxinputForm_showStrengthPosition").jqxForm("getComponentByName", "txtShowStrengthPosition");
txtShowStrengthPosition.jqxPasswordInput("showStrengthPosition", "left");


/* Get Property */
let txtShowStrengthPosition = $("#jqxinputForm_showStrengthPosition").jqxForm("getComponentByName", "txtShowStrengthPosition");
let showStrengthPosition = txtShowStrengthPosition.jqxPasswordInput("showStrengthPosition");
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- strengthTypeRenderer -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">strengthTypeRenderer</span>
				</td>
				<td>
					<span>Function</span>
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
						<div id="jqxinputForm_strengthTypeRenderer"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>비밀번호 강도 툴팁을 렌더링할때 호출되는 콜백함수입니다. 3개의 파라미터가 사용됩니다.</p>
						<p> - First parameter : 비밀번호 값</p>
						<p> - Second parameter : 다른 형태의 문자 개수를 포함하는 객체 (letters:문자, numbers:숫자, specialKeys:특수키)</p>
						<p> - Third parameter : 강도별 텍스트를 나타내는 객체 (내장된 규칙을 기반으로 수행)</p>
						<p>Note: 해당 프로퍼티를 사용하려면 "showStrength" 프로퍼티를 "true"로 설정해 주어야합니다.</p>
						<p>jqtooltip.js 파일이 필요합니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_strengthTypeRenderer = [{
  	"bind" : "txtStrengthTypeRenderer",
  	"name" : "txtStrengthTypeRenderer",
  	"type" : "password",
  	"width" : "200px",
  	"placeHolder" : "Press a key",
  	"showStrength" : true,
  	"showStrngthPosition" : "left",	
  	
  	// property 설정
  	"strengthTypeRender" : function(password, characters, defaultStrength) { 
  		let length = password.length;
  		let letters = characters.letters;
  		let numbers = character.numbers;
  		let specialKeys = characters.specialKeys;
  		let strengthCoefficient = letters + number + (2 * specialKeys) + (letters * numbers * specialKeys);	// 강도 계수
  		let strengthValue;
  		let color;
  		
  		if(length < 8) {
  			strengthValue = "Too Short";
  			color = "rgb(170, 0, 51)";
  		} else if(strengthCoefficient < 20) {
  			strengthValue = "Weak";
  			color = "rgb(170, 0, 51)";
  		} else if(strengthCoefficient < 30) {
  			strengthValue = "Fair";
  			color = "rgb(255, 204, 51)";
  		} else if(strengthCoefficient < 40) {
  			strengthValue = "Good";
  			color = "rgb(45, 152, 243)";
  		} else {
  			strengthValue = "Strong";
  			color = "rgb(118, 194, 97)";
  		}
  		<xmp>
  		return "<div style='color: " + color + ";'>" + strengthValue + "</div>";
  		</xmp>
  	}
}];

$("#jqxinputForm_strengthTypeRenderer").jqxForm({
    "template" : template_strengthTypeRenderer
});

// case 2 : element에 property 설정
let txtStrengthTypeRenderer = 
	$("#jqxinputForm_strengthTypeRenderer").jqxForm("getComponentByName", "txtStrengthTypeRenderer");

let strengthTypeRenderer = function(password, characters, defaultStrength) {
 		let length = password.length;
 		let letters = characters.letters;
 		let numbers = characters.numbers;
 		let specialKeys = characters.specialKeys;
 		let strengthCoefficient = letters + numbers + (2 * specialKeys) + (letters * numbers * specialKeys);	// 강도 계수
 		let strengthValue;
 		let color;
 		
 		if(length < 8) {
 			strengthValue = "Too Short";
 			color = "Red";
 		} else if(strengthCoefficient < 20) {
 			strengthValue = "Weak";
 			color = "Red";
 		} else if(strengthCoefficient < 30) {
 			strengthValue = "Fair";
 			color = "Green";
 		} else if(strengthCoefficient < 40) {
 			strengthValue = "Good";
 			color = "Blue";
 		} else {
 			strengthValue = "Strong";
 			color = "Black";
 		}
 		
 		<xmp>
 		return "<div style='color: " + color + ";'>" + strengthValue + "</div>";
 		</xmp>
}

txtStrengthTypeRenderer.jqxPasswordInput("strengthTypeRenderer", strengthTypeRenderer);


/* Get Property */
let txtStrengthTypeRenderer = 
	$("#jqxinputForm_strengthTypeRenderer").jqxForm("getComponentByName", "strengthTypeRenderer");
let strengthTypeRenderer = txtStrengthTypeRenderer.jqxPasswordInput("strengthTypeRenderer");
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- showPasswordIcon -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">showPasswordIcon</span>
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
						<div id="jqxinputForm_showPasswordIcon"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>암호 표시 / 숨김 아이콘 표시 여부를 가져오거나 설정합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_showPasswordIcon = [{
  	"bind" : "txtShowPasswordIcon",
  	"name" : "txtShowPasswordIcon",
  	"type" : "password",
  	"width" : "200px",
  	"showPasswordIcon" : false // property 설정
}];

$("#jqxinputForm_showPasswordIcon").jqxForm({
    "template" : template_showPasswordIcon
});

// case 2 : element에 property 설정
let txtShowPasswordIcon = $("#jqxinputForm_showPasswordIcon").jqxForm("getComponentByName", "txtShowPasswordIcon");
txtShowPasswordIcon.jqxPasswordInput("showPasswordIcon", false);


/* Get Property */
let txtShowPasswordIcon = $("#jqxinputForm_showPasswordIcon").jqxForm("getComponentByName", "txtShowPasswordIcon");
let showPasswordIcon = txtShowPasswordIcon.jqxPasswordInput("showPasswordIcon");
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
// case 1 : 초기화 시점에 property 설정
let template_theme = [{
  	"bind" : "txtTheme",
  	"name" : "txtTheme",
  	"type" : "password",
  	"width" : "200px",
  	"theme" : "energyblue"	// property 설정	
}];

$("#jqxinputForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
txtTheme.jqxPasswordInput("theme", "energyblue");


/* Get Property */
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
let theme = txtTheme.jqxPasswordInput("theme");
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
					"auto"
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
						<p>위젯의 너비를 설정합니다. number, string으로 입력시 'px'단위로 처리됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_width = [{
  	"bind" : "txtWidth",
  	"name" : "txtWidth",
  	"type" : "password",
  	"width" : "300px"	// property 설정	
}];

$("#jqxinputForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
txtWidth.jqxPasswordInput("width", "400");


/* Get Property */
let txtWidth= $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
let width = txtWidth.jqxPasswordInput("width");
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
	"type" : "password",	
	"width" : "250px"
}];

$("#jqxinputForm_change").jqxForm({
  	"template" : template_change
});


/* 이벤트 설정 */
let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
txtChange.on("change", function(event) {
   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
   	let value = txtChange.val();	// inputBox에 입력된 값
   
   	$("#log_change").html("type : " + type + " // value : " + value);
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
						<div id="jqxinputForm_render"></div>
						<input type="button" id="btnRender" value="Render" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯을 렌더링합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_render = [{
    "bind" : "txtRender",
    "name" : "txtRender",
	"type" : "password",	
	"width" : "250px",	
	"height" : "25px"
}];

$("#jqxinputForm_render").jqxForm({
  	"template" : template_render
});


/* 이벤트 설정 */
let txtRender = $("#jqxinputForm_render").jqxForm("getComponentByName", "txtRender");
 
$("#btnRender").on("click", function() {
   	txtRender.jqxInput("render");
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
						<div id="jqxinputForm_refresh"></div>
						<input type="button" id="btnRefresh" value="Refresh" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯을 새로고침합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_refresh = [{
    "bind" : "txtRefresh",
    "name" : "txtRefresh",
	"type" : "password",	
	"width" : "250px",	
	"height" : "25px"
}];

$("#jqxinputForm_refresh").jqxForm({
  	"template" : template_refresh
});


/* 이벤트 설정 */
let txtRefresh = $("#jqxinputForm_refresh").jqxForm("getComponentByName", "txtRefresh");
 
$("#btnRefresh").on("click", function() {
   	txtRefresh.jqxPasswordInput("refresh");
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
						<input type="button" id="btnGetVal" value="GetVal" />
						<input type="button" id="btnSetVal" value="SetVal" />
						<!-- Description -->
						<h4>Description</h4>
						<p>input field text값을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_val = [{
    "bind" : "txtVal",
    "name" : "txtVal",
	"type" : "password",	
	"width" : "250px"	
}];

$("#jqxinputForm_val").jqxForm({
  	"template" : template_val
});


/* 이벤트 설정 */
let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");
txtVal.val("test text");

$("#btnGetVal").on("click", function() {
	// get text
	let val = txtVal.val();
   	alert(val);
});

$("#btnSetVal").on("click", function() {
	// set text
	txtVal.val("new text!!!!");
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>