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
		// href
		let template_href = [{
			"bind" : "btnHref",
			"name" : "btnHref",
			"type" : "linkButton",
			"width" : 50,
			"height" : 25,
			"target" : "_blank",
			"href" : "http://www.jqwidgets.com"	// property 설정	
		}];

		$("#jqxFormButtons_href").jqxForm({
			"template" : template_href
		});

		let btnHref = $("#jqxFormButtons_href").jqxForm("getComponentByName", "btnHref");

		// value 설정
		btnHref.jqxButton("value", "Link");
		
		
		// target
		let template_target = [{
			"bind" : "btnTarget",
			"name" : "btnTarget",
			"type" : "linkButton",
			"width" : 50,
			"height" : 25,
			"target" : "_top",	// property 설정
			"href" : "http://www.jqwidgets.com"		
		}];

		$("#jqxFormButtons_target").jqxForm({
			"template" : template_target
		});

		let btnTarget = $("#jqxFormButtons_target").jqxForm("getComponentByName", "btnTarget");

		// value 설정
		btnTarget.jqxButton("value", "Link");
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
            <!-- href -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">href - TODO: Setter & Getter적용</span>
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
						<div id="jqxFormButtons_href"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>버튼 클릭시 이동할 주소를 설정합니다.</p>
						<p>미입력시 일반 버튼과 동일하게 동작합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_href = [{
	"bind" : "btnHref",
	"name" : "btnHref",
	"type" : "linkButton",
	"width" : 50,
	"height" : 25,
	"target" : "_blank",
	"href" : "http://www.jqwidgets.com"	// property 설정	
}];

$("#jqxFormButtons_href").jqxForm({
	"template" : template_href
});

let btnHref = $("#jqxFormButtons_delay").jqxForm("getComponentByName", "btnHref");

// value 설정
btnHref.jqxButton("value", "Link");
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- target -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">target - TODO: Setter & Getter적용</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"_blank"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxFormButtons_target"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>링크된 문서를 어디에 열지 설정합니다.</p>
						<p>Anchor tag target property 내용과 동일합니다</p>
						<p><a href="https://www.w3schools.com/jsref/prop_anchor_target.asp" target="_blank">document</a></p>
						<h4>Possible Values</h4>
						<p>"_blank" - 링크된 문서를 새 창에서 엽니다.</p>
						<p>"_self" - 링크된 문서를 클릭한 것과 동일한 프레임으로 엽니다.</p>
						<p>"_parent" - 링크된 문서를 부모 프레임셋에서 엽니다.</p>
						<p>"_top" - 링크된 문서를 창 전체에서 엽니다.</p>
						<p>"framename" - 작성된 framename에 링크된 문서를 엽니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_target = [{
	"bind" : "btnTarget",
	"name" : "btnTarget",
	"type" : "linkButton",
	"width" : 50,
	"height" : 25,
	"target" : "_blank",	// property 설정
	"href" : "http://www.jqwidgets.com"		
}];

$("#jqxFormButtons_target").jqxForm({
	"template" : template_target
});

let btnTarget = $("#jqxFormButtons_target").jqxForm("getComponentByName", "btnTarget");

// value 설정
btnTarget.jqxButton("value", "Link");
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