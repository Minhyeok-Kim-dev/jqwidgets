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
<script src="<c:url value="/resources/jqwidgets/jqxprogressbar.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// delay
		let template_delay = [{
			"bind" : "btnDelay",
			"name" : "btnDelay",
			"type" : "repeatButton",
			"width" : 50,
			"height" : 25,
			"delay" : 100	// property 설정
		}];

		$("#jqxFormButtons_delay").jqxForm({
			"template" : template_delay
		});

		// ProgressBar 설정
		$("#jqxProgressBar").jqxProgressBar({
			"width" : 250,
			"height" : 25,
			"max" : 100
		});

		// case 2 : element에 property 설정 (정렬 적용)
		let btnDelay = $("#jqxFormButtons_delay").jqxForm("getComponentByName", "btnDelay");

		btnDelay.jqxRepeatButton("value", "test");

		/* Event 설정 */
		btnDelay.on("click", function(){
		   let curVal = $("#jqxProgressBar").jqxProgressBar("value");
		   
		   $("#jqxProgressBar").jqxProgressBar({
		      "animationDuration" : 0,
		      "value" : ++curVal
		   });
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
            <!-- delay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">delay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					50
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_delay"></div>
						<div id="jqxProgressBar"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>두번째 Click 이벤트 사이의 간격시간을 설정하거나 가져옵니다. 누르고 있는경우 자동클릭됩니다.</p>
						<p>해당 프로퍼티는 jqxRepeatButton에서만 사용됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_delay = [{
	"bind" : "btnDelay",
	"name" : "btnDelay",
	"type" : "repeatButton",
	"width" : 50,
	"height" : 25,
	"delay" : 100	// property 설정
}];

$("#jqxFormButtons_delay").jqxForm({
	"template" : template_delay
});

// ProgressBar 설정
$("#jqxProgressBar").jqxProgressBar({
	"width" : 250,
	"height" : 25,
	"max" : 100
});

// case 2 : element에 property 설정 (정렬 적용)
let btnDelay = $("#jqxFormButtons_delay").jqxForm("getComponentByName", "btnDelay");
btnDelay.jqxRepeatButton("delay", 100);

btnDelay.jqxRepeatButton("value", "test");

/* Get Property */
let delay = btnDelay.jqxRepeatButton("delay");

/* Event 설정 */
btnDelay.on("click", function(){
   let curVal = $("#jqxProgressBar").jqxProgressBar("value");
   
   $("#jqxProgressBar").jqxProgressBar({
      "animationDuration" : 0,
      "value" : ++curVal
   });
}); 
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
</div>