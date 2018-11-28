<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.apireference.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.bootstrap.css"/>" />

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/documentation.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxresponsivepanel.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		$("a").on("click", function(e){
		   e.preventDefault();
		   window.open(getContextPath() + $(this).attr("href"), "window");
		});
	});
	
	// ContextPath 반환
	function getContextPath() { 
	   return window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
	}
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
			<!-- animationDirection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationDirection</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>animationType이 'slide'인 경우 animation의 방향을 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"left"</p>
						<p>"right"</p>
						<p>"top"</p>
						<p>"bottom"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_animationDirection").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,
	"collapseBreakpoint" : 800,
	"toggleButton" : $("#toggleResponsivePanel_animationDirection"),
	"animationType" : "slide",	
  	"animationDirection" : "right"	// property 설정
});

/* Get Property */
let animationDirection = $("#jqxResponsivePanel_animationDirection").jqxResponsivePanel("animationDirection");
</code></pre>
						<a href="/jqxResponsivePanel/animationDirection">Show demo page</a>						
                    </div>
                </td>
            </tr>
            <!-- animationHideDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationHideDelay</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"fast"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Description -->
						<h4>Description</h4>
						<p>panel이 숨겨지는 animation속도를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"fast"</p>
						<p>"slow"</p>
						<p>Number(ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_animationHideDelay").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,
	"collapseBreakpoint" : 800,
	"toggleButton" : $("#toggleResponsivePanel_animationHideDelay"),
	"animationType" : "slide",	
  	"animationHideDelay" : "fast"	// property 설정
});

/* Get Property */
let animationHideDelay = $("#jqxResponsivePanel_animationHideDelay").jqxResponsivePanel("animationHideDelay");
</code></pre>
						<a href="/jqxResponsivePanel/animationHideDelay">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- animationShowDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationShowDelay</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"fast"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Description -->
						<h4>Description</h4>
						<p>panel이 나타나는 animation속도를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"fast"</p>
						<p>"slow"</p>
						<p>Number(ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_animationShowDelay").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,
	"collapseBreakpoint" : 800,
	"toggleButton" : $("#toggleResponsivePanel_animationShowDelay"),
	"animationType" : "fade",	
  	"animationShowDelay" : "fast"	// property 설정
});

/* Get Property */
let animationShowDelay = $("#jqxResponsivePanel_animationShowDelay").jqxResponsivePanel("animationShowDelay");
</code></pre>
						<a href="/jqxResponsivePanel/animationShowDelay">Show demo page</a>
                    </div>
                </td>
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
					"fade"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Description -->
						<h4>Description</h4>
						<p>panel이 나타나는 animation 종류를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"fade"</p>
						<p>"slide"</p>
						<p>"none"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_animationType").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,
	"collapseBreakpoint" : 800,
	"toggleButton" : $("#toggleResponsivePanel_animationType"),
	"animationType" : "slide"	// property 설정
});

/* Get Property */
let animationType = $("#jqxResponsivePanel_animationType").jqxResponsivePanel("animationType");
</code></pre>
						<a href="/jqxResponsivePanel/animationType">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- autoClose -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">autoClose</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>반응형 panel 외부를 클릭한 경우 자동으로 닫히는 프로퍼티를  설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_autoClose").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,
	"collapseBreakpoint" : 800,
	"toggleButton" : $("#toggleResponsivePanel_autoClose"),
	"autoClose" : false
});

/* Get Property */
let autoClose = $("#jqxResponsivePanel_autoClose").jqxResponsivePanel("autoClose");
</code></pre>
						<a href="/jqxResponsivePanel/autoClose">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- collapseBreakpoint -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">collapseBreakpoint</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					1000
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Description -->
						<h4>Description</h4>
						<p>브라우저의 너비가 변경된 경우 해당 panel이 숨겨지거나 나타나는 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_collapseBreakpoint").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,
	"toggleButton" : $("#toggleResponsivePanel_collapseBreakpoint"),
	"collapseBreakpoint" : 600	// property 설정
});

/* Get Property */
let collapseBreakpoint = $("#jqxResponsivePanel_collapseBreakpoint").jqxResponsivePanel("collapseBreakpoint");
</code></pre>
						<a href="/jqxResponsivePanel/collapseBreakpoint">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- collapseWidth -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">collapseWidth</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>panel이 축소되었을 때 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_collapseWidth").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,
	"toggleButton" : $("#toggleResponsivePanel_collapseWidth"),
	"collapseBreakpoint" : 800,
	"collapseWidth" : 200	// property 설정
});

/* Get Property */
let collapseWidth = $("#jqxResponsivePanel_collapseWidth").jqxResponsivePanel("collapseWidth");
</code></pre>
						<a href="/jqxResponsivePanel/collapseWidth">Show demo page</a>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_height").jqxResponsivePanel({
	"width" : 650,
	"toggleButton" : $("#toggleResponsivePanel_height"),
	"collapseBreakpoint" : 800,
	"height" : 350	// property 설정
});

/* Get Property */
let height = $("#jqxResponsivePanel_height").jqxResponsivePanel("height");
</code></pre>
						<a href="/jqxResponsivePanel/height">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- initContent -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">initContent</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>panel의 내용을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_initContent").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_initContent"),
	"collapseBreakpoint" : 800,
	"initContent" : function() {	// property 설정
		$("#jqxButton").jqxButton({
			"theme" : "energyblue"
		})
	}
});

/* Get Property */
let initContent = $("#jqxResponsivePanel_initContent").jqxResponsivePanel("initContent");
</code></pre>
						<a href="/jqxResponsivePanel/initContent">Show demo page</a>
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
$("#jqxResponsivePanel_theme").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_theme"),
	"theme" : "energyblue"	// property 설정
});

/* Get Property */
let theme = $("#jqxResponsivePanel_theme").jqxResponsivePanel("theme");
</code></pre>
						<a href="/jqxResponsivePanel/theme">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- toggleButton -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">toggleButton</span>
				</td>
				<td>
					<span>String/Object</span>
				</td>
				<td>
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Description -->
						<h4>Description</h4>
						<p>toggle버튼이 렌더링 될 element를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_toggleButton").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_toggleButton")	// property 설정
});

/* Get Property */
let toggleButton = $("#jqxResponsivePanel_toggleButton").jqxResponsivePanel("toggleButton");
</code></pre>
						<a href="/jqxResponsivePanel/toggleButton">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- toggleButtonSize -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">toggleButtonSize</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>toggle버튼의 크기를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_toggleButtonSize").jqxResponsivePanel({
	"width" : 650,
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_toggleButton"),
	"toggleButtonSize" : 50	// property 설정
});

/* Get Property */
let toggleButtonSize = $("#jqxResponsivePanel_toggleButtonSize").jqxResponsivePanel("toggleButtonSize");
</code></pre>
						<a href="/jqxResponsivePanel/toggleButtonSize">Show demo page</a>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
$("#jqxResponsivePanel_width").jqxResponsivePanel({
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_width"),
	"width" : 800	// property 설정
});

/* Get Property */
let width = $("#jqxResponsivePanel_width").jqxResponsivePanel("width");
</code></pre>
						<a href="/jqxResponsivePanel/width">Show demo page</a>
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
			<!-- close -->
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
						<!-- Description -->
						<h4>Description</h4>
						<p>toggle버튼으로 panel을 축소시킨 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_event_close").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_event_close"),
});

/* 이벤트 설정 */
$("#jqxResponsivePanel_event_close").on("close", function(){
	$("#log_event_close").html("close event has been triggered!");
});

</code></pre>
						<a href="/jqxResponsivePanel/event_close">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- collapse -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">collapse</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>브라우저 너비가 collpaseBreakpoint보다 작아서 panel이 축소 된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_event_collapse").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_event_close"),
});

/* 이벤트 설정 */
$("#jqxResponsivePanel_event_collapse").on("collapse", function(){
	$("#log_event_collapse").html("collapse event has been triggered!");
});

</code></pre>
						<a href="/jqxResponsivePanel/event_collapse">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- expand -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">expand</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>브라우저 너비가 collpaseBreakpoint보다 커서 panel이 확장 된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_event_expand").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_event_expand"),
});

/* 이벤트 설정 */
$("#jqxResponsivePanel_event_expand").on("collapse", function(){
	$("#log_event_expand").html("expand event has been triggered!");
});

</code></pre>
						<a href="/jqxResponsivePanel/event_expand">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- open -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">open</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>toggle버튼으로 panel을 확장시킨 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_event_open").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_event_open"),
});

/* 이벤트 설정 */
$("#jqxResponsivePanel_event_open").on("close", function(){
	$("#log_event_open").html("open event has been triggered!");
});

</code></pre>
						<a href="/jqxResponsivePanel/event_open">Show demo page</a>
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
			<!-- close -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">close</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>toggle버튼으로 확장된 경우 축소합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_method_close").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_method_close"),
});


/* 이벤트 설정 */
$("#btnClose").on("click", function() {
   	$("#jqxinputForm_method_close").jqxResponsivePanel("close");
});
</code></pre>
						<a href="/jqxResponsivePanel/method_close">Show demo page</a>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯을 제거합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_method_destroy").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_method_destroy"),
});


/* 이벤트 설정 */
$("#btnDestroy").on("click", function() {
   	$("#jqxinputForm_method_destroy").jqxResponsivePanel("destroy");
});
</code></pre>
						<a href="/jqxResponsivePanel/method_destroy">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- isCollapsed -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">isCollapsed</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯이 축소되었는지 여부를 가져옵니다. 축소된 경우 true반환</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>Boolean</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_method_isCollapsed").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_method_isCollapsed"),
});


/* 이벤트 설정 */
$("#btnIsCollapsed").on("click", function() {
   	let isCollapsed = $("#jqxinputForm_method_isCollapsed").jqxResponsivePanel("isCollapsed");
   	alert(isCollapsed);
});
</code></pre>
						<a href="/jqxResponsivePanel/method_isCollapsed">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- isOpened -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">isOpened</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>toggle버튼에 의해 확장되었는지 여부를 가져옵니다. 확장된 경우 true반환</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>Boolean</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_method_isOpened").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_method_isOpened"),
});


/* 이벤트 설정 */
$("#btnIsOpened").on("click", function() {
   	let isOpened = $("#jqxinputForm_method_isOpened").jqxResponsivePanel("isOpened");
   	alert(isOpened);
});
</code></pre>
						<a href="/jqxResponsivePanel/method_isOpened">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- open -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">open</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>toggle 버튼이 활성화 된 경우 반응형 panel을 확장합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_method_open").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_method_open"),
});


/* 이벤트 설정 */
$("#btnOpen").on("click", function() {
   	$("#jqxinputForm_method_open").jqxResponsivePanel("open");
});
</code></pre>
						<a href="/jqxResponsivePanel/method_open">Show demo page</a>
                    </div>
                </td>
            </tr>
            <!-- refresh -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">refresh</span>
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
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯을 새로고침합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
$("#jqxResponsivePanel_method_refresh").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_method_refresh"),
});


/* 이벤트 설정 */
$("#btnRefresh").on("click", function() {
   	$("#jqxinputForm_method_refresh").jqxResponsivePanel("refresh");
});
</code></pre>
						<a href="/jqxResponsivePanel/method_refresh">Show demo page</a>
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
$("#jqxResponsivePanel_method_render").jqxResponsivePanel({
	"width" : 800	
	"height" : 350,	
	"toggleButton" : $("#toggleResponsivePanel_method_render"),
});


/* 이벤트 설정 */
$("#btnRender").on("click", function() {
   	$("#jqxinputForm_method_render").jqxResponsivePanel("render");
});
</code></pre>
						<a href="/jqxResponsivePanel/method_render">Show demo page</a>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>