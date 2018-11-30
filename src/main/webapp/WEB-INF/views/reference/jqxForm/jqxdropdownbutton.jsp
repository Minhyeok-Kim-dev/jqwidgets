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
<script src="<c:url value="/resources/jqwidgets/jqxbuttons.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdropdownbuttons.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// animationType
		let template_animationType = [{
			"bind" : "btnAnimationType",
			"name" : "btnAnimationType",
			"type" : "dropDownButton",
			"width" : 50,
			"height" : 25,
			"animationType" : "fade"	// property 설정
		}];

		$("#jqxFormButtons_animationType").jqxForm({
			"template" : template_animationType
		});
/* 
		// case 2 : element에 property 설정 (정렬 적용)
		let btnAnimationType = $("#jqxFormButtons_animationType").jqxForm("getComponentByName", "btnAnimationType");
		btnAnimationType.jqxDropDownButton("animationType", "fade");

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
            <!-- animationType -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationType</span>
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
						<div id="jqxFormButtons_animationType"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운 애니메이션을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"fade"</p>
						<p>"slide"</p>
						<p>"none"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_animationType = [{
	"bind" : "btnAnimationType",
	"name" : "btnAnimationType",
	"type" : "dropDownButton",
	"width" : 50,
	"height" : 25,
	"animationType" : "fade"	// property 설정
}];

$("#jqxFormButtons_animationType").jqxForm({
	"template" : template_animationType
});

// case 2 : element에 property 설정 (정렬 적용)
let btnAnimationType = $("#jqxFormButtons_animationType").jqxForm("getComponentByName", "btnAnimationType");
btnAnimationType.jqxDropDownButton("animationType", "fade");


/* Get Property */
let animationType = btnAnimationType.jqxDropDownButton("animationType");
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>
<div id="events">
	<h2 class="documentation-top-header">Events</h2>
	<h4>jqxButton의 event를 사용할 수 있습니다.</h4>
</div>
<div id="methods">
	<h2 class="documentation-top-header">Methods</h2>
	<h4>jqxButton의 method를 사용할 수 있습니다.</h4>
	
	<table class="documentation-table">
		<tbody>
			<!-- check -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">check</span>
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
						<div id="jqxFormButtons_method_check"></div>
						<input type="button" id="btnCheck" value="Check" />
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼을 체크합니다. (Toggle on)</p>
						<p>jqxToggleButton에서만 사용가능합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_check = [{
	"bind" : "btnMethodCheck",
	"name" : "btnMethodCheck",
	"type" : "toggleButton",
	"width" : 50,
	"height" : 25
}];

$("#jqxFormButtons_method_check").jqxForm({
  	"template" : template_method_check
});


/* 이벤트 설정 */
let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");

// value 설정
btnMethodCheck.jqxToggleButton("value", "Hello");

$("#btnCheck").on("click", function() {
   	btnMethodCheck.jqxToggleButton("check");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- toggle -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">toggle</span>
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
						<div id="jqxFormButtons_method_toggle"></div>
						<input type="button" id="btnToggle" value="Toggle" />
						<!-- Description -->
						<h4>Description</h4>
						<p>Toggle 기능을 수행합니다.</p>
						<p>jqxToggleButton에서만 사용가능합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_toggle = [{
	"bind" : "btnMethodToggle",
	"name" : "btnMethodToggle",
	"type" : "toggleButton",
	"width" : 50,
	"height" : 25
}];

$("#jqxFormButtons_method_toggle").jqxForm({
  	"template" : template_method_toggle
});


/* 이벤트 설정 */
let btnMethodToggle = $("#jqxFormButtons_method_toggle").jqxForm("getComponentByName", "btnMethodToggle");

// value 설정
btnMethodToggle.jqxToggleButton("value", "Hello");

$("#btnToggle").on("click", function() {
   	btnMethodToggle.jqxToggleButton("toggle");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- unCheck -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">unCheck</span>
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
						<div id="jqxFormButtons_method_unCheck"></div>
						<input type="button" id="btnUnCheck" value="UnCheck" />
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼을 체크 해제합니다. (Toggle off)</p>
						<p>jqxToggleButton에서만 사용가능합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_unCheck = [{
	"bind" : "btnMethodUnCheck",
	"name" : "btnMethodUnCheck",
	"type" : "toggleButton",
	"width" : 50,
	"height" : 25
}];

$("#jqxFormButtons_method_unCheck").jqxForm({
  	"template" : template_method_unCheck
});


/* 이벤트 설정 */
let btnMethodUnCheck = $("#jqxFormButtons_method_unCheck").jqxForm("getComponentByName", "btnMethodUnCheck");

// value 설정
btnMethodUnCheck.jqxToggleButton("value", "Hello");

$("#btnUnCheck").on("click", function() {
   	btnMethodUnCheck.jqxToggleButton("unCheck");
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>