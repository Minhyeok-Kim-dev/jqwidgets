<script src="<c:url value="/resources/jqwidgets/jqxnavigationbar.js"/>"></script>

<script>
	$(document).ready(function () {
		$("#jqxNavigationBar").jqxNavigationBar({
		   "width" : "100%",
		   "height" : "100%",
		   "expandMode" : "toggle"
		});    
		
		$("#jqxNavigationBar").on("expandedItem", function(event) {
		   $.ajax(getContextPath() + "/reference/", {
				type : "post",
				dataType : "html",
				data : {
				    "type" : event.args.item
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
		
		$("#jqxNavigationBar a").on("click", function(event){
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
<div id="jqxNavigationBar">
	<div>
		jqxInput
	</div>
	<div>
		<ul>
			<li><a href="/widgets/jqxinput_default">default</a></li>
			<li><a href="/widgets/jqxinput_label">label</a></li>
			<li><a href="/widgets/jqxinput_getter_setter">getter &amp; setter</a></li>
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
