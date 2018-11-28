<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
 
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdata.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxbuttons.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxscrollbar.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxgrid.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxgrid.aggregates.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxgrid.selection.js"/>"></script>

<script src="<c:url value="/resources/jqwidgets/demo/generatedata.js"/>"></script>

<script>
	$(document).ready(function(){
		let data = generatedata(200);
		let source = {
			"localdata" : data,
			"datatype" : "array",
			"datafields" : [
		    	{"name" : "firstname", "type" : "string"},
		    	{"name" : "lastname", "type" : "string"},
		    	{"name" : "productname", "type" : "string"},
		    	{"name" : "quantity", "type" : "number"},
		    	{"name" : "price", "type" : "number"}
			],
			"updaterow" : function(rowid, rowdata, commit) {
		    // synchronize with server - send update command
				commit(true);
			}
		};
	   
		let dataAdapter = new $.jqx.dataAdapter(source);
	   
	   	// initialize jqxGrid
	   	$("#grid").jqxGrid({
			"width" : 800,
			"source" : dataAdapter,
			"statusbarheight" : 25,
			"altrows" : true,
			
			"showstatusbar" : true,
			"showaggregates" : true,
			
			"columns" : [
			    {"test" : "First Name", "columntype" : "textbox", "datafield" : "firstname", "width" : 100},
			    {"test" : "Last Name", "datafield" : "lastname", "width" : 100},
			    {"test" : "Product", "datafield" : "productname", "width" : 200},
			    {"test" : "Quantity", "datafield" : "quantity", "width" : 100, "cellsalign" : "right", "cellsformat" : "n2",
			    "aggregates" : [{ '<b>Total</b>':
                    function (aggregatedValue, currentValue, column, record) {
                    	return "";
                	}
          		}]},
			    {"test" : "Price", "datafield" : "price", "width" : 250, "cellsalign" : "right", 
			        "aggregates" : [{ '<b>Total</b>':
                        function (aggregatedValue, currentValue, column, record) {
                        	var total = currentValue * parseInt(record['quantity']);
                        	return aggregatedValue + total;
                    	}
              		}]
				}
			]
	   	});
	});
</script>

<div class="default">
	<div id="jqxWidget">
		<div id="grid"></div>
	</div>
</div>