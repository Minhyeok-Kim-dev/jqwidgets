<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/jqwidgets/styles/jqx.base.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/jqwidgets/styles/jqx.office.css"/>" />

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

<script>
	$(document).ready(function(){
		
		let template = [
		    {
                bind: 'input',
                type: 'text',
                label: 'Text input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px'
            },
            {
                bind: 'passwordInput',
                type: 'password',
                label: 'Password input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px'
            },
            {
                bind: 'numberInput',
                type: 'number',
                label: 'Number input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px'
            },
            {
                bind: 'datetimeInput',
                type: 'datetime',
                label: 'Date & time input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px'
            },
            {
                bind: 'timeInput',
                type: 'time',
                label: 'Time input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px'
            },
            {
                bind: 'dateInput',
                type: 'date',
                label: 'Date input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px'
            },
            {
                bind: 'dropdownList',
                type: 'option',
                label: 'Drop down list',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
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
                bind: 'radioButton',
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
                bind: 'maskedInput',
                type: 'maskedinput',
                label: 'masked input',
                labelPosition: 'left',
                labelWidth: '30%',
                align: 'left',
                width: '250px',
                required: true,
                mask : "###-####"
            }
		];
        
		let sampleForm = $("#sampleForm");
		
        sampleForm.jqxForm({
            template: template,
            //value: sampleValue,
            padding: { left: 10, top: 10, right: 10, bottom: 10 }
        });
        
	});
</script>

</head>
<body>
	<div id='sampleForm' style="width: 800px; height: auto;"></div>
</body>
</html>
