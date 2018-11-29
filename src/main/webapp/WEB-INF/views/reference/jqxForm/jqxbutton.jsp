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
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// disabled
		let template_disabled = [{
		   	"bind" : "btnDisabled",
		    "name" : "btnDisabled",
			"type" : "button",	
			"disabled" : true	// property 설정
		}];
		
		$("#jqxFormButtons_disabled").jqxForm({
		  	"template" : template_disabled
		});
		
		
		// height
		let template_height = [{
			"bind" : "btnHeight",
			"name" : "btnHeight",
			"type" : "button",	
			"height" : 50 // property 설정
		}];
		
		$("#jqxFormButtons_height").jqxForm({
		  	"template" : template_height
		});
		
		
		// imgSrc
		let template_imgSrc = [{
			"bind" : "btnImgSrc",
			"name" : "btnImgSrc",
			"type" : "button",
			"width" : 100,
			"height" : 50,
			"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png"	// property 설정
		}];
		
		$("#jqxFormButtons_imgSrc").jqxForm({
		  	"template" : template_imgSrc
		});
		
		
		// imgWidth
		let template_imgWidth = [{
			"bind" : "btnImgWidth",
			"name" : "btnImgWidth",
			"type" : "button",	
			"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",	
			"imgWidth" : 50	// property 설정
		}];
		
		$("#jqxFormButtons_imgWidth").jqxForm({
		  	"template" : template_imgWidth
		});
		

		// imgHeight
		let template_imgHeight = [{
			"bind" : "btnImgHeight",
			"name" : "btnImgHeight",
			"type" : "button",	
			"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",	
			"imgWidth" : 50,
			"imgHeight" : 50	// property 설정
		}];
		
		$("#jqxFormButtons_imgHeight").jqxForm({
		  	"template" : template_imgHeight
		});
		
		
		// imgPosition
		let template_imgPosition = [{
			"bind" : "btnImgPosition",
			"name" : "btnImgPosition",
			"type" : "button",
			"width" : 100,
			"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",
			"imgPosition" : "right"	// property 설정	
		}];
		
		$("#jqxFormButtons_imgPosition").jqxForm({
		  	"template" : template_imgPosition
		});

		
		// roundedCorners
		let template_roundedCorners = [{
			"bind" : "btnRoundedCorners",
			"name" : "btnRoundedCorners",
			"type" : "button",
			"roundedCorners" : "right"	// property 설정	
		}];
		
		$("#jqxFormButtons_roundedCorners").jqxForm({
		  	"template" : template_roundedCorners
		});
		

		// rtl
		let template_rtl = [{
			"bind" : "btnRtl",
			"name" : "btnRtl",
			"type" : "button",
			"width" : 100,
			"height" : 30,
			"value" : "test text",
			"rtl" : true	// property 설정
		}];
		
		$("#jqxFormButtons_rtl").jqxForm({
		  	"template" : template_rtl
		});
		
		
		// textPosition
		let template_textPosition = [{
			"bind" : "btnTextPosition",
			"name" : "btnTextPosition",
			"type" : "button",
			"width" : 100,
			"height" : 60,
			"value" : "hi",
			"textPosition" : "bottomRight"	// property 설정
		}];
		
		$("#jqxFormButtons_textPosition").jqxForm({
		  	"template" : template_textPosition
		});
		
		
		// textImageRelation
		let template_textImageRelation = [{
			"bind" : "btnTextImageRelation",
			"name" : "btnTextImageRelation",
			"type" : "button",
			"width" : 100,
			"height" : 40,
		    "imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",
		    "imgPosition" : "left",
		    "textPosition" : "left",
		    "textImageRelation" : "textAboveImage",
		}];
		
		$("#jqxFormButtons_textImageRelation").jqxForm({
		  	"template" : template_textImageRelation
		});
		
		

		// theme
		let template_theme= [{
			"bind" : "btnTheme",
			"name" : "btnTheme",
			"type" : "button",
		    "theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxFormButtons_theme").jqxForm({
		  	"template" : template_theme
		});
		
		
		// template
		let template_template = [{
			"bind" : "btnTemplate",
			"name" : "btnTemplate",
			"type" : "button",
		    "template" : "warning"	// property 설정
		}];
		
		$("#jqxFormButtons_template").jqxForm({
		  	"template" : template_template
		});
		
		
		// width
		let template_width= [{
			"bind" : "btnWidth",
			"name" : "btnWidth",
			"type" : "button",
		    "width" : 100	// property 설정
		}];
		
		$("#jqxFormButtons_width").jqxForm({
		  	"template" : template_width
		});
		

		// value
		let template_value = [{
			"bind" : "btnValue",
			"name" : "btnValue",
			"type" : "button",
		    //"value" : "Hello"	// property 설정
		}];
		
		$("#jqxFormButtons_value").jqxForm({
		  	"template" : template_value
		});
		
		// case 2 : element에 property 설정
		let btnValue = $("#jqxFormButtons_value").jqxForm("getComponentByName", "btnValue");
		btnValue.jqxButton("value", "Hello");
		
		
		/* Events */
		// click
		let template_event_click = [{
		    "bind" : "btnEventClick",
		    "name" : "btnEventClick",
			"type" : "button"	
		}];
		
		$("#jqxFormButtons_event_click").jqxForm({
		  	"template" : template_event_click
		});
		
		
		// 이벤트 설정 
		let btnEventClick = $("#jqxFormButtons_event_click").jqxForm("getComponentByName", "btnEventClick"); 
		btnEventClick.on("click", function() {
			$("#log_event_click").html("Button clicked!");
		});
		
		
		/* Methods */
		// destroy
		let template_method_destroy = [{
			"bind" : "btnMethodDestroy",
			"name" : "btnMethodDestroy",
			"type" : "button"	
		}];
		
		$("#jqxFormButtons_method_destroy").jqxForm({
		  	"template" : template_method_destroy
		});
		
		
		/* 이벤트 설정 */
		let btnMethodDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getComponentByName", "btnMethodDestroy");
		 
		$("#btnDestroy").on("click", function() {
		   	btnMethodDestroy.jqxButton("destroy");
		});
		
		
		// focus
		let template_method_focus = [{
			"bind" : "btnMethodFocus",
			"name" : "btnMethodFocus",
			"type" : "button"	
		}];
		
		$("#jqxFormButtons_method_focus").jqxForm({
		  	"template" : template_method_focus
		});
		
		
		//이벤트 설정
		let btnMethodFocus = $("#jqxFormButtons_method_focus").jqxForm("getComponentByName", "btnMethodFocus");
		 
		$("#btnFocus").on("click", function() {
		   	btnMethodFocus.jqxButton("focus");
		});
		
		
		// render
		let template_method_render = [{
			"bind" : "btnMethodRender",
			"name" : "btnMethodRender",
			"type" : "button"	
		}];
		
		$("#jqxFormButtons_method_render").jqxForm({
		  	"template" : template_method_render
		});
		
		
		// 이벤트 설정 
		let btnMethodRender = $("#jqxFormButtons_method_render").jqxForm("getComponentByName", "btnMethodRender");
		 
		$("#btnRender").on("click", function() {
		   	btnMethodRender.jqxButton("render");
		});
		
		
		// val
		let template_method_val = [{
			"bind" : "btnMethodVal",
			"name" : "btnMethodVal",
			"type" : "button"	
		}];

		$("#jqxFormButtons_method_val").jqxForm({
		  	"template" : template_method_val
		});


		// 이벤트 설정 
		let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
		 
		$("#btnVal").on("click", function() {
		    // TODO : val 대신 value 프로퍼티 사용
		   	// Set value
		   	btnMethodVal.jqxButton("value", "New text");
		   	
		   	// Set value using jQuery - TODO: 기능 수정
		   	// btnMethodVal.val("New text2");
			
		   	// Get value
		   	let val = btnMethodVal.jqxButton("value");
			alert(val);
			
		   	// Get value using jQuery
			//let val2 = btnMethodVal.val();
			
			//alert("Current value : " + val + "//" + val2);
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
						<p>위젯을 비활성화하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_disabled = [{
	"bind" : "btnDisabled",
	"name" : "btnDisabled",
	"type" : "button",	
	"disabled" : true	// property 설정
}];

$("#jqxFormButtons_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
btnDisabled.jqxButton("disabled", true);


/* Get Property */
let btnDisabled = $("#jqxFormButtons_disabled").jqxForm("getComponentByName", "btnDisabled");
let disabled = btnDisabled.jqxButton("disabled"); 
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
						<p>위젯의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_height = [{
	"bind" : "btnHeight",
	"name" : "btnHeight",
	"type" : "button",	
	"height" : 50 // property 설정
}];

$("#jqxFormButtons_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
btnHeight.jqxButton("height", 50);


/* Get Property */
let btnHeight = $("#jqxFormButtons_height").jqxForm("getComponentByName", "btnHeight");
let height = btnHeight.jqxButton("height"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- imgSrc -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">imgSrc</span>
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
						<div id="jqxFormButtons_imgSrc"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 이미지 경로를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_imgSrc = [{
	"bind" : "btnImgSrc",
	"name" : "btnImgSrc",
	"type" : "button",	
	"width" : 100,
	"height" : 50,
	"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png"	// property 설정
}];

$("#jqxFormButtons_imgSrc").jqxForm({
  	"template" : template_imgSrc
});

// case 2 : element에 property 설정
let btnImgSrc = $("#jqxFormButtons_imgSrc").jqxForm("getComponentByName", "btnImgSrc");
btnImgSrc.jqxButton("imgSrc", "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png");


/* Get Property */
let btnImgSrc = $("#jqxFormButtons_imgSrc").jqxForm("getComponentByName", "btnImgSrc");
let imgSrc = btnImgSrc.jqxButton("imgSrc"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- imgWidth -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">imgWidth</span>
				</td>
				<td>
					<span>Number</span>
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
						<div id="jqxFormButtons_imgWidth"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 이미지 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_imgWidth = [{
	"bind" : "btnImgWidth",
	"name" : "btnImgWidth",
	"type" : "button",	
	"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",	
	"imgWidth" : 50	// property 설정
}];

$("#jqxFormButtons_imgWidth").jqxForm({
  	"template" : template_imgWidth
});

// case 2 : element에 property 설정
let btnImgWidth = $("#jqxFormButtons_imgWidth").jqxForm("getComponentByName", "btnImgWidth");
btnImgWidth.jqxButton("imgWidth", 50);


/* Get Property */
let btnImgWidth = $("#jqxFormButtons_imgWidth").jqxForm("getComponentByName", "btnImgWidth");
let imgWidth = btnImgWidth.jqxButton("imgWidth"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- imgHeight -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">imgHeight</span>
				</td>
				<td>
					<span>Number</span>
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
						<div id="jqxFormButtons_imgHeight"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 이미지 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_imgHeight = [{
	"bind" : "btnImgHeight",
	"name" : "btnImgHeight",
	"type" : "button",	
	"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",	
	"imgWidth" : 50,
	"imgHeight" : 50	// property 설정
}];

$("#jqxFormButtons_imgHeight").jqxForm({
  	"template" : template_imgHeight
});

// case 2 : element에 property 설정
let btnImgHeight = $("#jqxFormButtons_imgHeight").jqxForm("getComponentByName", "btnImgHeight");
btnImgHeight.jqxButton("imgHeight", 50);


/* Get Property */
let btnImgHeight = $("#jqxFormButtons_imgHeight").jqxForm("getComponentByName", "btnImgHeight");
let imgHeight = btnImgHeight.jqxButton("imgHeight"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- imgPosition -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">imgPosition - TODO: 기능 점검</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"center"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_imgPosition"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 이미지 위치를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"left", "top", "center", "bottom", "right"</p>
						<p>"topLeft", "bottomLeft", "topRight", "bottomRight"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_imgPosition = [{
	"bind" : "btnImgPosition",
	"name" : "btnImgPosition",
	"type" : "button",	
	"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",
	"imgPosition" : "left"	// property 설정	
}];

$("#jqxFormButtons_imgPosition").jqxForm({
  	"template" : template_imgPosition
});

// case 2 : element에 property 설정
let btnImgPosition = $("#jqxFormButtons_imgPosition").jqxForm("getComponentByName", "btnImgPosition");
btnImgPosition.jqxButton("imgPosition", "left");


/* Get Property */
let btnImgPosition = $("#jqxFormButtons_imgPosition").jqxForm("getComponentByName", "btnImgPosition");
let imgPosition = btnImgPosition.jqxButton("imgPosition"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- roundedCorners -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">roundedCorners</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"all"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_roundedCorners"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼의 가장자리를 둥글게하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<p>CSS border-radius를 지원하는 브라우저에서만 작동합니다.</p>
						<h4>Possible Values</h4>
						<p>"all", "top", "bottom", "left", "right"</p>
						<p>"top-right", "top-left", "bottom-right", "bottom-left"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_roundedCorners = [{
	"bind" : "btnRoundedCorners",
	"name" : "btnRoundedCorners",
	"type" : "button",
	"roundedCorners" : "right"	// property 설정	
}];

$("#jqxFormButtons_roundedCorners").jqxForm({
  	"template" : template_roundedCorners
});

// case 2 : element에 property 설정
let btnRoundedCorners = $("#jqxFormButtons_roundedCorners").jqxForm("getComponentByName", "btnRoundedCorners");
btnRoundedCorners.jqxButton("roundedCorners", "right");


/* Get Property */
let btnRoundedCorners = $("#jqxFormButtons_roundedCorners").jqxForm("getComponentByName", "btnRoundedCorners");
let roundedCorners = btnRoundedCorners.jqxButton("roundedCorners"); 
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
	"type" : "button",
	"width" : 100,
	"height" : 30,
	"rtl" : true	// property 설정
}];

$("#jqxFormButtons_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let btnRtl = $("#jqxFormButtons_rtl").jqxForm("getComponentByName", "btnRtl");
btnRtl.jqxButton("rtl", true);


/* Get Property */
let btnRtl = $("#jqxFormButtons_rtl").jqxForm("getComponentByName", "btnRtl");
let rtl = btnRtl.jqxButton("rtl"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- textPosition -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">textPosition - TODO: 기능 점검 </span>
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
						<div id="jqxFormButtons_textPosition"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>텍스트의 위치를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"left", "top", "center", "bottom", "right"</p>
						<p>"topLeft", "bottomLeft", "topRight", "bottomRight"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_textPosition = [{
	"bind" : "btnTextPosition",
	"name" : "btnTextPosition",
	"type" : "button",
	"width" : 100,
	"height" : 60,
	"value" : "hi",
	"textPosition" : "bottomRight"	// property 설정
}];

$("#jqxFormButtons_textPosition").jqxForm({
  	"template" : template_textPosition
});

// case 2 : element에 property 설정
let btnTextPosition = $("#jqxFormButtons_textPosition").jqxForm("getComponentByName", "btnTextPosition");
btnTextPosition.jqxButton("textPosition", "bottomRight");


/* Get Property */
let btnTextPosition = $("#jqxFormButtons_textPosition").jqxForm("getComponentByName", "btnTextPosition");
let textPosition = btnTextPosition.jqxButton("textPosition"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- textImageRelation -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">textImageRelation - TODO: 기능 점검</span>
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
						<div id="jqxFormButtons_textImageRelation"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>이미지와 텍스트의 위치를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"iamgeBeforeText" - 이미지 다음 텍스트 나타냄</p>
						<p>"imageAboveText" - 이미지 아래에 텍스트 나타냄</p>
						<p>"textAboveImage" - 이미지 위에 텍스트 나타냄</p>
						<p>"textBeforeImage" - 이미지 이전 텍스트 나타냄</p>
						<p>"overlay" - 겹쳐서 나타냄</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_textImageRelation = [{
	"bind" : "btnTextImageRelation",
	"name" : "btnTextImageRelation",
	"type" : "button",
	"imgSrc" : "https://jqwidgets.com/jquery-widgets-demo/images/andrew.png",
    "imgPosition" : "left",
    "textPosition" : "left",
    "textImageRelation" : "textAboveImage"	// property 설정
}];

$("#jqxFormButtons_textImageRelation").jqxForm({
  	"template" : template_textImageRelation
});

// case 2 : element에 property 설정
let btnTextImageRelation = $("#jqxFormButtons_textImageRelation").jqxForm("getComponentByName", "btnTextImageRelation");
btnTextImageRelation.jqxButton("textImageRelation", "textAboveImage");


/* Get Property */
let btnTextImageRelation = $("#jqxFormButtons_textImageRelation").jqxForm("getComponentByName", "btnTextImageRelation");
let textImageRelation = btnTextImageRelation.jqxButton("textImageRelation"); 
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
	"type" : "button",
    "theme" : "energyblue"	// property 설정
}];

$("#jqxFormButtons_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let btnTheme = $("#jqxFormButtons_theme").jqxForm("getComponentByName", "btnTheme");
btnTheme.jqxButton("theme", "energyblue");


/* Get Property */
let btnTheme = $("#jqxFormButtons_theme").jqxForm("getComponentByName", "btnTheme");
let theme = btnTheme.jqxButton("theme"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- template -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">template</span>
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
						<div id="jqxFormButtons_template"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼들의 기본 스타일을 설정하거나 가져옵니다.</p>
						<h4>Possible Value</h4>
						<p>'default' - 기본 템플릿. 'theme'에 의존한다.</p>
						<p>'primary' - dark blue 스타일</p>
						<p>'success' - green 스타일</p>
						<p>'warning' - orange 스타일</p>
						<p>'danger' - red 스타일</p>
						<p>'info' - blue 스타일</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_template = [{
	"bind" : "btnTemplate",
	"name" : "btnTemplate",
	"type" : "button",
    "template" : "warning"	// property 설정
}];

$("#jqxFormButtons_template").jqxForm({
  	"template" : template_template
});

// case 2 : element에 property 설정
let btnTemplate = $("#jqxFormButtons_template").jqxForm("getComponentByName", "btnTemplate");
btnTemplate.jqxButton("template", "warning");


/* Get Property */
let btnTemplate = $("#jqxFormButtons_template").jqxForm("getComponentByName", "btnTemplate");
let template = btnTemplate.jqxButton("template"); 
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
	"type" : "button",
    "width" : 100	// property 설정
}];

$("#jqxFormButtons_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
btnWidth.jqxButton("width", 100);


/* Get Property */
let btnWidth = $("#jqxFormButtons_width").jqxForm("getComponentByName", "btnWidth");
let width = btnWidth.jqxButton("width"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- value -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">value</span>
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
						<div id="jqxFormButtons_value"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 값을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_value = [{
	"bind" : "btnValue",
	"name" : "btnValue",
	"type" : "button",
    // "value" : "Hello"	// property 설정 - 미사용(자동 중앙정렬 안됨)
}];

$("#jqxFormButtons_value").jqxForm({
  	"template" : template_value
});

// case 2 : element에 property 설정 (정렬 적용)
let btnValue = $("#jqxFormButtons_value").jqxForm("getComponentByName", "btnValue");
btnValue.jqxButton("value", "Hello");


/* Get Property */
let btnValue = $("#jqxFormButtons_value").jqxForm("getComponentByName", "btnValue");
let value = btnValue.jqxButton("value"); 
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
					<span id="Span2">click</span>
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
						<div id="jqxFormButtons_event_click"></div>
						<div id="log_event_click"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼이 클릭된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_event_click = [{
    "bind" : "btnEventClick",
    "name" : "btnEventClick",
	"type" : "button"	
}];

$("#jqxFormButtons_event_click").jqxForm({
  	"template" : template_event_click
});


/* 이벤트 설정 */
let btnEventClick = $("#jqxFormButtons_event_click").jqxForm("getComponentByName", "btnEventClick"); 
btnEventClick.on("click", function() {
	$("#log_event_click").html("Button clicked!");
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
	"type" : "button"	
}];

$("#jqxFormButtons_method_destroy").jqxForm({
  	"template" : template_method_destroy
});


/* 이벤트 설정 */
let btnMethodDestroy = $("#jqxFormButtons_method_destroy").jqxForm("getComponentByName", "btnMethodDestroy");
 
$("#btnDestroy").on("click", function() {
   	btnMethodDestroy.jqxButton("destroy");
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
	"type" : "button"	
}];

$("#jqxFormButtons_method_focus").jqxForm({
  	"template" : template_method_focus
});


/* 이벤트 설정 */
let btnMethodFocus = $("#jqxFormButtons_method_focus").jqxForm("getComponentByName", "btnMethodFocus");
 
$("#btnFocus").on("click", function() {
   	btnMethodFocus.jqxButton("focus");
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
	"type" : "button"	
}];

$("#jqxFormButtons_method_render").jqxForm({
  	"template" : template_method_render
});


/* 이벤트 설정 */
let btnMethodRender = $("#jqxFormButtons_method_render").jqxForm("getComponentByName", "btnMethodRender");
 
$("#btnRender").on("click", function() {
   	btnMethodRender.jqxButton("render");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- val -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">val - TODO: val 대신 value 프로퍼티 사용</span>
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
						<p>버튼의 텍스트를 설정하거나 가져옵니다.</p>
						<h4>Parameter Type</h4>
						<p>String</p>
						<h4>Return Value</h4>
						<p>String</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_method_val = [{
	"bind" : "btnMethodVal",
	"name" : "btnMethodVal",
	"type" : "button"	
}];

$("#jqxFormButtons_method_val").jqxForm({
  	"template" : template_method_val
});


/* 이벤트 설정 */
let btnMethodVal = $("#jqxFormButtons_method_val").jqxForm("getComponentByName", "btnMethodVal");
 
$("#btnVal").on("click", function() {
	// TODO : val 대신 value 프로퍼티 사용
	// Set value
	btnMethodVal.jqxButton("value", "New text");
   	
	// Set value using jQuery - TODO: 기능 수정
	// btnMethodVal.val("New text2");
	
	// Get value
	let val = btnMethodVal.jqxButton("value");
	alert(val);
	
	// Get value using jQuery
	//let val2 = btnMethodVal.val();
	
	//alert("Current value : " + val + "//" + val2);
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>