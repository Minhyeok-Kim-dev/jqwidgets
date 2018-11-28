<script src="<c:url value="/resources/jqwidgets/jqxnavigationbar.js"/>"></script>

<script>
	$(document).ready(function () {
		$("#jqxNavigationBar_layout").jqxNavigationBar({
		   "width" : "100%",
		   "height" : "100%",
		   "expandMode" : "toggle"
		});    
		
		$("#jqxNavigationBar_layout").on("expandedItem", function(event) {
		   $.ajax(getContextPath() + "/reference/", {
				type : "post",
				dataType : "html",
				data : {
				    "type" : event.args.item,
				    "container" : "layout" 
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
		
		$("#jqxNavigationBar_layout a").on("click", function(event){
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
<div id="jqxNavigationBar_layout">
	<div>
		jqxResponsivePanel
	</div>
	<div>
	</div>
</div>
