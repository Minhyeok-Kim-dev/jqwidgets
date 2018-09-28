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

<script>
	$(document).ready(function(){
		
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
				columns : [
					{
						type : "label",
						label : "5.이자율/매월납입액",
						labelPosition : "left",
						width : "20%"
					},
					{
						type : "label",
						label : "이자율",
						labelPosition : "left",
						width : "80px"
					},
					{
						bind : "intrRate",
						type : "number",
						align : "left",
						width : "100px",
						/* 
						decimalSeparator : ".",
						digits : 3,
						decimalDigits : 2
						 */
					},
					{
						type : "label",
						label : "%",
						labelPosition : "left",
						width : "80px"
					},
					{
						type : "label",
						label : "매월납입액",
						labelPosition : "right",
						width : "40px"
					},
					{
						bind : "monPaymAmt",
						type : "number",
						align : "right",
						width : "150px"
					}
				]	
			},
			{
				bind : "lmtAmt",
				type : "number",
				label : "6.당좌한도액",
				labelPosition : "left",
				labelWidth : "20%",
				align : "left",
				width : "250px"
			},
			{
				bind : "busnPersRegsNo",
				type : "text",
				component : "jqxMaskedInput",
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
					{ label : "부", value : 0 },
					{ label : "여", value : 1 }
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
						type : "text",
						width : "50px"
					},
					{
						type : "label",
						label : ")",
						width : "5px"
					},
					{
						bind : "tel2",
						type : "text",
						width : "50px"
					},
					{
						type : "label",
						label : "-",
						width : "5px"
					},
					{
						bind : "tel3",
						type : "text",
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
						type : "text",
						width : "50px"
					},
					{
						type : "label",
						label : ")",
						width : "5px"
					},
					{
						bind : "fax2",
						type : "text",
						width : "50px"
					},
					{
						type : "label",
						label : "-",
						width : "5px"
					},
					{
						bind : "fax3",
						type : "text",
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
						align : "left"
					}
				]
			}, 
			{
				bind : "addrDtl",
				type : "text",
				width : "65%",
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
				name : "useYn",
				bind : "useYn",
				type : "option",
				label : "13.사용여부",
				labelPosition : "left",
				labelWidth : "20%",
				component : "jqxDropDownList",
				options : [
					{ label : "부", value : 0 },
					{ label : "여", value : 1 }
				]
			},
			{
				columns : [
					{
						name : "btnBind",
						type : "button",
						text : "bind",
						columnWidth: "50%",
                        align: "right"
					},
					{
						name : "btnSubmit",
						type : "button",
						text : "submit"
					},
				]
			}
		];
        
		let sampleForm = $("#sampleForm");
		
        sampleForm.jqxForm({
            template: template,
            //value: sampleValue,
            padding: { left: 10, top: 10, right: 10, bottom: 10 }
        });
        
        let btnBind = sampleForm.jqxForm("getComponentByName", "btnBind");
        btnBind.on("click", function(){
        	let sampleData = {
       			regsNo : "123-12-12312",
       			accOpnBnkCd : "100",
       			accOpnBnkNm : "테스트은행",
       			accOpnStorNm : "문래점",
       			stDt : "2018-01-01",
       			dsptor : "예금1",
       			eprtDt : "2018-12-31",
       			intrRate : 3.5,
       			monPaymAmt : 150000,
       			lmtAmt : 1000000,
       			busnPersRegsNo : "001-00-00001",
       			regsNoSec : 1,
       			tel1 : "010",
       			tel2 : "1234",
       			tel3 : "5678",
       			fax1 : "02",
       			fax2 : "9876",
       			fax3 : "5432",
       			custClsfCd : "01",
       			custClsfNm : "분류1",
       			zipNo : "01010",
       			addr : "주소",
       			addrDtl : "상세주소",
       			dmmTxt2 : "비고",
       			useYn : "1"
        	};
        	
        	sampleForm.val(sampleData);
        });
        
        let btnSubmit = sampleForm.jqxForm("getComponentByName", "btnSubmit");
        btnSubmit.on("click", function(){
        	let tmp = sampleForm.val();
        	alert("result : " + JSON.stringify(tmp));
        	//let useYn = sampleForm.jqxForm("getComponentByName", "useYn").val();
        });
        
	});
</script>

</head>
<body>
	<div id='sampleForm' style="width: 800px; height: auto;"></div>   
</body>
</html>
 