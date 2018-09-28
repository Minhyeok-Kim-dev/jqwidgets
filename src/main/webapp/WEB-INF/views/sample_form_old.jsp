<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/jqwidgets/styles/jqx.office.css"/>" />

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
 
<script src="<c:url value="/resources/jqwidgets/jqxcore.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxbuttons.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcheckbox.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxlistbox.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxscrollbar.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxpanel.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdropdownlist.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxradiobutton.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxpasswordinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxnumberinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcalendar.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxdatetimeinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/globalize.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxform.js"/>"></script>

<script src="<c:url value="/resources/jqwidgets/jqxmaskedinput.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxcombobox.js"/>"></script>
<script src="<c:url value="/resources/jqwidgets/jqxformattedinput.js"/>"></script>

<title>Sample form</title>

<style>
	.subitem {
		width : 200px; 
		display : inline-block;
		float : left;
	}
	
	#sampleForm > div {
		margin-top: 10px;
	}
</style>

<script>
	$(document).ready(function(){
		/*
		let template = [
			{
				bind : "regsNo",
				type : "text",
				label : "1.계좌번호",
				labelPosition : "left",
				labelWidth : "20%",
				align : "left",
				width : "250px"
			},
			{
				columns : [
					{
						type : "label",
						label : "2.계좌개설은행/지점",
						labelPosition : "left",
						width : "20%"
					},
					{
						bind : "accOpnBnkCd",
						type : "text",
						align : "left",
						width : "50px"
					},
					{
						bind : "btnAccOpnBnkCd",
						type : "button",
						width : "30px",
						text : "="
					},
					{
						bind : "accOpnBnkNm",
						type : "text",
						align : "left",
						width : "150px"
					},
					{
						bind : "accOpnStorNm",
						type : "text",
						align : "left",
						width : "150px"
					}
				]
			},
			{
				columns : [
					{
						type : "label",
						label : "3.계좌개설일",
						labelPosition : "left",
						width : "20%"
					},
					{
						bind : "stDt",
						type : "date",
						formatString : "yyyy-MM-dd",
						align : "left",
						width : "200px"
					}
				]
			},
			{
				columns : [
					{
						type : "label",
						label : "4.예금 종류 / 만기",
						labelPosition : "left",
						width : "20%"
					},
					{
						type : "label",
						label : "예금종류",
						labelPosition : "left",
						width : "80px"
					},
					{
						bind : "dsptor",
						type : "text",
						align : "left",
						width : "200px"
					},
					{
						type : "label",
						label : "만기",
						labelPosition : "right",
						width : "40px"
					},
					{
						bind : "eprtDt",
						type : "date",
						formatString : "yyyy-MM-dd",
						align : "left",
						width : "200px"
					}
				]	
			},
			{
				bind : "LmtAmt",
				type : "number",
				label : "6.당좌한도액",
				labelPosition : "left",
				labelWidth : "20%",
				align : "left",
				width : "250px"
			},
			{
				bind : "busnPersRegsNo",
				type : "jqxMaskedInput",
				mask : "###-##-#####",
				label : "7.은행 사업자 번호",
				labelPosition : "left",
				labelWidth : "20%",
				align : "left",
				width : "250px"
			},
			{
				bind : "regsNoSec",
				type : "option",
				label : "8.사업용 계좌",
				labelPosition : "left",
				labelWidth : "20%",
				component : "jqxDropDownList",
				options : [
					{ value : "부" },
					{ value : "여" }
				]
			},
			{
				columns : [
					{
						type : "label",
						label : "9.전화번호 / 팩스",
						labelPosition : "left",
						width : "20%"
					},
					{
						type : "label",
						label : "TEL",
						labelPosition : "left",
						width : "40px"
					},
					{
						bind : "tel1",
						type : "number",
						width : "50px"
					},
					{
						type : "label",
						label : ")",
						width : "5px"
					},
					{
						bind : "tel2",
						type : "number",
						width : "50px"
					},
					{
						type : "label",
						label : "-",
						width : "5px"
					},
					{
						bind : "tel3",
						type : "number",
						width : "50px"
					}
					,
					{
						type : "label",
						label : "FAX",
						labelPosition : "right",
						width : "40px"
					},
					{
						bind : "fax1",
						type : "number",
						width : "50px"
					},
					{
						type : "label",
						label : ")",
						width : "5px"
					},
					{
						bind : "fax2",
						type : "number",
						width : "50px"
					},
					{
						type : "label",
						label : "-",
						width : "5px"
					},
					{
						bind : "fax3",
						type : "number",
						width : "50px"
					}
				]	
			},
			{
				columns : [
					{
						type : "label",
						label : "10.거래처분류명",
						labelPosition : "left",
						width : "20%"
					},
					{
						bind : "zipNo",
						type : "text",
						align : "left",
						width : "50px"
					},
					{
						bind : "btnZipNo",
						type : "button",
						width : "30px",
						text : "="
					},
					{
						bind : "addr",
						type : "text",
						width : "90%",
						align : "right"
					}
				]
			}, 
			{
				bind : "addrDtl",
				type : "text",
				width : "70%",
				align : "right"
			},
			{
				bind : "dmmTxt2",
				type : "text",
				label : "12.비고",
				labelPosition : "left",
				labelWidth : "20%",
				align : "left",
				width : "100%"
			},
			{
				bind : "useYn",
				type : "option",
				label : "13.사용여부",
				labelPosition : "left",
				labelWidth : "20%",
				component : "jqxDropDownList",
				options : [
					{ value : "부" },
					{ value : "여" }
				]
			},
		];
		
		var template = [
            {
                bind: 'textBoxValue',
                type: 'text',
                label: 'Text input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true
            {
                bind: 'passwordBoxValue',
            },
                type: 'password',
                label: 'Password input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true
            },
            {
                bind: 'nubmberBoxValue',
                type: 'number',
                label: 'Number input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true
            },
            {
                bind: 'datetimeBoxValue',
                type: 'datetime',
                label: 'Date & time input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true
            },
            {
                bind: 'timeBoxValue',
                type: 'time',
                label: 'Time input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true
            },
            {
                bind: 'dateBoxValue',
                type: 'date',
                label: 'Date input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true
            },
            {
                bind: 'dropdownValue',
                type: 'option',
                label: 'Drop down list',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true,
                component: 'jqxDropDownList',
                options: [
                    { label: 'Option 1', value: 'value1' },
                    { label: 'Option 2', value: 'value2' },
                    { label: 'Option 3', value: 'value3' }
                ]
            },
            {
                type: 'label',
                label: 'Radio buttons:',
                rowHeight: '40px',
            },
            {
                bind: 'radiobuttonValue',
                type: 'option',
                label: 'Radio buttons',
                labelPosition: 'right',
                columnWidth: '150px',
                align: 'left',
                //width: '15px',
                //required: true,
                optionslayout: 'horizontal',
                options: [
                    { label: 'Option 1', value: 'value1' },
                    { label: 'Option 2', value: 'value2' },
                    { label: 'Option 3', value: 'value3' }
                ]
            },
            {
                type: 'label',
                bind: 'radiobuttonValue_out',
                label: 'Boolean options / checkboxes:',
                rowHeight: '40px',
            },
            {
                columns: [
                    {
                        columnWidth: '150px',
                        bind: 'checkboxValue1',
                        type: 'boolean',
                        label: 'Checkbox 1',
                        labelPosition: 'right',
                        align: 'left',
                        labelPadding: {left: 0, top: 5, right: 0, bottom: 5}
                    },
                    {
                        columnWidth: '150px',
                        bind: 'checkboxValue2',
                        type: 'boolean',
                        label: 'Checkbox 2',
                        labelPosition: 'right',
                        align: 'left',
                        labelPadding: {left: 0, top: 5, right: 0, bottom: 5}
                    },
                    {
                        columnWidth: '150px',
                        bind: 'checkboxValue3',
                        type: 'boolean',
                        label: 'Checkbox 3',
                        labelPosition: 'right',
                        align: 'left',
                        labelPadding: {left: 0, top: 5, right: 0, bottom: 5}
                    }
                ]
            },
            {
                label: 'Text input',
                labelPosition: 'left',
                labelWidth: '30%',
            	columns: [
                    {
                    	bind: 'textBoxValue',
                        type: 'text',
                        align: 'left',
                        width: '100px',
                        required: true
                    },
                    {
                        columnWidth: '150px',
                        bind: 'checkboxValue2',
                        type: 'boolean',
                        label: 'Checkbox 2',
                        labelPosition: 'right',
                        align: 'left',
                        labelPadding: {left: 0, top: 5, right: 0, bottom: 5}
                    },
                    {
                        columnWidth: '150px',
                        bind: 'checkboxValue3',
                        type: 'boolean',
                        label: 'Checkbox 3',
                        labelPosition: 'right',
                        align: 'left',
                        labelPadding: {left: 0, top: 5, right: 0, bottom: 5}
                    }
                ]
            }
        ];
        var sampleValue = {
            'textBoxValue': 'text box value',
            'passwordBoxValue': 'password box',
            'nubmberBoxValue': 67.44,
            'datetimeBoxValue': '2018-06-01 14:05:23',
            'timeBoxValue': '2018-07-01 11:05:23',
            'dateBoxValue': '2018-07-04 15:05:23',
            'dropdownValue': 'value3',
            'radiobuttonValue': 'value2',
            'checkboxValue1': false,
            'checkboxValue2': false,
            'checkboxValue3': true,
        };
        
       
        
        $('#sampleForm').jqxForm({
            template: template,
            //value: sampleValue,
            padding: { left: 10, top: 10, right: 10, bottom: 10 }
        });
        */
        
		
		$("#regsNo").jqxInput({
			width : "200px"
		});
		
		$("#accOpnBnkCd").jqxInput({
			width : "30px"
		});
		
		$("#accOpnBnkNm").jqxInput({
			width : "200px"
		});
		
		$("#accOpnStorNm").jqxInput({
			width : "200px"
		});
		
		$("#stDt").jqxDateTimeInput({
			width : "120px",
			formatString : "yyyy-MM-dd",
		});
		
		$("#dsptor").jqxInput({
			width : "200px"
		});
		
		$("#eprtDt").jqxDateTimeInput({
			width : "120px",
			formatString : "yyyy-MM-dd",
		});
		
		$("#intrRate").jqxNumberInput({
			width : "80px",
			spinButtons: true,
			decimalSeparator : ".",
			digits : 3,
			decimalDigits : 2,
			max : 100
		});
		
		$("#monPaymAmt").jqxNumberInput({
			width : "150px",
			spinButtons: true,
			decimalSeparator : ",",
			digits : 12,
			decimalDigits : 0
		});
		
		$("#lmtAmt").jqxNumberInput({
			width : "150px",
			spinButtons: true,
			decimalSeparator : ",",
			digits : 12,
			decimalDigits : 0
		});
		
		$("#busnPersRegsNo").jqxMaskedInput({
			width : "150px",
			mask : "###-##-#####"
		});
		
		let comboSource = [
			"부",
			"여"
		];
		
		$("#regsNoSec").jqxComboBox({
			width : "50px",
			source : comboSource,
			selectedIndex : 0,
			autoOpen: true 
		});
		
		
		$("#tel1").jqxFormattedInput({
			width : "50px",
			radix : 10,
			max : 9999
		});
		
		$("#tel2").jqxFormattedInput({
			width : "50px",
			radix : 10,
			max : 9999
		});
		
		$("#tel3").jqxFormattedInput({
			width : "50px",
			radix : 10,
			max : 9999
		});
		
		$("#fax1").jqxFormattedInput({
			width : "50px",
			radix : 10,
			max : 9999
		});
		
		$("#fax2").jqxFormattedInput({
			width : "50px",
			radix : 10,
			max : 9999
		});
		
		$("#fax3").jqxFormattedInput({
			width : "50px",
			radix : 10,
			max : 9999
		});
		
		$("#custClsfCd").jqxInput({
			width : "30px"
		});
		
		$("#custClsfNm").jqxInput({
			width : "200px"
		});
		
		$("#zipNo").jqxInput({
			width : "100px"
		});
		
		$("#addr").jqxInput({
			width : "300px"
		});
		
		$("#addrDtl").jqxInput({
			width : "300px"
		});
		
		$("#dmmTxt2").jqxInput({
			width : "400px"
		});
		
		$("#useYn").jqxComboBox({
			width : "50px",
			source : comboSource,
			selectedIndex : 0,
			autoOpen: true 
		});
		
	});
</script>

</head>
<body>
	<!-- 
	<div id='sampleForm' style="width: 800px; height: auto;"></div>   
   	<div class="example-description">
        <h2>Description</h2>
        <div style="width: 800px;">
            This example shows you how to setup different types of input components in the Form using JSON.
            More specifically, the demo shows textbox, password, number input, date/time input, single choice options using a dropdown list,
            single choice options using radio buttons, and multi-choice options using checkboxes.
            In addition, the form allows you to add custom input components. For more information, check the other examples and the API reference.
        </div>
    </div>
	 -->
	
	 
	<div id="sampleForm" style="width : 800px; height : auto;">
		<div>
			<label class="subitem">1.계좌번호</label>
			<input type="text" id="regsNo" /> 
		</div>
		<div>
			<label class="subitem">2.계좌개설은행/지점</label>
			<input type="text" id="accOpnBnkCd" />
			<input type="button" id="btnOpnBnkCd" value="="/>
			<input type="text" id="accOpnBnkNm" />
			<input type="text" id="accOpnStorNm" />
		</div>
		<div>
			<label class="subitem">3.계좌개설일</label>
			<div id="stDt" style=""></div> 
		</div>
		<div>
			<label class="subitem">4.예금 종류 / 만기</label>
			<label style="display : inline-block; float : left;">예금종류</label>
			<input type="text" id="dsptor" style="float : left;"/>
			<label style="display : inline-block; float : left;">만기</label>
			<div id="eprtDt"></div>
		</div>
		<div>
			<label class="subitem">5.이자율/매월납입액</label>
			<label style="display : inline-block; float : left;">이자율</label>
			<div id="intrRate" style="float:left"></div>
			<label style="display : inline-block; float : left;">%</label>
			<label style="display : inline-block; float : left;">매월납입액</label>
			<div id="monPaymAmt"></div>
		</div>
		<div>
			<label class="subitem">6.당좌한도액</label>
			<div id="lmtAmt"></div>
		</div>
		<div>
			<label class="subitem">7.은행 사업자 번호</label>
			<div id="busnPersRegsNo"></div>
		</div>
		<div>
			<label class="subitem">8.사업용 계좌</label>
			<div id="regsNoSec"></div>
		</div>
		<div>
			<label class="subitem">9.전화번호 / 팩스</label>
			<label style="display : inline-block; float : left;">TEL</label>
			<div id="tel1" style="display : inline-block; float : left;"><input type="text" /></div>
			<label style="display : inline-block; float : left;">)</label>
			<div id="tel2" style="display : inline-block; float : left;"><input type="text" /></div>
			<label style="display : inline-block; float : left;">-</label>
			<div id="tel3" style="display : inline-block; float : left;"><input type="text" /></div>
			
			<label style="display : inline-block; float : left;">FAX</label>
			<div id="fax1" style="display : inline-block; float : left;"><input type="text" /></div>
			<label style="display : inline-block; float : left;">)</label>
			<div id="fax2" style="display : inline-block; float : left;"><input type="text" /></div>
			<label style="display : inline-block; float : left;">-</label>
			<div id="fax3"><input type="text" /></div>
		</div>
		<div>
			<label class="subitem">10.거래처 분류명</label>
			<input type="text" id="custClsfCd" />
			<input type="button" id="btnCustClsfCd" />
			<input type="text" id="custClsfNm" />
		</div>
		<div>
			<label class="subitem">11.주소</label>
			<div>
				<input type="text" id="zipNo" />
				<input type="button" id="btnZipNo" />
				<input type="text" id="addr" /> 			
			</div>
			<div>
				<input type="text" id="addrDtl" />
			</div>
		</div>
		<div>
			<label class="subitem">12.비고</label>
			<input type="text" id="dmmTxt2" />
		</div>
		<div class="subitem">
			<label>13.사용여부</label>
			<div id="useYn"></div>
		</div>
	</div>
	
</body>
</html>
 