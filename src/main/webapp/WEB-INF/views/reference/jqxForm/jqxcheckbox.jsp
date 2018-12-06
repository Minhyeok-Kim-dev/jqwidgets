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
<script src="<c:url value="/resources/jqwidgets/jqxcheckbox.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// animationShowDelay
		let template_animationShowDelay = [{
			"bind" : "btnAnimationShowDelay",
			"name" : "btnAnimationShowDelay",
			"type" : "checkbox",	
			"animationShowDelay" : 1000	// property 설정
		}];
		
		$("#jqxFormButtons_animationShowDelay").jqxForm({
		  	"template" : template_animationShowDelay
		});
		
		
		// animationHideDelay
		let template_animationHideDelay = [{
			"bind" : "btnAnimationHideDelay",
			"name" : "btnAnimationHideDelay",
			"type" : "checkbox",	
			"animationHideDelay" : 1000	// property 설정
		}];
		
		$("#jqxFormButtons_animationHideDelay").jqxForm({
		  	"template" : template_animationHideDelay
		});
		
		
		// boxSize
		let template_boxSize = [{
			"bind" : "btnBoxSize",
			"name" : "btnBoxSize",
			"type" : "checkbox",
			"boxSize" : "30px"	// property 설정
		}];
		
		$("#jqxFormButtons_boxSize").jqxForm({
		  	"template" : template_boxSize
		});
		

		// checked
		let template_checked = [{
			"bind" : "btnChecked",
			"name" : "btnChecked",
			"type" : "checkbox",	
			"checked" : true	// property 설정
		}];
		
		$("#jqxFormButtons_checked").jqxForm({
		  	"template" : template_checked
		});
		
		
		// disabled
		let template_disabled = [{
			"bind" : "btnDisabled",
			"name" : "btnDisabled",
			"type" : "checkbox",	
			"disabled" : true	// property 설정
		}];
		
		$("#jqxFormButtons_disabled").jqxForm({
		  	"template" : template_disabled
		});
		

		// enableContainerClick
		let template_enableContainerClick = [{
			"bind" : "btnEnableContainerClick",
			"name" : "btnEnableContainerClick",
			"type" : "checkbox",	
			"label" : "Click Me",
			"labelPosition" : "right",
			"labelPadding" : {
			    "left" : 0, 
			    "top" : 10, 
			    "right" : 0, 
			    "bottom" : 5
			},
			"enableContainerClick" : false	// property 설정
		}];
		
		$("#jqxFormButtons_enableContainerClick").jqxForm({
		  	"template" : template_enableContainerClick
		});
		

		// groupName
		let template_groupName_1 = [{
			"bind" : "btnGroupName_1",
			"name" : "btnGroupName_1",
			"type" : "checkbox",	
			"label" : "Click Me",
			"labelPosition" : "right",
			"labelPadding" : {
				"left": 0, 
				"top": 10, 
				"right": 0, 
				"bottom": 5
			},
			"groupName" : "myGroup"	// property 설정
		}];
		
		let template_groupName_2 = [{
			"bind" : "btnGroupName_2",
			"name" : "btnGroupName_2",
			"type" : "checkbox",	
			"label" : "Click Me",
			"labelPosition" : "right",
			"labelPadding" : {
				"left": 0, 
				"top": 10, 
				"right": 0, 
				"bottom": 5
			},
			"groupName" : "myGroup"	// property 설정
		}];
		
		$("#jqxFormButtons_groupName_1").jqxForm({
		  	"template" : template_groupName_1
		});
		
		$("#jqxFormButtons_groupName_2").jqxForm({
		  	"template" : template_groupName_2
		});
		
		
		// height
		let template_height = [{
			"bind" : "btnHeight",
			"name" : "btnHeight",
			"type" : "checkbox",	
			"height" : 100	// property 설정
		}];
		
		$("#jqxFormButtons_height").jqxForm({
		  	"template" : template_height
		});
		
		
		// hasThreeStates
		let template_hasThreeStates = [{
			"bind" : "btnHasThreeStates",
			"name" : "btnHasThreeStates",
			"type" : "checkbox",	
			"hasThreeStates" : true	// property 설정
		}];
		
		$("#jqxFormButtons_hasThreeStates").jqxForm({
		  	"template" : template_hasThreeStates
		});
		
		
		// locked
		let template_locked= [{
			"bind" : "btnLocked",
			"name" : "btnLocked",
			"type" : "checkbox",	
			"locked" : true	// property 설정
		}];
		
		$("#jqxFormButtons_locked").jqxForm({
		  	"template" : template_locked
		});
		
		
		// rtl
		let template_rtl = [{
			"bind" : "btnRtl",
			"name" : "btnRtl",
			"type" : "checkbox",	
			"rtl" : true	// property 설정
		}];
		
		$("#jqxFormButtons_rtl").jqxForm({
		  	"template" : template_rtl
		});
		
		
		// theme
		let template_theme= [{
			"bind" : "btnTheme",
			"name" : "btnTheme",
			"type" : "checkbox",
		    "theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxFormButtons_theme").jqxForm({
		  	"template" : template_theme
		});
		

		// width
		let template_width = [{
			"bind" : "btnWidth",
			"name" : "btnWidth",
			"type" : "checkbox",	
			"width" : 100	// property 설정
		}];
		
		$("#jqxFormButtons_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		// checked
		let template_event_checked = [{
		    "bind" : "btnEventChecked",
		    "name" : "btnEventChecked",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_event_checked").jqxForm({
		  	"template" : template_event_checked
		});
		
		let btnEventChecked = $("#jqxFormButtons_event_checked").jqxForm("getComponentByName", "btnEventChecked"); 
		btnEventChecked.on("checked", function() {
			$("#log_event_checked").html("checked event occured!");
		});
	
		
		// change
		let template_event_change = [{
		    "bind" : "btnEventChange",
		    "name" : "btnEventChange",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_event_change").jqxForm({
		  	"template" : template_event_change
		});
		
		let btnEventChange = $("#jqxFormButtons_event_change").jqxForm("getComponentByName", "btnEventChange"); 
		btnEventChange.on("change", function(e) {
			let args = e.args;
			
			if(typeof args !== "undefined") {
				let checked = args.checked;
				let type = args.type;
				
				$("#log_event_change").html("change event occured!  checked: " + checked + " // type: " + type);
			}
		});
		
		
		// indeterminate
		let template_event_indeterminate = [{
		    "bind" : "btnEventIndeterminate",
		    "name" : "btnEventIndeterminate",
			"type" : "checkbox",
			//"checked" : null,
			"hasThreeStates" : true	
		}];
		
		$("#jqxFormButtons_event_indeterminate").jqxForm({
		  	"template" : template_event_indeterminate
		});
		
		let btnEventIndeterminate = $("#jqxFormButtons_event_indeterminate").jqxForm("getComponentByName", "btnEventIndeterminate"); 
		btnEventIndeterminate.on("indeterminate", function(e) {
			$("#log_event_indeterminate").html("indeterminate event occured!");
		});
		
		
		// unchecked - TODO: camel 적용
		let template_event_unchecked = [{
		    "bind" : "btnEventUnchecked",
		    "name" : "btnEventUnchecked",
			"type" : "checkbox"
		}];
		
		$("#jqxFormButtons_event_unchecked").jqxForm({
		  	"template" : template_event_unchecked
		});
		
		let btnEventUnchecked = $("#jqxFormButtons_event_unchecked").jqxForm("getComponentByName", "btnEventUnchecked"); 
		btnEventUnchecked.on("unchecked", function(e) {
			$("#log_event_unchecked").html("unchecked event occured!");
		});		
		
		
		/* Methods */
		// check
		let template_method_check = [{
			"bind" : "btnMethodCheck",
			"name" : "btnMethodCheck",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_method_check").jqxForm({
		  	"template" : template_method_check
		});
		
		let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");
		 
		$("#btnCheck").on("click", function() {
		   	btnMethodCheck.jqxCheckBox("check");
		});
	
		
		// disable
		let template_method_disable = [{
			"bind" : "btnMethodDisable",
			"name" : "btnMethodDisable",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_method_disable").jqxForm({
		  	"template" : template_method_disable
		});
		
		let btnMethodDisable = $("#jqxFormButtons_method_disable").jqxForm("getComponentByName", "btnMethodDisable");
		 
		$("#btnDisable").on("click", function() {
		   	btnMethodDisable.jqxCheckBox("disable");
		});
		
		
		// destroy
		let template_method_destroy = [{
			"bind" : "btnMethodDestroy",
			"name" : "btnMethodDestroy",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_method_destroy").jqxForm({
		  	"template" : template_method_destroy
		});
		
		let btnMethodDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getComponentByName", "btnMethodDestroy");
		 
		$("#btnDestroy").on("click", function() {
		   	btnMethodDestroy.jqxCheckBox("destroy");
		});
		
		
		// enable
		let template_method_enable = [{
			"bind" : "btnMethodEnable",
			"name" : "btnMethodEnable",
			"disabled" : true,
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_method_enable").jqxForm({
		  	"template" : template_method_enable
		});
		
		let btnMethodEnable = $("#jqxFormButtons_method_enable").jqxForm("getComponentByName", "btnMethodEnable");
		 
		$("#btnEnable").on("click", function() {
		   	btnMethodEnable.jqxCheckBox("enable");
		});
		
		
		// focus
		let template_method_focus = [{
			"bind" : "btnMethodFocus",
			"name" : "btnMethodFocus",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_method_focus").jqxForm({
		  	"template" : template_method_focus
		});

		let btnMethodFocus = $("#jqxFormButtons_method_focus").jqxForm("getComponentByName", "btnMethodFocus");
		 
		$("#btnFocus").on("click", function() {
		   	btnMethodFocus.jqxCheckBox("focus");
		});
		
		
		// indeterminate
		let template_method_indeterminate = [{
			"bind" : "btnMethodIndeterminate",
			"name" : "btnMethodIndeterminate",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_method_indeterminate").jqxForm({
		  	"template" : template_method_indeterminate
		});
		
		let btnMethodIndeterminate = $("#jqxFormButtons_method_indeterminate").jqxForm("getComponentByName", "btnMethodIndeterminate");
		 
		$("#btnIndeterminate").on("click", function() {
		   	btnMethodIndeterminate.jqxCheckBox("indeterminate");
		});
		
		
		// render
		let template_method_render = [{
			"bind" : "btnMethodRender",
			"name" : "btnMethodRender",
			"type" : "checkbox"	
		}];
		
		$("#jqxFormButtons_method_render").jqxForm({
		  	"template" : template_method_render
		});
		
		let btnMethodRender = $("#jqxFormButtons_method_render").jqxForm("getComponentByName", "btnMethodRender");
		 
		$("#btnRender").on("click", function() {
		   	btnMethodRender.jqxCheckBox("render");
		});
		
		
		// toggle
		let template_method_toggle = [{
			"bind" : "btnMethodToggle",
			"name" : "btnMethodToggle",
			"type" : "checkbox",	
			"hasThreeStates" : true
		}];
		
		$("#jqxFormButtons_method_toggle").jqxForm({
		  	"template" : template_method_toggle
		});
		
		let btnMethodToggle = $("#jqxFormButtons_method_toggle").jqxForm("getComponentByName", "btnMethodToggle");
		 
		$("#btnToggle").on("click", function() {
		   	btnMethodToggle.jqxCheckBox("toggle");
		});
		
		
		// uncheck - TODO: camel 적용
		let template_method_uncheck = [{
			"bind" : "btnMethodUncheck",
			"name" : "btnMethodUncheck",
			"type" : "checkbox",
			"checked" : true	
		}];
		
		$("#jqxFormButtons_method_uncheck").jqxForm({
		  	"template" : template_method_uncheck
		});
		
		let btnMethodUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getComponentByName", "btnMethodUncheck");
		 
		$("#btnUncheck").on("click", function() {
		   	btnMethodUncheck.jqxCheckBox("uncheck");
		});
		
		
		// val
		let template_method_val = [{
			"bind" : "btnMethodVal",
			"name" : "btnMethodVal",
			"type" : "checkbox",
			"checked" : true	
		}];

		$("#jqxFormButtons_method_val").jqxForm({
		  	"template" : template_method_val
		});

		let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
		 
		$("#btnVal").on("click", function() {
			// Get value
			let val = btnMethodVal.jqxCheckBox("val");
			
			// Get value using jQuery
			let val2 = btnMethodVal.val();
			
			alert(val + "//" + val2);
			
			// Set value
			btnMethodVal.jqxCheckBox("val", true);
			
			// Set value using jQuery
			btnMethodVal.val(false);
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
			<!-- animationShowDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationShowDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					300
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_animationShowDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크박스가 체크되는 애니메이션 속도를 설정하거나 가져옵니다.(ms)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_animationShowDelay = [{
	"bind" : "btnAnimationShowDelay",
	"name" : "btnAnimationShowDelay",
	"type" : "checkbox",	
	"animationShowDelay" : 1000	// property 설정
}];

$("#jqxFormButtons_animationShowDelay").jqxForm({
  	"template" : template_animationShowDelay
});

// case 2 : element에 property 설정
let btnAnimationShowDelay = $("#jqxFormButtons_animationShowDelay").jqxForm("getComponentByName", "btnAnimationShowDelay");
btnAnimationShowDelay.jqxCheckBox("animationShowDelay", 1000);


/* Get Property */
let btnAnimationShowDelay = $("#jqxFormButtons_animationShowDelay").jqxForm("getComponentByName", "btnAnimationShowDelay");
let animationShowDelay = btnAnimataionShowDelay.jqxCheckBox("animationShowDelay"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- animationHideDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationHideDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					300
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_animationHideDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크박스가 체크해제되는 애니메이션 속도를 설정하거나 가져옵니다.(ms)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_animationHideDelay = [{
	"bind" : "btnAnimationHideDelay",
	"name" : "btnAnimationHideDelay",
	"type" : "checkbox",	
	"animationHideDelay" : 1000	// property 설정
}];

$("#jqxFormButtons_animationHideDelay").jqxForm({
  	"template" : template_animationHideDelay
});

// case 2 : element에 property 설정
let btnAnimationHideDelay = $("#jqxFormButtons_animationHideDelay").jqxForm("getComponentByName", "btnAnimationHideDelay");
btnAnimationHideDelay.jqxCheckBox("animationHideDelay", 1000);


/* Get Property */
let btnAnimationHideDelay = $("#jqxFormButtons_animationHideDelay").jqxForm("getComponentByName", "btnAnimationHideDelay");
let animationHideDelay = btnAnimationHideDelay.jqxCheckBox("animationHideDelay"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- boxSize -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">boxSize - TODO: render 수정</span>
				</td>
				<td>
					<span>String/Number</span>
				</td>
				<td>
					16
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_boxSize"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크박스의 크기를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_boxSize = [{
	"bind" : "btnBoxSize",
	"name" : "btnBoxSize",
	"type" : "checkbox",	
	"boxSize" : 30	// property 설정
}];

$("#jqxFormButtons_boxSize").jqxForm({
  	"template" : template_boxSize
});

// case 2 : element에 property 설정
let btnBoxSize = $("#jqxFormButtons_boxSize").jqxForm("getComponentByName", "btnBoxSize");
btnBoxSize.jqxCheckBox("boxSize", 30);


/* Get Property */
let btnBoxSize = $("#jqxFormButtons_boxSize").jqxForm("getComponentByName", "btnBoxSize");
let boxSize = btnBoxSize.jqxCheckBox("boxSize"); 
</code></pre>
                    </div>
                </td>
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
						<p>체크박스의 체크상태를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_checked = [{
	"bind" : "btnChecked",
	"name" : "btnChecked",
	"type" : "checkbox",	
	"checked" : true	// property 설정
}];

$("#jqxFormButtons_checked").jqxForm({
  	"template" : template_checked
});

// case 2 : element에 property 설정
let btnChecked = $("#jqxFormButtons_checked").jqxForm("getComponentByName", "btnChecked");
btnChecked.jqxCheckBox("checked", true);


/* Get Property */
let btnChecked = $("#jqxFormButtons_checked").jqxForm("getComponentByName", "btnChecked");
let checked = btnChecked.jqxCheckBox("checked"); 
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
						<p>위젯을 활성화하거나 비활성화합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_disabled = [{
	"bind" : "btnDisabled",
	"name" : "btnDisabled",
	"type" : "checkbox",	
	"disabled" : true	// property 설정
}];

$("#jqxFormButtons_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
btnDisabled.jqxCheckBox("disabled", true);


/* Get Property */
let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
let disabled = btnDisabled.jqxCheckBox("disabled"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableContainerClick -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableContainerClick</span>
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
						<div id="jqxFormButtons_enableContainerClick"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크박스 내용 클릭시 체크박스 선택되도록 하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_enableContainerClick = [{
	"bind" : "btnEnableContainerClick",
	"name" : "btnEnableContainerClick",
	"type" : "checkbox",	
	"label" : "Click Me",
	"labelPosition" : "right",
	"labelPadding" : {
		"left": 0, 
		"top": 10, 
		"right": 0, 
		"bottom": 5
	},
	"enableContainerClick" : false	// property 설정
}];

$("#jqxFormButtons_enableContainerClick").jqxForm({
  	"template" : template_enableContainerClick
});

// case 2 : element에 property 설정
let btnEnableContainerClick = $("#jqxFormButtons_enableContainerClick").jqxForm("getComponentByName", "btnEnableContainerClick");
btnEnableContainerClick.jqxCheckBox("enableContainerClick", false);


/* Get Property */
let btnEnableContainerClick = $("#jqxFormButtons_enableContainerClick").jqxForm("getComponentByName", "btnEnableContainerClick");
let enableContainerClick = btnEnableContainerClick.jqxCheckBox("enableContainerClick"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableContainerClick -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">groupName</span>
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
						<div id="jqxFormButtons_groupName_1"></div>
						<div id="jqxFormButtons_groupName_2"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크박스의 그룹명을 설정하거나 가져옵니다.</p>
						<p>같은 그룹내 클릭동작은 radio버튼처럼 처리됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_groupName_1 = [{
	"bind" : "btnGroupName_1",
	"name" : "btnGroupName_1",
	"type" : "checkbox",	
	"label" : "Click Me",
	"labelPosition" : "right",
	"labelPadding" : {
		"left": 0, 
		"top": 10, 
		"right": 0, 
		"bottom": 5
	},
	"groupName" : "myGroup"	// property 설정
}];

let template_groupName_2 = [{
	"bind" : "btnGroupName_2",
	"name" : "btnGroupName_2",
	"type" : "checkbox",	
	"label" : "Click Me",
	"labelPosition" : "right",
	"labelPadding" : {
		"left": 0, 
		"top": 10, 
		"right": 0, 
		"bottom": 5
	},
	"groupName" : "myGroup"	// property 설정
}];

$("#jqxFormButtons_groupName_1").jqxForm({
  	"template" : template_groupName_1
});

$("#jqxFormButtons_groupName_2").jqxForm({
  	"template" : template_groupName_2
});


// case 2 : element에 property 설정
let btnGroupName_1 = $("#jqxFormButtons_groupName_1").jqxForm("getComponentByName", "btnGroupName_1");
btnGroupName_1.jqxCheckBox("groupName", "myGroup");

let btnGroupName_2 = $("#jqxFormButtons_groupName_2").jqxForm("getComponentByName", "btnGroupName_2");
btnGroupName_2.jqxCheckBox("groupName", "myGroup");


/* Get Property */
let btnGroupName_1 = $("#jqxFormButtons_groupName_1").jqxForm("getComponentByName", "btnGroupName_1");
let groupName_1 = btnGroupName_1.jqxCheckBox("groupName");

let btnGroupName_2 = $("#jqxFormButtons_groupName_2").jqxForm("getComponentByName", "btnGroupName_2");
let groupName_2 = btnGroupName_2.jqxCheckBox("groupName");

 
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
						<div id="jqxFormButtons_height"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_height = [{
	"bind" : "btnHeight",
	"name" : "btnHeight",
	"type" : "checkbox",	
	"height" : 10	// property 설정
}];

$("#jqxFormButtons_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
btnHeight.jqxCheckBox("height", 100);


/* Get Property */
let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
let height = btnHeight.jqxCheckBox("height"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- hasThreeStates -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">hasThreeStates</span>
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
						<div id="jqxFormButtons_hasThreeStates"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크박스가 3가지 상태를 가지도록 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<p>checked -> indeterminate -> unchecked</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_hasThreeStates = [{
	"bind" : "btnHasThreeStates",
	"name" : "btnHasThreeStates",
	"type" : "checkbox",	
	"hasThreeStates" : true	// property 설정
}];

$("#jqxFormButtons_hasThreeStates").jqxForm({
  	"template" : template_hasThreeStates
});

// case 2 : element에 property 설정
let btnHasThreeStates = $("#jqxFormButtons_hasThreeStates").jqxForm("getComponentByName", "btnHasThreeStates");
btnHasThreeStates.jqxCheckBox("hasThreeStates", true);


/* Get Property */
let btnHasThreeStates = $("#jqxFormButtons_hasThreeStates").jqxForm("getComponentByName", "btnHasThreeStates");
let hasThreeStates = btnHasThreeStates.jqxCheckBox("hasThreeStates"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- locked -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">locked</span>
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
						<div id="jqxFormButtons_locked"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크박스를 사용하지 못하도록 잠그는 속성을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_locked = [{
	"bind" : "btnLocked",
	"name" : "btnLocked",
	"type" : "checkbox",	
	"locked" : true	// property 설정
}];

$("#jqxFormButtons_locked").jqxForm({
  	"template" : template_locked
});

// case 2 : element에 property 설정
let btnLocked = $("#jqxFormButtons_locked").jqxForm("getComponentByName", "btnLocked");
btnLocked.jqxCheckBox("locked", true);


/* Get Property */
let btnLocked = $("#jqxFormButtons_locked").jqxForm("getComponentByName", "btnLocked");
let locked = btnLocked.jqxCheckBox("locked"); 
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
						<div id="jqxFormButtons_rtl"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>우측정렬을 사용할지 설정하거나 현재 우측정렬상태인지 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_rtl = [{
	"bind" : "btnRtl",
	"name" : "btnRtl",
	"type" : "checkbox",	
	"rtl" : true	// property 설정
}];

$("#jqxFormButtons_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let btnRtl = $("#jqxFormButtons_rtl").jqxForm("getComponentByName", "btnRtl");
btnRtl.jqxCheckBox("rtl", true);


/* Get Property */
let btnRtl = $("#jqxFormButtons_rtl").jqxForm("getComponentByName", "btnRtl");
let rtl = btnRtl.jqxCheckBox("rtl"); 
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
						<div id="jqxFormButtons_theme"></div>
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
let template_theme= [{
	"bind" : "btnTheme",
	"name" : "btnTheme",
	"type" : "checkbox",
    "theme" : "energyblue"	// property 설정
}];

$("#jqxFormButtons_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let btnTheme = $("#jqxFormButtons_theme").jqxForm("getComponentByName", "btnTheme");
btnTheme.jqxCheckBox("theme", "energyblue");


/* Get Property */
let btnTheme = $("#jqxFormButtons_theme").jqxForm("getComponentByName", "btnTheme");
let theme = btnTheme.jqxCheckBox("theme"); 
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
					50
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
						<p>위젯의 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_width = [{
	"bind" : "btnWidth",
	"name" : "btnWidth",
	"type" : "checkbox",	
	"width" : 100	// property 설정
}];

$("#jqxFormButtons_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
btnWidth.jqxCheckBox("width", 100);


/* Get Property */
let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
let width = btnWidth.jqxCheckBox("width"); 
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
						<p>체크박스가 체크된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_checked = [{
    "bind" : "btnEventChecked",
    "name" : "btnEventChecked",
	"type" : "checkbox"	
}];

$("#jqxFormButtons_event_checked").jqxForm({
  	"template" : template_event_checked
});


/* 이벤트 설정 */
let btnEventChecked = $("#jqxFormButtons_event_checked").jqxForm("getComponentByName", "btnEventChecked"); 
btnEventChecked.on("checked", function() {
	$("#log_event_checked").html("checked event occured!");
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
						<p>체크상태가 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_change = [{
    "bind" : "btnEventChange",
    "name" : "btnEventChange",
	"type" : "checkbox"	
}];

$("#jqxFormButtons_event_change").jqxForm({
  	"template" : template_event_change
});


/* 이벤트 설정 */
let btnEventChange = $("#jqxFormButtons_event_change").jqxForm("getComponentByName", "btnEventChange"); 
btnEventChange.on("change", function(e) {
	let args = e.args;
	
	if(typeof args !== "undefined") {
		let checked = args.checked;
		let type = args.type;
		
		$("#log_event_change").html("change event occured!  checked: " + checked + " // type:" + type);
	}
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- indeterminate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">indeterminate</span>
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
						<div id="jqxFormButtons_event_indeterminate"></div>
						<div id="log_event_indeterminate"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>체크상태가 indeterminate인 경우 trigger됩니다.</p>
						<p>체크박스의 hasThreeStates 속성이 true인 경우 사용가능합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_indeterminate = [{
    "bind" : "btnEventIndeterminate",
    "name" : "btnEventIndeterminate",
	"type" : "checkbox",
	"hasThreeStates" : true	
}];

$("#jqxFormButtons_event_indeterminate").jqxForm({
  	"template" : template_event_indeterminate
});


/* 이벤트 설정 */
let btnEventIndeterminate = $("#jqxFormButtons_event_indeterminate").jqxForm("getComponentByName", "btnEventIndeterminate"); 
btnEventIndeterminate.on("indeterminate", function(e) {
	$("#log_event_indeterminate").html("indeterminate event occured!");
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
						<p>체크상태가 해제 된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_unchecked = [{
    "bind" : "btnEventUnchecked",
    "name" : "btnEventUnchecked",
	"type" : "checkbox"
}];

$("#jqxFormButtons_event_unchecked").jqxForm({
  	"template" : template_event_unchecked
});


/* 이벤트 설정 */
let btnEventUnchecked = $("#jqxFormButtons_event_unchecked").jqxForm("getComponentByName", "btnEventUnchecked"); 
btnEventUnchecked.on("unchecked", function(e) {
	$("#log_event_unchecked").html("unchecked event occured!");
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
						<p>체크박스를 선택합니다.</p>
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
	"type" : "checkbox"	
}];

$("#jqxFormButtons_method_check").jqxForm({
  	"template" : template_method_check
});


/* 이벤트 설정 */
let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");
 
$("#btnCheck").on("click", function() {
   	btnMethodCheck.jqxCheckBox("check");
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
						<p>위젯을 비활성화합니다.</p>
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
	"type" : "checkbox"	
}];

$("#jqxFormButtons_method_disable").jqxForm({
  	"template" : template_method_disable
});


/* 이벤트 설정 */
let btnMethodDisable = $("#jqxFormButtons_method_disable").jqxForm("getComponentByName", "btnMethodDisable");
 
$("#btnDisable").on("click", function() {
   	btnMethodDisable.jqxCheckBox("disable");
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
						<div id="jqxFormButtons_method_destroy"></div>
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
	"bind" : "btnMethodDestroy",
	"name" : "btnMethodDestroy",
	"type" : "checkbox"	
}];

$("#jqxFormButtons_method_destroy").jqxForm({
  	"template" : template_method_destroy
});


/* 이벤트 설정 */
let btnMethodDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getComponentByName", "btnMethodDestroy");
 
$("#btnDestroy").on("click", function() {
   	btnMethodDestroy.jqxCheckBox("destroy");
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
						<p>위젯을 활성화합니다.</p>
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
	"disabled" : true,
	"type" : "checkbox"	
}];

$("#jqxFormButtons_method_enable").jqxForm({
  	"template" : template_method_enable
});


/* 이벤트 설정 */
let btnMethodEnable = $("#jqxFormButtons_method_enable").jqxForm("getComponentByName", "btnMethodEnable");
 
$("#btnEnable").on("click", function() {
   	btnMethodEnable.jqxCheckBox("enable");
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
						<div id="jqxFormButtons_method_focus"></div>
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
	"bind" : "btnMethodFocus",
	"name" : "btnMethodFocus",
	"type" : "checkbox"	
}];

$("#jqxFormButtons_method_focus").jqxForm({
  	"template" : template_method_focus
});


/* 이벤트 설정 */
let btnMethodFocus = $("#jqxFormButtons_method_focus").jqxForm("getComponentByName", "btnMethodFocus");
 
$("#btnFocus").on("click", function() {
   	btnMethodFocus.jqxCheckBox("focus");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- indeterminate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">indeterminate</span>
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
						<div id="jqxFormButtons_method_indeterminate"></div>
						<input type="button" id="btnIndeterminate" value="Indeterminate" />
						<!-- Description -->
						<h4>Description</h4>
						<p>체크상태를 indeterminate로 설정합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_indeterminate = [{
	"bind" : "btnMethodIndeterminate",
	"name" : "btnMethodIndeterminate",
	"type" : "checkbox"	
}];

$("#jqxFormButtons_method_indeterminate").jqxForm({
  	"template" : template_method_indeterminate
});


/* 이벤트 설정 */
let btnMethodIndeterminate = $("#jqxFormButtons_method_indeterminate").jqxForm("getComponentByName", "btnMethodIndeterminate");
 
$("#btnIndeterminate").on("click", function() {
   	btnMethodIndeterminate.jqxCheckBox("indeterminate");
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
						<div id="jqxFormButtons_method_render"></div>
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
	"bind" : "btnMethodRender",
	"name" : "btnMethodRender",
	"type" : "checkbox"	
}];

$("#jqxFormButtons_method_render").jqxForm({
  	"template" : template_method_render
});


/* 이벤트 설정 */
let btnMethodRender = $("#jqxFormButtons_method_render").jqxForm("getComponentByName", "btnMethodRender");
 
$("#btnRender").on("click", function() {
   	btnMethodRender.jqxCheckBox("render");
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
						<p>체크박스 상태를 변경합니다.</p>
						<p>hasThreeStates 속성이 true인 경우 check -> indeterminate -> uncheck 순으로 toggle됩니다.</p>
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
	"type" : "checkbox",	
	"hasThreeStates" : true
}];

$("#jqxFormButtons_method_toggle").jqxForm({
  	"template" : template_method_toggle
});


/* 이벤트 설정 */
let btnMethodToggle = $("#jqxFormButtons_method_toggle").jqxForm("getComponentByName", "btnMethodToggle");
 
$("#btnToggle").on("click", function() {
   	btnMethodToggle.jqxCheckBox("toggle");
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
						<p>체크박스 상태를 uncheck로 변경합니다.</p>
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
	"type" : "checkbox",
	"checked" : true	
}];

$("#jqxFormButtons_method_uncheck").jqxForm({
  	"template" : template_method_uncheck
});


/* 이벤트 설정 */
let btnMethodUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getComponentByName", "btnMethodUncheck");
 
$("#btnUncheck").on("click", function() {
   	btnMethodUncheck.jqxCheckBox("uncheck");
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
						<p>값을 설정하거나 가져옵니다.</p>
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
	"type" : "checkbox",
	"checked" : true	
}];

$("#jqxFormButtons_method_val").jqxForm({
  	"template" : template_method_val
});


/* 이벤트 설정 */
let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
 
$("#btnVal").on("click", function() {
	// Get value
	let val = btnMethodVal.jqxCheckBox("val");
	
	// Get value using jQuery
	let val2 = btnMethodVal.val();
	
	alert(val + "//" + val2);
	
	// Set value
	btnMethodVal.jqxCheckBox("val", true);
	
	// Set value using jQuery
	btnMethodVal.val(false);
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>