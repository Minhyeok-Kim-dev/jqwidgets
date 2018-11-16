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
<script src="<c:url value="/resources/jqwidgets/jqxinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdata.js"/>"></script>

<script>
	$(document).ready(function(){
		$(".documentation-option-type-click").click(function(event) {
			$(event.target).parents("tr").next().find(".property-content").toggle();
		});
		
		/* Properties */
		// - values
		const countries = new Array("Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina Faso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Central African Republic", "Chad", "Chile", "China", "Colombia", "Comoros", "Congo, Democratic Republic", "Congo, Republic of the", "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Fiji", "Finland", "France", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Greece", "Greenland", "Grenada", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, North", "Korea, South", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Mauritania", "Mauritius", "Mexico", "Micronesia", "Moldova", "Mongolia", "Morocco", "Monaco", "Mozambique", "Namibia", "Nauru", "Nepal", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Norway", "Oman", "Pakistan", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", "Rwanda", "Samoa", "San Marino", " Sao Tome", "Saudi Arabia", "Senegal", "Serbia and Montenegro", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "Spain", "Sri Lanka", "Sudan", "Suriname", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Yemen", "Zambia", "Zimbabwe");
		
		// disabled
		let template_disabled = [{
		   	"bind" : "txtDisabled",
		    "name" : "txtDisabled",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "disabled",
			"disabled" : true
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
	   		"template" : template_disabled
		});
		
		
		// dropDownWidth
		
		let template_dropDownWidth = [{
		    "bind" : "txtDropDownWidth",
		    "name" : "txtDropDownWidth",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "Enter a Country",
			"dropDownWidth" : 200,
			"minLength": 1,
			"source" : countries
		}];
		
		$("#jqxinputForm_dropDownWidth").jqxForm({
	   		"template" : template_dropDownWidth
		});

		
		// displayMember
		let data = [{
			"CompanyName" : "Company01",
			"ContactName" : "Ana"
		}, {
		   	"CompanyName" : "Company02",
			"ContactName" : "Maria"
		}];
		
		let source = {
		  	"datafields" : [{
		  	    "name" : "CompanyName"
		  	}, {
		  	    "name" : "ContactName"
		  	}],
		  	"localdata" : data
		};
		
		let dataAdapter = new $.jqx.dataAdapter(source);
		
		let template_displayMember = [{
		    "bind" : "txtDisplayMember",
		    "name" : "txtDisplayMember",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "Contact Name :",
			"source" : dataAdapter,
			"displayMember" : "ContactName",
			"valueMember" : "CompanyName"
		}];
		
		$("#jqxinputForm_displayMember").jqxForm({
	   		"template" : template_displayMember
		});
		
		let txtDisplayMember = $("#jqxinputForm_displayMember").jqxForm("getComponentByName", "txtDisplayMember");
		txtDisplayMember.on("select", function(event) {
		   if(event.args) {
		       let item = event.args.item;
		       
		       if(item) {
		           let valueElem = $("<div></div>");
		           valueElem.text("Value: " + item.value);
		           
		           let labelElem = $("<div></div>");
		           labelElem.text("Label: " + item.label);
		           
		           $("#selectionLog").children().remove();
		           $("#selectionLog").append(valueElem);
		           $("#selectionLog").append(labelElem);
		       }
		   } 
		});
		
		
		// height
		let template_height = [{
		    "bind" : "txtHeight",
		    "name" : "txtHeight",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px"
		}];
		
		$("#jqxinputForm_height").jqxForm({
	   		"template" : template_height
		});
		
		
		// items
		let template_items = [{
	   		"bind" : "txtItems",
	   		"name" : "txtItems",
	   		"type" : "text",
	   		"width" : "200px",
	   		"source" : countries,
	   		"items" : 5	
		}];
		
		$("#jqxinputForm_items").jqxForm({
	   		"template" : template_items
		});

		
		// minLength
		let template_minLength = [{
	   		"bind" : "txtMinLength",
	   		"name" : "txtMinLength",
	   		"type" : "text",
	   		"width" : "200px",
	   		"source" : countries,
	   		"minLength" : 2
		}];
		
		$("#jqxinputForm_minLength").jqxForm({
	   		"template" : template_minLength
		});
		
		
		// maxLength
		let template_maxLength = [{
	   		"bind" : "txtMaxLength",
	   		"name" : "txtMaxLength",
	   		"type" : "text",
	   		"width" : "200px",
	   		"maxLength" : 5
		}];
		
		$("#jqxinputForm_maxLength").jqxForm({
	   		"template" : template_maxLength
		});
		
		
		// opened
		let template_opened = [{
	   		"bind" : "txtOpened",
	   		"name" : "txtOpened",
	   		"type" : "text",
	   		"width" : "200px",
	   		"source" : countries,
	   		"opened" : true
		}];
		
		$("#jqxinputForm_opened").jqxForm({
	   		"template" : template_opened
		});
		

		// placeHolder
		let template_placeHolder = [{
	   		"bind" : "txtPlaceHolder",
	   		"name" : "txtPlaceHolder",
	   		"type" : "text",
	   		"width" : "200px",
	   		"placeHolder" : "This is placeHolder"
		}];
		
		$("#jqxinputForm_placeHolder").jqxForm({
	   		"template" : template_placeHolder
		});
		
		
		// popupZIndex
		let template_popupZIndex= [{
	   		"bind" : "txtPopupZIndex",
	   		"name" : "txtPopupZIndex",
	   		"type" : "text",
	   		"width" : "200px",
	   		"source" : countries,
	   		"popupZIndex" : 999999
		}];
		
		$("#jqxinputForm_popupZIndex").jqxForm({
	   		"template" : template_popupZIndex
		});
		
		
		// query
		let template_query= [{
	   		"bind" : "txtQuery",
	   		"name" : "txtQuery",
	   		"type" : "text",
	   		"width" : "200px",
	   		"placeHolder" : "Enter a Country",
	   		"source" : function(query, response) {
	   		    let item = query.split(/,\s*/).pop();
	   		    
	   		    // update the search query
	   		    let txtQuery = $("#jqxinputForm_query").jqxForm("getComponentByName", "txtQuery");
	   		    
	   		    txtQuery.jqxInput({
	   		       "query" : item 
	   		    });
	   		    
	   		    response(countries);
	   		},
	   		"renderer" : function(itemValue, inputValue) {
	   		    let terms = inputValue.split(/,\s*/);
	   		    // remove the current input
	   		    terms.pop();
	   		    // add the selected item
	   		    terms.push(itemValue);
	   		    // add placeholder to get the comma-and-space at the end
	   		    terms.push("");
	   		    
	   		    let value = terms.join(", ");
	   		    return value;
	   		}
		}];
		
		$("#jqxinputForm_query").jqxForm({
	   		"template" : template_query
		});
	
		
		// renderer
		let template_renderer = [{
	   		"bind" : "txtRenderer",
	   		"name" : "txtRenderer",
	   		"type" : "text",
	   		"width" : "200px",
	   		"placeHolder" : "Enter a Country",
	   		"source" : function(query, response) {
	   		    let item = query.split(/,\s*/).pop();
	   		    
	   		    // update the search query
	   		    let txtRenderer = $("#jqxinputForm_renderer").jqxForm("getComponentByName", "txtRenderer");
	   		    
	   		 	txtRenderer.jqxInput({
	   		       "query" : item 
	   		    });
	   		    
	   		    response(countries);
	   		},
	   		"renderer" : function(itemValue, inputValue) {
	   		    let terms = inputValue.split(/,\s*/);
	   		    // remove the current input
	   		    terms.pop();
	   		    // add the selected item
	   		    terms.push(itemValue);
	   		    // add placeholder to get the comma-and-space at the end
	   		    terms.push("");
	   		    
	   		    let value = terms.join(", ");
	   		    return value;
	   		}
		}];
		
		$("#jqxinputForm_renderer").jqxForm({
		    "template" : template_renderer
		});
		
		
		// rtl
		let template_rtl = [{
	   		"bind" : "txtRtl",
	   		"name" : "txtRtl",
	   		"type" : "text",
	   		"width" : "200px",
	   		"placeHolder" : "Press a key",
	   		"rtl" : true
		}];
		
		$("#jqxinputForm_rtl").jqxForm({
		    "template" : template_rtl
		});
		
		
		// searchMode
		let template_searchMode = [{
	   		"bind" : "txtSearchMode",
	   		"name" : "txtSearchMode",
	   		"type" : "text",
	   		"width" : "200px",
	   		"source" : countries,
	   		"searchMode" : "none"
		}];
		
		$("#jqxinputForm_searchMode").jqxForm({
	   		"template" : template_searchMode
		});
		
		
		// source
		let template_source = [{
	   		"bind" : "txtSource",
	   		"name" : "txtSource",
	   		"type" : "text",
	   		"width" : "200px",
	   		"source" : countries	
		}];
		
		$("#jqxinputForm_source").jqxForm({
	   		"template" : template_source
		});
		
		
		// theme
		let template_theme = [{
	   		"bind" : "txtTheme",
	   		"name" : "txtTheme",
	   		"type" : "text",
	   		"width" : "200px",
	   		"source" : countries,
	   		//"theme" : "energyblue"	
		}];
		
		$("#jqxinputForm_theme").jqxForm({
	   		"template" : template_theme
		});
		
		
		// valueMember
		let template_valueMember = [{
		    "bind" : "txtValueMember",
		    "name" : "txtValueMember",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "Contact Name :",
			"source" : dataAdapter,				//* 데이터 바인딩 된 adapter를 source로 지정
			"displayMember" : "ContactName",	// 화면에 표시될 datafield명 
			"valueMember" : "CompanyName"		// 실제 데이터를 나타내는 datafield명	// property 설정
		}];

		$("#jqxinputForm_valueMember").jqxForm({
		  	"template" : template_valueMember
		});

		let txtValueMember = $("#jqxinputForm_valueMember").jqxForm("getComponentByName", "txtValueMember");
		
		// Event 설정
		txtValueMember.on("select", function(event) {
		   if(event.args) {
		       let item = event.args.item;
		       
		       if(item) {
		           let valueElem = $("<div></div>");
		           valueElem.text("Value: " + item.value);
		           
		           let labelElem = $("<div></div>");
		           labelElem.text("Label: " + item.label);
		           
		           $("#selectionLog_valueMember").children().remove();
		           $("#selectionLog_valueMember").append(valueElem);
		           $("#selectionLog_valueMember").append(labelElem);
		       }
		   } 
		});
		
		
		// width
		/* Set Property */
		let template_width = [{
		    "bind" : "txtWidth",
		    "name" : "txtWidth",
			"type" : "text",	
			"width" : "250px",	// property 설정
			"height" : "25px",	
		}];
		
		$("#jqxinputForm_width").jqxForm({
		  	"template" : template_width
		});
		
		
		/* Events */
		// change
		let template_change = [{
		    "bind" : "txtChange",
		    "name" : "txtChange",
		    "placeHolder" : "Enter a Country",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",
			"source" : countries
		}];
		
		$("#jqxinputForm_change").jqxForm({
		  	"template" : template_change
		});
		
		let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
		
		txtChange.on("change", function(event) {
		   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
		   	let value = txtChange.val();	// inputBox에 입력된 값
		   
		   	$("#log_change").html("type : " + type + " // value : " + value);
		});
		
		
		// close
		/* 초기설정 */
		let template_close = [{
		    "bind" : "txtClose",
		    "name" : "txtClose",
		    "placeHolder" : "Enter a Country",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",
			"source" : countries
		}];
		
		$("#jqxinputForm_close").jqxForm({
		  	"template" : template_close
		});
		
		
		/* 이벤트 설정 */
		let txtClose = $("#jqxinputForm_close").jqxForm("getComponentByName", "txtClose"); 
		txtClose.on("close", function() {
		   	$("#log_close").html("auto-complete popup is closed");
		});
		
		
		// open
		/* 초기설정 */
		let template_open = [{
		    "bind" : "txtOpen",
		    "name" : "txtOpen",
		    "placeHolder" : "Enter a Country",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",
			"source" : countries
		}];
		
		$("#jqxinputForm_open").jqxForm({
		  	"template" : template_open
		});
		
		
		/* 이벤트 설정 */
		let txtOpen = $("#jqxinputForm_open").jqxForm("getComponentByName", "txtOpen"); 
		txtOpen.on("open", function() {
		   	$("#log_open").html("auto-complete popup is opened");
		});
		
		
		// select
		/* 초기설정 */
		let template_select = [{
		    "bind" : "txtSelect",
		    "name" : "txtSelect",
		    "placeHolder" : "Enter a Country",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",
			"source" : countries
		}];
		
		$("#jqxinputForm_select").jqxForm({
		  	"template" : template_select
		});
		
		/* 이벤트 설정 */
		let txtSelect = $("#jqxinputForm_select").jqxForm("getComponentByName", "txtSelect"); 
		txtSelect.on("select", function() {
		   	$("#log_select").html("item is selected : " + txtSelect.val());
		});
		
		
		/* Methods */
		// destroy
		let template_destroy = [{
		    "bind" : "txtDestroy",
		    "name" : "txtDestroy",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px"
		}];
		
		$("#jqxinputForm_destroy").jqxForm({
		  	"template" : template_destroy
		});
		
		let txtDestroy = $("#jqxinputForm_destroy").jqxForm("getComponentByName", "txtDestroy");
		 
		$("#btnDestroy").on("click", function() {
		   	txtDestroy.jqxInput("destroy");
		});
		
		
		// focus
		let template_focus = [{
		    "bind" : "txtFocus",
		    "name" : "txtFocus",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px"
		}];
		
		$("#jqxinputForm_focus").jqxForm({
		  	"template" : template_focus
		});
		
		
		let txtFocus = $("#jqxinputForm_focus").jqxForm("getComponentByName", "txtFocus");
		 
		$("#btnFocus").on("click", function() {
		   	txtFocus.jqxInput("focus");
		});
		
		
		// selectAll
		/* 초기설정 */
		let template_selectAll = [{
		    "bind" : "txtSelectAll",
		    "name" : "txtSelectAll",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px"
		}];
		
		$("#jqxinputForm_selectAll").jqxForm({
		  	"template" : template_selectAll
		});
		
		/* 이벤트 설정 */
		let txtSelectAll = $("#jqxinputForm_selectAll").jqxForm("getComponentByName", "txtSelectAll");
		txtSelectAll.val("test text");
		
		$("#btnSelectAll").on("click", function() {
		   	txtSelectAll.jqxInput("selectAll");
		});
		
		
		// val
		/* 초기설정 */
		let template_val = [{
		    "bind" : "txtVal",
		    "name" : "txtVal",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px"
		}];
		
		$("#jqxinputForm_val").jqxForm({
		  	"template" : template_val
		});
		
		/* 이벤트 설정 */
		let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");
		txtVal.val("test text");
		
		$("#btnGetVal").on("click", function() {
			// get text
			let val = txtVal.val();
		   	alert(val);
		});
		
		$("#btnSetVal").on("click", function() {
			// set text
			txtVal.val("new text!!!!");
		});
		/*
		let txtTest = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
		txtTest.jqxInput("theme", "energyblue");
		
		let tmp = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
		alert(tmp.jqxInput("theme"));
		*/
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
						<div id="jqxinputForm_disabled"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯을 비활성화하는 프로퍼티를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
let template_disabled = [{
   	"bind" : "txtDisabled",
    "name" : "txtDisabled",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",	
	"placeHolder" : "disabled",
	"disabled" : true
}];

$("#jqxinputForm_disabled").jqxForm({
  	"template" : template_disabled
});

// case 2 : element에 property 설정
let txtDisabled = $("#jqxinputForm").jqxForm("getComponentByName", "txtDisabled");
txtDisabled.jqxInput("disabled", true);


/* Get Property */

let txtDisabled = $("#jqxinputForm").jqxForm("getComponentByName", "txtDisabled");
let disabled = txtDisabled.jqxInput("disabled"); 
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
					null
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_dropDownWidth"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>jqxinput의 dropDown 너비를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template = [{
  "type" : "text",	
  "dropDownWidth" : 200	// property 설정
}];

$("#jqxinputForm").jqxForm({
  "template" : template
});

// case 2 : element에 property 설정
let txtField = $("#jqxinputForm").jqxForm("getComponentByName", "txtField");
txtField.jqxInput("dropDownWidth", 150);


/* Get Property */

let txtField = $("#jqxinputForm").jqxForm("getComponentByName", "txtField");
let disabled = txtField.jqxInput("dropDownWidth"); 
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
						<div id="jqxinputForm_displayMember"></div>
						<label style="font-family: Verdana; font-size: 10px">ex: Ana</label>
						<div style="font-family: Verdana; font-size: 13;" id="selectionLog"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>화면에 보일 displayMember데이터를 설정하거나 가져옵니다</p>
						<p>name은 'source' property에 포함됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Init Data */
let data = [{
	"CompanyName" : "Company01",
	"ContactName" : "Ana"
}, {
   	"CompanyName" : "Company02",
	"ContactName" : "Maria"
}];

// field명, data구분해서 source에 저장 
let source = {
  	"datafields" : [{
  	    "name" : "CompanyName"
  	}, {
  	    "name" : "ContactName"
  	}],
  	"localdata" : data
};

// field별 data binding 
let dataAdapter = new $.jqx.dataAdapter(source);

/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_displayMember = [{
    "bind" : "txtDisplayMember",
    "name" : "txtDisplayMember",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",	
	"placeHolder" : "Contact Name :",
	"source" : dataAdapter,				//* 데이터 바인딩 된 adapter를 source로 지정
	"displayMember" : "ContactName",	// 화면에 표시될 datafield명 
	"valueMember" : "CompanyName"		// 실제 데이터를 나타내는 datafield명
}];

$("#jqxinputForm_displayMember").jqxForm({
  	"template" : template_displayMember
});

// case 2 : element에 property 설정
let txtDisplayMember = $("#jqxinputForm").jqxForm("getComponentByName", "txtDisplayMember");
txtDisplayMember.jqxInput("displayMember", "OtherName");


/* Get Property */
let txtDisplayMember = $("#jqxinputForm").jqxForm("getComponentByName", "txtDisplayMember");
let displayMember = txtDisplayMember.jqxInput("displayMember"); 


/* Get Data */
let txtDisplayMember = $("#jqxinputForm_displayMember").jqxForm("getComponentByName", "txtDisplayMember");

// Event 설정
txtDisplayMember.on("select", function(event) {
   if(event.args) {
       let item = event.args.item;
       
       if(item) {
           let value = item.value;	// valueMember
           let label = item.label;	// displayMember
       }
   } 
});
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
					<span>Number/String</span>
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
						<div id="jqxinputForm_height"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>jqxinput의 높이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_height = [{
    "bind" : "txtHeight",
    "name" : "txtHeight",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",	// property 설정
}];

$("#jqxinputForm_height").jqxForm({
  	"template" : template_height
});

// case 2 : element에 property 설정
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
txtHeight.jqxInput("height", "50px");


/* Get Property */
let txtHeight = $("#jqxinputForm_height").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxInput("height"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
			<!-- items -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">items</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					8
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_items"></div>
						<label style="font-family: Verdana; font-size: 10px">ex: a</label>
						<!-- Description -->
						<h4>Description</h4>
						<p>popup메뉴에 나타날 items개수를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_items = [{
  		"bind" : "txtItems",
  		"name" : "txtItems",
  		"type" : "text",
  		"width" : "200px",
  		"source" : countries,
  		"items" : 5	// property 설정
}];

$("#jqxinputForm_items").jqxForm({
	"template" : template_items
});


// case 2 : element에 property 설정
let txtItems = $("#jqxinputForm_items").jqxForm("getComponentByName", "txtItems");
txtItems.jqxInput("items", 10);


/* Get Property */
let txtItems = $("#jqxinputForm_items").jqxForm("getComponentByName", "txtItems");
let items = txtHeight.jqxInput("items"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- minLength -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">minLength</span>
				</td>
				<td>
					<span>Number</span>
				</td>
				<td>
					1
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_minLength"></div>
						<label style="font-family: Verdana; font-size: 10px">ex: ab</label>
						<!-- Description -->
						<h4>Description</h4>
						<p>auto-complete가 수행되는 최소 문자열 길이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_minLength = [{
   	"bind" : "txtMinLength",
  		"name" : "txtMinLength",
  		"type" : "text",
  		"width" : "200px",
  		"source" : countries,
  		"minLength" : 2	// property 설정
}];

$("#jqxinputForm_minLength").jqxForm({
  	"template" : template_minLength
});

// case 2 : element에 property 설정
let txtMinLength = $("#jqxinputForm_minLength").jqxForm("getComponentByName", "txtMinLength");
txtMinLength.jqxInput("minLength", 3);


/* Get Property */
let txtMinLength = $("#jqxinputForm_minLength").jqxForm("getComponentByName", "txtMinLength");
let minLength = txtMinLength.jqxInput("minLength") 
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- maxLength -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">maxLength</span>
				</td>
				<td>
					<span>Number</span>
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
						<div id="jqxinputForm_maxLength"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>입력할 최대 문자열 길이를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_maxLength = [{
 	"bind" : "txtMaxLength",
 	"name" : "txtMaxLength",
 	"type" : "text",
 	"width" : "200px",
 	"maxLength" : 5	// property 설정
}];

$("#jqxinputForm_maxLength").jqxForm({
  	"template" : template_maxLength
});

// case 2 : element에 property 설정
let txtMaxLength = $("#jqxinputForm_maxLength").jqxForm("getComponentByName", "txtMaxLength");
txtMaxLength.jqxInput("maxLength", 3);


/* Get Property */
let txtMaxLength = $("#jqxinputForm_maxLength").jqxForm("getComponentByName", "txtMaxLength");
let maxLength = txtMaxLength.jqxInput("maxLength"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- opened -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">opened</span>
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
						<div id="jqxinputForm_opened"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>auto-suggest팝업 사용여부를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_opened = [{
	"bind" : "txtOpened",
	"name" : "txtOpened",
	"type" : "text",
	"width" : "200px",
	"source" : countries,
	"opened" : true	// property 설정
}];

$("#jqxinputForm_opened").jqxForm({
  	"template" : template_opened
});

// case 2 : element에 property 설정
let txtOpened = $("#jqxinputForm_opened").jqxForm("getComponentByName", "txtOpened");
txtOpened.jqxInput("opened", true);


/* Get Property */
let txtOpened = $("#jqxinputForm_opened").jqxForm("getComponentByName", "txtOpened");
let opened = txtOpened.jqxInput("opened");
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
						<div id="jqxinputForm_placeHolder"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>placeHolder 텍스트를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_placeHolder = [{
  	"bind" : "txtPlaceHolder",
  	"name" : "txtPlaceHolder",
  	"type" : "text",
  	"width" : "200px",
  	"placeHolder" : "This is a placeHolder"	// property 설정
}];

$("#jqxinputForm_placeHolder").jqxForm({
  	"template" : template_placeHolder
});

// case 2 : element에 property 설정
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
txtPlaceHolder.jqxInput("placeHolder", "changed text!");


/* Get Property */
let txtPlaceHolder = $("#jqxinputForm_placeHolder").jqxForm("getComponentByName", "txtPlaceHolder");
let placeHolder = txtPlaceHolder.jqxInput("placeHolder");
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
					20000
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_popupZIndex"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>auto-suggest 팝업의 z-index를 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_popupZIndex= [{
  	"bind" : "txtPopupZIndex",
  	"name" : "txtPopupZIndex",
  	"type" : "text",
  	"width" : "200px",
  	"source" : countries,
  	"popupZIndex" : 999999	// property 설정
}];

$("#jqxinputForm_popupZIndex").jqxForm({
  	"template" : template_popupZIndex
});
		
// case 2 : element에 property 설정
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
txtPopupZIndex.jqxInput("popupZIndex", 888888);


/* Get Property */
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
let popupZIndex = txtPopupZIndex.jqxInput("popupZIndex");
</code></pre>
                    </div>
                </td>
            </tr>
			<!-- query -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">query</span>
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
						<div id="jqxinputForm_query"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>입력 내용에 대한 query를 설정하거나 가져옵니다. (다중값 선택시 사용)</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_query= [{
  	"bind" : "txtQuery",
  	"name" : "txtQuery",
  	"type" : "text",
  	"width" : "200px",
  	"placeHolder" : "Enter a Country",
  	// 입력값에 따라 source내에서 item을 가져와 보여줌
  	"source" : function(query, response) {
  	    let item = query.split(/,\s*/).pop();
  		    
  	    // update the search query
  	    let txtQuery = $("#jqxinputForm_query").jqxForm("getComponentByName", "txtQuery");
  		    
  	    txtQuery.jqxInput({
  	       "query" : item 
  	    });
  		    
  	    response(countries);
  	},
  	// 다중선택된 데이터를 ','로 구분하여 재작성
  	"renderer" : function(itemValue, inputValue) {
  	    let terms = inputValue.split(/,\s*/);
  	    // remove the current input
  	    terms.pop();
  	    // add the selected item
  	    terms.push(itemValue);
  	    // add placeholder to get the comma-and-space at the end
  	    terms.push("");
  		    
  	    let value = terms.join(", ");
  	    return value;
  	}
}];

$("#jqxinputForm_query").jqxForm({
  	"template" : template_query
});


		
// case 2 : element에 property 설정
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
txtPopupZIndex.jqxInput("popupZIndex", 888888);


/* Get Property */
let txtPopupZIndex = $("#jqxinputForm_popupZIndex").jqxForm("getComponentByName", "txtPopupZIndex");
let popupZIndex = txtPopupZIndex.jqxInput("popupZIndex");
</code></pre>
                    </div>
                </td>
            </tr>
            <!-- renderer -->
        	<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">renderer</span>
				</td>
				<td>
					<span>function</span>
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
						<div id="jqxinputForm_renderer"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>auto-complete popup에서 선택한 값이 input box에 적용되도록 합니다.</p>
						<h4>Code Example</h4>
<pre><code>
let template_renderer= [{
  	"bind" : "txtRenderer",
  	"name" : "txtRenderer",
  	"type" : "text",
  	"width" : "200px",
  	"placeHolder" : "Enter a Country",
  	// 입력값에 따라 source내에서 item을 가져와 보여줌
  	"source" : function(query, response) {
  	    let item = query.split(/,\s*/).pop();
  		    
  	    // update the search query
  	    let txtRenderer = $("#jqxinputForm_renderer").jqxForm("getComponentByName", "txtRenderer");
  		    
  	    txtRenderer.jqxInput({
  	       "query" : item 
  	    });
  		    
  	    response(countries);
  	},
  	// 다중선택된 데이터를 ','로 구분하여 재작성 (renderer 적용부)
  	"renderer" : function(itemValue, inputValue) {
  	    let terms = inputValue.split(/,\s*/);
  	    // remove the current input
  	    terms.pop();
  	    // add the selected item
  	    terms.push(itemValue);
  	    // add placeholder to get the comma-and-space at the end
  	    terms.push("");
  		    
  	    let value = terms.join(", ");
  	    return value;
  	}
}];

$("#jqxinputForm_renderer").jqxForm({
  	"template" : template_renderer
});
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
						<div id="jqxinputForm_rtl"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>우측정렬을 사용할지 설정하거나 현재 우측정렬상태인지 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_rtl = [{
  	"bind" : "txtRtl",
  	"name" : "txtRtl",
  	"type" : "text",
  	"width" : "200px",
  	"placeHolder" : "Press a key",
  	"rtl" : true	// property 설정
}];

$("#jqxinputForm_rtl").jqxForm({
    "template" : template_rtl
});

/* Get Property */
let txtRtl = $("#jqxinputForm_rtl").jqxForm("getComponentByName", "txtRtl");
let rtl = txtRtl.jqxInput("rtl");


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
					"default"
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_searchMode"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>검색모드를 설정 또는 가져옵니다. input box에 입력시 해당 검색조건에 따라 auto-complete를 수행합니다.</p>
						<h4>Possible Values</h4>
<pre><code>
"none"
"contains"
"containsignorecase"
"equals"
"equalsignorecase"
"startswithignorecase"
"startswith"
"endswithignorecase"
"endswith"
</code></pre>						
						<h4>Code Example</h4>
<pre><code>
/* Set Property */


// case 1 : 초기화 시점에 property 설정
let countries = new Array("Afghanistan", "Albania", "Algeria", "Andorra", "Angola");

let template_searchMode = [{
  	"bind" : "txtSearchMode",
  	"name" : "txtSearchMode",
  	"type" : "text",
  	"width" : "200px",
  	"source" : countries,
  	"searchMode" : "none"	// property 설정
}];

$("#jqxinputForm_searchMode").jqxForm({
  	"template" : template_searchMode
});

// case 2 : element에 property 설정
let txtSearchMode = $("#jqxinputForm_searchMode").jqxForm("getComponentByName", "txtSearchMode");
txtSearchMode.jqxInput("searchMode", "contains");


/* Get Property */
let txtSearchMode = $("#jqxinputForm_searchMode").jqxForm("getComponentByName", "txtSearchMode");
let searchMode = txtSearchMode.jqxInput("searchMode");

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
					<span>Array, function</span>
				</td>
				<td>
					[]
				</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%">
					<div class="documentation-option-description property-content" style="display: none;">
						<!-- Demo -->
						<h4>Demo</h4>
						<div id="jqxinputForm_source"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>input box의 data source를 지정합니다. 입력필드의 값과 콜백함수를 인수로 받을 수 있습니다.</p>
						<p>'source' 함수는 항목의 배열을 반환하거나 콜백함수를 통해 비동기적으로 사용할 수 있습니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let countries = new Array("Afghanistan", "Albania", "Algeria", "Andorra", "Angola");

let template_source = [{
  	"bind" : "txtSource",
  	"name" : "txtSource",
  	"type" : "text",
  	"width" : "200px",
  	"source" : countries	// property 설정	
}];

$("#jqxinputForm_source").jqxForm({
  	"template" : template_source
});

// case 2 : element에 property 설정
let alpha = new Array("AAA", "BBB", "CCC", "DDD", "EEE");
		
let txtSource = $("#jqxinputForm_source").jqxForm("getComponentByName", "txtSource");
txtSource.jqxInput("source", alpha);

		
/* Get Property */
let txtSource = $("#jqxinputForm_searchMode").jqxForm("getComponentByName", "txtSource");
let source = txtSearchMode.jqxInput("source");

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
						<div id="jqxinputForm_theme"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>위젯의 theme를 설정합니다.</p>
						<p>css파일은 한 쌍으로 사용되며 jqx.base.css, jqx.[theme name].css로 구분됩니다. </p>
						<p>base stylesheet는 위젯의 레이아웃을 설정하며. theme name stylesheet는 위젯의 색상 및 배경을 담당합니다.</p>
						<p>include 순서는 base -> theme 순으로 진행하여야 합니다.</p>

						<h4>Code Example</h4>
<pre><code>
/* Include stylesheets */
<xmp>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.energyblue.css"/>" />
</xmp>

/* Set Property */
// case 1 : 초기화 시점에 property 설정
let countries = new Array("Afghanistan", "Albania", "Algeria", "Andorra", "Angola");

let template_theme = [{
  	"bind" : "txtTheme",
  	"name" : "txtTheme",
  	"type" : "text",
  	"width" : "200px",
  	"source" : countries,
  	"theme" : "energyblue"	// property 설정	
}];

$("#jqxinputForm_theme").jqxForm({
  	"template" : template_theme
});

// case 2 : element에 property 설정
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
txtTheme.jqxInput("theme", "energyblue");


/* Get Property */
let txtTheme = $("#jqxinputForm_theme").jqxForm("getComponentByName", "txtTheme");
let theme = txtTheme.jqxInput("theme");
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
						<div id="jqxinputForm_valueMember"></div>
						<label style="font-family: Verdana; font-size: 10px">ex: Ana</label>
						<div style="font-family: Verdana; font-size: 13;" id="selectionLog_valueMember"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>화면에 보일 displayMember데이터를 설정하거나 가져옵니다</p>
						<p>name은 'source' property에 포함됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Init Data */
let data = [{
	"CompanyName" : "Company01",
	"ContactName" : "Ana"
}, {
   	"CompanyName" : "Company02",
	"ContactName" : "Maria"
}];

// field명, data구분해서 source에 저장 
let source = {
  	"datafields" : [{
  	    "name" : "CompanyName"
  	}, {
  	    "name" : "ContactName"
  	}],
  	"localdata" : data
};

// field별 data binding 
let dataAdapter = new $.jqx.dataAdapter(source);

/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_valueMember = [{
    "bind" : "txtValueMember",
    "name" : "txtValueMember",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",	
	"placeHolder" : "Contact Name :",
	"source" : dataAdapter,				//* 데이터 바인딩 된 adapter를 source로 지정
	"displayMember" : "ContactName",	// 화면에 표시될 datafield명 
	"valueMember" : "CompanyName"		// 실제 데이터를 나타내는 datafield명	// property 설정
}];

$("#jqxinputForm_valueMember").jqxForm({
  	"template" : template_valueMember
});

// case 2 : element에 property 설정
let txtValueMember = $("#jqxinputForm_valueMember").jqxForm("getComponentByName", "txtValueMember");
txtValueMember.jqxInput("valueMember", "OtherName");


/* Get Property */
let txtValueMember = $("#jqxinputForm_valueMember").jqxForm("getComponentByName", "txtValueMember");
let valueMember = txtValueMember.jqxInput("valueMember"); 


/* Set Event */
txtValueMember.on("select", function(event) {
   if(event.args) {
       let item = event.args.item;
       
       if(item) {
           let value = item.value;	// valueMember
           let label = item.label;	// displayMember
       }
   } 
});
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
					<span>Number/String</span>
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
						<div id="jqxinputForm_width"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>jqxinput의 너비를 설정하거나 가져옵니다</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */
// case 1 : 초기화 시점에 property 설정
let template_width = [{
    "bind" : "txtWidth",
    "name" : "txtWidth",
	"type" : "text",	
	"width" : "250px",	// property 설정
	"height" : "25px",	
}];

$("#jqxinputForm_width").jqxForm({
  	"template" : template_width
});

// case 2 : element에 property 설정
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
txtWidth.jqxInput("width", "500px");


/* Get Property */
let txtWidth = $("#jqxinputForm_width").jqxForm("getComponentByName", "txtWidth");
let width = txtWidth.jqxInput("width"); 
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
						<div id="jqxinputForm_change"></div>
						<div id="log_change"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>값이 변경된 경우 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_change = [{
    "bind" : "txtChange",
    "name" : "txtChange",
    "placeHolder" : "Enter a Country",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",
	"source" : countries
}];

$("#jqxinputForm_change").jqxForm({
  	"template" : template_change
});


/* 이벤트 설정 */
let txtChange = $("#jqxinputForm_change").jqxForm("getComponentByName", "txtChange"); 
txtChange.on("change", function(event) {
   	let type = event.args.type;		// 어디로부터 값이 입력되었는지 (keyboard, mouse or null) 
   	let value = txtChange.val();	// inputBox에 입력된 값
   
   	$("#log_change").html("type : " + type + " // value : " + value);
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
						<div id="jqxinputForm_close"></div>
						<div id="log_close"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>auto-complete popup이 닫힐 때 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_close = [{
    "bind" : "txtClose",
    "name" : "txtClose",
    "placeHolder" : "Enter a Country",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",
	"source" : countries
}];

$("#jqxinputForm_close").jqxForm({
  	"template" : template_close
});


/* 이벤트 설정 */
let txtClose = $("#jqxinputForm_close").jqxForm("getComponentByName", "txtClose"); 
txtClose.on("close", function() {
   	$("#log_close").html("auto-complete popup is closed");
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
						<div id="jqxinputForm_open"></div>
						<div id="log_open"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>auto-complete popup이 열릴 때 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_open = [{
    "bind" : "txtOpen",
    "name" : "txtOpen",
    "placeHolder" : "Enter a Country",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",
	"source" : countries
}];

$("#jqxinputForm_open").jqxForm({
  	"template" : template_open
});


/* 이벤트 설정 */
let txtOpen = $("#jqxinputForm_open").jqxForm("getComponentByName", "txtOpen"); 
txtOpen.on("open", function() {
   	$("#log_open").html("auto-complete popup is opened");
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
						<div id="jqxinputForm_select"></div>
						<div id="log_select"></div>
						<!-- Description -->
						<h4>Description</h4>
						<p>auto-complete popup내 item이 선택되었을 때 trigger됩니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_select = [{
    "bind" : "txtSelect",
    "name" : "txtSelect",
    "placeHolder" : "Enter a Country",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px",
	"source" : countries
}];

$("#jqxinputForm_select").jqxForm({
  	"template" : template_select
});


/* 이벤트 설정 */
let txtSelect = $("#jqxinputForm_select").jqxForm("getComponentByName", "txtSelect"); 
txtSelect.on("select", function() {
   	$("#log_open").html("item is selected : " + txtSelect.val());
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
						<div id="jqxinputForm_destroy"></div>
						<input type="button" id="btnDestroy" value="Destroy" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯을 제거합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_destroy = [{
    "bind" : "txtDestroy",
    "name" : "txtDestroy",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px"
}];

$("#jqxinputForm_destroy").jqxForm({
  	"template" : template_destroy
});


/* 이벤트 설정 */
let txtDestroy = $("#jqxinputForm_destroy").jqxForm("getComponentByName", "txtDestroy");
 
$("#btnDestroy").on("click", function() {
   	txtDestroy.jqxInput("destroy");
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
						<div id="jqxinputForm_focus"></div>
						<input type="button" id="btnFocus" value="Focus" />
						<!-- Description -->
						<h4>Description</h4>
						<p>해당 위젯에 focus를 설정합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_focus = [{
    "bind" : "txtFocus",
    "name" : "txtFocus",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px"
}];

$("#jqxinputForm_focus").jqxForm({
  	"template" : template_focus
});


/* 이벤트 설정 */
let txtFocus = $("#jqxinputForm_focus").jqxForm("getComponentByName", "txtFocus");
 
$("#btnFocus").on("click", function() {
   	txtFocus.jqxInput("focus");
});
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- selectAll -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">selectAll</span>
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
						<div id="jqxinputForm_selectAll"></div>
						<input type="button" id="btnSelectAll" value="selectAll" />
						<!-- Description -->
						<h4>Description</h4>
						<p>input field의 전체 text를 선택합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_selectAll = [{
    "bind" : "txtSelectAll",
    "name" : "txtSelectAll",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px"
}];

$("#jqxinputForm_selectAll").jqxForm({
  	"template" : template_selectAll
});


/* 이벤트 설정 */
let txtselectAll = $("#jqxinputForm_selectAll").jqxForm("getComponentByName", "txtSelectAll");
txtSelectAll.val("test text");

$("#btnSelectAll").on("click", function() {
   	txtSelectAll.jqxInput("selectAll");
});
</code></pre>
						
                    </div>
                </td>
            </tr>
            <!-- val -->
			<tr>
				<td class="documentation-option-type-click">
					<span id="Span2">val</span>
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
						<div id="jqxinputForm_val"></div>
						<input type="button" id="btnGetVal" value="GetVal" />
						<input type="button" id="btnSetVal" value="SetVal" />
						<!-- Description -->
						<h4>Description</h4>
						<p>input field text값을 설정하거나 가져옵니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* 초기설정 */
let template_val = [{
    "bind" : "txtVal",
    "name" : "txtVal",
	"type" : "text",	
	"width" : "250px",	
	"height" : "25px"
}];

$("#jqxinputForm_val").jqxForm({
  	"template" : template_val
});


/* 이벤트 설정 */
let txtVal = $("#jqxinputForm_val").jqxForm("getComponentByName", "txtVal");
txtVal.val("test text");

$("#btnGetVal").on("click", function() {
	// get text
	let val = txtVal.val();
   	alert(val);
});

$("#btnSetVal").on("click", function() {
	// set text
	txtVal.val("new text!!!!");
});
</code></pre>
                    </div>
                </td>
            </tr>
		</tbody>
	</table>
</div>