$(function(){
	
	$("#cateItems li").hover(function(){
		//判断是否有内容
		var detail = $(this).children(".detail");
		
			//请求数据
			$.post('CategoryServlet', {
				cid : $(this).children(":eq(1)").attr("id")
			}, function() {
				$.ajax({
					url : "jsps/category/category.jsp",
					async : false,
					success : function(html) {
                        detail.html(html);
						detail.show();
					}
				});
			});
		
		
	},function(){
		$(this).children(".detail").html("");
		$(this).children(".detail").hide();
	});
	
	start();
	
	
	$('.focus-banner-con-wrq').hover(function(e) {
		stop();
		var preIndex = $("#J_slideBanner_panel").children().filter("selected").index();
		currentIndex = $(this).index();
		play(preIndex, currentIndex);
	}, function() {
		start();
	});
	
	
	$(window).scroll(function() {
		var scrollTop = $(document).scrollTop();
		var offset = $('#J-hotSale-floor').offset().top;
		if (scrollTop >= offset) {
			$("#J-index-nav-sort").attr("class","index-nav-sort is-lift-nav-fixed");
		} else {
			$("#J-index-nav-sort").attr("class","index-nav-sort");
		}
	});
	
	
	$("#J-index-nav-list a").click(function(){
		//点击更换样式
		//移除其他样式
		$("#J-index-nav-list a[class='index-nav-item curr']").attr("class","index-nav-item");
		$(this).attr("class","index-nav-item curr");
		var top = $("#floor").children().eq($(this).index()).offset().top;
		$(document).scrollTop(top-50);
		
	});
	
	
	
	
});

var length=3, currentIndex = 0, interval, hasStarted = false, t = 3000;

/**
 * 向前翻页
 */
function pre() {
	var preIndex = currentIndex;
	currentIndex = (--currentIndex + length) % length;
	play(preIndex, currentIndex);
}
/**
 * 向后翻页
 */
function next() {
	var preIndex = currentIndex;
	currentIndex = ++currentIndex % length;
	play(preIndex, currentIndex);
}
/**
 * 从preIndex页翻到currentIndex页 preIndex 整数，翻页的起始页 currentIndex 整数，翻到的那页
 */
function play(preIndex, currentIndex) {
	$("#J_slideBanner_panel").children().eq(preIndex).fadeOut(500);
	$("#J_slideBanner_btns").children().eq(preIndex).attr("class","");
	$("#J-trigger-line").animate({left: (195.5*(currentIndex+1))+'px'}, 1000);
	$("#J_slideBanner_btns").children().eq(currentIndex).attr("class","selected");
	$("#J_slideBanner_panel").children().eq(currentIndex).fadeIn(1000);
}
/**
 * 开始轮播
 */
function start() {
	if (!hasStarted) {
		hasStarted = true;
		interval = setInterval(next, t);
	}
}
/**
 * 停止轮播
 */
function stop() {
	clearInterval(interval);
	hasStarted = false;
}



