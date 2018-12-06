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
		
		let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
		
		/* 
		let options = $("#jqxFormButtons_width").jqxForm("getRadioOptionsByComponent", btnWidth);

		
		options[1].jqxRadioButton("check");
		
		btnWidth.on("change", function(event){
		    let args = event.args;
		    
		    if(args) {
		        //alert(args.value);
		    }
		});
		
		 
		 $("#jqxFormButtons_width").on("formDataChange", function(event) {
		    let args = event.args;
		     
			if(args) {
		    	let newValue = args.value;
		    	let previousValue = args.previousValue;
		    	
		    	for(var i in newValue) {
		    	    if(i === "btnWidth") {
			    	    let newInputValue = newValue[i];
			    	    alert(newInputValue + "//" + i);
		    	    }
		    	}
		    }
		});

		 // value 가져오는 방법
		for(let i = 0; i < options.length; i++) {
		    let option = options[i];
		    
		    //alert(JSON.stringify(option.val2()));
		    
		   	//alert(options[i].ssef());
		}
		 */

		//alert(options.length);
		/* 
		dom.on("change", function(event){
			let args = event.args;
			
			if(args) {
			   	alert("test: " + args.checked); 
			}
		});
		 */
		 
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
		// unchecked
		
		
		/* Methods */
		// check
		// disable
		// destroy
		// enable
		// focus
		// render
		// uncheck
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
  	"template" : template_animationShowDelay
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
		</tbody>
	</table>
</div>
<div id="methods">
	<h2 class="documentation-top-header">Methods - TODO:핸들러 및 option DOM처리 구현필요</h2>
	<table class="documentation-table">
	</table>
</div>