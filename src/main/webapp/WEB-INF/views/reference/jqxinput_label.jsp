<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
 
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		let template = [{
			"bind" : "txtName",
			"name" : "txtName",
			"type" : "text",			
			"label" : "이름",			// label명 설정
			"labelWidth" : "100px",		// label너비 설정
			"labelPosition" : "left"	// label위치 설정
		}];
		
		$("#jqxinputForm").jqxForm({
	   		"template" : template
		});
	});
</script>

<div id="jqxinputForm"></div>