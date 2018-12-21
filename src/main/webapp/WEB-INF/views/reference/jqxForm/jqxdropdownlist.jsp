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
<script src="<c:url value="/resources/jqwidgets/jqxcheckbox.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxscrollbar.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxlistbox.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdropdownlist.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdata.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});

		let source = [
			"Affogato",
		    "Americano",
		    "Bicerin",
		    "Breve",
		    "Café Bombón",
		    "Affogato",
		    "Americano",
		    "Bicerin",
		    "Café Bombón",
		    "Café au lait"
		];
		
		
		/* Properties */
		// autoOpen
		let template_autoOpen = [{
		   	"bind" : "ddlAutoOpen",
		   	"name" : "ddlAutoOpen",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"autoOpen" : true	// property 설정
		}];
		
		$("#jqxForm_autoOpen").jqxForm({
		  	"template" : template_autoOpen
		});
		
		
		// autoItemsHeight
		let template_autoItemsHeight = [{
			"bind" : "ddlAutoItemsHeight",
			"name" : "ddlAutoItemsHeight",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,	
			"autoItemsHeight" : true	// property 설정
		}];
		
		$("#jqxForm_autoItemsHeight").jqxForm({
		  	"template" : template_autoItemsHeight
		});
		

		// autoDropDownHeight
		let template_autoDropDownHeight = [{
			"bind" : "ddlAutoDropDownHeight",
			"name" : "ddlAutoDropDownHeight",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,	
			"autoDropDownHeight" : true	// property 설정
		}];
		
		$("#jqxForm_autoDropDownHeight").jqxForm({
		  	"template" : template_autoDropDownHeight
		});
		

		// animationType
		let template_animationType = [{
			"bind" : "ddlAnimationType",
			"name" : "ddlAnimationType",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,	
			"animationType" : "fade"	// property 설정
		}];
		
		$("#jqxForm_animationType").jqxForm({
		  	"template" : template_animationType
		});
		

		// checkboxes
		let template_checkboxes = [{
			"bind" : "ddlCheckboxes",
			"name" : "ddlCheckboxes",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,	
			"checkboxes" : "fade"	// property 설정
		}];
		
		$("#jqxForm_checkboxes").jqxForm({
		  	"template" : template_checkboxes
		});
		
		
		// closeDelay
		let template_closeDelay = [{
			"bind" : "ddlCloseDelay",
			"name" : "ddlCloseDelay",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,	
			"closeDelay" : 1000	// property 설정
		}];
		
		$("#jqxForm_closeDelay").jqxForm({
		  	"template" : template_closeDelay
		});
		
		
		// disabled
		let template_disabled = [{
			"bind" : "ddlDisabled",
			"name" : "ddlDisabled",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,	
			"disabled" : true	// property 설정
		}];
		
		$("#jqxForm_disabled").jqxForm({
		  	"template" : template_disabled
		});
		

		// displayMember
		let source_displayMember = [
			{
				"text" : "Affogato",
				"value" : 1
			},
			{
				"text" : "Americano",
				"value" : 2
			},
			{
				"text" : "Bicerin",
				"value" : 3
			},
			{
				"text" : "Breve",
				"value" : 4
			},
			{
				"text" : "Café Bombón",
				"value" : 5
			},
			{
				"text" : "Affogato",
				"value" : 6
			},
			{
				"text" : "Americano",
				"value" : 7
			},
			{
				"text" : "Bicerin",
				"value" : 8
			},
			{
				"text" : "Breve",
				"value" : 9
			},
			{
				"text" : "Café Bombón",
				"value" : 10
			},
			{
				"text" : "Café au lait",
				"value" : 11
			}
		];
		
		let template_displayMember = [{
			"bind" : "ddlDisplayMember",
			"name" : "ddlDisplayMember",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source_displayMember,	
			"displayMember" : "text"	// property 설정
		}];
		
		$("#jqxForm_displayMember").jqxForm({
		  	"template" : template_displayMember
		});
		
		
		// dropDownHorizontalAlignment
		let template_dropDownHorizontalAlignment = [{
			"bind" : "ddlDropDownHorizontalAlignment",
			"name" : "ddlDropDownHorizontalAlignment",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,	
			"dropDownWidth" : 50,
			"dropDownHorizontalAlignment" : "right"	// property 설정
		}];
		
		$("#jqxForm_dropDownHorizontalAlignment").jqxForm({
		  	"template" : template_dropDownHorizontalAlignment
		});
		
		
		// dropDownVerticalAlignment
		let template_dropDownVerticalAlignment = [{
			"bind" : "ddlDropDownVerticalAlignment",
			"name" : "ddlDropDownVerticalAlignment",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"dropDownVerticalAlignment" : "top"	// property 설정
		}];
		
		$("#jqxForm_dropDownVerticalAlignment").jqxForm({
		  	"template" : template_dropDownVerticalAlignment
		});
		
		
		// dropDownHeight
		let template_dropDownHeight = [{
			"bind" : "ddlDropDownVerticalAlignment",
			"name" : "ddlDropDownVerticalAlignment",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"dropDownHeight" : 50	// property 설정
		}];
		
		$("#jqxForm_dropDownHeight").jqxForm({
		  	"template" : template_dropDownHeight
		});
		
		
		// dropDownWidth
		let template_dropDownWidth = [{
			"bind" : "ddlDropDownWidth",
			"name" : "ddlDropDownWidth",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"dropDownWidth" : 50	// property 설정
		}];
		
		$("#jqxForm_dropDownWidth").jqxForm({
		  	"template" : template_dropDownWidth
		});
		
		
		// enableSelection
		let template_enableSelection = [{
			"bind" : "ddlDropDownWidth",
			"name" : "ddlDropDownWidth",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"enableSelection" : false	// property 설정
		}];
		
		$("#jqxForm_enableSelection").jqxForm({
		  	"template" : template_enableSelection
		});
		
		
		// enableBrowserBoundsDetection
		let template_enableBrowserBoundsDetection = [{
			"bind" : "ddlEnableBrowserBoundsDetection",
			"name" : "ddlEnableBrowserBoundsDetection",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"enableBrowserBoundsDetection" : true	// property 설정
		}];
		
		$("#jqxForm_enableBrowserBoundsDetection").jqxForm({
		  	"template" : template_enableBrowserBoundsDetection
		});
		

		// enableHover
		let template_enableHover = [{
			"bind" : "ddlEnableBrowserBoundsDetection",
			"name" : "ddlEnableBrowserBoundsDetection",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"enableHover" : false	// property 설정
		}];
		
		$("#jqxForm_enableHover").jqxForm({
		  	"template" : template_enableHover
		});
		

		// filterable
		let template_filterable = [{
			"bind" : "ddlEnableBrowserBoundsDetection",
			"name" : "ddlEnableBrowserBoundsDetection",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"filterable" : true	// property 설정
		}];
		
		$("#jqxForm_filterable").jqxForm({
		  	"template" : template_filterable
		});
		
		
		// filterHeight
		let template_filterHeight = [{ 
			"bind" : "ddlEnableBrowserBoundsDetection",
			"name" : "ddlEnableBrowserBoundsDetection",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"filterable" : true,
			"filterHeight" : 50	// property 설정
		}];
		
		$("#jqxForm_filterHeight").jqxForm({
		  	"template" : template_filterHeight
		});
		
		
		// filterDelay
		let template_filterDelay = [{ 
			"bind" : "ddlEnableBrowserBoundsDetection",
			"name" : "ddlEnableBrowserBoundsDetection",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"filterable" : true,
			"filterDelay" : 1000	// property 설정
		}];
		
		$("#jqxForm_filterDelay").jqxForm({
		  	"template" : template_filterDelay
		});
		
		
		// filterPlaceHolder
		let template_filterPlaceHolder = [{ 
			"bind" : "ddlFilterPlaceHolder",
			"name" : "ddlFilterPlaceHolder",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"filterable" : true,
			"filterPlaceHolder" : "Hello~"	// property 설정
		}];
		
		$("#jqxForm_filterPlaceHolder").jqxForm({
		  	"template" : template_filterPlaceHolder
		});
		
		
		// height
		let template_height = [{ 
			"bind" : "ddlFilterPlaceHolder",
			"name" : "ddlFilterPlaceHolder",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"height" : 50	// property 설정
		}];
		
		$("#jqxForm_height").jqxForm({
		  	"template" : template_height
		});
		
		
		// incrementalSearch
		let template_incrementalSearch = [{ 
			"bind" : "ddlFilterPlaceHolder",
			"name" : "ddlFilterPlaceHolder",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"incrementalSearch" : true	// property 설정
		}];
		
		$("#jqxForm_incrementalSearch").jqxForm({
		  	"template" : template_incrementalSearch
		});
		
		
		// incrementalSearchDelay
		let template_incrementalSearchDelay = [{ 
			"bind" : "ddlFilterPlaceHolder",
			"name" : "ddlFilterPlaceHolder",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"incrementalSearchDelay" : 1500	// property 설정
		}];
		
		$("#jqxForm_incrementalSearchDelay").jqxForm({
		  	"template" : template_incrementalSearchDelay
		});
		
		
		// itemHeight
		let template_itemHeight = [{ 
			"bind" : "ddlFilterPlaceHolder",
			"name" : "ddlFilterPlaceHolder",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"itemHeight" : 50	// property 설정
		}];
		
		$("#jqxForm_itemHeight").jqxForm({
		  	"template" : template_itemHeight
		});
		
		
		// openDelay
		let template_openDelay = [{ 
			"bind" : "ddlOpenDelay",
			"name" : "ddlOpenDelay",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"openDelay" : 1000	// property 설정
		}];
		
		$("#jqxForm_openDelay").jqxForm({
		  	"template" : template_openDelay
		});
		

		// placeHolder
		let template_placeHolder = [{ 
			"bind" : "ddlPlaceHolder",
			"name" : "ddlPlaceHolder",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"placeHolder" : "Please Choose:"	// property 설정
		}];
		
		$("#jqxForm_placeHolder").jqxForm({
		  	"template" : template_placeHolder
		});
		
		
		// popupZIndex
		let template_popupZIndex = [{ 
			"bind" : "ddlPlaceHolder",
			"name" : "ddlPlaceHolder",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"popupZIndex" : 3000	// property 설정
		}];
		
		$("#jqxForm_popupZIndex").jqxForm({
		  	"template" : template_popupZIndex
		});
		

		// rtl
		let template_rtl = [{ 
			"bind" : "ddlRtl",
			"name" : "ddlRtl",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"rtl" : true	// property 설정
		}];
		
		$("#jqxForm_rtl").jqxForm({
		  	"template" : template_rtl
		});
		

		// renderer
		/*
		let firstNames = ["Nancy", "Andrew", "Janet", "Margaret", "Steven", "Michael", "Robert", "Laura", "Anne"];
		let lastNames = ["Davolio", "Fuller", "Leverling", "Peacock", "Buchanan", "Suyama", "King", "Callahan", "Dodsworth"];
		let titles = ["Sales Representative", "Vice President, Sales", "Sales Representative", "Sales Representative", "Sales Manager", "Sales Representative", "Sales Representative", "Inside Sales Coordinator", "Sales Representative"];
		
		let data = new Array();
		
		for(let i = 0; i < firstNames.length; i++) {
			let row = {};
			row["firstName"] = firstNames[i];
			row["lastName"] = lastNames[i];
			row["title"] = titles[i];
			
			data[i] = row;
		}
		
		let source_renderer = {
			"localdata" : data,
			"datatype" : "array"
		};
		
		// data adapter 생성
		let dataAdapter = new $.jqx.dataAdapter(source_renderer); 
		
		let template_renderer = [{ 
			"bind" : "ddlRenderer",
			"name" : "ddlRenderer",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : dataAdapter,
			"displayMember" : "firstname",
			"valueMember" : "lastName",
		}];
		
		$("#jqxForm_renderer").jqxForm({
		  	"template" : template_renderer
		});
		
		
		let ddlRenderer = $("#jqxinputForm_renderer").jqxForm("getComponentByName", "ddlRenderer");
		ddlRenderer.jqxDropDownList("renderer", 
			function(index, label, value){
				let row = data[index];
				
				let table = "<table style='min-width: 150px;'><tr><td>" + row.firstName + " " + row.lastName + "</td></tr><tr><td>"
					+ row.title + "</td></tr></table>";
				return table;
			}
		);
		*/
		
		
		// selectionRenderer
		/*
		let template_selectionRenderer = [{ 
			"bind" : "ddlSelectionRenderer",
			"name" : "ddlSelectionRenderer",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source
		}];
		
		$("#jqxForm_selectionRenderer").jqxForm({
		  	"template" : template_selectionRenderer
		});
		
		// property 설정
		let ddlSelectionRenderer = $("#jqxinputForm_selectionRenderer").jqxForm("getComponentByName", "ddlSelectionRenderer");
		ddlSelectionRenderer.jqxDropDownList("selectionRenderer", 
			function() {
				let item = ddlSelectRenderer.jqxDropDownList("getSelectedItem");
				alert(item);
				
				if(item) {
					return "<b>" + item.label + "</b>";
				} 
			}
		);
		let selectionRenderer = ddlSelectionRenderer.jqxDropDownList("selectionRenderer");
		*/
		
		
		// searchMode
		let template_searchMode = [{ 
			"bind" : "ddlSearchMode",
			"name" : "ddlSearchMode",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"searchMode" : "endswithignorecase"	// property 설정
		}];
		
		$("#jqxForm_searchMode").jqxForm({
		  	"template" : template_searchMode
		});
		
		
		// scrollBarSize
		let template_scrollBarSize= [{ 
			"bind" : "ddlScrollBarSize",
			"name" : "ddlScrollBarSize",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"scrollBarSize" : 30	// property 설정
		}];
		
		$("#jqxForm_scrollBarSize").jqxForm({
		  	"template" : template_scrollBarSize
		});
		
		
		// source
		let template_source = [{ 
			"bind" : "ddlSource",
			"name" : "ddlSource",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source	// property 설정
		}];
		
		$("#jqxForm_source").jqxForm({
		  	"template" : template_source
		});
		
		
		// selectedIndex
		let template_selectedIndex = [{ 
			"bind" : "ddlSelectedIndex",
			"name" : "ddlSelectedIndex",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"selectedIndex" : 3	// property 설정
		}];
		
		$("#jqxForm_selectedIndex").jqxForm({
		  	"template" : template_selectedIndex
		});
		

		// template
		let template_template = [{ 
			"bind" : "ddlTemplate",
			"name" : "ddlTemplate",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"template" : "success"	// property 설정
		}];
		
		$("#jqxForm_template").jqxForm({
		  	"template" : template_template
		});
		

		// theme
		let template_theme = [{ 
			"bind" : "ddlTheme",
			"name" : "ddlTheme",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"theme" : "energyblue"	// property 설정
		}];
		
		$("#jqxForm_theme").jqxForm({
		  	"template" : template_theme
		});
		

		// valueMember
		let source_valueMember = [
			{
				"text" : "Affogato",
				"value" : 1
			},
			{
				"text" : "Americano",
				"value" : 2
			},
			{
				"text" : "Bicerin",
				"value" : 3
			},
			{
				"text" : "Breve",
				"value" : 4
			},
			{
				"text" : "Café Bombón",
				"value" : 5
			},
			{
				"text" : "Affogato",
				"value" : 6
			},
			{
				"text" : "Americano",
				"value" : 7
			},
			{
				"text" : "Bicerin",
				"value" : 8
			},
			{
				"text" : "Breve",
				"value" : 9
			},
			{
				"text" : "Café Bombón",
				"value" : 10
			},
			{
				"text" : "Café au lait",
				"value" : 11
			}
		];
		
		let template_valueMember = [{
			"bind" : "ddlValueMember",
			"name" : "ddlValueMember",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source_valueMember,	
			"displayMember" : "text",
			"valueMember" : "value"	// property 설정
		}];
		
		$("#jqxForm_valueMember").jqxForm({
		  	"template" : template_valueMember
		});
		

		// width
		let template_width = [{ 
			"bind" : "ddlWidth",
			"name" : "ddlWidth",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source,
			"width" : 200	// property 설정
		}];
		
		$("#jqxForm_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		// bindingComplete
		let template_eventBindingComplete = [{ 
			"bind" : "ddlEventBindingComplete",
			"name" : "ddlEventBindingComplete",
			"type" : "option",
			"component" : "jqxDropDownList"
		}];
		
		
		$("#jqxForm_event_bindingComplete").jqxForm({
			"template" : template_eventBindingComplete
		});
		
		let ddlEventBindingComplete = $("#jqxForm_event_bindingComplete").jqxForm("getComponentByName", "ddlEventBindingComplete"); 
		ddlEventBindingComplete.on("bindingComplete", function(event) {
			$("#log_event_bindingComplete").html("bindingComplete event occurred!!!");
		});
		
		ddlEventBindingComplete.jqxDropDownList("source", source);

		
		// close
		let template_eventClose = [{ 
			"bind" : "ddlEventClose",
			"name" : "ddlEventClose",
			"type" : "option",
			"component" : "jqxDropDownList",
			"options" : source
		}];
		
		
		$("#jqxForm_event_close").jqxForm({
			"template" : template_eventClose
		});
		
		let ddlEventClose = $("#jqxForm_event_close").jqxForm("getComponentByName", "ddlEventClose"); 
		ddlEventClose.on("close", function(event) {
			$("#log_event_close").html("close event occurred!!!");
		});
		
		
		// checkChange
		let template_eventCheckChange = [{ 
			"bind" : "ddlEventCheckChange",
			"name" : "ddlEventCheckChange",
			"type" : "option",
			"component" : "jqxDropDownList",
			"checkboxes" : true,
			"width" : 200,
			"options" : source
		}];
		
		
		$("#jqxForm_event_checkChange").jqxForm({
			"template" : template_eventCheckChange
		});
		
		let ddlEventCheckChange = $("#jqxForm_event_checkChange").jqxForm("getComponentByName", "ddlEventCheckChange"); 
		ddlEventCheckChange.on("checkChange", function(event) {
			let args = event.args;
			let item = args.item; 
			
			if(item) {
				let label = item.label;
				let value = item.value;
				let disabled = item.disabled;
				let checked = item.checked;
				let hasThreeStates = item.hasThreeStates;
				let html = item.html;
				let index = item.index;
				let group = item.group;
				
				$("#log_event_checkChange").html("checkChange event occurred!!! checked label : " + label);
			}
		});
		

		// change
		let template_eventChange = [{ 
			"bind" : "ddlEventChange",
			"name" : "ddlEventChange",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		
		$("#jqxForm_event_change").jqxForm({
			"template" : template_eventChange
		});
		
		let ddlEventChange = $("#jqxForm_event_change").jqxForm("getComponentByName", "ddlEventChange"); 
		ddlEventChange.on("change", function(event) {
			let args = event.args;
			let item = args.item;
			
			if(item) {
				let label = item.label;
				let value = item.value;
				let disabled = item.disabled;
				let checked = item.checked;
				let hasThreeStates = item.hasThreeStates;
				let html = item.html;
				let index = item.index;
				let group = item.group;
				
				$("#log_event_change").html("change event occurred!!! selected label : " + label);
			}
		});
		
		
		// open
		let template_eventOpen = [{ 
			"bind" : "ddlEventOpen",
			"name" : "ddlEventOpen",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		
		$("#jqxForm_event_open").jqxForm({
			"template" : template_eventOpen
		});
		
		let ddlEventOpen = $("#jqxForm_event_open").jqxForm("getComponentByName", "ddlEventOpen"); 
		ddlEventOpen.on("open", function(event) {
			$("#log_event_open").html("open event occurred!!!");
		});
		
		
		// select
		let template_eventSelect = [{ 
			"bind" : "ddlEventSelect",
			"name" : "ddlEventSelect",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		
		$("#jqxForm_event_select").jqxForm({
			"template" : template_eventSelect
		});
		
		let ddlEventSelect = $("#jqxForm_event_select").jqxForm("getComponentByName", "ddlEventSelect"); 
		ddlEventSelect.on("select", function(event) {
			let args = event.args;
			let item = args.item;

			if(item) {
				let type = args.type;
				
				let label = item.label;
				let value = item.value;
				let disabled = item.disabled;
				let checked = item.checked;
				let hasThreeStates = item.hasThreeStates;
				let html = item.html;
				let index = item.index;
				let group = item.group;
				
				
				$("#log_event_select").html("select event occurred!!! selected item : " + label + 
					" // selected by : " + type);
			}
		});
		
		
		// unselect
		let template_eventUnselect = [{ 
			"bind" : "ddlEventUnselect",
			"name" : "ddlEventUnselect",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		
		$("#jqxForm_event_unselect").jqxForm({
			"template" : template_eventUnselect
		});
		
		
		/* Event 설정 */
		let ddlEventUnselect = $("#jqxForm_event_unselect").jqxForm("getComponentByName", "ddlEventUnselect"); 
		ddlEventUnselect.on("unselect", function(event) {
			let args = event.args;
			let item = args.item;
		
			if(item) {
				let type = args.type;
				
				let label = item.label;
				let value = item.value;
				let disabled = item.disabled;
				let checked = item.checked;
				let hasThreeStates = item.hasThreeStates;
				let html = item.html;
				let index = item.index;
				let group = item.group;
				
				
				$("#log_event_unselect").html("unselect event occurred!!! previous selected item : " + label + 
					" // selected by : " + type);
			}
		});
		
		
		/* Methods */
		// addItem
		let template_methodAddItem = [{ 
			"bind" : "ddlMethodAddItem",
			"name" : "ddlMethodAddItem",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_addItem").jqxForm({
		  	"template" : template_methodAddItem
		});
		
		let ddlMethodAddItem = $("#jqxForm_method_addItem").jqxForm("getComponentByName", "ddlMethodAddItem");
		 
		$("#btnAddItem").on("click", function() {
			// case 1 : String으로 추가
			ddlMethodAddItem.jqxDropDownList("addItem", "useString");
			
			// case 2 : Object로 추가 
			let myObj = {
				"label" : "useObject",
				"value" : "1"
			};
			
		   	ddlMethodAddItem.jqxDropDownList("addItem", myObj);
		});
		
		
		// clearSelection
		let template_methodClearSelection = [{ 
			"bind" : "ddlMethodClearSelection",
			"name" : "ddlMethodClearSelection",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source,
			"selectedIndex" : 0
		}];
		
		$("#jqxForm_method_clearSelection").jqxForm({
		  	"template" : template_methodClearSelection
		});
		
		
		let ddlMethodClearSelection = $("#jqxForm_method_clearSelection").jqxForm("getComponentByName", "ddlMethodClearSelection");
		 
		$("#btnClearSelection").on("click", function() {
			ddlMethodClearSelection.jqxDropDownList("clearSelection");
		});
		
		
		// clear
		let template_methodClear = [{ 
			"bind" : "ddlMethodClear",
			"name" : "ddlMethodClear",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_clear").jqxForm({
		  	"template" : template_methodClear
		});
		
		let ddlMethodClear = $("#jqxForm_method_clear").jqxForm("getComponentByName", "ddlMethodClear");
		 
		$("#btnClear").on("click", function() {
			ddlMethodClear.jqxDropDownList("clear");
		});
		
		
		// close
		let template_methodClose = [{ 
			"bind" : "ddlMethodClose",
			"name" : "ddlMethodClose",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_close").jqxForm({
		  	"template" : template_methodClose
		});
		
		let ddlMethodClose = $("#jqxForm_method_close").jqxForm("getComponentByName", "ddlMethodClose");
		 
		$("#btnClose").on("click", function() {
			ddlMethodClose.jqxDropDownList("close");
		});
		
		
		// checkIndex
		let template_methodCheckIndex = [{ 
			"bind" : "ddlMethodCheckIndex",
			"name" : "ddlMethodCheckIndex",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source,
			"checkboxes" : true			
		}];
		
		$("#jqxForm_method_checkIndex").jqxForm({
		  	"template" : template_methodCheckIndex
		});
		
		let ddlMethodCheckIndex = $("#jqxForm_method_checkIndex").jqxForm("getComponentByName", "ddlMethodCheckIndex");
		 
		$("#btnCheckIndex").on("click", function() {
			ddlMethodCheckIndex.jqxDropDownList("checkIndex", 1);
		});
		
		
		// checkItem
		let template_methodCheckItem = [{ 
			"bind" : "ddlMethodCheckItem",
			"name" : "ddlMethodCheckItem",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source,
			"checkboxes" : true
		}];
		
		$("#jqxForm_method_checkItem").jqxForm({
		  	"template" : template_methodCheckItem
		});
		
		let ddlMethodCheckItem = $("#jqxForm_method_checkItem").jqxForm("getComponentByName", "ddlMethodCheckItem");
		 
		$("#btnCheckItem").on("click", function() {
			ddlMethodCheckItem.jqxDropDownList("checkItem", "Breve");	// "Breve" 값 check
		});
		
		
		// checkAll
		let template_methodCheckAll = [{ 
			"bind" : "ddlMethodCheckAll",
			"name" : "ddlMethodCheckAll",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source,
			"checkboxes" : true
		}];
		
		$("#jqxForm_method_checkAll").jqxForm({
		  	"template" : template_methodCheckAll
		});
		
		let ddlMethodCheckAll = $("#jqxForm_method_checkAll").jqxForm("getComponentByName", "ddlMethodCheckAll");
		 
		$("#btnCheckAll").on("click", function() {
			ddlMethodCheckAll.jqxDropDownList("checkAll");	
		});
		
		
		// clearFilter
		let template_methodClearFilter= [{ 
			"bind" : "ddlMethodClearFilter",
			"name" : "ddlMethodClearFilter",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source,
			"filterable" : true
		}];
		
		$("#jqxForm_method_clearFilter").jqxForm({
		  	"template" : template_methodClearFilter
		});
		
		let ddlMethodClearFilter = $("#jqxForm_method_clearFilter").jqxForm("getComponentByName", "ddlMethodClearFilter");
		 
		$("#btnClearFilter").on("click", function() {
			ddlMethodClearFilter.jqxDropDownList("clearFilter");	
		});
		
		
		// destroy
		let template_methodDestroy= [{ 
			"bind" : "ddlMethodDestroy",
			"name" : "ddlMethodDestroy",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_destroy").jqxForm({
		  	"template" : template_methodDestroy
		});
		
		let ddlMethodDestroy = $("#jqxForm_method_destroy").jqxForm("getComponentByName", "ddlMethodDestroy");
		 
		$("#btnDestroy").on("click", function() {
			ddlMethodDestroy.jqxDropDownList("destroy");	
		});
		
		
		// disableItem
		let template_methodDisableItem = [{ 
			"bind" : "ddlMethodDisableItem",
			"name" : "ddlMethodDisableItem",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_disableItem").jqxForm({
		  	"template" : template_methodDisableItem
		});
		
		let ddlMethodDisableItem = $("#jqxForm_method_disableItem").jqxForm("getComponentByName", "ddlMethodDisableItem");
		 
		$("#btnDisableItem").on("click", function() {
			// case 1 : String으로 추가
			ddlMethodDisableItem.jqxDropDownList("disableItem","Breve");
			
			// case 2 : Object로 추가 
			let myObj = {
				"value" : "Americano"
			};
			
		   	ddlMethodDisableItem.jqxDropDownList("disableItem", myObj);
		});
		
		
		// disableAt
		let template_methodDisableAt = [{ 
			"bind" : "ddlMethodDisableAt",
			"name" : "ddlMethodDisableAt",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_disableAt").jqxForm({
		  	"template" : template_methodDisableAt
		});
		
		let ddlMethodDisableAt = $("#jqxForm_method_disableAt").jqxForm("getComponentByName", "ddlMethodDisableAt");
		 
		$("#btnDisableAt").on("click", function() {
			ddlMethodDisableAt.jqxDropDownList("disableAt", 1);	// 2번째 item 비활성화
		});
		
		
		// enableItem
		let template_methodEnableItem = [{ 
			"bind" : "ddlMethodEnableItem",
			"name" : "ddlMethodEnableItem",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_enableItem").jqxForm({
		  	"template" : template_methodEnableItem
		});
		
		let ddlMethodEnableItem = $("#jqxForm_method_enableItem").jqxForm("getComponentByName", "ddlMethodEnableItem");
		 
		for(let i=0; i<10; i++) {
			ddlMethodEnableItem.jqxDropDownList("disableAt", i);	// 비활성화
		}
		
		$("#btnEnableItem").on("click", function() {
			// case 1 : String으로 추가
			ddlMethodEnableItem.jqxDropDownList("enableItem", "Breve");
			
			// case 2 : Object로 추가 
			let myObj = {
				"value" : "Americano"
			};
			
		   	ddlMethodEnableItem.jqxDropDownList("enableItem", myObj);
		});
		
		
		// enableAt
		let template_methodEnableAt = [{ 
			"bind" : "ddlMethodEnableAt",
			"name" : "ddlMethodEnableAt",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_enableAt").jqxForm({
		  	"template" : template_methodEnableAt
		});
		
		let ddlMethodEnableAt = $("#jqxForm_method_enableAt").jqxForm("getComponentByName", "ddlMethodEnableAt");
		
		for(let i=0; i<10; i++) {
			ddlMethodEnableAt.jqxDropDownList("disableAt", i);	// 비활성화
		}
		
		$("#btnEnableAt").on("click", function() {
			ddlMethodEnableAt.jqxDropDownList("enableAt", 1);	// 2번째 item 활성화
		});
		
		
		// ensureVisible
		let template_methodEnsureVisible= [{ 
			"bind" : "ddlMethodEnsureVisible",
			"name" : "ddlMethodEnsureVisible",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_ensureVisible").jqxForm({
		  	"template" : template_methodEnsureVisible
		});
		
		let ddlMethodEnsureVisible= $("#jqxForm_method_ensureVisible").jqxForm("getComponentByName", "ddlMethodEnsureVisible");
		 
		$("#btnEnsureVisible").on("click", function() {
			ddlMethodEnsureVisible.jqxDropDownList("open");
			ddlMethodEnsureVisible.jqxDropDownList("ensureVisible", source.length - 1);	// 마지막 index 위치 보이도록
		});
		
		
		// focus
		let template_methodFocus= [{ 
			"bind" : "ddlMethodFocus",
			"name" : "ddlMethodFocus",
			"type" : "option",
			"component" : "jqxDropDownList",
			"width" : 200,
			"options" : source
		}];
		
		$("#jqxForm_method_focus").jqxForm({
		  	"template" : template_methodFocus
		});
		
		let ddlMethodFocus = $("#jqxForm_method_focus").jqxForm("getComponentByName", "ddlMethodFocus");
		 
		$("#btnFocus").on("click", function() {
			ddlMethodFocus.jqxDropDownList("focus");
		});
		
		
		// getItem
		// getItemByValue
		// getItems
		// getCheckedItems
		// getSelectedItem
		// getSelectedIndex
		// insertAt
		// isOpened
		// indeterminateIndex
		// indeterminateItem
		// loadFromSelect
		// open
		// removeItem
		// removeAt
		// selectIndex
		// selectItem
		// setContent
		// updateItem
		// updateAt
		// unselectIndex
		// unselectItem
		// uncheckIndex
		// uncheckItem
		// uncheckAll
		// val
		
		
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
			<!-- autoOpen -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">autoOpen</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_autoOpen"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트를 자동적으로 여는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_autoOpen = [{
	"bind" : "ddlAutoOpen",
	"name" : "ddlAutoOpen",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"autoOpen" : true	// property 설정
}];

$("#jqxForm_autoOpen").jqxForm({
  	"template" : template_autoOpen
});

// case 2 : element에 property 설정
let ddlAutoOpen = $("#jqxinputForm_autoOpen").jqxForm("getComponentByName", "ddlAutoOpen");
ddlAutoOpen.jqxDropDownList("autoOpen", true);


/* Get Property */

let ddlAutoOpen = $("#jqxinputForm_autoOpen").jqxForm("getComponentByName", "ddlAutoOpen");
let autoOpen = ddlAutoOpen.jqxDropDownList("autoOpen"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- autoItemsHeight -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">autoItemsHeight</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_autoItemsHeight"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내용의 길이가 긴 경우 자동으로 현재 width에 맞춰서 여러줄로 표시하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_autoItemsHeight = [{
	"bind" : "ddlAutoItemsHeight",
	"name" : "ddlAutoItemsHeight",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"autoItemsHeight" : true	// property 설정
}];

$("#jqxForm_autoItemsHeight").jqxForm({
  	"template" : template_autoItemsHeight
});

// case 2 : element에 property 설정
let ddlAutoItemsHeight = $("#jqxinputForm_autoItemsHeight").jqxForm("getComponentByName", "ddlAutoItemsHeight");
ddlAutoItemsHeight.jqxDropDownList("autoItemsHeight", true);


/* Get Property */

let ddlAutoItemsHeight = $("#jqxinputForm_autoItemsHeight").jqxForm("getComponentByName", "ddlAutoItemsHeight");
let autoItemsHeight = ddlAutoItemsHeight.jqxDropDownList("autoItemsHeight"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- autoDropDownHeight -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">autoDropDownHeight</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_autoDropDownHeight"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 아이템들의 높이를 합쳐 드롭다운리스트의 높이를 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_autoDropDownHeight = [{
	"bind" : "ddlAutoDropDownHeight",
	"name" : "ddlAutoDropDownHeight",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"autoDropDownHeight" : true	// property 설정
}];

$("#jqxForm_autoDropDownHeight").jqxForm({
  	"template" : template_autoDropDownHeight
});

// case 2 : element에 property 설정
let ddlAutoDropDownHeight = $("#jqxinputForm_autoDropDownHeight").jqxForm("getComponentByName", "ddlAutoDropDownHeight");
ddlAutoDropDownHeight.jqxDropDownList("autoDropDownHeight", true);


/* Get Property */

let ddlAutoDropDownHeight = $("#jqxinputForm_autoItemsHeight").jqxForm("getComponentByName", "ddlAutoDropDownHeight");
let autoDropDownHeight = ddlAutoDropDownHeight.jqxDropDownList("autoDropDownHeight"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- animationType -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">animationType</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"default"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_animationType"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트의 애니메이션을 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"fade"</p>
						<p>"slide" - default</p>
						<p>"none"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_animationType = [{
	"bind" : "ddlAnimationType",
	"name" : "ddlAnimationType",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"animationType" : "fade"	// property 설정
}];

$("#jqxForm_animationType").jqxForm({
  	"template" : template_animationType
});

// case 2 : element에 property 설정
let ddlAnimationType = $("#jqxinputForm_animationType").jqxForm("getComponentByName", "ddlAnimationType");
ddlAnimationType.jqxDropDownList("animationType", "fade");


/* Get Property */

let ddlAnimationType = $("#jqxinputForm_animationType").jqxForm("getComponentByName", "ddlAnimationType");
let animationType = ddlAnimationType.jqxDropDownList("animationType"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- checkboxes -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">checkboxes</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_checkboxes"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트에 체크박스기능을 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<p>jqxcheckbox.js가 필요합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_checkboxes = [{
	"bind" : "ddlCheckboxes",
	"name" : "ddlCheckboxes",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"checkboxes" : "fade"	// property 설정
}];

$("#jqxForm_checkboxes").jqxForm({
  	"template" : template_checkboxes
});

// case 2 : element에 property 설정
let ddlCheckboxes = $("#jqxinputForm_checkboxes").jqxForm("getComponentByName", "ddlCheckboxes");
ddlCheckboxes.jqxDropDownList("checkboxes", true);


/* Get Property */

let ddlCheckboxes = $("#jqxinputForm_checkboxes").jqxForm("getComponentByName", "ddlCheckboxes");
let checkboxes = ddlCheckboxes.jqxDropDownList("checkboxes"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- closeDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">closeDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					300
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_closeDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트가 닫히는 애니메이션 속도를 설정하거나 가져옵니다. (ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_closeDelay = [{
	"bind" : "ddlCloseDelay",
	"name" : "ddlCloseDelay",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"closeDelay" : 1000	// property 설정
}];

$("#jqxForm_closeDelay").jqxForm({
  	"template" : template_closeDelay
});

// case 2 : element에 property 설정
let ddlCloseDelay = $("#jqxinputForm_closeDelay").jqxForm("getComponentByName", "ddlCloseDelay");
ddlCloseDelay.jqxDropDownList("closeDelay", 1000);


/* Get Property */

let ddlCloseDelay = $("#jqxinputForm_closeDelay").jqxForm("getComponentByName", "ddlCloseDelay");
let closeDelay = ddlCloseDelay.jqxDropDownList("closeDelay"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- disabled -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">disabled</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_disabled"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트를 비활성화하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_disabled = [{
	"bind" : "ddlDisabled",
	"name" : "ddlDisabled",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"disabled" : true	// property 설정
}];

$("#jqxForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let ddlDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "ddlDisabled");
ddlDisabled.jqxDropDownList("disabled", true);


/* Get Property */

let ddlDisabled = $("#jqxinputForm_disabled").jqxForm("getComponentByName", "ddlDisabled");
let disabled = ddlDisabled.jqxDropDownList("disabled"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- displayMember -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">displayMember</span>
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
						<div id="jqxForm_displayMember"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>화면에 표시할 드롭다운리스트의 item명을 설정하거나 가져옵니다.</p>
						<p>item명은 source프로퍼티 내에 포함합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	{
		"text" : "Affogato",
		"value" : 1
	},
	{
		"text" : "Americano",
		"value" : 2
	},
	{
		"text" : "Bicerin",
		"value" : 3
	},
	{
		"text" : "Breve",
		"value" : 4
	},
	{
		"text" : "Café Bombón",
		"value" : 5
	},
	{
		"text" : "Affogato",
		"value" : 6
	},
	{
		"text" : "Americano",
		"value" : 7
	},
	{
		"text" : "Bicerin",
		"value" : 8
	},
	{
		"text" : "Breve",
		"value" : 9
	},
	{
		"text" : "Café Bombón",
		"value" : 10
	},
	{
		"text" : "Café au lait",
		"value" : 11
	}
];

let template_displayMember = [{
	"bind" : "ddlDisplayMember",
	"name" : "ddlDisplayMember",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"displayMember" : "text"	// property 설정
}];

$("#jqxForm_displayMember").jqxForm({
  	"template" : template_displayMember
});

// case 2 : element에 property 설정
let ddlDisplayMember = $("#jqxinputForm_displayMember").jqxForm("getComponentByName", "ddlDisplayMember");
ddlDisplayMember.jqxDropDownList("displayMember", "text");


/* Get Property */

let ddlDisplayMember = $("#jqxinputForm_displayMember").jqxForm("getComponentByName", "ddlDisplayMember");
let displayMember = ddlDisplayMember.jqxDropDownList("displayMember"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- dropDownHorizontalAlignment -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownHorizontalAlignment</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"left"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_dropDownHorizontalAlignment"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트가 나타나는 수평위치를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_dropDownHorizontalAlignment = [{
	"bind" : "ddlDropDownHorizontalAlignment",
	"name" : "ddlDropDownHorizontalAlignment",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"dropDownWidth" : 50,	
	"dropDownHorizontalAlignment" : "right"	// property 설정
}];

$("#jqxForm_dropDownHorizontalAlignment").jqxForm({
  	"template" : template_dropDownHorizontalAlignment
});

// case 2 : element에 property 설정
let ddlDropDownHorizontalAlignment = $("#jqxinputForm_dropDownHorizontalAlignment").jqxForm("getComponentByName", "ddlDropDownHorizontalAlignment");
ddlDropDownHorizontalAlignment.jqxDropDownList("dropDownHorizontalAlignment", "right");


/* Get Property */

let ddlDropDownHorizontalAlignment = $("#jqxinputForm_dropDownHorizontalAlignment").jqxForm("getComponentByName", "ddlDropDownHorizontalAlignment");
let dropDownHorizontalAlignment = ddlDropDownHorizontalAlignment.jqxDropDownList("dropDownHorizontalAlignment"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- dropDownVerticalAlignment -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownVerticalAlignment</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"bottom"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_dropDownVerticalAlignment"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트가 나타나는 수직위치를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_dropDownVerticalAlignment = [{
	"bind" : "ddlDropDownVerticalAlignment",
	"name" : "ddlDropDownVerticalAlignment",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"dropDownVerticalAlignment" : "top"	// property 설정
}];

$("#jqxForm_dropDownVerticalAlignment").jqxForm({
  	"template" : template_dropDownVerticalAlignment
});

// case 2 : element에 property 설정
let ddlDropDownVerticalAlignment = $("#jqxinputForm_dropDownVerticalAlignment").jqxForm("getComponentByName", "ddlDropDownVerticalAlignment");
ddlDropDownVerticalAlignment.jqxDropDownList("dropDownVerticalAlignment", "top");


/* Get Property */

let ddlDropDownVerticalAlignment = $("#jqxinputForm_dropDownVerticalAlignment").jqxForm("getComponentByName", "ddlDropDownVerticalAlignment");
let dropDownVerticalAlignment = ddlDropDownVerticalAlignment.jqxDropDownList("dropDownVerticalAlignment"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- dropDownHeight -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownHeight</span>
				</td>
				<td>
					<span>Number/String</span>
				</td>
				<td>
					200
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_dropDownHeight"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_dropDownHeight = [{
	"bind" : "ddlDropDownVerticalAlignment",
	"name" : "ddlDropDownVerticalAlignment",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"dropDownHeight" : 50	// property 설정
}];

$("#jqxForm_dropDownHeight").jqxForm({
  	"template" : template_dropDownHeight
});

// case 2 : element에 property 설정
let ddlDropDownHeight = $("#jqxinputForm_dropDownHeight").jqxForm("getComponentByName", "ddlDropDownHeight");
ddlDropDownHeight.jqxDropDownList("dropDownHeight", 50);


/* Get Property */

let ddlDropDownHeight = $("#jqxinputForm_dropDownHeight").jqxForm("getComponentByName", "ddlDropDownHeight");
let dropDownHeight = ddlDropDownHeight.jqxDropDownList("dropDownHeight"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- dropDownWidth -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">dropDownWidth</span>
				</td>
				<td>
					<span>Number/String</span>
				</td>
				<td>
					"auto"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_dropDownWidth"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트의 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_dropDownWidth = [{
	"bind" : "ddlDropDownWidth",
	"name" : "ddlDropDownWidth",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"dropDownWidth" : 50	// property 설정
}];

$("#jqxForm_dropDownWidth").jqxForm({
  	"template" : template_dropDownWidth
});

// case 2 : element에 property 설정
let ddlDropDownWidth = $("#jqxinputForm_dropDownWidth").jqxForm("getComponentByName", "ddlDropDownWidth");
ddlDropDownWidth.jqxDropDownList("dropDownWidth", 50);


/* Get Property */

let ddlDropDownWidth = $("#jqxinputForm_dropDownWidth").jqxForm("getComponentByName", "ddlDropDownWidth");
let dropDownWidth = ddlDropDownWidth.jqxDropDownList("dropDownWidth"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableSelection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableSelection</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					true
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_enableSelection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트에서 선택한 값이 위젯에 출력되는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_enableSelection = [{
	"bind" : "ddlDropDownWidth",
	"name" : "ddlDropDownWidth",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"enableSelection" : false	// property 설정
}];

$("#jqxForm_enableSelection").jqxForm({
  	"template" : template_enableSelection
});

// case 2 : element에 property 설정
let ddlEnableSelection = $("#jqxinputForm_enableSelection").jqxForm("getComponentByName", "ddlEnableSelection");
ddlEnableSelection.jqxDropDownList("enableSelection", false);


/* Get Property */

let ddlEnableSelection = $("#jqxinputForm_enableSelection").jqxForm("getComponentByName", "ddlEnableSelection");
let enableSelection = ddlEnableSelection.jqxDropDownList("enableSelection"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableBrowserBoundsDetection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableBrowserBoundsDetection</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_enableBrowserBoundsDetection"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트가 나타나는 위치를 자동으로 설정하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_enableBrowserBoundsDetection = [{
	"bind" : "ddlEnableBrowserBoundsDetection",
	"name" : "ddlEnableBrowserBoundsDetection",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"enableBrowserBoundsDetection" : true	// property 설정
}];

$("#jqxForm_enableBrowserBoundsDetection").jqxForm({
  	"template" : template_enableBrowserBoundsDetection
});

// case 2 : element에 property 설정
let ddlEnableBrowserBoundsDetection = $("#jqxinputForm_enableBrowserBoundsDetection").jqxForm("getComponentByName", "ddlEnableBrowserBoundsDetection");
ddlEnableBrowserBoundsDetection.jqxDropDownList("enableBrowserBoundsDetection", true);


/* Get Property */

let ddlEnableBrowserBoundsDetection = $("#jqxinputForm_enableBrowserBoundsDetection").jqxForm("getComponentByName", "ddlEnableBrowserBoundsDetection");
let enableBrowserBoundsDetection = ddlEnableBrowserBoundsDetection.jqxDropDownList("enableBrowserBoundsDetection"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableHover -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableHover</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					true
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_enableHover"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트의 hover상태를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_enableHover = [{
	"bind" : "ddlEnableBrowserBoundsDetection",
	"name" : "ddlEnableBrowserBoundsDetection",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"enableHover" : false	// property 설정
}];

$("#jqxForm_enableHover").jqxForm({
  	"template" : template_enableHover
});

// case 2 : element에 property 설정
let ddlEnableHover = $("#jqxinputForm_enableHover").jqxForm("getComponentByName", "ddlEnableHover");
ddlEnableHover.jqxDropDownList("enableHover", false);


/* Get Property */

let ddlEnableHover = $("#jqxinputForm_enableHover").jqxForm("getComponentByName", "ddlEnableHover");
let enableHover = ddlEnableHover.jqxDropDownList("enableHover"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- filterable -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">filterable</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_filterable"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트에 filter를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_filterable = [{
	"bind" : "ddlEnableBrowserBoundsDetection",
	"name" : "ddlEnableBrowserBoundsDetection",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"filterable" : true	// property 설정
}];

$("#jqxForm_filterable").jqxForm({
  	"template" : template_filterable
});

// case 2 : element에 property 설정
let ddlFilterable = $("#jqxinputForm_filterable").jqxForm("getComponentByName", "ddlFilterable");
ddlFilterable.jqxDropDownList("filterable", true);


/* Get Property */

let ddlFilterable = $("#jqxinputForm_filterable").jqxForm("getComponentByName", "ddlFilterable");
let filterable = ddlFilterable.jqxDropDownList("filterable"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- filterHeight -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">filterHeight</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					27
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_filterHeight"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 filter의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_filterHeight = [{ 
	"bind" : "ddlEnableBrowserBoundsDetection",
	"name" : "ddlEnableBrowserBoundsDetection",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"filterable" : true,
	"filterHeight" : 50	// property 설정
}];

$("#jqxForm_filterHeight").jqxForm({
  	"template" : template_filterHeight
});

// case 2 : element에 property 설정
let ddlFilterHeight = $("#jqxinputForm_filterHeight").jqxForm("getComponentByName", "ddlFilterHeight");
ddlFilterHeight.jqxDropDownList("filterHeight", 50);


/* Get Property */

let ddlFilterHeight = $("#jqxinputForm_filterHeight").jqxForm("getComponentByName", "ddlFilterHeight");
let filterHeight = ddlFilterHeight.jqxDropDownList("filterHeight"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- filterDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">filterDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					100
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_filterDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 filter 검색 후 데이터가 나타나는 시간을 설정하거나 가져옵니다. (ms단위)</p>
						<p>필터 내 "Enter"키를 입력시 해당 프로퍼티가 0으로 설정되며 바로 검색됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_filterDelay = [{ 
	"bind" : "ddlEnableBrowserBoundsDetection",
	"name" : "ddlEnableBrowserBoundsDetection",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"filterable" : true,
	"filterDelay" : 1000	// property 설정
}];

$("#jqxForm_filterDelay").jqxForm({
  	"template" : template_filterDelay
});

// case 2 : element에 property 설정
let ddlFilterDelay = $("#jqxinputForm_filterDelay").jqxForm("getComponentByName", "ddlFilterDelay");
ddlFilterDelay.jqxDropDownList("filterDelay", 1000);


/* Get Property */

let ddlFilterDelay = $("#jqxinputForm_filterDelay").jqxForm("getComponentByName", "ddlFilterDelay");
let filterDelay = ddlFilterDelay.jqxDropDownList("filterDelay"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- filterPlaceHolder -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">filterPlaceHolder</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"Looking for"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_filterPlaceHolder"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 filter의 placeHolder를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_filterPlaceHolder = [{ 
	"bind" : "ddlFilterPlaceHolder",
	"name" : "ddlFilterPlaceHolder",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"filterable" : true,
	"filterPlaceHolder" : "Hello~"	// property 설정
}];

$("#jqxForm_filterPlaceHolder").jqxForm({
  	"template" : template_filterPlaceHolder
});

// case 2 : element에 property 설정
let ddlFilterPlaceHolder = $("#jqxinputForm_filterPlaceHolder").jqxForm("getComponentByName", "ddlFilterPlaceHolder");
ddlFilterPlaceHolder.jqxDropDownList("filterPlaceHolder", "Hello~");


/* Get Property */

let ddlFilterPlaceHolder = $("#jqxinputForm_filterPlaceHolder").jqxForm("getComponentByName", "ddlFilterPlaceHolder");
let filterPlaceHolder = ddlFilterPlaceHolder.jqxDropDownList("filterPlaceHolder"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- height -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">height</span>
				</td>
				<td>
					<span>Number / String</span>
				</td>
				<td>
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_height"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_height = [{ 
	"bind" : "ddlFilterPlaceHolder",
	"name" : "ddlFilterPlaceHolder",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"height" : 50	// property 설정
}];

$("#jqxForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let ddlHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "ddlHeight");
ddlHeight.jqxDropDownList("height", 50);


/* Get Property */

let ddlHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "ddlHeight");
let height = ddlHeight.jqxDropDownList("height"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- incrementalSearch -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">incrementalSearch</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					true
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_incrementalSearch"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트에서 처음입력한 문자의 값으로 현재index부터 자동으로 검색하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_incrementalSearch = [{ 
	"bind" : "ddlFilterPlaceHolder",
	"name" : "ddlFilterPlaceHolder",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"incrementalSearch" : false	// property 설정
}];

$("#jqxForm_incrementalSearch").jqxForm({
  	"template" : template_incrementalSearch
});

// case 2 : element에 property 설정
let ddlIncrementalSearch = $("#jqxinputForm_incrementalSearch").jqxForm("getComponentByName", "ddlIncrementalSearch");
ddlIncrementalSearch.jqxDropDownList("incrementalSearch", true);


/* Get Property */

let ddlIncrementalSearch = $("#jqxinputForm_incrementalSearch").jqxForm("getComponentByName", "ddlIncrementalSearch");
let incrementalSearch = ddlIncrementalSearch.jqxDropDownList("incrementalSearch"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- incrementalSearchDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">incrementalSearchDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					700
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_incrementalSearchDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>incrementalSearch에 걸리는 시간을 설정하거나 가져옵니다. (ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_incrementalSearchDelay = [{ 
	"bind" : "ddlFilterPlaceHolder",
	"name" : "ddlFilterPlaceHolder",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"incrementalSearchDelay" : 1500	// property 설정
}];

$("#jqxForm_incrementalSearchDelay").jqxForm({
  	"template" : template_incrementalSearchDelay
});

// case 2 : element에 property 설정
let ddlIncrementalSearchDelay = $("#jqxinputForm_incrementalSearchDelay").jqxForm("getComponentByName", "ddlIncrementalSearchDelay");
ddlIncrementalSearchDelay.jqxDropDownList("incrementalSearchDelay", 1500);


/* Get Property */

let ddlIncrementalSearchDelay = $("#jqxinputForm_incrementalSearchDelay").jqxForm("getComponentByName", "ddlIncrementalSearchDelay");
let incrementalSearchDelay = ddlIncrementalSearchDelay.jqxDropDownList("incrementalSearchDelay"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- itemHeight -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">itemHeight</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					-1
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_itemHeight"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 item의 높이를 설정하거나 가져옵니다. -1인 경우 위젯의 높이와 같게 설정됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_itemHeight = [{ 
	"bind" : "ddlFilterPlaceHolder",
	"name" : "ddlFilterPlaceHolder",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"itemHeight" : 50	// property 설정
}];

$("#jqxForm_itemHeight").jqxForm({
  	"template" : template_itemHeight
});

// case 2 : element에 property 설정
let ddlItemHeight= $("#jqxinputForm_itemHeight").jqxForm("getComponentByName", "ddlItemHeight");
ddlItemHeight.jqxDropDownList("itemHeight", 50);


/* Get Property */

let ddlItemHeight = $("#jqxinputForm_itemHeight").jqxForm("getComponentByName", "ddlItemHeight");
let itemHeight = ddlItemHeight.jqxDropDownList("itemHeight"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- openDelay -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">openDelay</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					250
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_openDelay"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트가 나타나는 속도를 설정하거나 가져옵니다. (ms단위)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_openDelay = [{ 
	"bind" : "ddlOpenDelay",
	"name" : "ddlOpenDelay",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"openDelay" : 1000	// property 설정
}];

$("#jqxForm_openDelay").jqxForm({
  	"template" : template_openDelay
});

// case 2 : element에 property 설정
let ddlOpenDelay = $("#jqxinputForm_openDelay").jqxForm("getComponentByName", "ddlOpenDelay");
ddlOpenDelay.jqxDropDownList("openDelay", 1000);


/* Get Property */

let ddlOpenDelay = $("#jqxinputForm_openDelay").jqxForm("getComponentByName", "ddlOpenDelay");
let openDelay = ddlOpenDelay.jqxDropDownList("openDelay"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- placeHolder -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">placeHolder</span>
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
						<div id="jqxForm_placeHolder"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트의 placeHolder를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_placeHolder = [{ 
	"bind" : "ddlPlaceHolder",
	"name" : "ddlPlaceHolder",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"placeHolder" : "Please Choose:"	// property 설정
}];

$("#jqxForm_placeHolder").jqxForm({
  	"template" : template_placeHolder
});

// case 2 : element에 property 설정
let ddlPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "ddlPlaceHolder");
ddlPlaceHolder.jqxDropDownList("placeHolder", "Please Choose:");


/* Get Property */

let ddlPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "ddlPlaceHolder");
let placeHolder = ddlPlaceHolder.jqxDropDownList("placeHolder"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- popupZIndex -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">popupZIndex</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					2000
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_popupZIndex"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>popup의 z-index를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_popupZIndex = [{ 
	"bind" : "ddlPlaceHolder",
	"name" : "ddlPlaceHolder",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"popupZIndex" : 3000	// property 설정
}];

$("#jqxForm_popupZIndex").jqxForm({
  	"template" : template_popupZIndex
});

// case 2 : element에 property 설정
let ddlPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "ddlPopupZIndex");
ddlPopupZIndex.jqxDropDownList("popupZIndex", 3000);


/* Get Property */

let ddlPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "ddlPopupZIndex");
let popupZIndex = ddlPopupZIndex.jqxDropDownList("popupZIndex"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- rtl -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">rtl</span>
				</td>
				<td>
					<span>Boolean</span>
				</td>
				<td>
					false
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_rtl"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>우측정렬을 사용할지 설정하거나 현재 우측정렬상태인지 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_rtl = [{ 
	"bind" : "ddlRtl",
	"name" : "ddlRtl",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"rtl" : true	// property 설정
}];

$("#jqxForm_rtl").jqxForm({
  	"template" : template_rtl
});

// case 2 : element에 property 설정
let ddlRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "ddlRtl");
ddlRtl.jqxDropDownList("rtl", true);


/* Get Property */

let ddlRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "ddlRtl");
let rtl = ddlRtl.jqxDropDownList("rtl"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- renderer -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">renderer - TODO : 기능 확인필요</span>
				</td>
				<td>
					<span>Function</span>
				</td>
				<td>
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_renderer"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트를 콜백함수를 통해 직접 렌더링합니다.</p>
						<h4>Code Example</h4>
<pre><code>
초기화 시점이 아니라 DOM 생성 이후 Callback 적용? 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- selectRenderer -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">selectRenderer - TODO : 기능 확인필요</span>
				</td>
				<td>
					<span>Function</span>
				</td>
				<td>
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_selectionRenderer"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>선택된 값에 대해 렌더링하는 콜백함수를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
초기화 시점이 아니라 DOM 생성 이후 Callback 적용?
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- searchMode -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">searchMode</span>
				</td>
				<td>
					<span>String</span>
				</td>
				<td>
					"startswithignorecase"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_searchMode"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내 검색모드를 설정하거나 가져옵니다.</p>
						<h4>Possible Values</h4>
						<p>"none"</p>
						<p>"contains"</p>
						<p>"containsignorecase"</p>
						<p>"equals"</p>
						<p>"equalsignorecase"</p>
						<p>"startswithignorecase"</p>
						<p>"startswith"</p>
						<p>"endswithignorecase"</p>
						<p>"endswith"</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_searchMode = [{ 
	"bind" : "ddlSearchMode",
	"name" : "ddlSearchMode",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"searchMode" : "endswithignorecase"	// property 설정
}];

$("#jqxForm_searchMode").jqxForm({
  	"template" : template_searchMode
});

// case 2 : element에 property 설정
let ddlSearchMode = $("#jqxinputForm_searchMode").jqxForm("getComponentByName", "ddlSearchMode");
ddlSearchMode.jqxDropDownList("searchMode", "endswithignorecase");


/* Get Property */

let ddlSearchMode = $("#jqxinputForm_searchMode").jqxForm("getComponentByName", "ddlSearchMode");
let searchMode = ddlSearchMode.jqxDropDownList("searchMode"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- scrollBarSize -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">scrollBarSize - TODO : 기능확인</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					15
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_scrollBarSize"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내 스크롤바 크기를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_scrollBarSize= [{ 
	"bind" : "ddlScrollBarSize",
	"name" : "ddlScrollBarSize",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"scrollBarSize" : 30	// property 설정
}];

$("#jqxForm_scrollBarSize").jqxForm({
  	"template" : template_scrollBarSize
});

// case 2 : element에 property 설정
let ddlScrollBarSize = $("#jqxinputForm_scrollBarSize").jqxForm("getComponentByName", "ddlScrollBarSize");
ddlScrollBarSize.jqxDropDownList("scrollBarSize", 30);


/* Get Property */

let ddlScrollBarSize = $("#jqxinputForm_scrollBarSize").jqxForm("getComponentByName", "ddlScrollBarSize");
let scrollBarSize = ddlScrollBarSize.jqxDropDownList("scrollBarSize"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- source -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">source</span>
				</td>
				<td>
					<span>Array</span>
				</td>
				<td>
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_source"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내 item 값들을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_source = [{ 
	"bind" : "ddlSource",
	"name" : "ddlSource",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source	// property 설정
}];

$("#jqxForm_source").jqxForm({
  	"template" : template_source
});

// case 2 : element에 property 설정
let ddlSource = $("#jqxinputForm_source").jqxForm("getComponentByName", "ddlSource");
ddlSource.jqxDropDownList("source", source);


/* Get Property */

let ddlSource = $("#jqxinputForm_source").jqxForm("getComponentByName", "ddlSource");
let source_temp = ddlSource.jqxDropDownList("source"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- selectedIndex -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">selectedIndex</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					-1
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_selectedIndex"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내 선택된 item index를 설정하거나 가져옵니다. (0-based)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_selectedIndex = [{ 
	"bind" : "ddlSelectedIndex",
	"name" : "ddlSelectedIndex",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"selectedIndex" : 3	// property 설정
}];

$("#jqxForm_selectedIndex").jqxForm({
  	"template" : template_selectedIndex
});

// case 2 : element에 property 설정
let ddlSelectedIndex = $("#jqxinputForm_selectedIndex").jqxForm("getComponentByName", "ddlSelectedIndex");
ddlSelectedIndex.jqxDropDownList("selectedIndex", 3);


/* Get Property */

let ddlSelectedIndex = $("#jqxinputForm_selectedIndex").jqxForm("getComponentByName", "ddlSelectedIndex");
let selectedIndex = ddlSelectedIndex.jqxDropDownList("selectedIndex"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- template -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">template</span>
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
						<div id="jqxForm_template"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 기본 스타일을 설정하거나 가져옵니다.</p>
						<h4>Possible Value</h4>
						<p>'default' - 기본 템플릿. 'theme'에 의존한다.</p>
						<p>'primary' - dark blue 스타일</p>
						<p>'success' - green 스타일</p>
						<p>'warning' - orange 스타일</p>
						<p>'danger' - red 스타일</p>
						<p>'info' - blue 스타일</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_template = [{ 
	"bind" : "ddlTemplate",
	"name" : "ddlTemplate",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"template" : "success"	// property 설정
}];

$("#jqxForm_template").jqxForm({
  	"template" : template_template
});

// case 2 : element에 property 설정
let ddlTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "ddlTemplate");
ddlTemplate.jqxDropDownList("template", "success");


/* Get Property */

let ddlTemplate = $("#jqxinputForm_template").jqxForm("getComponentByName", "ddlTemplate");
let template = ddlTemplate.jqxDropDownList("template"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- theme -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">theme</span>
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
						<div id="jqxForm_theme"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 theme를 설정합니다.</p>
						<p>css파일은 한 쌍으로 사용되며 jqx.base.css, jqx.[theme name].css로 구분됩니다. </p>
						<p>base stylesheet는 위젯의 레이아웃을 설정하며. theme name stylesheet는 위젯의 색상 및 배경을 담당합니다.</p>
						<p>include 순서는 base -> theme 순으로 진행하여야 합니다.</p>						<h4>Code Example</h4>
<pre><code>
/* Include stylesheets */
<xmp>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.energyblue.css"/>" />
</xmp>

/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_theme = [{ 
	"bind" : "ddlTheme",
	"name" : "ddlTheme",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"theme" : "energyblue"	// property 설정
}];

$("#jqxForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let ddlTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "ddlTheme");
ddlTheme.jqxDropDownList("theme", "energyblue");


/* Get Property */

let ddlTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "ddlTheme");
let theme = ddlTheme.jqxDropDownList("theme"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- valueMember -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">valueMember</span>
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
						<div id="jqxForm_valueMember"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>값을 나타낼 드롭다운리스트의 item명을 설정하거나 가져옵니다.</p>
						<p>item명은 source프로퍼티 내에 포함합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	{
		"text" : "Affogato",
		"value" : 1
	},
	{
		"text" : "Americano",
		"value" : 2
	},
	{
		"text" : "Bicerin",
		"value" : 3
	},
	{
		"text" : "Breve",
		"value" : 4
	},
	{
		"text" : "Café Bombón",
		"value" : 5
	},
	{
		"text" : "Affogato",
		"value" : 6
	},
	{
		"text" : "Americano",
		"value" : 7
	},
	{
		"text" : "Bicerin",
		"value" : 8
	},
	{
		"text" : "Breve",
		"value" : 9
	},
	{
		"text" : "Café Bombón",
		"value" : 10
	},
	{
		"text" : "Café au lait",
		"value" : 11
	}
];

let template_valueMember = [{
	"bind" : "ddlValueMember",
	"name" : "ddlValueMember",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,	
	"displayMember" : "text",
	"valueMember" : "value"	// property 설정
}];

$("#jqxForm_valueMember").jqxForm({
  	"template" : template_valueMember
});

// case 2 : element에 property 설정
let ddlValueMember = $("#jqxinputForm_valueMember").jqxForm("getComponentByName", "ddlValueMember");
ddlValueMember.jqxDropDownList("valueMember", "value");


/* Get Property */

let ddlValueMember = $("#jqxinputForm_valueMember").jqxForm("getComponentByName", "ddlValueMember");
let valueMember = ddlValueMember.jqxDropDownList("valueMember"); 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- width -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">width</span>
				</td>
				<td>
					<span>Number / String</span>
				</td>
				<td>
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_width"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_width = [{ 
	"bind" : "ddlWidth",
	"name" : "ddlWidth",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source,
	"width" : 200	// property 설정
}];

$("#jqxForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let ddlWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "ddlWidth");
ddlWidth.jqxDropDownList("width", 200);


/* Get Property */

let ddlWidth= $("#jqxinputForm_width").jqxForm("getComponentByName", "ddlWidth");
let width = ddlWidth.jqxDropDownList("width"); 
</code></pre>
                    </div>
                </td>
            </tr>
        </tbody>
	</table>
</div>
<div id="events">
	<h2 class="documentation-top-header">Events</h2>
	
	<table class="documentation-table">
		<tbody>
			<!-- bindingComplete -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">bindingComplete</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_event_bindingComplete"></div>
						<div id="log_event_bindingComplete"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>source가 바인딩 완료된 후 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_eventBindingComplete = [{ 
	"bind" : "ddlEventBindingComplete",
	"name" : "ddlEventBindingComplete",
	"type" : "option",
	"component" : "jqxDropDownList"
}];


$("#jqxForm_event_bindingComplete").jqxForm({
	"template" : template_eventBindingComplete
});


/* Event 설정 */
let ddlEventBindingComplete = $("#jqxForm_event_bindingComplete").jqxForm("getComponentByName", "ddlEventBindingComplete"); 
ddlEventBindingComplete.on("bindingComplete", function(event) {
	$("#log_event_bindingComplete").html("bindingComplete event occurred!!!");
});

// source bind
ddlEventBindingComplete.jqxDropDownList("source", source);
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- close -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">close</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_event_close"></div>
						<div id="log_event_close"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트가 닫힌 후 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_eventClose = [{ 
	"bind" : "ddlEventClose",
	"name" : "ddlEventClose",
	"type" : "option",
	"component" : "jqxDropDownList",
	"options" : source
}];


$("#jqxForm_event_close").jqxForm({
	"template" : template_eventClose
});


/* Event 설정 */
let ddlEventClose = $("#jqxForm_event_close").jqxForm("getComponentByName", "ddlEventClose"); 
ddlEventClose.on("close", function(event) {
	$("#log_event_close").html("close event occurred!!!");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- checkChange -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">checkChange</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_event_checkChange"></div>
						<div id="log_event_checkChange"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내 체크 상태가 변경된 후 trigger됩니다.</p>
						<p>item object는 다음 field로 구성되어 있습니다.</p>
						<p>>label - item의 이름</p>
						<p>>value - item의 값</p>
						<p>>disabled - 비활성화 된 경우 true</p>
						<p>>checked - check된 경우 true</p>
						<p>>hasThreeStates - three state를 지원하는 경우 true</p>
						<p>>html - 화면에 표시되는 이름 (label 대신 사용되기도 함)</p>
						<p>>index - item의 index</p>
						<p>>group - item의 그룹명</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_eventCheckChange = [{ 
	"bind" : "ddlEventCheckChange",
	"name" : "ddlEventCheckChange",
	"type" : "option",
	"component" : "jqxDropDownList",
	"checkboxes" : true,
	"width" : 200,
	"options" : source
}];


$("#jqxForm_event_checkChange").jqxForm({
	"template" : template_eventCheckChange
});


/* Event 설정 */
let ddlEventCheckChange = $("#jqxForm_event_checkChange").jqxForm("getComponentByName", "ddlEventCheckChange"); 
ddlEventCheckChange.on("checkChange", function(event) {
	let args = event.args;
	
	if(args) {
		let label = args.label;
		let value = args.value;
		let disabled = args.disabled;
		let checked = args.checked;
		let hasThreeStates = args.hasThreeStates;
		let html = args.html;
		let index = args.index;
		let group = args.group;
		
		$("#log_event_checkChange").html("checkChange event occurred!!! checked label : " + label);
	}
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- change -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">change</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_event_change"></div>
						<div id="log_event_change"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내 item을 선택한 후 trigger됩니다.</p>
						<p>item object는 다음 field로 구성되어 있습니다.</p>
						<p>>label - item의 이름</p>
						<p>>value - item의 값</p>
						<p>>disabled - 비활성화 된 경우 true</p>
						<p>>checked - check된 경우 true</p>
						<p>>hasThreeStates - three state를 지원하는 경우 true</p>
						<p>>html - 화면에 표시되는 이름 (label 대신 사용되기도 함)</p>
						<p>>index - item의 index</p>
						<p>>group - item의 그룹명</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_eventChange = [{ 
	"bind" : "ddlEventChange",
	"name" : "ddlEventChange",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];


$("#jqxForm_event_change").jqxForm({
	"template" : template_eventChange
});


/* Event 설정 */
let ddlEventChange = $("#jqxForm_event_change").jqxForm("getComponentByName", "ddlEventChange"); 
ddlEventChange.on("change", function(event) {
	let args = event.args;
	
	if(args) {
		let label = args.label;
		let value = args.value;
		let disabled = args.disabled;
		let checked = args.checked;
		let hasThreeStates = args.hasThreeStates;
		let html = args.html;
		let index = args.index;
		let group = args.group;
		
		$("#log_event_change").html("change event occurred!!! selected label : " + label);
	}
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- open -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">open</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_event_open"></div>
						<div id="log_event_open"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트가 열린 후 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_eventOpen = [{ 
	"bind" : "ddlEventOpen",
	"name" : "ddlEventOpen",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];


$("#jqxForm_event_open").jqxForm({
	"template" : template_eventOpen
});


/* Event 설정 */
let ddlEventOpen = $("#jqxForm_event_open").jqxForm("getComponentByName", "ddlEventOpen"); 
ddlEventOpen.on("open", function(event) {
	$("#log_event_open").html("open event occurred!!!");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- select -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">select</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_event_select"></div>
						<div id="log_event_select"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 item 선택 후 trigger됩니다.</p>
						<p>값을 선택한 type은 args object에서 확인 가능합니다</p>
						<p>>type - 값을 선택한 type</p>
						<p>item object는 다음 field로 구성되어 있습니다.</p>
						<p>>label - item의 이름</p>
						<p>>value - item의 값</p>
						<p>>disabled - 비활성화 된 경우 true</p>
						<p>>checked - check된 경우 true</p>
						<p>>hasThreeStates - three state를 지원하는 경우 true</p>
						<p>>html - 화면에 표시되는 이름 (label 대신 사용되기도 함)</p>
						<p>>index - item의 index</p>
						<p>>group - item의 그룹명</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_eventSelect = [{ 
	"bind" : "ddlEventSelect",
	"name" : "ddlEventSelect",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];


$("#jqxForm_event_select").jqxForm({
	"template" : template_eventSelect
});


/* Event 설정 */
let ddlEventSelect = $("#jqxForm_event_select").jqxForm("getComponentByName", "ddlEventSelect"); 
ddlEventSelect.on("select", function(event) {
	let args = event.args;
	let item = args.item;

	if(item) {
		let type = args.type;
		
		let label = item.label;
		let value = item.value;
		let disabled = item.disabled;
		let checked = item.checked;
		let hasThreeStates = item.hasThreeStates;
		let html = item.html;
		let index = item.index;
		let group = item.group;
		
		
		$("#log_event_select").html("select event occurred!!! selected item : " + label + 
			" // selected by : " + type);
	}
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- unselect -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">unselect</span>
				</td>
				<td>
					<span>Event</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_event_unselect"></div>
						<div id="log_event_unselect"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 item 선택 시 이전 선택내용이 해제되면서 trigger됩니다.</p>
						<p>값을 선택한 type은 args object에서 확인 가능합니다</p>
						<p>>type - 값을 선택한 type</p>
						<p>item object는 다음 field로 구성되어 있습니다.</p>
						<p>>label - item의 이름</p>
						<p>>value - item의 값</p>
						<p>>disabled - 비활성화 된 경우 true</p>
						<p>>checked - check된 경우 true</p>
						<p>>hasThreeStates - three state를 지원하는 경우 true</p>
						<p>>html - 화면에 표시되는 이름 (label 대신 사용되기도 함)</p>
						<p>>index - item의 index</p>
						<p>>group - item의 그룹명</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_eventUnselect = [{ 
	"bind" : "ddlEventUnselect",
	"name" : "ddlEventUnselect",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];


$("#jqxForm_event_unselect").jqxForm({
	"template" : template_eventUnselect
});


/* Event 설정 */
let ddlEventUnselect = $("#jqxForm_event_unselect").jqxForm("getComponentByName", "ddlEventUnselect"); 
ddlEventUnselect.on("unselect", function(event) {
	let args = event.args;
	let item = args.item;

	if(item) {
		let type = args.type;
		
		let label = item.label;
		let value = item.value;
		let disabled = item.disabled;
		let checked = item.checked;
		let hasThreeStates = item.hasThreeStates;
		let html = item.html;
		let index = item.index;
		let group = item.group;
		
		
		$("#log_event_unselect").html("unselect event occurred!!! previous selected item : " + label + 
			" // selected by : " + type);
	}
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>
<div id="methods">
	<h2 class="documentation-top-header">Methods</h2>
	
	<table class="documentation-table">
		<tbody>
			<!-- addItem -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">addItem</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_addItem"></div>
						<input type="button" id="btnAddItem" value="AddItem" />
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트에  item을 추가합니다.</p>
						<h4>Parameter Type</h4>
						<p>item - Object / String</p>
						<p>item에는 다음 field들을 사용할 수 있습니다.</p>
						<p>> label - item의 label을 설정합니다.</p>
						<p>> value - item의 값을 설정합니다.</p>
						<p>> disabled - item의 disabled 여부를 설정합니다.</p>
						<p>> checked - item의 checked 여부를 설정합니다.</p>
						<p>> hasThreeStates - checkbox가 three states를 지원하는 여부를 설정합니다.</p>
						<p>> html - 화면에 나타날 내용을 설정합니다. lable 대신에 사용될 수 있습니다.</p>
						<p>> group - item의 group을 설정합니다.</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodAddItem = [{ 
	"bind" : "ddlMethodAddItem",
	"name" : "ddlMethodAddItem",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source,
	"selectedIndex" : 0
}];

$("#jqxForm_method_addItem").jqxForm({
  	"template" : template_methodAddItem
});


let ddlMethodAddItem = $("#jqxForm_method_addItem").jqxForm("getComponentByName", "ddlMethodAddItem");
 
/* 이벤트 설정 */
$("#btnAddItem").on("click", function() {
	// case 1 : String으로 추가
	ddlMethodAddItem.jqxDropDownList("addItem", "useString");
	
	// case 2 : Object로 추가 
	let myObj = {
		"label" : "useObject",
		"value" : "1"
	};
	
   	ddlMethodAddItem.jqxDropDownList("addItem", myObj);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- clearSelection -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">clearSelection</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_clearSelection"></div>
						<input type="button" id="btnClearSelection" value="ClearSelection" />
						<!-- Description -->
						<h4>Description</h4>
						<p>현재 선택된 값을 지웁니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodClearSelection = [{ 
	"bind" : "ddlMethodClearSelection",
	"name" : "ddlMethodClearSelection",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_clearSelection").jqxForm({
  	"template" : template_methodClearSelection
});


let ddlMethodClearSelection = $("#jqxForm_method_clearSelection").jqxForm("getComponentByName", "ddlMethodClearSelection");
 
/* 이벤트 설정 */
$("#btnClearSelection").on("click", function() {
	ddlMethodClearSelection.jqxDropDownList("clearSelection");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- clear -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">clear</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_clear"></div>
						<input type="button" id="btnClear" value="Clear" />
						<!-- Description -->
						<h4>Description</h4>
						<p>모든 item을 지웁니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodClear = [{ 
	"bind" : "ddlMethodClear",
	"name" : "ddlMethodClear",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_clear").jqxForm({
  	"template" : template_methodClear
});


let ddlMethodClear = $("#jqxForm_method_clear").jqxForm("getComponentByName", "ddlMethodClear");
 
/* 이벤트 설정 */
$("#btnClear").on("click", function() {
	ddlMethodClear.jqxDropDownList("clear");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- close -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">close</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_close"></div>
						<input type="button" id="btnClose" value="Close" style="margin-left:250px;"/>
						<!-- Description -->
						<h4>Description</h4>
						<p>popup된 listbox를 숨깁니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodClose = [{ 
	"bind" : "ddlMethodClose",
	"name" : "ddlMethodClose",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_close").jqxForm({
  	"template" : template_methodClose
});


let ddlMethodClose = $("#jqxForm_method_close").jqxForm("getComponentByName", "ddlMethodClose");
 
/* 이벤트 설정 */
$("#btnClose").on("click", function() {
	ddlMethodClose.jqxDropDownList("close");
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- checkIndex -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">checkIndex</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_checkIndex"></div>
						<input type="button" id="btnCheckIndex" value="CheckIndex"/>
						<!-- Description -->
						<h4>Description</h4>
						<p>checkboxes 프로퍼티가 true인 경우. 해당 index에 해당하는 item을 check합니다. (0-based)</p>
						<h4>Parameter Type</h4>
						<p>index - Number</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodCheckIndex = [{ 
	"bind" : "ddlMethodCheckIndex",
	"name" : "ddlMethodCheckIndex",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source,
	"checkboxes" : true
}];

$("#jqxForm_method_checkIndex").jqxForm({
  	"template" : template_methodCheckIndex
});


let ddlMethodCheckIndex = $("#jqxForm_method_checkIndex").jqxForm("getComponentByName", "ddlMethodCheckIndex");
 
/* 이벤트 설정 */
$("#btnCheckIndex").on("click", function() {
	ddlMethodCheckIndex.jqxDropDownList("checkIndex", 1);	// 2번째 값 check
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- checkItem -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">checkItem</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_checkItem"></div>
						<input type="button" id="btnCheckItem" value="CheckItem"/>
						<!-- Description -->
						<h4>Description</h4>
						<p>parameter과 같은 item을 check합니다.</p>
						<h4>Parameter Type</h4>
						<p>item - Object / String</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodCheckItem = [{ 
	"bind" : "ddlMethodCheckItem",
	"name" : "ddlMethodCheckItem",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source,
	"checkboxes" : true
}];

$("#jqxForm_method_checkItem").jqxForm({
  	"template" : template_methodCheckItem
});


let ddlMethodCheckItem = $("#jqxForm_method_checkItem").jqxForm("getComponentByName", "ddlMethodCheckItem");
 
/* 이벤트 설정 */
$("#btnCheckItem").on("click", function() {
	ddlMethodCheckItem.jqxDropDownList("checkItem", "Brave");	// "Brave" 값 check
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- checkAll -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">checkAll</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_checkAll"></div>
						<input type="button" id="btnCheckAll" value="CheckAll"/>
						<!-- Description -->
						<h4>Description</h4>
						<p>모든 item을 check합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodCheckAll = [{ 
	"bind" : "ddlMethodCheckAll",
	"name" : "ddlMethodCheckAll",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source,
	"checkboxes" : true
}];

$("#jqxForm_method_checkAll").jqxForm({
  	"template" : template_methodCheckAll
});


let ddlMethodCheckAll = $("#jqxForm_method_checkAll").jqxForm("getComponentByName", "ddlMethodCheckAll");
 
/* 이벤트 설정 */
$("#btnCheckAll").on("click", function() {
	ddlMethodCheckAll.jqxDropDownList("checkAll");	
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- clearFilter -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">clearFilter</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_clearFilter"></div>
						<input type="button" id="btnClearFilter" value="ClearFilter"/>
						<!-- Description -->
						<h4>Description</h4>
						<p>filter에 입력된 내용을 지웁니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodClearFilter= [{ 
	"bind" : "ddlMethodClearFilter",
	"name" : "ddlMethodClearFilter",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source,
	"filterable" : true
}];

$("#jqxForm_method_clearFilter").jqxForm({
  	"template" : template_methodClearFilter
});


let ddlMethodClearFilter = $("#jqxForm_method_clearFilter").jqxForm("getComponentByName", "ddlMethodClearFilter");
 
/* 이벤트 설정 */
$("#btnClearFilter").on("click", function() {
	ddlMethodClearFilter.jqxDropDownList("clearFilter");	
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- destroy -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">destroy</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_destroy"></div>
						<input type="button" id="btnDestroy" value="Destroy"/>
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯을 제거합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodDestroy= [{ 
	"bind" : "ddlMethodDestroy",
	"name" : "ddlMethodDestroy",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_destroy").jqxForm({
  	"template" : template_methodDestroy
});


let ddlMethodDestroy = $("#jqxForm_method_destroy").jqxForm("getComponentByName", "ddlMethodDestroy");
 
/* 이벤트 설정 */
$("#btnDestroy").on("click", function() {
	ddlMethodDestroy.jqxDropDownList("destroy");	
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- disableItem -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">disableItem</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_disableItem"></div>
						<input type="button" id="btnDisableItem" value="DisableItem" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 item을 비활성화합니다.</p>
						<h4>Parameter Type</h4>
						<p>item - Object / String</p>
						<p>item에는 다음 field들을 사용할 수 있습니다.</p>
						<p>> label - item의 label을 설정합니다.</p>
						<p>> value - item의 값을 설정합니다.</p>
						<p>> disabled - item의 disabled 여부를 설정합니다.</p>
						<p>> checked - item의 checked 여부를 설정합니다.</p>
						<p>> hasThreeStates - checkbox가 three states를 지원하는 여부를 설정합니다.</p>
						<p>> html - 화면에 나타날 내용을 설정합니다. lable 대신에 사용될 수 있습니다.</p>
						<p>> group - item의 group을 설정합니다.</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodDisableItem = [{ 
	"bind" : "ddlMethodDisableItem",
	"name" : "ddlMethodDisableItem",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_disableItem").jqxForm({
  	"template" : template_methodDisableItem
});


let ddlMethodDisableItem = $("#jqxForm_method_disableItem").jqxForm("getComponentByName", "ddlMethodDisableItem");
 
/* 이벤트 설정 */
$("#btnDisableItem").on("click", function() {
	// case 1 : String으로 추가
	ddlMethodDisableItem.jqxDropDownList("disableItem", "Breve");
	
	// case 2 : Object로 추가 
	let myObj = {
		"value" : "Americano"
	};
	
   	ddlMethodDisableItem.jqxDropDownList("disableItem", myObj);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- disableAt -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">disableAt</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_disableAt"></div>
						<input type="button" id="btnDisableAt" value="DisableAt" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 index의 item을 비활성화합니다. (0-based)</p>
						<h4>Parameter Type</h4>
						<p>index - Number</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodDisableAt = [{ 
	"bind" : "ddlMethodDisableAt",
	"name" : "ddlMethodDisableAt",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_disableAt").jqxForm({
  	"template" : template_methodDisableAt
});


let ddlMethodDisableAt = $("#jqxForm_method_disableAt").jqxForm("getComponentByName", "ddlMethodDisableAt");
 
/* 이벤트 설정 */
$("#btnDisableAt").on("click", function() {
	ddlMethodDisableAt.jqxDropDownList("At", 1);	// 2번째 item 비활성화
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableItem -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableItem</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_enableItem"></div>
						<input type="button" id="btnEnableItem" value="EnableItem" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 item을 활성화합니다.</p>
						<h4>Parameter Type</h4>
						<p>item - Object / String</p>
						<p>item에는 다음 field들을 사용할 수 있습니다.</p>
						<p>> label - item의 label을 설정합니다.</p>
						<p>> value - item의 값을 설정합니다.</p>
						<p>> disabled - item의 disabled 여부를 설정합니다.</p>
						<p>> checked - item의 checked 여부를 설정합니다.</p>
						<p>> hasThreeStates - checkbox가 three states를 지원하는 여부를 설정합니다.</p>
						<p>> html - 화면에 나타날 내용을 설정합니다. lable 대신에 사용될 수 있습니다.</p>
						<p>> group - item의 group을 설정합니다.</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodEnableItem = [{ 
	"bind" : "ddlMethodEnableItem",
	"name" : "ddlMethodEnableItem",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_enableItem").jqxForm({
  	"template" : template_methodEnableItem
});


let ddlMethodEnableItem = $("#jqxForm_method_enableItem").jqxForm("getComponentByName", "ddlMethodEnableItem");
 
for(let i=0; i<10; i++) {
	ddlMethodEnableItem.jqxDropDownList("disableAt", i);	// 비활성화
}

/* 이벤트 설정 */
$("#btnEnableItem").on("click", function() {
	// case 1 : String으로 추가
	ddlMethodEnableItem.jqxDropDownList("enableItem", "Breve");
	
	// case 2 : Object로 추가 
	let myObj = {
		"value" : "Americano"
	};
	
   	ddlMethodEnableItem.jqxDropDownList("enableItem", myObj);
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- enableAt -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">enableAt</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_enableAt"></div>
						<input type="button" id="btnEnableAt" value="EnableAt" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 index의 item을 활성화합니다. (0-based)</p>
						<h4>Parameter Type</h4>
						<p>index - Number</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodEnableAt = [{ 
	"bind" : "ddlMethodEnableAt",
	"name" : "ddlMethodEnableAt",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_enableAt").jqxForm({
  	"template" : template_methodEnableAt
});


let ddlMethodDisableAt = $("#jqxForm_method_disableAt").jqxForm("getComponentByName", "ddlMethodDisableAt");
 
/* 이벤트 설정 */
$("#btnDisableAt").on("click", function() {
	ddlMethodDisableAt.jqxDropDownList("At", 1);	// 2번째 item 비활성화
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- ensureVisible -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">ensureVisible</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_ensureVisible"></div>
						<input type="button" id="btnEnsureVisible" value="EnsureVisible" />
						<!-- Description -->
						<h4>Description</h4>
						<p>드롭다운리스트 내 보일 위치를 설정합니다. (0-based)</p>
						<h4>Parameter Type</h4>
						<p>index - Number</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodEnsureVisible= [{ 
	"bind" : "ddlMethodEnsureVisible",
	"name" : "ddlMethodEnsureVisible",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_ensureVisible").jqxForm({
  	"template" : template_methodEnsureVisible
});


let ddlMethodEnsureVisible= $("#jqxForm_method_ensureVisible").jqxForm("getComponentByName", "ddlMethodEnsureVisible");
 
/* 이벤트 설정 */
$("#btnEnsureVisible").on("click", function() {
	ddlMethodEnsureVisible.jqxDropDownList("open");
	ddlMethodEnsureVisible.jqxDropDownList("ensureVisible", source.length - 1);	// 마지막 index 위치 보이도록
});
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- focus -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">focus</span>
				</td>
				<td>
					<span>Method</span>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxForm_method_focus"></div>
						<input type="button" id="btnFocus" value="Focus" />
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯에 포커스를 설정합니다.</p>
						<h4>Parameter Type</h4>
						<p>None</p>
						<h4>Return Value</h4>
						<p>None</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let source = [
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Affogato",
	"Americano",
	"Bicerin",
	"Breve",
	"Café Bombón",
	"Café au lait"
];

let template_methodFocus= [{ 
	"bind" : "ddlMethodFocus",
	"name" : "ddlMethodFocus",
	"type" : "option",
	"component" : "jqxDropDownList",
	"width" : 200,
	"options" : source
}];

$("#jqxForm_method_focus").jqxForm({
  	"template" : template_methodFocus
});


let ddlMethodFocus = $("#jqxForm_method_focus").jqxForm("getComponentByName", "ddlMethodFocus");
 
/* 이벤트 설정 */
$("#btnFocus").on("click", function() {
	ddlMethodFocus.jqxDropDownList("focus");
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>