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

<script>
	$(document).ready(function(){
	 	// the 'layout' JSON array defines the internal structure of the docking layout
	    let layout = [{
     		"type" : "layoutGroup",
     		"orientation" : "horizontal",
     		"items" : [{
     		   	"type" : "autoHideGroup",
     			"alignment" : "left",
     		   	"width" : 80,
     		   	"unpinnedWidth" : 200,
     		   	"items" : [{
    		    	"type" : "layoutPanel",
    		    	"title" : "Toolbox",
    		    	"contentContainer" : "ToolboxPanel"
     		   	}, {
     		   	    "type" : "layoutPanel",
     		   	    "title" : "Help",
     		   	    "contentContainer" : "HelpPanel"
     		   	}]
     		}, {
     		    "type" : "layoutGroup",
     		    "orientation" : "vertical",
     		    "width" : 500,
     		    "items" : [{
					"type" : "documentGroup",
					"height" : 400,
					"minHeight" : 200,
					"items" : [{
					    "type" : "documentPanel",
					    "title" : "Document 1",
					    "contentContainer" : "Document1Panel"
					}, {
					   	"type" : "documentPanel",
					   	"title" : "Document 2",
					   	"contentContainer" : "Document2Panel"
					}]
     		    }, {
     		        "type" : "tabbedGroup",
     		        "height" : 200,
     		        "pinnedHeight" : 30,
     		        "items" : [{
     		        	"type" : "layoutPanel",
     		        	"title" : "Error List",
     		        	"contentContainer" : "ErrorListPanel"
     		        }]
     		    }]
     		}, {
				"type" : "tabbedGroup",
				"width" : 220,
				"minWidth" : 200,
				"items" : [{
				    "type" : "layoutPanel",
				    "title" : "Solution Explorer",
				    "contentContainer" : "SolutionExplorerPanel"
				}, {
			    	"type" : "layoutPanel",
			    	"title" : "Properties",
			    	"contentContainer" : "PropertiesPanel"
				}]
     		}]
	    }, {
        	"type" : "floatGroup",
        	"width" : 500,
        	"height" : 200,
        	"position" : {
        	    "x" : 350,
        	    "y" : 250
        	},
        	"items" : [{
        	  	"type" : "layoutPanel",
        	  	"title" : "output",
        	  	"contentContainer" : "OutputPanel"
        	}]
	    }];
	 	
	 	$("#jqxDockingLayout").jqxDockingLayout({
 	   		"width" : 800,
	   		"height" : 600,
	   		"layout" : layout
	 	});
	});
</script>
</head>
<body>
	<div id="jqxDockingLayout">
		<!-- autoHideGroup -->
		<div data-container="ToolboxPanel">
			List of tools
		</div>
		<div data-container="HelpPanel">
			Help topics
		</div>
		<!-- documentGroup -->
		<div data-container="Document1Panel">
			Document 1 contents
		</div>
		<div data-container="Document2Panel">
			Document 2 contents
		</div>
		<div data-container="Document2Panel">
			Document 2 contents
		</div>
		<!-- bottom tabbedGroup -->
		<div data-container="ErrorListPanel">
			List of errors
		</div>
		<!-- right tabbedGroup -->
		<div data-container="SolutionExplorerPanel">
			Solution structure
		</div>
		<div data-container="PropertiesPanel">
			List of properties
		</div>
		<!-- floatGroup -->
		<div data-container="OutputPanel">
			Output
		</div>
	</div>
</body>
</html>