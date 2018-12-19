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
<script src="<c:url value="/resources/jqwidgets/jqxradiobutton.js"/>"></script>
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
			"type" : "option",	
			"options" : [
                { label: 'Option 1', value: 'value1' },
                { label: 'Option 2', value: 'value2' },
                { label: 'Option 3', value: 'value3' }
            ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"animationShowDelay" : 1000	// property 설정
		}];

		$("#jqxFormButtons_animationShowDelay").jqxForm({
		  	"template" : template_animationShowDelay
		});

		
		// animationHideDelay
		let template_animationHideDelay = [{
			"bind" : "btnAnimataionHideDelay",
			"name" : "btnAnimataionHideDelay",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"animationHideDelay" : 1000	// property 설정
		}];

		$("#jqxFormButtons_animationHideDelay").jqxForm({
		  	"template" : template_animationHideDelay
		});

		
		// boxSize
		let template_boxSize = [{
			"bind" : "btnBoxSize",
			"name" : "btnBoxSize",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"boxSize" : "20px"	// property 설정
		}];
		
		$("#jqxFormButtons_boxSize").jqxForm({
		  	"template" : template_boxSize
		});
		
		
		// checked
		let template_checked = [{
			"bind" : "btnChecked",
			"name" : "btnChecked",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"checked" : true	// property 설정
		}];
		
		$("#jqxFormButtons_checked").jqxForm({
		  	"template" : template_checked
		});
		

		// disabled
		let template_disabled = [{
			"bind" : "btnDisabled",
			"name" : "btnDisabled",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"disabled" : true	// property 설정
		}];
		
		$("#jqxFormButtons_disabled").jqxForm({
		  	"template" : template_disabled
		});

		
		// enableContainerClick
		let template_enableContainerClick = [{
			"bind" : "btnEnableContainerClick",
			"name" : "btnEnableContainerClick",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"enableContainerClick" : false	// property 설정
		}];
		
		$("#jqxFormButtons_enableContainerClick").jqxForm({
		  	"template" : template_enableContainerClick
		});
		
		
		// groupName
		let template_groupName_1 = [{
			"bind" : "btnGroupName_1",
			"name" : "btnGroupName_1",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"groupName" : "myGroup"	// property 설정
		}];
		
		let template_groupName_2 = [{
			"bind" : "btnGroupName_2",
			"name" : "btnGroupName_2",
			"type" : "option",			
			"options" : [
		              { label: 'Option 4', value: 'value4' },
		              { label: 'Option 5', value: 'value5' },
		              { label: 'Option 6', value: 'value6' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"groupName" : "myGroup"	// property 설정
		}];
		
		$("#jqxFormButtons_groupName_1").jqxForm({
		  	"template" : template_groupName_1
		});
		
		$("#jqxFormButtons_groupName_2").jqxForm({
		  	"template" : template_groupName_2
		});
		
		
		// hasThreeStates
		let template_hasThreeStates = [{
			"bind" : "btnHasThreeStates",
			"name" : "btnHasThreeStates",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"hasThreeStates" : true	// property 설정
		}];
		
		$("#jqxFormButtons_hasThreeStates").jqxForm({
		  	"template" : template_hasThreeStates
		});
		
		
		// height
		let template_height= [{
			"bind" : "btnHeight",
			"name" : "btnHeight",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"height" : 50	// property 설정
		}];
		
		$("#jqxFormButtons_height").jqxForm({
		  	"template" : template_height
		});
		

		// rtl
		let template_rtl = [{
			"bind" : "btnRtl",
			"name" : "btnRtl",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "left",
			"rtl" : true	// property 설정
		}];
		
		$("#jqxFormButtons_rtl").jqxForm({
		  	"template" : template_rtl
		});
		
		
		// theme
		let template_theme = [{
			"bind" : "btnTheme",
			"name" : "btnTheme",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxFormButtons_theme").jqxForm({
		  	"template" : template_theme
		});
		
		
		// width
		let template_width = [{
			"bind" : "btnWidth",
			"name" : "btnWidth",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' },
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right",
			"width" : 150	// property 설정
		}];
		
		$("#jqxFormButtons_width").jqxForm({
		  	"template" : template_width
		});
		
		 
		/* Events */	
		// checked
		let template_btnEventCheck = [{
			"bind" : "btnEventCheck",
			"name" : "btnEventCheck",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_event_checked").jqxForm({
		  	"template" : template_btnEventCheck
		});

		// 전체 라디오 버튼 element 가져옴
		let btnEventCheck = $("#jqxFormButtons_event_checked").jqxForm("getComponentByName", "btnEventCheck");
		// template에 설정한 option들 가져옴 (각각 버튼 element)
		let options = $("#jqxFormButtons_event_checked").jqxForm("getRadioOptionsByComponent", btnEventCheck);
		
		
		for(let i = 0; i < options.length; i++) {
		    // option 객체 가져옴
		    let option = options[i];
		    
		    // evnet 설정
		    option.on("checked", function() {
			   let logTarget = $("#log_checked_" + (i + 1));
			   logTarget.html((i + 1) + "button checked trigger!");
			});		    
		}
		
		
		// change
		let template_btnEventChange = [{
			"bind" : "btnEventChange",
			"name" : "btnEventChange",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_event_change").jqxForm({
		  	"template" : template_btnEventChange
		});
		
		// 전체 라디오 버튼 element 가져옴
		let btnEventChange = $("#jqxFormButtons_event_change").jqxForm("getComponentByName", "btnEventChange");
		// template에 설정한 option들 가져옴 (각각 버튼 element)
		let optionsChange = $("#jqxFormButtons_event_change").jqxForm("getRadioOptionsByComponent", btnEventChange);
		
		for(let i = 0; i < optionsChange.length; i++) {
		    // option 객체 가져옴
		    let option = optionsChange[i];
		    
		    // evnet 설정
			option.on("change", function(event) {
				let args = event.args;
		       
				if(args) {
					let type = args.type;
					let checked = args.checked;
					
					let logTarget = $("#log_change_" + (i + 1));
					logTarget.html((i+1) + "번째 라디오버튼 상태 type : " + type + " // checked : " + checked);
			   }
			});		    
		}
		
		
		// unchecked
		let template_btnEventUnchecked = [{
			"bind" : "btnEventUnchecked",
			"name" : "btnEventUnchecked",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_event_unchecked").jqxForm({
		  	"template" : template_btnEventUnchecked
		});
		
		// 전체 라디오 버튼 element 가져옴
		let btnEventUnchecked = $("#jqxFormButtons_event_unchecked").jqxForm("getComponentByName", "btnEventUnchecked");
		// template에 설정한 option들 가져옴 (각각 버튼 element)
		let optionsUnchecked = $("#jqxFormButtons_event_unchecked").jqxForm("getRadioOptionsByComponent", btnEventUnchecked);
		
		for(let i = 0; i < optionsUnchecked.length; i++) {
		    // option 객체 가져옴
		    let option = optionsUnchecked[i];
		    
		    // evnet 설정
			option.on("unchecked", function(event) {
				$("#log_unchecked").html((i + 1) + "button unchecked trigger!");
			});		    
		}
		
		/* Methods */
		// check
		let template_method_check = [{
			"bind" : "btnMethodCheck",
			"name" : "btnMethodCheck",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_method_check").jqxForm({
		  	"template" : template_method_check,
		});
		
		$("#btnCheck").on("click", function() {
			// 전체 라디오 버튼 element 가져옴
			let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");
			// template에 설정한 option들 가져옴 (각각 버튼 element)
			let optionsCheck = $("#jqxFormButtons_method_check").jqxForm("getRadioOptionsByComponent", btnMethodCheck);
			
			optionsCheck[1].jqxRadioButton("check");
		});
		
		
		// disable
		let template_method_disable = [{
			"bind" : "btnMethodDisable",
			"name" : "btnMethodDisable",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_method_disable").jqxForm({
		  	"template" : template_method_disable,  	
		});
		
		$("#btnDisable").on("click", function() {
			// 전체 라디오 버튼 element 가져옴
			let btnMethodDisable = $("#jqxFormButtons_method_disable").jqxForm("getComponentByName", "btnMethodDisable");
			// template에 설정한 option들 가져옴 (각각 버튼 element)
			let optionsDisable = $("#jqxFormButtons_method_disable").jqxForm("getRadioOptionsByComponent", btnMethodDisable);
			
			optionsDisable[1].jqxRadioButton("disable");
		});
		
		
		// destroy
		let template_method_destroy = [{
			"bind" : "btnMethodDestroy",
			"name" : "btnMethodDestroy",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_method_destroy").jqxForm({
		  	"template" : template_method_destroy,  	
		});
		
		$("#btnDestroy").on("click", function() {
			// 전체 라디오 버튼 element 가져옴
			let btnMethodDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getComponentByName", "btnMethodDestroy");
			// template에 설정한 option들 가져옴 (각각 버튼 element)
			let optionsDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getRadioOptionsByComponent", btnMethodDestroy);
			
			optionsDestroy[1].jqxRadioButton("destroy");
		});
		
		
		// enable
		let template_method_enable = [{
			"bind" : "btnMethodEnable",
			"name" : "btnMethodEnable",
			"type" : "option",			
			"disabled" : true,
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_method_enable").jqxForm({
		  	"template" : template_method_enable,  	
		});
		
		$("#btnEnable").on("click", function() {
			// 전체 라디오 버튼 element 가져옴
			let btnMethodEnable = $("#jqxFormButtons_method_enable").jqxForm("getComponentByName", "btnMethodEnable");
			// template에 설정한 option들 가져옴 (각각 버튼 element)
			let optionsEnable = $("#jqxFormButtons_method_enable").jqxForm("getRadioOptionsByComponent", btnMethodEnable);
			
			optionsEnable[1].jqxRadioButton("enable");
		});
		
		
		// focus
		let template_method_focus = [{
			"bind" : "btnMethodFocus",
			"name" : "btnMethodFocus",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_method_focus").jqxForm({
		  	"template" : template_method_focus,  	
		});
		
		$("#btnFocus").on("click", function() {
			// 전체 라디오 버튼 element 가져옴
			let btnMethodFocus = $("#jqxFormButtons_method_focus").jqxForm("getComponentByName", "btnMethodFocus");
			// template에 설정한 option들 가져옴 (각각 버튼 element)
			let optionsFocus = $("#jqxFormButtons_method_focus").jqxForm("getRadioOptionsByComponent", btnMethodFocus);
			
			optionsFocus[1].jqxRadioButton("focus");
		});
		
		
		// render
		let template_method_render = [{
			"bind" : "btnMethodRender",
			"name" : "btnMethodRender",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_method_render").jqxForm({
		  	"template" : template_method_render,  	
		});
		
		$("#btnRender").on("click", function() {
			// 전체 라디오 버튼 element 가져옴
			let btnMethodRender = $("#jqxFormButtons_method_render").jqxForm("getComponentByName", "btnMethodRender");
			// template에 설정한 option들 가져옴 (각각 버튼 element)
			let optionsRender = $("#jqxFormButtons_method_render").jqxForm("getRadioOptionsByComponent", btnMethodRender);
			
			optionsRender[1].jqxRadioButton("render");
		});
		
		
		// uncheck
		let template_method_uncheck = [{
			"bind" : "btnMethodUncheck",
			"name" : "btnMethodUncheck",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];
		
		$("#jqxFormButtons_method_uncheck").jqxForm({
		  	"template" : template_method_uncheck,  	
		});
		
		let btnMethodUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getComponentByName", "btnMethodUncheck");
		// template에 설정한 option들 가져옴 (각각 버튼 element)
		let optionsUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getRadioOptionsByComponent", btnMethodUncheck);
		
		// 기본 체크설정
		optionsUncheck[1].jqxRadioButton("check");
		
		$("#btnUncheck").on("click", function() {
			optionsUncheck[1].jqxRadioButton("uncheck");
		});

		
		// val
		let template_method_val = [{
			"bind" : "btnMethodVal",
			"name" : "btnMethodVal",
			"type" : "option",			
			"options" : [
		              { label: 'Option 1', value: 'value1' },
		              { label: 'Option 2', value: 'value2' },
		              { label: 'Option 3', value: 'value3' }
		          ],
			"optionslayout" : "horizontal",
			"labelPosition" : "right"
		}];

		$("#jqxFormButtons_method_val").jqxForm({
		  	"template" : template_method_val	
		});

		// 전체 라디오 버튼 element 가져옴
		let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
		// template에 설정한 option들 가져옴 (각각 버튼 element)
		let optionsVal = $("#jqxFormButtons_method_val").jqxForm("getRadioOptionsByComponent", btnMethodVal);
		 
		$("#btnVal").on("click", function() {			
			// Set the value
			optionsVal[1].jqxRadioButton("val", true);
			// Set the value using jQuery
			optionsVal[1].val(true);
			
			// Get the value
			let myVal1 = optionsVal[1].jqxRadioButton("val");
			// Get the value using jQuery
			let myVal2 = optionsVal[1].val();
			
			alert(myVal1 + "//" +  myVal2);;
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"animationShowDelay" : 1000	// property 설정
}];

$("#jqxFormButtons_animationShowDelay").jqxForm({
  	"template" : template_animationShowDelay
});

// case 2 : element에 property 설정
let btnAnimationShowDelay = $("#jqxFormButtons_animationShowDelay").jqxForm("getComponentByName", "btnAnimationShowDelay");
btnAnimationShowDelay.jqxRadioButton("animationShowDelay", 1000);


/* Get Property */
let btnAnimationShowDelay = $("#jqxFormButtons_animationShowDelay").jqxForm("getComponentByName", "btnAnimationShowDelay");
let animationShowDelay = btnAnimataionShowDelay.jqxRadioButton("animationShowDelay"); 
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
	"bind" : "btnAnimataionHideDelay",
	"name" : "btnAnimataionHideDelay",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"animationHideDelay" : 1000	// property 설정
}];

$("#jqxFormButtons_animationHideDelay").jqxForm({
  	"template" : template_animationHideDelay
});

// case 2 : element에 property 설정
let btnAnimataionHideDelay = $("#jqxFormButtons_animationHideDelay").jqxForm("getComponentByName", "btnAnimataionHideDelay");
btnAnimataionHideDelay.jqxRadioButton("animationHideDelay", 1000);


/* Get Property */
let btnAnimataionHideDelay = $("#jqxFormButtons_animationHideDelay").jqxForm("getComponentByName", "btnAnimataionHideDelay");
let animationHideDelay = btnAnimataionHideDelay.jqxRadioButton("animationHideDelay"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- boxSize -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">boxSize</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"16px"
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
						<p>버튼의 크기를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_boxSize = [{
	"bind" : "btnBoxSize",
	"name" : "btnBoxSize",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"boxSize" : "20px"	// property 설정
}];

$("#jqxFormButtons_boxSize").jqxForm({
  	"template" : template_boxSize
});

// case 2 : element에 property 설정
let btnBoxSize = $("#jqxFormButtons_boxSize").jqxForm("getComponentByName", "btnBoxSize");
btnBoxSize.jqxRadioButton("boxSize", "20px");


/* Get Property */
let btnBoxSize = $("#jqxFormButtons_boxSize").jqxForm("getComponentByName", "btnBoxSize");
let boxSize = btnBoxSize.jqxRadioButton("boxSize"); 
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
						<p>버튼의 체크상태를 설정하거나 가져옵니다.</p>
						<p>options이 여러개인 경우 마지막 버튼이 체크됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_checked = [{
	"bind" : "btnChecked",
	"name" : "btnChecked",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"checked" : true	// property 설정
}];

$("#jqxFormButtons_checked").jqxForm({
  	"template" : template_checked
});

// case 2 : element에 property 설정
let btnChecked = $("#jqxFormButtons_checked").jqxForm("getComponentByName", "btnChecked");
btnChecked.jqxRadioButton("checked", true);


/* Get Property */
let btnChecked = $("#jqxFormButtons_checked").jqxForm("getComponentByName", "btnChecked");
let checked = btnChecked.jqxRadioButton("checked"); 
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
						<p>버튼을 비활성화하는 속성을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_disabled = [{
	"bind" : "btnDisabled",
	"name" : "btnDisabled",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"disabled" : true	// property 설정
}];

$("#jqxFormButtons_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
btnDisabled.jqxRadioButton("disabled", true);


/* Get Property */
let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
let disabled = btnDisabled.jqxRadioButton("disabled"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableContainerClick -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableContainerClick - TODO: 기능 점검</span>
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
						<p>내용 클릭시 버튼선택한 효과가 나타나도록 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_enableContainerClick = [{
	"bind" : "btnEnableContainerClick",
	"name" : "btnEnableContainerClick",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"enableContainerClick" : false	// property 설정
}];

$("#jqxFormButtons_enableContainerClick").jqxForm({
  	"template" : template_enableContainerClick
});

// case 2 : element에 property 설정
let btnEnableContainerClick = $("#jqxFormButtons_enableContainerClick").jqxForm("getComponentByName", "btnEnableContainerClick");
btnEnableContainerClick.jqxRadioButton("enableContainerClick", false);


/* Get Property */
let btnEnableContainerClick = $("#jqxFormButtons_enableContainerClick").jqxForm("getComponentByName", "btnEnableContainerClick");
let enableContainerClick = btnEnableContainerClick.jqxRadioButton("enableContainerClick"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- groupName -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">groupName</span>
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
						<div id="jqxFormButtons_groupName_1"></div>
						<div id="jqxFormButtons_groupName_2"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 그룹명을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_groupName_1 = [{
	"bind" : "btnGroupName_1",
	"name" : "btnGroupName_1",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"groupName" : "myGroup"	// property 설정
}];

let template_groupName_2 = [{
	"bind" : "btnGroupName_2",
	"name" : "btnGroupName_2",
	"type" : "option",			
	"options" : [
              { label: 'Option 4', value: 'value4' },
              { label: 'Option 5', value: 'value5' },
              { label: 'Option 6', value: 'value6' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"groupName" : "myGroup"	// property 설정
}];

$("#jqxFormButtons_groupName_1").jqxForm({
  	"template" : template_groupName_1
});

$("#jqxFormButtons_groupName_2").jqxForm({
  	"template" : template_groupName_2
});

// case 2 : element에 property 설정
let btnGroupName = $("#jqxFormButtons_groupName_1").jqxForm("getComponentByName", "btnGroupName_1");
btnGroupName.jqxRadioButton("enableContainerClick", false);


/* Get Property */
let btnGroupName = $("#jqxFormButtons_groupName_1").jqxForm("getComponentByName", "btnGroupName_1");
let groupName = btnGroupName.jqxRadioButton("groupName"); 
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
						<p>버튼의 3가지 상태를 설정하거나 가져옵니다.</p>
						<p>checked, unchecked, indeterminate</p>
						<p>미사용 : 라디오 버튼에서는 사용되지 않습니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_hasThreeStates = [{
	"bind" : "btnHasThreeStates",
	"name" : "btnHasThreeStates",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"hasThreeStates" : true	// property 설정
}];

$("#jqxFormButtons_hasThreeStates").jqxForm({
  	"template" : template_hasThreeStates
});

// case 2 : element에 property 설정
let btnHasThreeStates = $("#jqxFormButtons_hasThreeStates").jqxForm("getComponentByName", "btnHasThreeStates");
btnHasThreeStates.jqxRadioButton("hasThreeStates", false);


/* Get Property */
let btnHasThreeStates = $("#jqxFormButtons_hasThreeStates").jqxForm("getComponentByName", "btnHasThreeStates");
let hasThreeStates = btnHasThreeStates.jqxRadioButton("hasThreeStates"); 
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
					null
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"height" : 50	// property 설정
}];

$("#jqxFormButtons_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
btnHeight.jqxRadioButton("height", 50);


/* Get Property */
let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
let height = btnHeight.jqxRadioButton("height"); 
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
						<p>미사용 : "labelPosition" 속성으로 라벨위치를 변경합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_rtl = [{
	"bind" : "btnRtl",
	"name" : "btnRtl",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"rtl" : true	// property 설정
}];

$("#jqxFormButtons_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let btnRtl = $("#jqxFormButtons_rtl").jqxForm("getComponentByName", "btnRtl");
btnRtl.jqxRadioButton("rtl", true);


/* Get Property */
let btnRtl = $("#jqxFormButtons_rtl").jqxForm("getComponentByName", "btnRtl");
let rtl = btnRtl.jqxRadioButton("rtl"); 
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
let template_theme = [{
	"bind" : "btnTheme",
	"name" : "btnTheme",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"theme" : "energyblue"	// property 설정
}];

$("#jqxFormButtons_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let btnTheme = $("#jqxFormButtons_theme").jqxForm("getComponentByName", "btnTheme");
btnTheme.jqxRadioButton("theme", "energyblue");


/* Get Property */
let btnTheme = $("#jqxFormButtons_theme").jqxForm("getComponentByName", "btnTheme");
let theme = btnTheme.jqxRadioButton("theme"); 
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
					null
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' },
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right",
	"width" : 200	// property 설정
}];

$("#jqxFormButtons_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
btnWidth.jqxRadioButton("width", 200);


/* Get Property */
let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
let width = btnWidth.jqxRadioButton("width"); 
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
						<div id="log_checked_1"></div>
						<div id="log_checked_2"></div>
						<div id="log_checked_3"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>라디오 버튼이 체크된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_btnEventCheck = [{
	"bind" : "btnEventCheck",
	"name" : "btnEventCheck",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_event_checked").jqxForm({
  	"template" : template_btnEventCheck
});

// 전체 라디오 버튼 element 가져옴
let btnEventCheck = $("#jqxFormButtons_event_checked").jqxForm("getComponentByName", "btnEventCheck");
// template에 설정한 option들 가져옴 (각각 버튼 element)
let options = $("#jqxFormButtons_event_checked").jqxForm("getRadioOptionsByComponent", btnEventCheck);

for(let i = 0; i < options.length; i++) {
    // option 객체 가져옴
    let option = options[i];
    
    // evnet 설정
    option.on("checked", function() {
	   let logTarget = $("#log_checked_" + (i + 1));
	   logTarget.html((i + 1) + "button checked trigger!");
	});		    
}
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
						<div id="log_change_1"></div>
						<div id="log_change_2"></div>
						<div id="log_change_3"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>라디오 버튼이 체크값이 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_btnEventChange = [{
	"bind" : "btnEventChange",
	"name" : "btnEventChange",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_event_change").jqxForm({
  	"template" : template_btnEventChange
});

// 전체 라디오 버튼 element 가져옴
let btnEventChange = $("#jqxFormButtons_event_change").jqxForm("getComponentByName", "btnEventChange");
// template에 설정한 option들 가져옴 (각각 버튼 element)
let options = $("#jqxFormButtons_event_change").jqxForm("getRadioOptionsByComponent", btnEventChange);

for(let i = 0; i < options.length; i++) {
    // option 객체 가져옴
    let option = options[i];
    
    // evnet 설정
	option.on("change", function(event) {
		let args = event.args;
       
		if(args) {
			let type = args.type;
			let checked = args.checked;
			
			let logTarget = $("#log_change_" + (i + 1));
			logTarget.html((i+1) + "번째 라디오버튼 상태 type : " + type + " // checked : " + checked);
	   }
	});		    
}
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
						<div id="log_unchecked"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>라디오 버튼이 체크값이 해제된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_btnEventUnchecked = [{
	"bind" : "btnEventUnchecked",
	"name" : "btnEventUnchecked",
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_event_unchecked").jqxForm({
  	"template" : template_btnEventUnchecked
});

// 전체 라디오 버튼 element 가져옴
let btnEventUnchecked = $("#jqxFormButtons_event_unchecked").jqxForm("getComponentByName", "btnEventUnchecked");
// template에 설정한 option들 가져옴 (각각 버튼 element)
let options = $("#jqxFormButtons_event_unchecked").jqxForm("getRadioOptionsByComponent", btnEventUnchecked);

for(let i = 0; i < optionsUnchecked.length; i++) {
    // option 객체 가져옴
    let option = optionsUnchecked[i];
    
    // evnet 설정
	option.on("unchecked", function(event) {
		$("#log_unchecked").html((i + 1) + "button unchecked trigger!");
	});		    
}
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
						<input type="button" id="btnCheck" value="2nd check" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼을 체크합니다.</p>
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_check").jqxForm({
  	"template" : template_method_check,
});

let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");
 
/* 이벤트 설정 */
$("#btnCheck").on("click", function() {
	// 전체 라디오 버튼 element 가져옴
	let btnMethodCheck = $("#jqxFormButtons_method_check").jqxForm("getComponentByName", "btnMethodCheck");
	// template에 설정한 option들 가져옴 (각각 버튼 element)
	let optionsCheck = $("#jqxFormButtons_method_check").jqxForm("getRadioOptionsByComponent", btnMethodCheck);
	
	optionsCheck[1].jqxRadioButton("check");
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
						<input type="button" id="btnDisable" value="2nd disable" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼을 비활성화합니다.</p>
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_disable").jqxForm({
  	"template" : template_method_disable,  	
});

let btnMethodDisable = $("#jqxFormButtons_method_disable").jqxForm("getComponentByName", "btnMethodDisable");
 
/* 이벤트 설정 */
$("#btnDisable").on("click", function() {
	// 전체 라디오 버튼 element 가져옴
	let btnMethodDisable = $("#jqxFormButtons_method_disable").jqxForm("getComponentByName", "btnMethodDisable");
	// template에 설정한 option들 가져옴 (각각 버튼 element)
	let optionsDisable = $("#jqxFormButtons_method_disable").jqxForm("getRadioOptionsByComponent", btnMethodDisable);
	
	optionsDisable[1].jqxRadioButton("disable");
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
						<input type="button" id="btnDestroy" value="2nd destroy" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼을 제거합니다.</p>
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_destroy").jqxForm({
  	"template" : template_method_destroy,  	
});

let btnMethodDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getComponentByName", "btnMethodDestroy");
 
/* 이벤트 설정 */
$("#btnDestroy").on("click", function() {
	// 전체 라디오 버튼 element 가져옴
	let btnMethodDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getComponentByName", "btnMethodDestroy");
	// template에 설정한 option들 가져옴 (각각 버튼 element)
	let optionsDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getRadioOptionsByComponent", btnMethodDestroy);
	
	optionsDestroy[1].jqxRadioButton("destroy");
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
						<input type="button" id="btnEnable" value="2nd enable" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼을 활성화합니다.</p>
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
	"type" : "option",
	"disabled" : true,			// 초기 비활성화설정			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_enable").jqxForm({
  	"template" : template_method_enable,  	
});

let btnMethodEnable = $("#jqxFormButtons_method_enable").jqxForm("getComponentByName", "btnMethodEnable");
 
/* 이벤트 설정 */
$("#btnEnable").on("click", function() {
	// 전체 라디오 버튼 element 가져옴
	let btnMethodEnable = $("#jqxFormButtons_method_enable").jqxForm("getComponentByName", "btnMethodEnable");
	// template에 설정한 option들 가져옴 (각각 버튼 element)
	let optionsEnable = $("#jqxFormButtons_method_enable").jqxForm("getRadioOptionsByComponent", btnMethodEnable);
	
	optionsEnable[1].jqxRadioButton("enable");
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
						<input type="button" id="btnFocus" value="2nd focus" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼에 포커스를 설정합니다.</p>
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_focus").jqxForm({
  	"template" : template_method_focus,  	
});

let btnMethodFocus = $("#jqxFormButtons_method_focus").jqxForm("getComponentByName", "btnMethodFocus");
 
/* 이벤트 설정 */
$("#btnFocus").on("click", function() {
	// 전체 라디오 버튼 element 가져옴
	let btnMethodFocus = $("#jqxFormButtons_method_focus").jqxForm("getComponentByName", "btnMethodFocus");
	// template에 설정한 option들 가져옴 (각각 버튼 element)
	let optionsFocus = $("#jqxFormButtons_method_focus").jqxForm("getRadioOptionsByComponent", btnMethodFocus);
	
	optionsFocus[1].jqxRadioButton("focus");
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
						<input type="button" id="btnRender" value="2nd render" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼을 렌더링합니다.</p>
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_render").jqxForm({
  	"template" : template_method_render,  	
});

let btnMethodRender = $("#jqxFormButtons_method_render").jqxForm("getComponentByName", "btnMethodRender");
 
/* 이벤트 설정 */
$("#btnRender").on("click", function() {
	// 전체 라디오 버튼 element 가져옴
	let btnMethodRender = $("#jqxFormButtons_method_render").jqxForm("getComponentByName", "btnMethodRender");
	// template에 설정한 option들 가져옴 (각각 버튼 element)
	let optionsRender = $("#jqxFormButtons_method_render").jqxForm("getRadioOptionsByComponent", btnMethodRender);
	
	optionsRender[1].jqxRadioButton("render");
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
						<input type="button" id="btnUncheck" value="2nd uncheck" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼을 체크해제합니다.</p>
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_uncheck").jqxForm({
  	"template" : template_method_uncheck,  	
});

let btnMethodUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getComponentByName", "btnMethodUncheck");
 
/* 이벤트 설정 */
$("#btnUncheck").on("click", function() {
	// 전체 라디오 버튼 element 가져옴
	let btnMethodUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getComponentByName", "btnMethodUncheck");
	// template에 설정한 option들 가져옴 (각각 버튼 element)
	let optionsUncheck = $("#jqxFormButtons_method_uncheck").jqxForm("getRadioOptionsByComponent", btnMethodUncheck);
	
	optionsUncheck[1].jqxRadioButton("uncheck");
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
						<input type="button" id="btnVal" value="2nd val" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 버튼의 값을 설정하거나 가져옵니다.</p>
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
	"type" : "option",			
	"options" : [
              { label: 'Option 1', value: 'value1' },
              { label: 'Option 2', value: 'value2' },
              { label: 'Option 3', value: 'value3' }
          ],
	"optionslayout" : "horizontal",
	"labelPosition" : "right"
}];

$("#jqxFormButtons_method_val").jqxForm({
  	"template" : template_method_val	
});

let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
 
/* 이벤트 설정 */
$("#btnVal").on("click", function() {			
	// Set the value
	optionsVal[1].jqxRadioButton("val", true);
	// Set the value using jQuery
	optionsVal[1].val(true);
	
	// Get the value
	let myVal1 = optionsVal[1].jqxRadioButton("val");
	// Get the value using jQuery
	let myVal2 = optionsVal[1].val();
	
	alert(myVal1 + "//" +  myVal2);;
});
</code></pre>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</div>