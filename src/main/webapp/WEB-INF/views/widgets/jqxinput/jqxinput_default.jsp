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
	    /* 2. form template 선언 */
		let template = [{
			"bind" : "txtName",		// template에 바인딩 되는 변수명 (form 내 element 식별에 사용)
			"name" : "txtName",		// getComponentByName()로 element 가져올 때 사용되는 변수명) 
			"type" : "text"			// input type
		}];
		
	    /* 3. div에 바인딩  */
		$("#jqxinputForm").jqxForm({
	   		"template" : template
		});
	});
</script>

<!-- 1. form div 선언 -->
<div id="jqxinputForm"></div>