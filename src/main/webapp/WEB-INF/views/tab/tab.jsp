<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
	
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxtabs.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxbuttons.js"/>"></script>

<script>
	$(document).ready(function () {
	    $("#jqxTabs").jqxTabs({
	        "scrollPosition" : "both",	// scroll button 위치
	        "showCloseButtons" : true,	// tab 종료 버튼 사용여부
	        "selectionTracker" : false,
	        "width" : 400
       	});
	    
	    $("#jqxTabs").on("selected", function(event) {
	       let selectedTab = event.args.item;
	    });
	    
	    $("#btnSimpleAdd").on("click", function(){
	       addTab("test1", "test1입니다");
	    });
	   
	    $("#btnAjaxAdd").on("click", function(){
			let title = "ajaxTitle";
	       	let content = "";
	       
	       	$.ajax(getContextPath() + "/tab/content", {
				type : "GET",
				async : false,
				dataType : "html"
			})
			.done(function(data) {	// success 시
				content = data;
			})
			.fail(function(data) {
				alert("loadLogs failed");
			});
	       
	       	addTab(title, content);
	    });
	});
	
	function getContextPath() {
		return window.location.pathname.substring(0, window.location.pathname
				.indexOf("/", 2));
	}
	
	function addTab(title, content) {
	    $('#jqxTabs').jqxTabs('addLast', title, content);
	}
</script>
</head>
<body>
	<div id="jqxTabs">
		<ul>
			<li>title1</li>
			<li>title2</li>
			<li>title3</li>
			<li>title4</li>
			<li>title5</li>
		</ul>
		<div>
			content 1
		</div>
		<div>
			content 2
		</div>
		<div>
			content 3
		</div>
		<div>
			content 4
		</div>
		<div>
			content 5
		</div>
	</div>
	
	<br /><br />
	<input type="button" id="btnSimpleAdd" value="simple add" />
	<input type="button" id="btnAjaxAdd" value="ajax add" />
</body>
</html>