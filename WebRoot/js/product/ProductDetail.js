var chanceCount="";

function chance(obj){
	chanceCount = $(obj).text();
	$("#psize").val(chanceCount);
};

$(function(){
	//增加按钮
	$("#num-add").click(function(){
        var sNum= $("#num").text();
        var iNum=parseInt(sNum);
        var xNum=iNum+1;
        if(sNum>=10){
        }else{
        $("#num").text(xNum);
        $("#J-num-input").val(xNum);
        }
       });
   
	//减少按钮
	$("#num-sub").click(function(){
        var sNum= $("#num").text();
        var iNum=parseInt(sNum);
        var xNum=iNum-1;
        if(sNum<=1){
        }else{
        $("#num").text(xNum);
        $("#J-num-input").val(xNum);
        }
       });
	
	//选定尺码s
	$("#J-cartAdd-sizeID-561633723").click(function(){
		$("#s-select").css("display","block");
		$("#select-s").css("display","block");
		$("#m-select").css("display","none");
		$("#select-m").css("display","none");
		$("#l-select").css("display","none");
		$("#select-l").css("display","none");
		$("#xl-select").css("display","none");
		$("#select-xl").css("display","none");
		$("#xxl-select").css("display","none");
		$("#select-xxl").css("display","none");
	});
	
	//m
	$("#J-cartAdd-sizeID-561633722").click(function(){
		$("#s-select").css("display","none");
		$("#select-s").css("display","none");
		$("#m-select").css("display","block");
		$("#select-m").css("display","block");
		$("#l-select").css("display","none");
		$("#select-l").css("display","none");
		$("#xl-select").css("display","none");
		$("#select-xl").css("display","none");
		$("#xxl-select").css("display","none");
		$("#select-xxl").css("display","none");
	});
	//l
	$("#J-cartAdd-sizeID-561633721").click(function(){
		$("#s-select").css("display","none");
		$("#select-s").css("display","none");
		$("#m-select").css("display","none");
		$("#select-m").css("display","none");
		$("#l-select").css("display","block");
		$("#select-l").css("display","block");
		$("#xl-select").css("display","none");
		$("#select-xl").css("display","none");
		$("#xxl-select").css("display","none");
		$("#select-xxl").css("display","none");
	});
	//xl
	$("#J-cartAdd-sizeID-561633720").click(function(){
		$("#s-select").css("display","none");
		$("#select-s").css("display","none");
		$("#m-select").css("display","none");
		$("#select-m").css("display","none");
		$("#l-select").css("display","none");
		$("#select-l").css("display","none");
		$("#xl-select").css("display","block");
		$("#select-xl").css("display","block");
		$("#xxl-select").css("display","none");
		$("#select-xxl").css("display","none");
	});
	//xxl
	$("#J-cartAdd-sizeID-575225047").click(function(){
		$("#s-select").css("display","none");
		$("#select-s").css("display","none");
		$("#m-select").css("display","none");
		$("#select-m").css("display","none");
		$("#l-select").css("display","none");
		$("#select-l").css("display","none");
		$("#xl-select").css("display","none");
		$("#select-xl").css("display","none");
		$("#xxl-select").css("display","block");
		$("#select-xxl").css("display","block");
	});
	
	$("#s1").click(function(){
		var src=$("#s1 img").attr("src");
		$("#img").prop("src",src);
	});
	
	$("#s2").click(function(){
		var src=$("#s2 img").attr("src");
		$("#img").prop("src",src);
	});
	
	$("#s3").click(function(){
		var src=$("#s3 img").attr("src");
		$("#img").prop("src",src);
	});
	$("#s4").click(function(){
		var src=$("#s4 img").attr("src");
		$("#img").prop("src",src);
	});
	
	$("#s5").click(function(){
		var src=$("#s5 img").attr("src");
		$("#img").prop("src",src);
	});
	

	$(window).scroll(function() {
		var scrollTop = $(document).scrollTop();
		var offset = $('.M-detail').offset().top;

		if (scrollTop >= offset) {
			$("#J-topbar").attr("class","M-detailTop M-detailTopFixed");
			$("#a").attr("class","dt-list-item J-topbar-tabs selected");
			$("#J-topbar-addBtn").attr("class","dt-cart");
		} else {
			$("#J-topbar").attr("class","M-detailTop");
			$("#a").attr("class","dt-list-item J-topbar-tabs");
			$("#J-topbar-addBtn").attr("class","dt-cart hidden");
		}
		
	});
	
	$("#a").click(function(){
		$(".M-detailCon").css("display","block");
		$("#comment").css("display","none");
		$("#picture").css("display","none");
		
		
	});
	
	$("#b").click(function(){
		$(".M-detailCon").css("display","none");
		$("#picture").css("display","block");
		$("#comment").css("display","none");
	});
	
	
	$("#c").click(function(){
		$(".M-detailCon").css("display","none");
		$("#picture").css("display","none");
		$("#comment").css("display","block");
	});
	 //放大镜效果
	 $.fn.magnifying = function(){  
	      var that = $(this),  
	      $imgCon = that.find('.zoomPad'),//正常图片容器  
	      $Img = $imgCon.find('img'),//正常图片，还有放大图片集合  
	      $Drag = that.find('.magnifyingBegin'),//拖动滑动容器  
	      $show = that.find('.magnifyingShow'),//放大镜显示区域  
	      $showIMg = $show.find('img'),//放大镜图片  
	      $ImgList = that.find('.pic-slider-wrap div img'),  
	      multiple = $show.width()/$Drag.width();//倍数  
	  
	      $imgCon.mousemove(function(e){  
	            $Drag.css('display','block');  
	            $show.css('display','block');  
	            //获取坐标的两种方法  
	            // var iX = e.clientX - this.offsetLeft - $Drag.width()/2,  
	            //  iY = e.clientY - this.offsetTop - $Drag.height()/2,   
	            var iX = e.pageX - $(this).offset().left - $Drag.width()/2,  
	                iY = e.pageY - $(this).offset().top - $Drag.height()/2,   
	                MaxX = $imgCon.width()-$Drag.width(),  
	                MaxY = $imgCon.height()-$Drag.height();  
	            /*这一部分可代替下面部分，判断最大最小值 
	            var DX = iX < MaxX ? iX > 0 ? iX : 0 : MaxX, 
	                DY = iY < MaxY ? iY > 0 ? iY : 0 : MaxY; 
	            $Drag.css({left:DX+'px',top:DY+'px'});           
	            $showIMg.css({marginLeft:-3*DX+'px',marginTop:-3*DY+'px'});*/  
	  
	            iX = iX > 0 ? iX : 0;  
	            iX = iX < MaxX ? iX : MaxX;  
	            iY = iY > 0 ? iY : 0;  
	            iY = iY < MaxY ? iY : MaxY;    
	            $Drag.css({left:iX+'px',top:iY+'px'});            
	            $showIMg.css({marginLeft:-multiple*iX+'px',marginTop:-multiple*iY+'px'});  
	            //return false;  
	        });  
	        $imgCon.mouseout(function(){  
	            $Drag.css('display','none');  
	            $show.css('display','none');  
	            //return false;  
	        });  
	  
	        $ImgList.click(function(){  
	            var NowSrc = $(this).attr('src');  
	            $Img.attr('src',NowSrc);  
	            $(this).parent().addClass('active').siblings().removeClass('active');  
	        });   
	    };  
	    
	    $("#J-mer-ImgReview").magnifying();

});




