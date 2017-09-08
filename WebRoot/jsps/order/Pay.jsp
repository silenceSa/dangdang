<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>唯品会-收银台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="shortcut icon" href="http://order.vip.com/img/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/order/pay.css">
    <script type="text/javascript"
	src="adminjsps/admin/js/jquery-easyui-1.3.6/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
        	$(".J_bank_list").children().each(function(){
        		$(this).click(function(){
        			$(this).children().css("border","2px solid #d7237e");
        			$("#J_go2pay").css("background","#d7237e").css("color","white").css("cursor","pointer");
        		});
        	});
        	
	        $("#J_counter_mod").click(function(){
	        	$("#payForm").submit();
	        });
    
        });
        
    
    </script>
  </head>
  
  <body>
    <div class="public-header">
		<div class="hd-top">
			<div class="hd-wrap">
				<div class="hd-top-left">
					<a class="on btn-gobuy" href="" target="_black">返回特卖会</a>
				</div>
				<div class="hd-top-right">
					<span class="u-wel">您好，</span> <a class="u-name" id="customerId" href=""
						title="15070488262">${sessionScope.customerName}</a> <a id="public-user-level"
						class="u-vmark v0" href="" title="铁牌会员" target="_blank"></a> <a
						class="u-logout" href="">[退出]</a> <a class="u-order" href=""
						target="_blank">我的订单</a> <a class="u-brand" href=""
						target="_blank">我的收藏</a> <a class="u-club" href="" target="_blank">会员俱乐部</a>
					<dl class="hd-top-service">
						<dt>
							<a href=""> 客户服务 <i class="vipFont if-arrow-bottom"></i>
							</a>
						</dt>
						</dl>
				</div>
			</div>
		</div>
		<div class="hd-main">
			<div class="hd-wrap clearfix hd-logo-bg">
				<div class="hd-logo">
					<a class="hd-logo-link" href="" target="_blank"></a>
				</div>
				<div class="hd-purchase">
				 <a href="" target="_blank">购物袋(0)</a>
				</div>
			</div>
			<div class="clearfix hd-nav-bg">
				<div class="hd-main-nav">
					<dl class="hd-main-nav-dl hd-main-index active">
						<dt>
							<a href="">我的唯品会</a>
						</dt>
					</dl>
					<dl class="hd-main-nav-dl">
						<dt>
							<a href="">安全中心</a>
						</dt>
					</dl>
					<dl class="hd-main-nav-dl">
						<dt>
							<a href="">消息中心</a>
						</dt>
					</dl>
					<dl class="hd-main-nav-dl hd-nav-right">
						<dt>
							<a href="">特卖会首页>></a>
						</dt>
					</dl>
				</div>
			</div>
		</div>
	</div>
     
    <div class="g-bd">
     <div id="J_counter" class="g-row J_ue_position_container">
      <div id="J_order_mod" class="m-order-status-a ">
       <div class="m-tips order-status-tips-a">
        <div class="tips-cnt">
          <p class="tips-text J_ad_AD016wm08"></p>
        </div>
       </div>
       <div class="order-status-info-a">
        <div class="order-info-row  order-info-countdown-row">
          <div class="order-detail">
          共
          <span class="order-number">1</span>
          张订单，
          <div class="m-tooltips-trigger  tooltips-trigger-bottom  order-detail-tooltips-trigger" data-toggle="tooltip">
           <span class="tooltips-trigger-text">订单详情</span>
								<div
									class="ui-tooltips  ui-tooltips-top-left-arrow order-detail-tooltips"
									id="J_order_tips">
									<div class="ui-tooltips-arrow">
										<span class="arrow arrow-out">◆</span> <span class="arrow">◆</span>
									</div>
									<div class="ui-tooltips-content J_tooltips_content">
										<div
											class="order-detail-group
                        order-detail-group-last
                        ">
											<div class="order-detail-number">订单1: ${order.orderId}</div>
											<ul class="c-list  e-disc-list  order-detail-list">
                                             <c:forEach var="orderItem" items="${order.orderI}" >
												<li class="list-item"><span class="goods-name">${orderItem.productName}</span><span class="goods-size">${orderItem.num}</span></li>
                                             </c:forEach>
											</ul>
										</div>
									</div>
								</div>
								。
          </div>
          </div>
        </div>
        <div class="order-info-row to-be-paid">
        待支付：
        <span class="m-price">
         <span class="u-yen">¥</span>
         <span class="u-price J_payTotalNotFav">${order.totalPrice}</span>
        </span>
        </div>
       </div>
      </div>
      <div class="c-ad-box top-ad-box f-hide J_ad_AD016wm10" style="display: block;">
       <p class="ad-box-explain J_ad_text">快捷支付，无需开通网银，免手续费</p>
      </div>
      <div id="J_payment_box" class="m-payment-box-a ">
       <div class="payment-box-a-content">
        <div id="JisMantissa"></div>
        <div id="J_common_payment_mod" class="m-payment-common" data-hover="payment-common-item-hover" data-touch="is-touch">
         <div class="historyPaymentList"></div>
        </div>
        <div id="J_payment_selection" class="m-payment-selection is-payment-selection-tab-in">
         <div class="m-payment-a-tab  payment-selection-tab J_payment_selection_tab">
          <div class="payment-a-tab-header">
           <div class="payment-a-tab-trigger J_tab_trigger  is-payment-a-tab-trigger-active" mars_sead="pay_bankcard_btn">使用银行卡</div>
          </div>
          <div class="payment-selection-position">
           <div class="payment-selection-tips payment-comm-tips-bindarea Js_selection_tips">
            <i class="vipFont if-info"></i>
            使用快捷支付惊喜不断哦~~
           </div>
          </div>
          <div class="payment-a-tab-body">
           <div class="payment-a-tab-panel  J_tab_panel active-pannel" data-list_key="bankList" style="display: block;">
            <div class="payment-a-tab-tips">请选择银行：</div>
            <div class="J_bank_list">
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-ccb payment-method-clip-background" data-init_logo="0" title="中国建设银行"></div>
                <span class="payment-method-name">中国建设银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-icbc payment-method-clip-background" data-init_logo="0" title="中国工商银行"></div>
                <span class="payment-method-name">中国工商银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-abc payment-method-clip-background" data-init_logo="0" title="中国农业银行"></div>
                <span class="payment-method-name">中国农业银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cmb payment-method-clip-background" data-init_logo="0" title="招商银行"></div>
                <span class="payment-method-name">招商银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-boc payment-method-clip-background" data-init_logo="0" title="中国银行"></div>
                <span class="payment-method-name">中国银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-spdb payment-method-clip-background" data-init_logo="0" title="上海浦东发展银行"></div>
                <span class="payment-method-name">上海浦东发展银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-psbc payment-method-clip-background" data-init_logo="0" title="中国邮政储蓄银行"></div>
                <span class="payment-method-name">中国邮政储蓄银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-bcom payment-method-clip-background" data-init_logo="0" title="交通银行"></div>
                <span class="payment-method-name">交通银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-pab payment-method-clip-background" data-init_logo="0" title="中国平安银行"></div>
                <span class="payment-method-name">中国平安银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-gdb payment-method-clip-background" data-init_logo="0" title="广发银行"></div>
                <span class="payment-method-name">广发银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cncb payment-method-clip-background" data-init_logo="0" title="中信银行"></div>
                <span class="payment-method-name">中信银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cib payment-method-clip-background" data-init_logo="0" title="兴业银行"></div>
                <span class="payment-method-name">兴业银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-ceb payment-method-clip-background" data-init_logo="0" title="中国光大银行"></div>
                <span class="payment-method-name">中国光大银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cmbc payment-method-clip-background" data-init_logo="0" title="中国民生银行"></div>
                <span class="payment-method-name">中国民生银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-hxb payment-method-clip-background" data-init_logo="0" title="华夏银行"></div>
                <span class="payment-method-name">华夏银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-bos payment-method-clip-background" data-init_logo="0" title="上海银行"></div>
                <span class="payment-method-name">上海银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
             <div class="payment-method-item J_payment_btn_outer">
              <div class="c-payment-method J_payment_btn  has-payment-method-type" data-hover="c-payment-method-hover" data-touch="is-touch">
                <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-gzrcc payment-method-clip-background" data-init_logo="0" title="广州农商银行"></div>
                <span class="payment-method-name">广州农商银行</span>
                <div class="" data-toggle="tooltip">
                 <div id="" class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a">
                  <div class="ui-tooltips-arrow">
                   <span class="arrow arrow-out"></span>
                   <span class="arrow"></span>
                  </div>
                  <div class="ui-tooltips-content">
                   <p class="tooltips-text J_tip_txt"></p>
                  </div>
                 </div>
                </div>
              </div>
             </div>
            </div>
           </div>
          </div>
         </div>
        </div>
        <form action="OrderServlet" method="post" id="payForm">
            <input type="hidden" name="biz" value="payment"/>
            <input type="hidden" name="oid" value="${order.orderId}"/>
            <input type="hidden" name="yh" value="CCB-NET-B2C"/>
        </form>
        <div id="J_counter_mod" class="m-payment-operation is-payment-operation-guide-in">
         <a id="J_go2pay" class="ui-btn-large ui-btn-primary J_fake_a is-button-disabled" href="javascript:void(0)" role="button" rel="nofollow" mars_sead="pay_action_btn">前往支付</a>
        </div>
       </div>
       <div class="payment-box-a-top"></div>
      </div>
      
      <div class="floats-wrapper">
       <div id="J_ue_container" class="m-floats pin-floats"></div>
      </div>
     </div>
    </div>
     
    
	<div class="public-footer">
	 <div class="hd-wrap">
	   <div class="footer-link">
	     <a href="" title="关于我们" target="_blank" rel="nofollow">关于我们</a>
	     |
	     <a href="" title="About us" target="_blank" rel="nofollow">About us</a>
	     |
	     <a href="" title="Investor Relations" target="_blank" rel="nofollow">Investor Relations</a>
	     |
	     <a href="" title="媒体报道" target="_blank" rel="nofollow">媒体报道</a>
	     |
	     <a href="" title="品牌招商" target="_blank" rel="nofollow">品牌招商</a>
	     |
	     <a href="" title="隐私条款" target="_blank" rel="nofollow">隐私条款</a>
	     |
	     <a href="" title="友情链接" target="_blank" rel="nofollow">友情链接</a>
	     |
	     <a href="" title="唯品招聘" target="_blank" rel="nofollow">唯品招聘</a>
	     |
	     <a href="" title="爱心基金" target="_blank" rel="nofollow">爱心基金</a>
	     |
	     <a href="" title="唯品卡" target="_blank" rel="nofollow">唯品卡</a>
	     |
	     <a href="" title="唯品地图" target="_blank" rel="nofollow">唯品地图</a>
	     |
	     <a href="" title="品牌大全" target="_blank" rel="nofollow">品牌大全</a>
	     |
	     <a href="" title="联系我们" target="_blank" rel="nofollow">联系我们</a>
	   </div>
	   <div class="footer-copy">
	    <p>
	      Copyright © 2008-2016 vip.com，All Rights Reserved 
	      <a href="" rel="nofollow">粤ICP备08114786号</a>
	      <a href="" rel="nofollow">ICP经营许可证：粤B2-20080329 </a>
	      <a href="" rel="nofollow">网络文化经营许可证：粤网文〔2015〕1528-229</a>
	      <br>
	      使用本网站即表示接受
	      <a href="" rek="nofollow">唯品会用户协议</a>
	      。版权所有
	      <a href="" rel="nofollow">广州唯品会信息科技有限公司</a>
	    </p>
	   </div>
	 </div>
	 <div class="footer-service">
	   <a class="serv1" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv4" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv5" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv6" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv7" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv10" rel="nofollow" target="_blank" href=""></a>
	   <a class="serv9" rel="nofollow" target="_blank" href=""></a>
	 </div>
	 </div>
  </body>
</html>
