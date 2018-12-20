<script src="<c:url value="/resources/jqwidgets/jqxnavigationbar.js"/>"></script>

<script>
	$(document).ready(function () {
		$("#jqxNavigationBar_jqxForm").jqxNavigationBar({
		   "width" : "100%",
		   "height" : "100%",
		   "expandMode" : "toggle"
		});    
		
		$("#jqxNavigationBar_jqxForm").on("expandedItem", function(event) {
		   $.ajax(getContextPath() + "/reference/", {
				type : "post",
				dataType : "html",
				data : {
				    "type" : event.args.item,
				    "container" : "jqxForm" 
				},
				async : false
			})
			.done(function(data) { // success 시
				// API reference 페이지 출력
			    $("#apiReference").html(data);
			})
			.fail(function(data) {
				alert("loadLogs failed");
			});
		});
		
		$("#jqxNavigationBar_jqxForm a").on("click", function(event){
		   event.preventDefault();
		   
		   $.ajax(getContextPath() + $(this).attr("href"), {
				type : "post",
				dataType : "html",
				async : false
			})
			.done(function(data) { // success 시
				// Demo 페이지 출력
			    $("#demo").html(data);
			
				// ViewSource 페이지 출력
				$("#viewSource").html("<xmp>" + data + "</xmp>");	// source only
			})
			.fail(function(data) {
				alert("loadLogs failed");
			});
		});
	});
	
	// ContextPath 반환
	function getContextPath() { 
	   return window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
	}
</script>
<div id="jqxNavigationBar_jqxForm">
	<div>
		jqxInput
	</div>
	<div>
		<ul>
			<li><a href="/widgets/jqxinput_default">default</a></li>
			<li><a href="/widgets/jqxinput_label">label</a></li>
			<li><a href="/widgets/jqxinput_getter_setter">getter &amp; setter</a></li>
		</ul>
	</div>
	<div>
		jqxPasswordInput
	</div>
	<div>
	</div>
	<div>
		jqxDateTimeInput
	</div>
	<div>
	</div>
	<div>
		jqxMaskedInput
	</div>
	<div>
	</div>
	<div>
		jqxFormattedInput
	</div>
	<div>
	</div>
	<div>
		jqxComplexInput
	</div>
	<div>
	</div>
	<div>
		jqxNumberInput
	</div>
	<div>
	</div>
	<div>
		jqxButton
	</div>
	<div>
	</div>
	<div>
		jqxRepeatButton
	</div>
	<div>
	</div>
	<div>
		jqxToggleButton
	</div>
	<div>
	</div>
	<div>
		jqxLinkButton
	</div>
	<div>
	</div>
	<div>
		jqxCheckBox
	</div>
	<div>
	</div>
	<div>
		jqxRadioButton
	</div>
	<div>
	</div>
	<div>
		jqxSwitchButton
	</div>
	<div>
	</div>
	<div>
		jqxDropDownList
	</div>
	<div>
	</div>
</div>
