//停止计时
var stop = null;
//计时分钟
var min = 20;
//计时秒钟
var sec = 60;

$(function() {
	//为在线客服的图片添加特效
	$(".online").hover(function() {
		//改变类为mouseover_img
		$(".online a span").attr("class", "mouseover_img");
	}, function() {
		//将类改变为onling_img
		$(".online a span").attr("class", "onling_img");
	});
	//为会员服务改变样式
	$(".vipServe").hover(function() {
		$("#vip_img").attr("class", "mouseover_vip_img");
		$("#vip_img_later").attr("class", "mouseover_vip_img_later");
		$(".none_vipServe").css("display", "block");
	}, function() {
		$("#vip_img").attr("class", "vip_img");
		$("#vip_img_later").attr("class", "vip_img_later");
		$(".none_vipServe").css("display", "none");
	});
	
	$(".vipServe").hover(function(){
		$(".small_none").css("display","block");
	},function(){
		$(".small_none").css("display","none");
	});
//--------------------------------------------------------------------------------------------------------------
	var count = 0;
	$(".left").click(function() {
		if (count == 0) {
			$(".preferential-img").css("transform", "rotate(180deg)");
			$(".hide").css("display", "block");
			$(".right").css("display", "none");
			count++;
		} else {
			$(".preferential-img").css("transform", "rotate(0deg)");
			$(".hide").css("display", "none");
			$(".right").css("display", "block");
			count = 0;
		}

	});
	
	//--------------------------------------------------------------------------------------------------------------
	total();
	
	var index = null;
	$(".out-icon").each(function(){
		   $(this).hover(function(){
			   //获得图片路径
			   var path=$(this).children(":eq(0)").attr("src");
			   //使用layer中的tips层判弹出
			   index = layer.tips("<div class='show-img'><img src='"+path+"' style='width:200px;height:230px'/></div>",$(this).children(":eq(0)"),{tips:[2,'#fff']});
		   },function(){
				//关闭
				layer.close(index);
			});
	});
	
	stop = setInterval(function(){
		countDown();
	}, 1000);

});
/**
 * 购物车中倒计时
 */
function countDown(){
	//是否倒计时结束
    if(min==0 && sec==0){ //结束
    	clearInterval(stop);
		$(".overtime").css("display","block");
		$(".channel-tips-cnt").css("display","none");
    	$(".channel-tips").css("display","block");
    }else{ //未结束
    	sec = sec-1;
    	if(sec == 0){
    		min--;
    		sec=60;
    		if(min==0){
    			if(sec-=1){
    				sec=0;
    			}
    		}
    	}
    }
	//修改分钟和秒钟中的值
	$(".minute").text(min);
	$(".second").text(sec);
}

/**
 * 删除图片的特效
 * @param obj  选中
 */
function change(obj) {
	changeTop(obj);
}
function changeOut(obj) {
	changeTopOut(obj);
}

function changeTop(obj) {
	$(obj).children(":eq(0)").css("transform", "rotate(-15deg)");
}

function changeTopOut(obj) {
	$(obj).children(":eq(0)").css("transform", "rotate(0)");
}

/**
 * 删除的方法
 * @param obj	要删除的表
 */
function remove(obj) {
	//在页面中删除，找到最上一级，并将其删除
	$(obj).parent().parent().parent().parent().parent().parent().remove();
	//数据库发送get请求
	$.getJSON("CartController", {
		biz : "delectProduct",
		cartId : $(obj).attr('cart'),
		productId : $(obj).attr("product")
	}, function(data){});
}

/**
 * 购物车添加数量的方法
 */
function addNum(obj) {
	//获得商品数量的值
	var $productNum = $(obj).prev().text();
	var $productNumVal = parseInt($productNum);
	
	//判断限购数
	if ($productNumVal >= 5) {
		$(".addNum").css({"cursor":"not-allowed","background":"#F0F0F0"});
		return false;
	} else {
		$(".addNum").css({"cursor":"pointer"});
		var num = $productNumVal + 1;
		//商品数量框中的值
		$(obj).prev().text(num);
		//修改数量和小计
		doUpdateProductNum($(obj).parent().attr("cartId"), num);
	}
	//计算总价
	total();
}

/**
 * 购物车减数量的方法
 */
function subNum(obj) {
	//获得商品数量的值
	var $productNum = $(obj).next().text();
	var $productNumVal = parseInt($productNum);
	//判断限购数
	if ($productNumVal <= 1) {
		$(".subNum").css({"cursor":"not-allowed"});
		return false;
	} else {
		$(".subNum").css({"cursor":"pointer"});
		var num = $productNumVal - 1;
		//商品数量框中的值
		$(obj).next().text(num);
		//计算小计
		doUpdateProductNum($(obj).parent().attr("cartId"), num);
	}
	total();
}

/**
 * 计算总价的方法
 */
function total(){
	//总价
	var totalNum = 0;
	//遍历小计中的值
	$(".sum").each(function(){
		//累加这个文本里的值
		totalNum+=parseFloat($(this).text());
	});
	//将计算出的值放入总计中
	$(".total").text(parseInt(totalNum));
}

function doUpdateProductNum(cartId,productNum){
	$.ajax({
		async:false,
		cache:false,
		url:"CartController?biz=updateProductNum",
		data:{"cartId":cartId,"productNum":productNum},
		type:"POST",
		dataType:"json",
		success:function(result) {  
			//1. 修改数量
			$(".num").val(result.productNum);
			//2. 修改小计
			/*$().text(result.subtotal);*/
			$("#"+cartId+"subtotal").text(result.subtotal);
			//3. 重新计算总计
			showTotal();
		}
	});
     
 };
	
		



