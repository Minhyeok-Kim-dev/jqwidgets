<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.energyblue.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.bootstrap.css"/>" />
	
	<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
	<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
	<script src="<c:url value="/resources/jqwidgets/jqxresponsivepanel.js"/>"></script>
	
	<title>jqxResponsivePanel</title>
	<script>
		$(document).ready(function(){
		    $("#jqxResponsivePanel").jqxResponsivePanel({
				"height" : 350,
				"toggleButton" : $("#toggleResponsivePanel"),
				"width" : 800
			}); 
		    
		    $("#btn").on("click", function(){
		        let isCollapsed = $("#jqxResponsivePanel").jqxResponsivePanel("isCollapsed") 
		        alert(isCollapsed);
		    });
		});
	</script>
</head>
<body>
	<div>
		<input type="button" id="btn" value="button" />
	</div>
	<div id="toggleResponsivePanel"></div>
	<div id="jqxResponsivePanel">
		<h4>jQWidgets</h4>
    	<p>jQWidgets provides a comprehensive solution for building professional web sites and mobile apps. It is built entirely on open standards and technologies like HTML5, CSS, Javascript and jQuery. jQWidgets enables responsive web development and helps you create apps and websites that look beautiful on desktops, tablets and smart phones.</p>
    	<p>jQWidgets is a feature complete framework with professional touch-enabled jQuery widgets, themes, input validation, drag & drop plug-ins, data adapters, built-in WAI-ARIA accessibility, internationalization and MVVM support.</p>
	</div>
</body>
</html>