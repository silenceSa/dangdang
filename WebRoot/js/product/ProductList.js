$(function(){
	
	/*$("#btn").click(function(){
		alert("xxx");
	     var productName=$("#productName").val();
	     $.getJSON("ProductServlet",{biz:"findProductByProductName",productName:productName},function(data){
	    	 alert("xxx");
	     });
	
	
	
	});*/
	
});

  //图片切换
  function chanceP(obj){
	 
			var src1=$(obj).children(":eq(0)").children(":eq(0)").attr("src");
			$(obj).parent().parent().parent().find(".goods-image-link img").attr("src",src1);
			
  }