//三级联动参数
var provice,city,area;
//收货地址,收货时间
var takeTime,addressType;

function checkCongieeName(){
	var conginee = $("#contacts_prompt").val();
	if(conginee==""||conginee==null){
		return false;
	}
	return true;
}

function checkPhoneNum(){
	var phone = $("#phone_prompt").val();
	if(phone==null||phone==""){
		return false;
	}
	return true;
}


function checkAddressDetails(){
	var address = $("#address_prompt").val();
	if(address==""||address==null){
		return false;
	}
	return true;
}


function checkAll(){
	if(!checkCongieeName()){
		return false;
	}
	if(!checkPhoneNum()){
		return false;
	}
	if(!checkAddressDetails()){
		return false;
	}
    return true;	
}

function writeForm(obj){
	var conginee = $(obj).find("p[class=member-text]").text();
	var recPhone = $(obj).find(".member-mobile").text();
	var address = $(obj).find("div[title=address]").text();
	//填充表格
	$("#oAdress").val(address);
	$("#congineeP").val(conginee);
	$("#recPhoNum").val(recPhone);
	//启用按钮
	$("#subButton").css("background","#f10180").css("color","white");
	
}


function checkForm(){
	var ars = $("#oAdress").val();
	var con = $("#congineeP").val();
	var rpon = $("#recPhoNum").val();
	var tpri = $("#totalPrices").val();
	if(ars==null||ars==""){
		return false;
	}
	
	if(con==null||con==""){
		return false;
	}
	
	if(rpon==null||rpon==""){
		return false;
	}
	
	if(tpri==null||tpri==""){
		return false;
	}
	
	return true;
	
}


$(function(){
	
	$("#saveAddress").click(function(){
		//校验参数
		if(checkAll()){
			//添加地址卡片
			//获取参数
			var address = provice+city+area+$("#address_prompt").val();
			var conginee = $("#contacts_prompt").val();;
			var recPhone = $("#phone_prompt").val();
			//克隆模板
			var model = $("#textModel").children().clone(true);
			model.find("p[class=member-text]").text(conginee);
			model.find(".member-mobile").text(recPhone);
			model.find("div[title=address]").text(address);
			//关闭输入面板 显示卡片
			$("#addressForm").hide();
			$("#addressArea").show();
			model.insertBefore($("#addPanel"));
			
		}else{
			layer.msg('参数不正确！', {icon: 5,offset: (window.innerHeight-150)/2+"px"}); 
		}
		
	});
	
	/*$("#saveAddress").click(function(){
		$("#goodsInfo").hide();
		var taddress = provice+city+area+$("#address_prompt").val();
		alert(taddress);
		var name = $("#contacts_prompt").val();
		var phone = $("#phone_prompt").val();
		$("#recPeop").text(name);
		$("#taddress").text(taddress);
		$("#phoneNum").text(phone);
		
		$("#addressArea").css("display","block");
		
		
	});*/
	
	$("#takeTime ul li").each(function(){
		$(this).click(function(){
			takeTime = $(this).text();
			$("#takeGoodsTime a").text(takeTime);
		});
	});
	$("#addressType ul li").each(function(){
		$(this).click(function(){
			addressType = $(this).text();
			$("#addressChang a").text(addressType);
		});
	});
	
	var count = 0;
	//收货时间
	$(".deployTakeTime").click(function() {
		if (count == 0) {
			//收货时间
			$(".deployTakeTime .ui-dropdown-bd").css({"display":"block","z-index":"100"});
			$("#takeGoodsTime i").css("transform", "rotate(180deg)");
			count++;
		} else {
			//收货时间
			$(".deployTakeTime .ui-dropdown-bd").css("display", "none");
			$("#takeGoodsTime i").css("transform", "rotate(0deg)");
			count = 0;
		}
	});
	//地址类型
	$("#addressType").click(function() {
		if (count == 0) {
			$("#addressType .ui-dropdown-bd").css({"display":"block","z-index":"200"});
			$("#addressChang i").css("transform", "rotate(180deg)");
			count++;
		} else {
			$("#addressType .ui-dropdown-bd").css("display", "none");
			$("#addressChang i").css("transform", "rotate(0deg)");
			count = 0;
		}
	});
	$("#J_address_province").click(function(){
		if (count == 0) {
			$("#J_address_province .ui-dropdown-bd").css({"display":"block","z-index":"200"});
			$("#J_address_province .ui-dropdown-bd i").css("transform", "rotate(180deg)");
			count++;
		} else {
			$("#J_address_province .ui-dropdown-bd").css("display", "none");
			$("#J_address_province .ui-dropdown-bd i").css("transform", "rotate(0deg)");
			count = 0;
		}
	});
	$("#J_address_city").click(function(){
		if (count == 0) {
			//地址类型
			$("#J_address_city .ui-dropdown-bd").css({"display":"block","z-index":"100"});
			$("#J_address_city .ui-dropdown-bd i").css("transform", "rotate(180deg)");
			count++;
		} else {
			//收货时间
			$("#J_address_city .ui-dropdown-bd").css("display", "none");
			$("#J_address_city .ui-dropdown-bd i").css("transform", "rotate(0deg)");
			count = 0;
		}
	});

	$("#J_address_county").click(function(){
		if (count == 0) {
			$("#J_address_county .ui-dropdown-bd").css({"display":"block","z-index":"100"});
			$("#J_address_county .ui-dropdown-bd i").css("transform", "rotate(180deg)");
			count++;
		} else {
			$("#J_address_county .ui-dropdown-bd").css("display", "none");
			$("#J_address_county .ui-dropdown-bd i").css("transform", "rotate(0deg)");
			count = 0;
		}
	});
	
	
	
	
	
//=================================================================
	$(".balance").click(function(){
		var cartList = new Array();
		$(".cartId").each(function(){
			cartList.push($(this).text());
		});		
		$(".out-icon").children().attr("src");
		$(".productName").children().text();
		$(".size").children().text();
		$(".price").children().text();
		$(".productNum").children().text();
		
		$("#submitForm").submit();
	});
	
//======================================================================
	
	//三级联动
	$("#eachUl li a").each(function(){
		$(this).click(function(){
			provice=$(this).attr("title");
			$("#proviceName").text(provice);
			$("#oAdress").val(provice);
			$.getJSON("CartController",{
				biz:"city",
				selected:$(this).attr("title"),
			},function(result){
				$("#cityUl").empty();
				for(var i=0;i<result.length;i++){
					addOption(result[i],"#cityUl");
				}
				$(".cityStyle").css({"background":"#fff","cursor":"pointer"});
				
			});
		});
	});
		
	function addOption(city,eName){
		$(eName).append("<li><a style='cursor:pointer' width ='100%' height = '100%' onclick='changeArea(this)' >"+city+"</a></li>");
	}

//======================================================================	
	
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

	total();
//====================================================================	
	var index = null;
	$(".out-icon").each(function(){
		   $(this).hover(function(){
			   //获得图片路径
			   var path=$(this).children(":eq(0)").attr("src");
			   //使用layer中的tips层弹出
			   index = layer.tips("<div class='show-img'><img src='"+path+"' style='width:200px;height:230px'/></div>",$(this).children(":eq(0)"),{tips:[2,'#fff']});
		   },function(){
				//关闭
				layer.close(index);
			});
	});
//=========================================================================
	
	$(".receiverAddress").hover(function(){
		$(".receiverAddress .update-address-text").css("display","block");
	},function(){
		$(".receiverAddress .update-address-text").css("display","none");
	});
	
	var width = (window.innerWidth-700)/2+"px";
	var height = (window.innerHeight-450)/2+"px";
	$(".address-item-add").click(function(){
		panel = layer.open({
			type:1,
			offset: [height,width],
			area: ['700px', '400px'],
			content:$("#addressForm"),
			title: ['添加收货地址', 'font-size:14px;'],
			resize :false,
		});
	});
	
	$(".update-address-text").click(function(){
		layer.open({
			type:1,
			offset: [height,width],
			area: ['700px', '400px'],
			content:"<div>"+getAddress+"</div>",
			title: ['修改收货地址', 'font-size:14px;'],
			resize :false,
		});
	});
	
	
});






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
	$("#totalPrices").val(totalNum);
}


var checkContacts = function(obj){
	var $contacts= $("#contacts_prompt").val();
	$(".nullInfo").slideDown();
	if($contacts == null || $contacts.length==0){
		$(".nullInfo").css("display","block");
		$(obj).css({"background":"#ffe6e7","border":"1px solid #fca1a5"});
		return false;
	}else{
		$(".nullInfo").css("display","none");
		$(obj).css({"background":"white","border":"1px solid #b3b3b3"});
	}
};
var checkPhone = function(obj){
	var $phone = $("#phone_prompt").val();
	$(".phoneNullInfo").slideDown();
	if($phone == null || $phone.length==0){
		$(".phoneNullInfo").css("display","block");
		$(obj).css({"background":"#ffe6e7","border":"1px solid #fca1a5"});
		return false;
	}else{
		$(".phoneNullInfo").css("display","none");
		$(obj).css({"background":"white","border":"1px solid #b3b3b3"});
	}
};
var checkAddress = function(obj){
	var $address = $("#address_prompt").val();
	$(".address").slideDown();
	if($address == null || $address.length==0){
		$(".address").css("display","block");
		$(obj).css({"background":"#ffe6e7","border":"1px solid #fca1a5"});
		return false;
	}else{
		$(".address").css("display","none");
		$(obj).css({"background":"white","border":"1px solid #b3b3b3"});
	}
};




function changeArea(obj){
	city=$(obj).text();
	$("#cityName").text(city);
	var address=$("#oAdress").val()+city;
	$("#oAdress").val(address);
	$.getJSON("CartController",{
		biz:"area",
		selected:$(obj).text(),
	},function(result){
		$("#areaUl").empty();
		for(var i=0;i<result.length;i++){
			$("#areaUl").append("<li><a style='cursor:pointer' width ='100%' height = '100%' onclick='area(this)' >"+result[i]+"</a></li>");
		}
		$(".aredStyle").css({"background":"#fff","cursor":"pointer"});
	});
}

function area(obj){
	area=$(obj).text();
	$("#areaName").text(area);
	var address=$("#oAdress").val()+area;
	$("#oAdress").val(address);
}
