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
			"type" : "text"
		}];
		
		$("#jqxinputForm").jqxForm({
	   		"template" : template
		});
		
		
		/* jqxForm의 getComponentByName()을 통해 element를 가져온 후 getter & setter 기능 수행 */
		
		$("#btnSetter").on("click", function(){
		    let elem = $("#jqxinputForm").jqxForm("getComponentByName", "txtName");
		    elem.val("test text");
		});
		
		//$("#jqFinComp").jqxForm("getComponentByName", "accOpnBnkCd");
		$("#btnGetter").on("click", function(){
		    let elem = $("#jqxinputForm").jqxForm("getComponentByName", "txtName");
		    alert(elem.val());
		});
	});
</script>

<div id="jqxinputForm"></div>
<input type="button" id="btnSetter" value="setter"/>
<input type="button" id="btnGetter" value="getter"/>
