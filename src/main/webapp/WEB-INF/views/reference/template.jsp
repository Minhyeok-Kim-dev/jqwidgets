<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.apireference.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.bootstrap.css"/>" />

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/documentation.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxinput.js"/>"></script>
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
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "disabled",
			"disabled" : true	// property 설정
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		
		
		// height
		// mask
		// promptChar
		// readOnly
		// rtl
		// theme
		// textAlign
		// value
		// width
		
		/* Events */
		// change
		// valueChanged
		
		/* Methods */
		// clear
		// destroy
		// focus
		// val
		
		
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
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",	
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
	"type" : "password"	
}];

$("#jqxinputForm_event_change").jqxForm({
  	"template" : template_event_change
});


/* 이벤트 설정 */
let txtEventChange = $("#jqxinputForm_event_change").jqxForm("getComponentByName", "txtEventChange"); 
txtEventChange.on("change", function(event) {
	let args = event.args;
	
	if(args) {
	   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
	   	let value = txtChange.val();	// inputBox에 입력된 값
	   
	   	$("#log_event_change").html("type : " + type + " // value : " + value);
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
	"type" : "password"	
}];

$("#jqxinputForm_render").jqxForm({
  	"template" : template_method_render
});


/* 이벤트 설정 */
let txtMethodRender = $("#jqxinputForm_method_render").jqxForm("getComponentByName", "txtMethodRender");
 
$("#btnRender").on("click", function() {
   	txtMethodRender.jqxPasswordInput("render");
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>