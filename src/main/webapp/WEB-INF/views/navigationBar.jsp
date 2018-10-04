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
<script src="<c:url value="/resources/jqwidgets/jqxnavigationbar.js"/>"></script>

<script>
	$(document).ready(function () {
		$("#jqxNavigationBar").jqxNavigationBar({
		   "width" : 400,
		   "height" : 480
		});    
	});
</script>
</head>
<body>
	<div id="jqxNavigationBar">
		<div>
			Header1
		</div>
		<div>
			<ul>
				<li>0101</li>
				<li>0102</li>
				<li>0103</li>
				<li>0104</li>
			</ul>
		</div>
		<div>
			Header2
		</div>
		<div>
			<ul>
				<li>0201</li>
				<li>0202</li>
				<li>0203</li>
				<li>0204</li>
			</ul>
		</div>
		<div>
			Header3
		</div>
		<div>
			<ul>
				<li>0301</li>
				<li>0302</li>
				<li>0303</li>
				<li>0304</li>
			</ul>
		</div>
	</div>
</body>
</html>