<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.apireference.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
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
		// disabled
		let template_disabled = [{
		   	"bind" : "txtDisabled",
		    "name" : "txtDisabled",
			"type" : "text",	
			"width" : "250px",	
			"height" : "25px",	
			"placeHolder" : "disabled",
			"disabled" : false
		}];
		
		$("#jqxinputForm_disabled").jqxForm({
	   		"template" : template_disabled
		});
		
		
		// dropDownWidth
		let countries = new Array("Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina Faso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Central African Republic", "Chad", "Chile", "China", "Colombia", "Comoros", "Congo, Democratic Republic", "Congo, Republic of the", "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Fiji", "Finland", "France", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Greece", "Greenland", "Grenada", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, North", "Korea, South", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Mauritania", "Mauritius", "Mexico", "Micronesia", "Moldova", "Mongolia", "Morocco", "Monaco", "Mozambique", "Namibia", "Nauru", "Nepal", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Norway", "Oman", "Pakistan", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", "Rwanda", "Samoa", "San Marino", " Sao Tome", "Saudi Arabia", "Senegal", "Serbia and Montenegro", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "Spain", "Sri Lanka", "Sudan", "Suriname", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Yemen", "Zambia", "Zimbabwe");
		
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
						<p>jqxinput을 활성화 또는 비활성화 합니다.</p>
						<h4>Code Example</h4>
<pre><code>
/* Set Property */

// case 1 : 초기화 시점에 property 설정
let template = [{
  "type" : "text",	
  "disabled" : true	// property 설정
}];

$("#jqxinputForm").jqxForm({
  "template" : template
});

// case 2 : element에 property 설정
let txtField = $("#jqxinputForm").jqxForm("getComponentByName", "txtField");
txtField.jqxInput("disabled", true);


/* Get Property */

let txtField = $("#jqxinputForm").jqxForm("getComponentByName", "txtField");
let disabled = txtField.jqxInput("disabled"); 
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

/* field명, data구분해서 source에 저장 */
let source = {
  	"datafields" : [{
  	    "name" : "CompanyName"
  	}, {
  	    "name" : "ContactName"
  	}],
  	"localdata" : data
};

/* field별 data binding */
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
						<p>jqxinput의 높이를 설정하거나 가져옵니다</p>
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
let txtHeight = $("#jqxinputForm").jqxForm("getComponentByName", "txtHeight");
let height = txtHeight.jqxInput("height"); 
</code></pre>
						
                    </div>
                </td>
            </tr>
        	
        </tbody>
	</table>
</div>