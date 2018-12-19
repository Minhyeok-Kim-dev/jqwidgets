<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.apireference.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.bootstrap.css"/>" />

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/documentation.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxswitchbutton.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// checked
		let template_checked = [{
			"bind" : "btnChecked",
		    "name" : "btnChecked",
			"type" : "switchButton",	
			"checked" : true	// property 설정
		}];
		
		$("#jqxFormButtons_checked").jqxForm({
		  	"template" : template_checked
		});
		
		
		// disabled
		let template_disabled = [{
			"bind" : "btnDisabled",
			"name" : "btnDisabled",
			"type" : "switchButton",	
			"disabled" : false	// property 설정
		}];
		
		$("#jqxFormButtons_disabled").jqxForm({
		  	"template" : template_disabled
		});
		
		
		// height
		let template_height = [{
			"bind" : "btnHeight",
			"name" : "btnHeight",
			"type" : "switchButton",	
			"height" : "50px"	// property 설정	
		}];
		
		$("#jqxFormButtons_height").jqxForm({
		  	"template" : template_height
		});
		
		
		// orientation
		let template_orientation = [{
			"bind" : "btnOrientation",
			"name" : "btnOrientation",
			"type" : "switchButton",	
			"orientation" : "vertical"	// property 설정	
		}];
		
		$("#jqxFormButtons_orientation").jqxForm({
		  	"template" : template_orientation
		});
		
		
		// onLabel
		let template_onLabel = [{
			"bind" : "btnOnLabel",
			"name" : "btnOnLabel",
			"type" : "switchButton",	
			"onLabel" : "켜짐"	// property 설정	
		}];
		
		$("#jqxFormButtons_onLabel").jqxForm({
		  	"template" : template_onLabel
		});
		
				
		// offLabel
		let template_offLabel = [{
			"bind" : "btnOffLabel",
			"name" : "btnOffLabel",
			"type" : "switchButton",	
			"offLabel" : "꺼짐"	// property 설정	
		}];
		
		$("#jqxFormButtons_offLabel").jqxForm({
		  	"template" : template_offLabel
		});
		

		// thumbSize
		let template_thumbSize = [{
			"bind" : "btnThumbSize",
			"name" : "btnThumbSize",
			"type" : "switchButton",	
			"thumbSize" : "50%"	// property 설정	
		}];
		
		$("#jqxFormButtons_thumbSize").jqxForm({
		  	"template" : template_thumbSize
		});
		

		// width
		let template_width = [{
			"bind" : "btnWidth",
			"name" : "btnWidth",
			"type" : "switchButton",	
			"width" : "200"	// property 설정	
		}];
		
		$("#jqxFormButtons_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		// checked
		let template_event_checked = [{
		    "bind" : "btnChecked",
		    "name" : "btnChecked",
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_event_checked").jqxForm({
		  	"template" : template_event_checked
		});
		
		let btnChecked = $("#jqxFormButtons_event_checked").jqxForm("getComponentByName", "btnChecked"); 
		btnChecked.on("checked", function(event) {
			$("#log_event_checked").html("checked event occurred!!!");
		});
		
		
		// change
		let template_event_change = [{
		    "bind" : "btnChange",
		    "name" : "btnChange",
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_event_change").jqxForm({
		  	"template" : template_event_change
		});
		
		
		// unchecked
		let template_event_unchecked = [{
		    "bind" : "btnUnchecked",
		    "name" : "btnUnchecked",
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_event_unchecked").jqxForm({
		  	"template" : template_event_unchecked
		});
		
		
		let btnUnchecked = $("#jqxFormButtons_event_unchecked").jqxForm("getComponentByName", "btnUnchecked"); 
		btnUnchecked.on("unchecked", function(event) {
			$("#log_event_unchecked").html("unchecked event occurred!!!");
		});
		
		
		/* Methods */
		// check
		let template_method_check = [{
			"bind" : "btnMethodCheck",
			"name" : "btnMethodCheck",
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_method_check").jqxForm({
		  	"template" : template_method_check
		});
		
		let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");
		 
		$("#btnCheck").on("click", function() {
		   	btnMethodCheck.jqxSwitchButton("check");
		});

		
		// disable
		let template_method_disable = [{
			"bind" : "btnMethodDisable",
			"name" : "btnMethodDisable",
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_method_disable").jqxForm({
		  	"template" : template_method_disable
		});
		
		let btnMethodDisable = $("#jqxFormButtons_method_disable").jqxForm("getComponentByName", "btnMethodDisable");
		 
		$("#btnDisable").on("click", function() {
		   	btnMethodDisable.jqxSwitchButton("disable");
		});
		
		
		// enable
		let template_method_enable = [{
			"bind" : "btnMethodEnable",
			"name" : "btnMethodEnable",
			"disabled" : true,	 // 비활성화 설정
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_method_enable").jqxForm({
		  	"template" : template_method_enable
		});
		
		
		let btnMethodEnable = $("#jqxFormButtons_method_enable").jqxForm("getComponentByName", "btnMethodEnable");
		 
		$("#btnEnable").on("click", function() {
		   	btnMethodEnable.jqxSwitchButton("enable");
		});
		
		
		// toggle
		let template_method_toggle = [{
			"bind" : "btnMethodToggle",
			"name" : "btnMethodToggle",
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_method_toggle").jqxForm({
		  	"template" : template_method_toggle
		});
		
		let btnMethodToggle = $("#jqxFormButtons_method_toggle").jqxForm("getComponentByName", "btnMethodToggle");
		 
		$("#btnToggle").on("click", function() {
		   	btnMethodToggle.jqxSwitchButton("toggle");
		});
		
		
		// uncheck
		let template_method_uncheck = [{
			"bind" : "btnMethodUncheck",
			"name" : "btnMethodUncheck",
			"type" : "switchButton"	
		}];
		
		$("#jqxFormButtons_method_uncheck").jqxForm({
		  	"template" : template_method_uncheck
		});
		
		let btnMethodUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getComponentByName", "btnMethodUncheck");
		 
		$("#btnUncheck").on("click", function() {
		   	btnMethodUncheck.jqxSwitchButton("uncheck");
		});
		
		
		// val
		let template_method_val = [{
			"bind" : "btnMethodVal",
			"name" : "btnMethodVal",
			"type" : "switchButton"	
		}];

		$("#jqxFormButtons_method_val").jqxForm({
		  	"template" : template_method_val
		});

		let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
		 
		$("#btnVal").on("click", function() {
			// Set value
		   	btnMethodVal.jqxSwitchButton("val", true);
		   	
		   	// Set value using jQuery
		   	btnMethodVal.val(true);
		   	
		   	// Get the value
		   	let val1 = btnMethodVal.jqxSwitchButton("val");
		   	
		   	// Get the value using jQuery
		   	let val2 = btnMethodVal.val();
		   	
		   	alert(val1 + "//" + val2);
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
			<!-- checked -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">checked</span>
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
						<div id="jqxFormButtons_checked"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 체크 상태를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_checked = [{
	"bind" : "btnChecked",
	"name" : "btnChecked",
	"type" : "switchButton",	
	"checked" : true	// property 설정
}];

$("#jqxFormButtons_checked").jqxForm({
  	"template" : template_checked
});

// case 2 : element에 property 설정
let btnChecked = $("#jqxFormButtons_checked").jqxForm("getComponentByName", "btnChecked");
btnChecked.jqxSwitchButton("checked", true);


/* Get Property */

let btnChecked = $("#jqxFormButtons_checked").jqxForm("getComponentByName", "btnChecked");
let checked = btnChecked.jqxSwitchButton("checked"); 
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
						<div id="jqxFormButtons_disabled"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼을 비활성화하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_disabled = [{
	"bind" : "btnDisabled",
	"name" : "btnDisabled",
	"type" : "switchButton",	
	"disabled" : true	// property 설정
}];

$("#jqxFormButtons_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
btnDisabled.jqxSwitchButton("disabled", true);


/* Get Property */

let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
let disabled = btnDisabled.jqxSwitchButton("disabled"); 
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
					30
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_height"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_height = [{
	"bind" : "btnHeight",
	"name" : "btnHeight",
	"type" : "switchButton",	
	"height" : "50px"	// property 설정	
}];

$("#jqxFormButtons_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
btnHeight.jqxSwitchButton("height", 50);


/* Get Property */

let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
let height = btnHeight.jqxSwitchButton("height"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- orientation -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">orientation</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"horizontal"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_orientation"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 방향을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"horizontal"</p>
						<p>"vertical"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_orientation = [{
	"bind" : "btnOrientation",
	"name" : "btnOrientation",
	"type" : "switchButton",	
	"orientation" : "vertical"	// property 설정	
}];

$("#jqxFormButtons_orientation").jqxForm({
  	"template" : template_orientation
});

// case 2 : element에 property 설정
let btnOrientation = $("#jqxFormButtons_orientation").jqxForm("getComponentByName", "btnOrientation");
btnOrientation.jqxSwitchButton("orientation", "vertical");


/* Get Property */

let btnOrientation = $("#jqxFormButtons_orientation").jqxForm("getComponentByName", "btnOrientation");
let orientation = btnOrientation.jqxSwitchButton("orientation"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- onLabel -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">onLabel</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"On"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_onLabel"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>On버튼의 텍스트를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_onLabel = [{
	"bind" : "btnOnLabel",
	"name" : "btnOnLabel",
	"type" : "switchButton",	
	"onLabel" : "켜짐"	// property 설정	
}];

$("#jqxFormButtons_onLabel").jqxForm({
  	"template" : template_onLabel
});

// case 2 : element에 property 설정
let btnOnLabel = $("#jqxFormButtons_onLabel").jqxForm("getComponentByName", "btnOnLabel");
btnOnLabel.jqxSwitchButton("onLabel", "켜짐");


/* Get Property */

let btnOnLabel = $("#jqxFormButtons_onLabel").jqxForm("getComponentByName", "btnOnLabel");
let onLabel = btnOnLabel.jqxSwitchButton("onLabel"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- offLabel -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">offLabel</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"Off"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_offLabel"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Off버튼의 텍스트를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_offLabel = [{
	"bind" : "btnOffLabel",
	"name" : "btnOffLabel",
	"type" : "switchButton",	
	"offLabel" : "꺼짐"	// property 설정	
}];

$("#jqxFormButtons_offLabel").jqxForm({
  	"template" : template_offLabel
});

// case 2 : element에 property 설정
let btnOffLabel = $("#jqxFormButtons_offLabel").jqxForm("getComponentByName", "btnOffLabel");
btnOffLabel.jqxSwitchButton("offLabel", "꺼짐");


/* Get Property */

let btnOffLabel = $("#jqxFormButtons_offLabel").jqxForm("getComponentByName", "btnOffLabel");
let offLabel = btnOffLabel.jqxSwitchButton("offLabel"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- thumbSize -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">thumbSize</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"40%"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_thumbSize"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>스위치 버튼의 크기비율을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_thumbSize = [{
	"bind" : "btnThumbSize",
	"name" : "btnThumbSize",
	"type" : "switchButton",	
	"thumbSize" : "50%"	// property 설정	
}];

$("#jqxFormButtons_thumbSize").jqxForm({
  	"template" : template_thumbSize
});

// case 2 : element에 property 설정
let btnThumbSize = $("#jqxFormButtons_thumbSize").jqxForm("getComponentByName", "btnThumbSize");
btnThumbSize.jqxSwitchButton("thumbSize", "50%");


/* Get Property */

let btnThumbSize = $("#jqxFormButtons_thumbSize").jqxForm("getComponentByName", "btnThumbSize");
let thumbSize = btnThumbSize.jqxSwitchButton("thumbSize"); 
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
					90
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_width"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_width = [{
	"bind" : "btnWidth",
	"name" : "btnWidth",
	"type" : "switchButton",	
	"width" : "200"	// property 설정	
}];

$("#jqxFormButtons_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
btnWidth.jqxSwitchButton("width", 200);


/* Get Property */

let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
let width = btnWidth.jqxSwitchButton("width"); 
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
			<!-- checked -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">checked</span>
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
						<div id="jqxFormButtons_event_checked"></div>
						<div id="log_event_checked"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼이 체크가 된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_checked = [{
    "bind" : "btnChecked",
    "name" : "btnChecked",
	"type" : "switchButton"	
}];

$("#jqxFormButtons_event_checked").jqxForm({
  	"template" : template_event_checked
});


/* 이벤트 설정 */
let btnChecked = $("#jqxFormButtons_event_checked").jqxForm("getComponentByName", "btnChecked"); 
btnChecked.on("checked", function(event) {
	$("#log_event_checked").html("checked event occurred!!!");
});
</code></pre>
                    </div>
                </td>
            </tr>
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
						<div id="jqxFormButtons_event_change"></div>
						<div id="log_event_change"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼값이 변경 된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_change = [{
    "bind" : "btnChange",
    "name" : "btnChange",
	"type" : "switchButton"	
}];

$("#jqxFormButtons_event_change").jqxForm({
  	"template" : template_event_change
});


/* 이벤트 설정 */
let btnChange = $("#jqxFormButtons_event_change").jqxForm("getComponentByName", "btnChange"); 
btnChange.on("change", function(event) {
	let args = event.args;
	
	if(args) {
		$("#log_event_change").html("change event occurred!!!  check : " +  arsgs.check + "// checked : "  args.checked);
	}
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- unchecked -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">unchecked</span>
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
						<div id="jqxFormButtons_event_unchecked"></div>
						<div id="log_event_unchecked"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼이 체크 해제 된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_unchecked = [{
    "bind" : "btnUnchecked",
    "name" : "btnUnchecked",
	"type" : "switchButton"	
}];

$("#jqxFormButtons_event_unchecked").jqxForm({
  	"template" : template_event_unchecked
});


/* 이벤트 설정 */
let btnUnchecked = $("#jqxFormButtons_event_unchecked").jqxForm("getComponentByName", "btnUnchecked"); 
btnUnchecked.on("unchecked", function(event) {
	$("#log_event_unchecked").html("unchecked event occurred!!!");
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
						<p>버튼을 체크합니다.</p>
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
	"type" : "switchButton"	
}];

$("#jqxFormButtons_method_check").jqxForm({
  	"template" : template_method_check
});


/* 이벤트 설정 */
let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");
 
$("#btnCheck").on("click", function() {
   	btnMethodCheck.jqxSwitchButton("check");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- disable -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">disable</span>
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
						<div id="jqxFormButtons_method_disable"></div>
						<input type="button" id="btnDisable" value="Disable" />
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼을 비활성화합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_disable = [{
	"bind" : "btnMethodDisable",
	"name" : "btnMethodDisable",
	"type" : "switchButton"	
}];

$("#jqxFormButtons_method_disable").jqxForm({
  	"template" : template_method_disable
});


/* 이벤트 설정 */
let btnMethodDisable = $("#jqxFormButtons_method_disable").jqxForm("getComponentByName", "btnMethodDisable");
 
$("#btnDisable").on("click", function() {
   	btnMethodDisable.jqxSwitchButton("disable");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enable -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enable</span>
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
						<div id="jqxFormButtons_method_enable"></div>
						<input type="button" id="btnEnable" value="Enable" />
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼을 활성화합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_enable = [{
	"bind" : "btnMethodEnable",
	"name" : "btnMethodEnable",
	"disabled" : true,	 // 비활성화 설정
	"type" : "switchButton"	
}];

$("#jqxFormButtons_method_enable").jqxForm({
  	"template" : template_method_enable
});


/* 이벤트 설정 */
let btnMethodEnable = $("#jqxFormButtons_method_enable").jqxForm("getComponentByName", "btnMethodEnable");
 
$("#btnEnable").on("click", function() {
   	btnMethodEnable.jqxSwitchButton("enable");
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
						<p>버튼을 토글합니다.</p>
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
	"type" : "switchButton"	
}];

$("#jqxFormButtons_method_toggle").jqxForm({
  	"template" : template_method_toggle
});


/* 이벤트 설정 */
let btnMethodToggle = $("#jqxFormButtons_method_toggle").jqxForm("getComponentByName", "btnMethodToggle");
 
$("#btnToggle").on("click", function() {
   	btnMethodToggle.jqxSwitchButton("toggle");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- uncheck -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">uncheck</span>
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
						<div id="jqxFormButtons_method_uncheck"></div>
						<input type="button" id="btnUncheck" value="Uncheck" />
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼을 체크해제 합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_uncheck = [{
	"bind" : "btnMethodUncheck",
	"name" : "btnMethodUncheck",
	"type" : "switchButton"	
}];

$("#jqxFormButtons_method_uncheck").jqxForm({
  	"template" : template_method_uncheck
});


/* 이벤트 설정 */
let btnMethodUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getComponentByName", "btnMethodUncheck");
 
$("#btnUncheck").on("click", function() {
   	btnMethodUncheck.jqxSwitchButton("uncheck");
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
						<div id="jqxFormButtons_method_val"></div>
						<input type="button" id="btnVal" value="Val" />
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 값을 설정하거나 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>Boolean</p>
						<h4>Return Value</h4>
						<p>Boolean</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_val = [{
	"bind" : "btnMethodVal",
	"name" : "btnMethodVal",
	"type" : "switchButton"	
}];

$("#jqxFormButtons_method_val").jqxForm({
  	"template" : template_method_val
});


/* 이벤트 설정 */
let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
 
$("#btnVal").on("click", function() {
	// Set value
   	btnMethodVal.jqxSwitchButton("val", true);
   	
   	// Set value using jQuery
   	btnMethodVal.val(true);
   	
   	// Get the value
   	let val1 = btnMethodVal.jqxSwitchButton("val");
   	
   	// Get the value using jQuery
   	let val2 = btnMethodVal.val();
   	
   	alert(val1 + "//" + val2);
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>