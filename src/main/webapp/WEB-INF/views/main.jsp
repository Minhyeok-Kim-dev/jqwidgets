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
<script src="<c:url value="/resources/jqwidgets/jqxribbon.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxwindow.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxlayout.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdockinglayout.js"/>"></script>

<style type="text/css">
	#jqxDockingLayout {
		margin: 0 auto;
	}
</style>

<script>
	$(document).ready(function(){
		let layout = [{
		   	"type" : "layoutGroup",
		   	"orientation" : "horizontal",
		   	"items" : [{
		   	    "type" : "tabbedGroup",
		   	    "orientation" : "vertical",
		   	    "width" : "20%",
		   	    "height" : "100%",
		   	    "allowClose" : false,
		   	    "allowPin" : false,
		   	    "allowUnpin" : false,
		   	    "items" : [{
					"type" : "layoutPanel",
			       	"title" : "jqxForm",
			       	"contentContainer" : "NavPanel_jqxForm"
		   	    }, {
		   	     	"type" : "layoutPanel",
			       	"title" : "layout",
			       	"contentContainer" : "NavPanel_layout"
		   	    }]
		   	}, {
				"type" : "layoutGroup",
				"orientation" : "vertical",
				"width" : "80%",
				"items" : [{
				    "type" : "documentGroup",
				    "height" : "100%",
				    "items" : [{
				        "type" : "documentPanel",
				        "title" : "Demo",
				        "contentContainer" : "DemoPanel"
				    }, {
				        "type" : "documentPanel",
				        "title" : "View source",
				        "contentContainer" : "ViewSourcePanel",
				    }, {
				        "type" : "documentPanel",
				        "title" : "API Reference",
				        "contentContainer" : "APIReferencePanel"
					}]
				}]
		   	}]
		}];
		
		$("#jqxDockingLayout").jqxDockingLayout({
			"width": 1000,
			"height" : 900,
			"layout" : layout,
		});
	});
</script>

</head>
<body>
	<div id="jqxDockingLayout">
		<!-- tabbed group -->
		<div data-container="NavPanel_jqxForm">
			<%@ include file="/WEB-INF/views/include/nav_jqxForm.jsp" %>
		</div>
		<div data-container="NavPanel_layout">
			<%@ include file="/WEB-INF/views/include/nav_layout.jsp" %>
		</div>
		<!-- document group -->
		<div data-container="DemoPanel">
			<div id="demo"></div>
		</div>
		<div data-container="ViewSourcePanel">
			<div id="viewSource"></div>
		</div>
		<div data-container="APIReferencePanel">
			<div id="apiReference"></div>
		</div>
	</div>
</body>
</html>