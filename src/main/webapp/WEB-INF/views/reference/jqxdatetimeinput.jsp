<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.apireference.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.bootstrap.css"/>" />

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/documentation.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdatetimeinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcalendar.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/globalize/globalize.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/globalize/globalize.culture.ko-KR.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// animationType
		let template_animationType = [{
		   	"bind" : "txtAnimationType",
		    "name" : "txtAnimationType",
			"type" : "datetime",	
			"width" : "250px",	
			"animationType" : "fade"
		}];
		
		$("#jqxinputForm_animationType").jqxForm({
		  	"template" : template_animationType
		});
			
		
		// allowNullDate
		let template_allowNullDate = [{
		   	"bind" : "txtAllowNullDate",
		    "name" : "txtAllowNullDate",
			"type" : "datetime",	
			"width" : "250px",	
			"allowNullDate" : false	// property 설정
		}];
		
		$("#jqxinputForm_allowNullDate").jqxForm({
		  	"template" : template_allowNullDate
		});
		
		
		// allowKeyboardDelete
		let template_allowKeyboardDelete = [{
		   	"bind" : "txtAllowKeyboardDelete",
		    "name" : "txtAllowKeyboardDelete",
			"type" : "datetime",	
			"width" : "250px",	
			"allowKeyboardDelete" : false	// property 설정
		}];
		
		$("#jqxinputForm_allowKeyboardDelete").jqxForm({
		  	"template" : template_allowKeyboardDelete
		});
		

		// clearString
		let template_clearString = [{
		   	"bind" : "txtClearString",
		    "name" : "txtClearString",
			"type" : "datetime",	
			"width" : "250px",	
			"showFooter" : true, 	// 하단 푸터 출력
			"clearString" : "초기화"	// property 설정
		}];
		
		$("#jqxinputForm_clearString").jqxForm({
		  	"template" : template_clearString
		});

		
		// culture
		let template_culture = [{
		   	"bind" : "txtCulture",
		    "name" : "txtCulture",
			"type" : "datetime",	
			"width" : "250px",	
			"culture" : "ko-KR"	// property 설정
		}];
		
		$("#jqxinputForm_culture").jqxForm({
		  	"template" : template_culture
		});
		
		
		// closeDelay
		let template_closeDelay = [{
		   	"bind" : "txtCloseDelay",
		    "name" : "txtCloseDelay",
			"type" : "datetime",	
			"width" : "250px",
			"closeDelay" : 1000	// property 설정	
		}];
		
		$("#jqxinputForm_closeDelay").jqxForm({
		  	"template" : template_closeDelay
		});
		
		
		// closeCalendarAfterSelection
		let template_closeCalendarAfterSelection = [{
		   	"bind" : "txtCloseCalendarAfterSelection",
		    "name" : "txtCloseCalendarAfterSelection",
			"type" : "datetime",	
			"width" : "250px",
			"closeCalendarAfterSelection" : false
		}];
		
		$("#jqxinputForm_closeCalendarAfterSelection").jqxForm({
		  	"template" : template_closeCalendarAfterSelection
		});
		

		// dropDownHorizontalAlignment
		let template_dropDownHorizontalAlignment = [{
		   	"bind" : "txtDropDownHorizontalAlignment",
		    "name" : "txtDropDownHorizontalAlignment",
			"type" : "datetime",	
			"width" : "250px",
			"dropDownHorizontalAlignment" : "right"
		}];
		
		$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm({
		  	"template" : template_dropDownHorizontalAlignment
		});
		
		
		// dropDownVerticalAlignment
		let template_dropDownVerticalAlignment = [{
		   	"bind" : "txtDropDownVerticalAlignment",
		    "name" : "txtDropDownVerticalAlignment",
			"type" : "datetime",	
			"width" : "250px",
			"dropDownVerticalAlignment" : "top"
		}];
		
		$("#jqxinputForm_dropDownVerticalAlignment").jqxForm({
		  	"template" : template_dropDownVerticalAlignment
		});
		

		// disabled
		let template_disabled= [{
		   	"bind" : "txtDisabled",
		    "name" : "txtDisabled",
			"type" : "datetime",	
			"width" : "250px",
			"disabled" : true	// property 설정
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		

		// enableBrowserBoundsDetection
		let template_enableBrowserBoundsDetection = [{
		   	"bind" : "txtEnableBrowserBoundsDetection",
		    "name" : "txtEnableBrowserBoundsDetection",
			"type" : "datetime",	
			"width" : "250px",
			"enableBrowserBoundsDetection" : true	// property 설정
		}];
		
 		$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm({
		  	"template" : template_enableBrowserBoundsDetection
		});
		
		
		// enableAbsoluteSelection
		let template_enableAbsoluteSelection = [{
		   	"bind" : "txtEnableAbsoluteSelection",
		    "name" : "txtEnableAbsoluteSelection",
			"type" : "datetime",	
			"width" : "250px",
			"enableAbsoluteSelection" : true	// property 설정
		}];
		
		$("#jqxinputForm_enableAbsoluteSelection").jqxForm({
		  	"template" : template_enableAbsoluteSelection
		});
		
		
		// firstDayOfWeek
		let template_firstDayOfWeek = [{
		   	"bind" : "txtFirstDayOfWeek",
		    "name" : "txtFirstDayOfWeek",
			"type" : "datetime",	
			"width" : "250px",
			"firstDayOfWeek" : 1	// property 설정 (월화수목금토일 순서)
		}];
		
		$("#jqxinputForm_firstDayOfWeek").jqxForm({
		  	"template" : template_firstDayOfWeek
		});
		
		
		// formatString
		let template_formatString = [{
		   	"bind" : "txtFormatString",
		    "name" : "txtFormatString",
			"type" : "datetime",	
			"width" : "250px",
			"formatString" : "yyyy-MM-dd hh:mm:ss"	// property 설정
		}];
		
		$("#jqxinputForm_formatString").jqxForm({
		  	"template" : template_formatString
		});
		

		// height
		let template_height = [{
		   	"bind" : "txtHeight",
		    "name" : "txtHeight",
			"type" : "datetime",	
			"width" : "250px",
			"height" : 40	// property 설정
		}];
		
		$("#jqxinputForm_height").jqxForm({
		  	"template" : template_height
		});
		

		// min
		let template_min = [{
		   	"bind" : "txtMin",
		    "name" : "txtMin",
			"type" : "datetime",	
			"width" : "250px",
			"min" : new Date(2018, 0, 1)	// property 설정
		}];
		
		$("#jqxinputForm_min").jqxForm({
		  	"template" : template_min
		});
		
		
		// max
		let template_max = [{
		   	"bind" : "txtMax",
		    "name" : "txtMax",
			"type" : "datetime",	
			"width" : "250px",
			"max" : new Date(2018, 0, 1)	// property 설정
		}];
		
		$("#jqxinputForm_max").jqxForm({
		  	"template" : template_max
		});
		

		// openDelay
		// placeHolder
		// popupZIndex
		// rtl
		// readonly
		// showFooter
		// selectionMode
		// showWeekNumbers
		// showTimeButton
		// showCalendarButton
		// theme
		// template
		// textAlign
		// todayString
		// value
		// width
		
		
		/* Events */
		// change
		// close
		// open
		// textchanged
		// valueChanged
		
		
		/* Methods */
		// close
		// destroy
		// focus
		// getRange
		// getText
		// getDate
		// getMaxDate
		// getMinDate
		// open
		// setRange
		// setMinDate
		// setMaxDate
		// setDate
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
			<!-- animationType -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationType</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"slide"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_animationType"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>애니메이션을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'fade'</p>
						<p>'slide'</p>
						<p>'none'</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_animationType = [{
   	"bind" : "txtAnimationType",
    "name" : "txtAnimationType",
	"type" : "datetime",	
	"width" : "250px",	
	"animationType" : "fade"	// property 설정
}];

$("#jqxinputForm_animationType").jqxForm({
  	"template" : template_animationType
});

// case 2 : element에 property 설정
let txtAnimationType = 
	$("#jqxinputForm_animationType").jqxForm("getComponentByName", "txtAnimationType");
txtAnimationType.jqxDateTimeInput("animationType", "none");


/* Get Property */
let txtAnimationType = 
	$("#jqxinputForm_animationType").jqxForm("getComponentByName", "txtAnimationType");
let animationType = txtAnimationType.jqxDateTimeInput("animationType"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- allowNullDate -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">allowNullDate</span>
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
						<div id="jqxinputForm_allowNullDate"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>값에 null을 허용하거나 허용하는지 여부를 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_allowNullDate = [{
   	"bind" : "txtAllowNullDate",
    "name" : "txtAllowNullDate",
	"type" : "datetime",	
	"width" : "250px",	
	"allowNullDate" : false	// property 설정
}];

$("#jqxinputForm_allowNullDate").jqxForm({
  	"template" : template_allowNullDate
});

// case 2 : element에 property 설정
let txtAllowNullDate = 
	$("#jqxinputForm_allowNullDate").jqxForm("getComponentByName", "txtAllowNullDate");
txtAllowNullDate.jqxDateTimeInput("allowNullDate", true);


/* Get Property */
let txtAllowNullDate = 
	$("#jqxinputForm_allowNullDate").jqxForm("getComponentByName", "txtAllowNullDate");
let allowNullDate = txtAllowNullDate.jqxDateTimeInput("allowNullDate"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- allowKeyboardDelete -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">allowKeyboardDelete</span>
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
						<div id="jqxinputForm_allowKeyboardDelete"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>'del' 키로 전체값을 삭제하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_allowKeyboardDelete = [{
   	"bind" : "txtAllowKeyboardDelete",
    "name" : "txtAllowKeyboardDelete",
	"type" : "datetime",	
	"width" : "250px",	
	"allowKeyboardDelete" : false	// property 설정
}];

$("#jqxinputForm_allowKeyboardDelete").jqxForm({
  	"template" : template_allowKeyboardDelete
});

// case 2 : element에 property 설정
let txtAllowKeyboardDelete = 
	$("#jqxinputForm_allowKeyboardDelete").jqxForm("getComponentByName", "txtAllowKeyboardDelete");
txtAllowKeyboardDelete.jqxDateTimeInput("allowKeyboardDelete", true);


/* Get Property */
let txtAllowKeyboardDelete = 
	$("#jqxinputForm_allowKeyboardDelete").jqxForm("getComponentByName", "txtAllowKeyboardDelete");
let allowKeyboardDelete = txtAllowKeyboardDelete.jqxDateTimeInput("allowKeyboardDelete"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- clearString -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">clearString</span>
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
						<div id="jqxinputForm_clearString"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calandar 하단에 초기화 기능을 수행하는 'Clear'문자열을 설정하거나 가져옵니다.</p>
						<p>위 기능을 사용하려면 'showFooter' 프로퍼티가 true여야 합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_clearString = [{
   	"bind" : "txtClearString",
    "name" : "txtClearString",
	"type" : "datetime",	
	"width" : "250px",	
	"showFooter" : true, 	// 하단 푸터 출력
	"clearString" : "초기화"	// property 설정
}];

$("#jqxinputForm_clearString").jqxForm({
  	"template" : template_clearString
});

// case 2 : element에 property 설정
let txtClearString = 
	$("#jqxinputForm_clearString").jqxForm("getComponentByName", "txtClearString");
txtClearString.jqxDateTimeInput("clearString", "new text");


/* Get Property */
let txtClearString = 
	$("#jqxinputForm_clearString").jqxForm("getComponentByName", "txtClearString");
let clearString = txtClearString.jqxDateTimeInput("clearString"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- culture -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">culture</span>
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
						<div id="jqxinputForm_culture"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>jqxDateTimeInput의 언어셋을 설정하거나 가져옵니다. cultureInfo의 name 속성을 사용합니다.</p>
						<p>위 기능을 사용하려면 '해당 언어셋.js' 파일이 필요합니다.(ex : globalize/globalize.culture.ko-KR.js)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_culture = [{
   	"bind" : "txtCulture",
    "name" : "txtCulture",
	"type" : "datetime",	
	"width" : "250px",	
	"culture" : "ko-KR"	// property 설정
}];

$("#jqxinputForm_culture").jqxForm({
  	"template" : template_culture
});

// case 2 : element에 property 설정
let txtCulture = 
	$("#jqxinputForm_culture").jqxForm("getComponentByName", "txtCulture");
txtCulture.jqxDateTimeInput("culture", "en-US");


/* Get Property */
let txtCulture = 
	$("#jqxinputForm_culture").jqxForm("getComponentByName", "txtCulture");
let culture = txtCulture.jqxDateTimeInput("culture"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- closeDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">closeDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					400
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_closeDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar가 숨겨지는 애니메이션 속도를 설정하거나 가져옵니다. (ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_closeDelay = [{
   	"bind" : "txtCloseDelay",
    "name" : "txtCloseDelay",
	"type" : "datetime",	
	"width" : "250px",
	"closeDelay" : 1000	// property 설정	
}];

$("#jqxinputForm_closeDelay").jqxForm({
  	"template" : template_closeDelay
});

// case 2 : element에 property 설정
let txtCloseDelay = 
	$("#jqxinputForm_closeDelay").jqxForm("getComponentByName", "txtCloseDelay");
txtCloseDelay.jqxDateTimeInput("closeDelay", "2000");


/* Get Property */
let txtCloseDelay = 
	$("#jqxinputForm_closeDelay").jqxForm("getComponentByName", "txtCloseDelay");
let closeDelay = txtCloseDelay.jqxDateTimeInput("closeDelay"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- closeCalendarAfterSelection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">closeCalendarAfterSelection</span>
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
						<div id="jqxinputForm_closeCalendarAfterSelection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar에서 값 선택 후 popup이 종료되는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_closeCalendarAfterSelection = [{
   	"bind" : "txtCloseCalendarAfterSelection",
    "name" : "txtCloseCalendarAfterSelection",
	"type" : "datetime",	
	"width" : "250px",
	"closeCalendarAfterSelection" : false	// property 설정
}];

$("#jqxinputForm_closeCalendarAfterSelection").jqxForm({
  	"template" : template_closeCalendarAfterSelection
});

// case 2 : element에 property 설정
let txtCloseCalendarAfterSelection = 
	$("#jqxinputForm_closeCalendarAfterSelection").jqxForm("getComponentByName", "txtCloseCalendarAfterSelection");
txtCloseCalendarAfterSelection.jqxDateTimeInput("closeCalendarAfterSelection", true);


/* Get Property */
let txtCloseCalendarAfterSelection = 
	$("#jqxinputForm_closeCalendarAfterSelection").jqxForm("getComponentByName", "txtCloseCalendarAfterSelection");
let closeCalendarAfterSelection = txtCloseCalendarAfterSelection.jqxDateTimeInput("closeCalendarAfterSelection"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- dropDownHorizontalAlignment -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownHorizontalAlignment</span>
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
						<div id="jqxinputForm_dropDownHorizontalAlignment"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar에서 Dropdown의 수평 정렬 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'left'</p>
						<p>'right'</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_dropDownHorizontalAlignment = [{
   	"bind" : "txtDropDownHorizontalAlignment",
    "name" : "txtDropDownHorizontalAlignment",
	"type" : "datetime",	
	"width" : "250px",
	"dropDownHorizontalAlignment" : "right"	// property 설정
}];

$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm({
  	"template" : template_dropDownHorizontalAlignment
});

// case 2 : element에 property 설정
let txtDropDownHorizontalAlignment = 
	$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm("getComponentByName", "txtDropDownHorizontalAlignment");
txtDropDownHorizontalAlignment.jqxDateTimeInput("dropDownHorizontalAlignment", "left");


/* Get Property */
let txtDropDownHorizontalAlignment = 
	$("#jqxinputForm_dropDownHorizontalAlignment").jqxForm("getComponentByName", "txtDropDownHorizontalAlignment");
let dropDownHorizontalAlignment = txtDropDownHorizontalAlignment.jqxDateTimeInput("dropDownHorizontalAlignment"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- dropDownVerticalAlignment -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownVerticalAlignment</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"bottom"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_dropDownVerticalAlignment"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar에서 Dropdown의 수직 정렬 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'top'</p>
						<p>'bottom'</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_dropDownVerticalAlignment = [{
   	"bind" : "txtDropDownVerticalAlignment",
    "name" : "txtDropDownVerticalAlignment",
	"type" : "datetime",	
	"width" : "250px",
	"dropDownVerticalAlignment" : "top"	// property 설정
}];

$("#jqxinputForm_dropDownVerticalAlignment").jqxForm({
  	"template" : template_dropDownVerticalAlignment
});

// case 2 : element에 property 설정
let txtDropDownVerticalAlignment = 
	$("#jqxinputForm_dropDownVerticalAlignment").jqxForm("getComponentByName", "txtDropDownVerticalAlignment");
txtDropDownVerticalAlignment.jqxDateTimeInput("dropDownVerticalAlignment", "bottom");


/* Get Property */
let txtDropDownVerticalAlignment = 
	$("#jqxinputForm_dropDownVerticalAlignment").jqxForm("getComponentByName", "txtDropDownVerticalAlignment");
let dropDownVerticalAlignment = txtDropDownVerticalAlignment.jqxDateTimeInput("dropDownVerticalAlignment"); 
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
	"type" : "datetime",	
	"width" : "250px",
	"disabled" : true	// property 설정
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = 
	$("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxDateTimeInput("disabled", false);


/* Get Property */
let txtDisabled = 
	$("#jqxinputForm_disabled").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxDateTimeInput("disabled"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- enableBrowserBoundsDetection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableBrowserBoundsDetection</span>
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
						<div id="jqxinputForm_enableBrowserBoundsDetection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯 아래에 충분한 공간이 없는 경우 Calendar popup이 위에 열리는 프로퍼티를 설정하거나 가져옵니다. </p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_enableBrowserBoundsDetection = [{
   	"bind" : "txtEnableBrowserBoundsDetection",
    "name" : "txtEnableBrowserBoundsDetection",
	"type" : "datetime",	
	"width" : "250px",
	"enableBrowserBoundsDetection" : true	// property 설정
}];

$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm({
  	"template" : template_enableBrowserBoundsDetection
});

// case 2 : element에 property 설정
let txtEnableBrowserBoundsDetection = 
	$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm("getComponentByName", "txtEnableBrowserBoundsDetection");
txtEnableBrowserBoundsDetection.jqxDateTimeInput("enableBrowserBoundsDetection", false);


/* Get Property */
let txtEnableBrowserBoundsDetection = 
	$("#jqxinputForm_enableBrowserBoundsDetection").jqxForm("getComponentByName", "txtEnableBrowserBoundsDetection");
let enableBrowserBoundsDetection = 
	txtEnableBrowserBoundsDetection.jqxDateTimeInput("enableBrowserBoundsDetection"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- enableAbsoluteSelection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableAbsoluteSelection</span>
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
						<div id="jqxinputForm_enableAbsoluteSelection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯에 입력시 1개 텍스트씩 선택되도록 하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_enableAbsoluteSelection = [{
   	"bind" : "txtEnableAbsoluteSelection",
    "name" : "txtEnableAbsoluteSelection",
	"type" : "datetime",	
	"width" : "250px",
	"enableAbsoluteSelection" : true	// property 설정
}];

$("#jqxinputForm_enableAbsoluteSelection").jqxForm({
  	"template" : template_enableAbsoluteSelection
});

// case 2 : element에 property 설정
let txtEnableAbsoluteSelection = 
	$("#jqxinputForm_enableAbsoluteSelection").jqxForm("getComponentByName", "txtEnableAbsoluteSelection");
txtEnableAbsoluteSelection.jqxDateTimeInput("enableAbsoluteSelection", false);


/* Get Property */
let txtEnableAbsoluteSelection = 
	$("#jqxinputForm_enableAbsoluteSelection").jqxForm("getComponentByName", "txtEnableAbsoluteSelection");
let enableAbsoluteSelection = 
	txtEnableAbsoluteSelection.jqxDateTimeInput("enableAbsoluteSelection"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- firstDayOfWeek -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">firstDayOfWeek</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					0
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_firstDayOfWeek"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>Calendar popup의 컬럼 순서를 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<p>기본값으로 일요일(0)을 처음컬럼으로 설정합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_firstDayOfWeek = [{
   	"bind" : "txtFirstDayOfWeek",
    "name" : "txtFirstDayOfWeek",
	"type" : "datetime",	
	"width" : "250px",
	"firstDayOfWeek" : 1	// property 설정
}];

$("#jqxinputForm_firstDayOfWeek").jqxForm({
  	"template" : template_firstDayOfWeek
});

// case 2 : element에 property 설정
let txtFirstDayOfWeek = 
	$("#jqxinputForm_firstDayOfWeek").jqxForm("getComponentByName", "txtFirstDayOfWeek");
txtFirstDayOfWeek.jqxDateTimeInput("firstDayOfWeek", false);


/* Get Property */
let txtFirstDayOfWeek = 
	$("#jqxinputForm_firstDayOfWeek").jqxForm("getComponentByName", "txtFirstDayOfWeek");
let firstDayOfWeek = 
	txtFirstDayOfWeek.jqxDateTimeInput("firstDayOfWeek"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- formatString -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">formatString</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"dd/MM/yyyy"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_formatString"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>date time의 포맷을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>'d'		- 일 표기 (1자리)</p>
						<p>'dd'		- 일 표기 (2자리)</p>
						<p>'ddd'	- 요일 표기 (약어명)</p>
						<p>'dddd'	- 요일 표기 (전체명)</p>
						<p>'h'		- 시 표기 1 ~12</p>
						<p>'hh'		- 시 표기 01 ~ 12</p>
						<p>'H'		- 시 표기 0 ~ 23</p>
						<p>'HH'		- 시 표기 00 ~ 23</p>
						<p>'m'		- 분 표기 0 ~ 59</p>
						<p>'mm'		- 분 표기 00 ~ 59</p>
						<p>'M'		- 월 표기 1 ~ 12</p>
						<p>'MM'		- 월 표기 01 ~ 12</p>
						<p>'MMM'	- 월 표기 (약어명)</p>
						<p>'MMMM'	- 월 표기 (전체명)</p>
						<p>'s'		- 초 표기 0 ~ 59</p>
						<p>'ss'		- 초 표기 00 ~ 59</p>
						<p>'t'		- 정오표기 A/M</p>
						<p>'tt'		- 정오표기 AM/PM</p>
						<p>'y'		- 년도 표기 0 ~ 99</p>
						<p>'yy'		- 년도 표기 00 ~ 99</p>
						<p>'yyy'	- 년도 표기 (3자리)</p>
						<p>'yyyy'	- 년도 표기 (4자리)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_formatString = [{
   	"bind" : "txtFormatString",
    "name" : "txtFormatString",
	"type" : "datetime",	
	"width" : "250px",
	"formatString" : "yyyy-MM-dd hh:mm:ss"	// property 설정
}];

$("#jqxinputForm_formatString").jqxForm({
  	"template" : template_formatString
});

// case 2 : element에 property 설정
let txtFormatString = $("#jqxinputForm_formatString").jqxForm("getComponentByName", "txtFormatString");
txtFormatString.jqxDateTimeInput("formatString", "dd");


/* Get Property */
let txtFormatString = 
	$("#jqxinputForm_formatString").jqxForm("getComponentByName", "txtFormatString");
let formatString = txtFormatString.jqxDateTimeInput("formatString"); 
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
						<p>위젯의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_height = [{
   	"bind" : "txtHeight",
    "name" : "txtHeight",
	"type" : "datetime",	
	"width" : "250px",
	"height" : 40	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxDateTimeInput("height", 50);


/* Get Property */
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxDateTimeInput("height"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- min -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">min</span>
				</td>
				<td>
					<span>Date</span>
				</td>
				<td>
					Date(1900, 1, 1)
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_min"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 최소 날짜값을 설정하거나 가져옵니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_min = [{
   	"bind" : "txtMin",
    "name" : "txtMin",
	"type" : "datetime",	
	"width" : "250px",
	"min" : new Date(2018, 0, 1)	// property 설정
}];

$("#jqxinputForm_min").jqxForm({
  	"template" : template_min
});

// case 2 : element에 property 설정
let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
txtMin.jqxDateTimeInput("min", new Date(2010, 0, 1));


/* Get Property */
let txtMin = $("#jqxinputForm_min").jqxForm("getComponentByName", "txtMin");
let min = txtMin.jqxDateTimeInput("min"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- max -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">max</span>
				</td>
				<td>
					<span>Date</span>
				</td>
				<td>
					Date(2100, 0, 1)
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_max"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 최대 날짜값을 설정하거나 가져옵니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_max = [{
   	"bind" : "txtMax",
    "name" : "txtMax",
	"type" : "datetime",	
	"width" : "250px",
	"max" : new Date(2018, 0, 1)	// property 설정
}];

$("#jqxinputForm_max").jqxForm({
  	"template" : template_max
});

// case 2 : element에 property 설정
let txtMax = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtMax");
txtMax.jqxDateTimeInput("max", new Date(2020, 0, 1));


/* Get Property */
let txtMax = $("#jqxinputForm_max").jqxForm("getComponentByName", "txtMax");
let max = txtMax.jqxDateTimeInput("max"); 
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
		</tbody>
	</table>
</div>