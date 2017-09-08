$(function(){
	$("#J_head_cart").hover(function(){
		//鼠标移入
		$(this).attr("class","head-cart head-bag-car J_cart_ico head-cart-mouseon");
		$("#J_headCartList_wrap").css("display","block");
	},function(){
		//鼠标移除
		$(this).attr("class","head-cart head-bag-car J_cart_ico");
		$("#J_headCartList_wrap").css("display","none");
	});
	
	
	$("#J_areaSelect_btn").hover(function(){
		//鼠标移入
		$(this).attr("class","sel-area-change selected");
		$("#J_area_content").css("display","block");
	},function(){
		//鼠标移除
		$(this).attr("class","sel-area-change");
		$("#J_area_content").css("display","none");
	});
	
	$(window).scroll(function() {
		var scrollTop = $(document).scrollTop();
		var offset = $('#J_slideBanner_wrap').offset().top;
		if (scrollTop >= offset) {
			$('#J_main_nav').attr("class","main-nav main-nav-be-fixedtrans");
			$("#J-index-nav-sort").attr("class","index-nav-sort is-lift-nav-fixed");
		} else {
			$("#J-index-nav-sort").attr("class","index-nav-sort");
			$('#J_main_nav').attr("class","main-nav");
		}
		
	/*	if(scrollTop>=$("#J-index-floor6").offset().top){
			$("#J-index-nav-list").children().filter("[class='index-nav-item curr']").attr("class","index-nav-item");
			$("#J-index-nav-list").children().eq(6).attr("class","index-nav-item curr");
		}
		if(scrollTop>=$("#J-index-floor5").offset().top){
			$("#J-index-nav-list").children().filter("[class='index-nav-item curr']").attr("class","index-nav-item");
			$("#J-index-nav-list").children().eq(5).attr("class","index-nav-item curr");
		}
		if(scrollTop>=$("#J-index-floor4").offset().top){
			$("#J-index-nav-list").children().filter("[class='index-nav-item curr']").attr("class","index-nav-item");
			$("#J-index-nav-list").children().eq(4).attr("class","index-nav-item curr");
		}
		if(scrollTop>=$("#J-index-floor3").offset().top){
			$("#J-index-nav-list").children().filter("[class='index-nav-item curr']").attr("class","index-nav-item");
			$("#J-index-nav-list").children().eq(3).attr("class","index-nav-item curr");
		}
		if(scrollTop>=$("#J-index-floor2").offset().top){
			$("#J-index-nav-list").children().filter("[class='index-nav-item curr']").attr("class","index-nav-item");
			$("#J-index-nav-list").children().eq(2).attr("class","index-nav-item curr");
		}
		if(scrollTop>=$("#J-index-floor1").offset().top){
			$("#J-index-nav-list").children().filter("[class='index-nav-item curr']").attr("class","index-nav-item");
			$("#J-index-nav-list").children().eq(1).attr("class","index-nav-item curr");
		}
		if(scrollTop>=$("J-hotSale-floor").offset().top){
			$("#J-index-nav-list").children().filter("[class='index-nav-item curr']").attr("class","index-nav-item");
			$("#J-index-nav-list").children().eq(0).attr("class","index-nav-item curr");
		}*/
		
	});
	
	
	$("#J_main_nav_link:eq(0)").mouseover(function(){
		$("#cateItems").css("display","block");
	});
	
	$("#cateItems").mouseover(function(){
		$("#cateItems").css("display","block");
	});
	
	$("#cateItems").mouseout(function(){
		$("#cateItems").css("display","none");
	});
	
	
	
});