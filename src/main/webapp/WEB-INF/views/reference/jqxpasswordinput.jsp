<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.apireference.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
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
						<p>jqxpasswordinput을 활성화 또는 비활성화 합니다.</p>
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
        </tbody>
	</table>
</div>