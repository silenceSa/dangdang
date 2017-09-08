<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
    .vipFontStrat {
 color:red
}
@font-face {
 font-family:vipFont;
 src:url(//bootstrap.vipstatic.com/font/vipFont.eot?4090b14c);
 src:url(//bootstrap.vipstatic.com/font/vipFont.eot?4090b14c?#iefix) format('embedded-opentype'),url(//bootstrap.vipstatic.com/font/vipFont.svg?767458a2#vipFont) format('svg'),url(//bootstrap.vipstatic.com/font/vipFont.woff?da200a23) format('woff'),url(//bootstrap.vipstatic.com/font/vipFont.ttf?dfd6e085) format('truetype');
 font-weight:400;
 font-style:normal
}
.vipFont {
 font-family:vipFont;
 speak:none;
 font-style:normal;
 font-weight:400;
 font-variant:normal;
 text-transform:none;
 font-size:16px;
 -webkit-font-smoothing:antialiased;
 -moz-osx-font-smoothing:grayscale
}
.if-size-30 {
 font-size:30px
}
.if-size-32 {
 font-size:32px
}
.if-size-48 {
 font-size:48px
}
.ii-loading,.ii-loading-gray-16x16,.ii-loading-gray-24x24,.ii-loading-gray-32x32,.ii-loading-pink-16x16,.ii-loading-pink-24x24,.ii-loading-pink-32x32 {
 display:inline-block;
 vertical-align:top;
 background-repeat:no-repeat;
 overflow:hidden
}
.ii-loading,.ii-loading-gray-16x16 {
 width:16px;
 height:16px;
 background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-gray-16x16.gif?9f46871c)
}
.ii-loading-gray-24x24 {
 width:24px;
 height:24px;
 background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-gray-24x24.gif?60167efc)
}
.ii-loading-gray-32x32 {
 width:32px;
 height:32px;
 background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-gray-32x32.gif?800a2d68)
}
.ii-loading-pink-16x16 {
 width:16px;
 height:16px;
 background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-pink-16x16.gif?921ebfe0)
}
.ii-loading-pink-24x24 {
 width:24px;
 height:24px;
 background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-pink-24x24.gif?59a1e33a)
}
.ii-loading-pink-32x32 {
 width:32px;
 height:32px;
 background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-pink-32x32.gif?dad71cbf)
}
@media only screen and (-webkit-min-device-pixel-ratio:2),only screen and (-moz-min-device-pixel-ratio:2),only screen and (-o-min-device-pixel-ratio:2/1),only screen and (min-device-pixel-ratio:2) {
 .ii-loading,.ii-loading-gray-16x16 {
  background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-gray-32x32.gif?800a2d68);
  background-size:16px 16px
 }
 .ii-loading-pink,.ii-loading-pink-16x16 {
  background-image:url(//bootstrap.vipstatic.com/img/ui/ui-loading-pink-32x32.gif?dad71cbf);
  background-size:16px 16px
 }
}
[type=button]::-moz-focus-inner,button::-moz-focus-inner {
 margin:0;
 padding:0;
 border:none
}
a {
 outline:0
}
.ui-btn-big,.ui-btn-large,.ui-btn-medium,.ui-btn-mini,.ui-btn-nor,.ui-btn-small {
 display:inline-block;
 border-radius:3px;
 text-decoration:none;
 text-align:center;
 vertical-align:top;
 -webkit-transition:.3s;
 transition:.3s;
 cursor:pointer;
 *white-space:nowrap;
 _overflow-y:hidden
}
button.ui-btn-big,button.ui-btn-large,button.ui-btn-medium,button.ui-btn-mini,button.ui-btn-nor,button.ui-btn-small {
 overflow:visible;
 cursor:pointer;
 outline:0;
 *line-height:normal
}
.ui-btn-big:hover,.ui-btn-large:hover,.ui-btn-medium:hover,.ui-btn-mini:hover,.ui-btn-nor:hover,.ui-btn-small:hover {
 text-decoration:none
}
.ui-btn-left-icon {
 vertical-align:top;
 margin-right:6px
}
.ui-btn-right-icon {
 vertical-align:top;
 margin-left:6px
}
.ui-btn-big,.ui-btn-large {
 min-width:72px;
 _width:72px;
 padding:0 35px;
 font:18px/44px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 _line-height:48px;
 height:44px
}
button.ui-btn-big,button.ui-btn-large {
 height:46px
}
button.ui-btn-big .ui-btn-loading-after,button.ui-btn-large .ui-btn-loading-after {
 *margin-top:-30px
}
.ui-btn-big .ui-btn-loading-after,.ui-btn-large .ui-btn-loading-after {
 margin-top:-44px;
 line-height:44px;
 height:44px
}
.ui-btn-big .if-shopping-bag,.ui-btn-large .if-shopping-bag {
 font-size:22px
}
.ui-btn-big .if-card,.ui-btn-large .if-card {
 font-size:20px
}
.ui-btn-big .ii-loading,.ui-btn-big .ii-loading-gray-16x16,.ui-btn-large .ii-loading,.ui-btn-large .ii-loading-gray-16x16 {
 margin-top:14px
}
.ui-btn-big .ii-loading-gray-24x24,.ui-btn-large .ii-loading-gray-24x24 {
 margin-top:10px
}
.ui-btn-medium,.ui-btn-nor {
 min-width:60px;
 _width:60px;
 padding:0 19px;
 font:15px/30px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 _line-height:32px;
 height:30px
}
button.ui-btn-medium,button.ui-btn-nor {
 height:32px
}
button.ui-btn-medium .ui-btn-loading-after,button.ui-btn-nor .ui-btn-loading-after {
 *margin-top:-25px
}
.ui-btn-medium .ui-btn-loading-after,.ui-btn-nor .ui-btn-loading-after {
 margin-top:-30px;
 line-height:30px;
 height:30px
}
.ui-btn-medium .vipFont,.ui-btn-nor .vipFont {
 font-size:15px
}
.ui-btn-medium .ii-loading,.ui-btn-medium .ii-loading-gray-16x16,.ui-btn-nor .ii-loading,.ui-btn-nor .ii-loading-gray-16x16 {
 margin-top:7px
}
.ui-btn-medium .ii-loading-gray-24x24,.ui-btn-nor .ii-loading-gray-24x24 {
 margin-top:3px
}
.ui-btn-small {
 min-width:48px;
 _width:48px;
 padding:0 11px;
 font:12px/22px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 _line-height:24px;
 height:22px
}
button.ui-btn-small {
 height:24px
}
button.ui-btn-small .ui-btn-loading-after {
 *margin-top:-20px
}
.ui-btn-small .ui-btn-loading-after {
 margin-top:-22px;
 line-height:22px;
 height:22px
}
.ui-btn-small .ii-loading,.ui-btn-small .ii-loading-gray-16x16 {
 margin-top:3px
}
.ui-btn-mini {
 min-width:24px;
 _width:24px;
 padding:0 5px;
 font:12px/20px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 _line-height:22px;
 height:20px
}
button.ui-btn-mini {
 height:22px
}
.ui-btn-mini .ui-btn-loading-after {
 margin-top:-20px;
 line-height:20px;
 height:20px
}
.ui-btn-mini .ii-loading,.ui-btn-mini .ii-loading-gray-16x16 {
 margin-top:2px
}
.ui-btn-primary,.ui-btn1 {
 background-color:#f10180;
 border:1px solid #f10180
}
.ui-btn-primary,.ui-btn-primary:active,.ui-btn-primary:hover,.ui-btn1,.ui-btn1:active,.ui-btn1:hover {
 color:#fff
}
.ui-btn-primary:hover,.ui-btn1:hover {
 background-color:#f43499;
 border-color:#f43499
}
.ui-btn-primary:active,.ui-btn1:active {
 background-color:#d80173;
 border-color:#d80173
}
.ui-btn-secondary,.ui-btn2 {
 background-color:#fcedf2;
 border:1px solid #ffbee0
}
.ui-btn-secondary,.ui-btn-secondary:active,.ui-btn-secondary:hover,.ui-btn2,.ui-btn2:active,.ui-btn2:hover {
 color:#e00078
}
.ui-btn-secondary:hover,.ui-btn2:hover {
 background-color:#fbf5f7
}
.ui-btn-secondary:active,.ui-btn2:active {
 background-color:#fcdee8
}
.ui-btn-default,.ui-btn3 {
 background-color:#fafafa;
 border:1px solid #c2c2c2
}
.ui-btn-default,.ui-btn-default:active,.ui-btn-default:hover,.ui-btn3,.ui-btn3:active,.ui-btn3:hover {
 color:#333
}
.ui-btn-default:hover,.ui-btn3:hover {
 background-color:#fff
}
.ui-btn-default:active,.ui-btn3:active {
 background-color:#f0f0f0
}
.ui-btn-home {
 background-color:#e9ae46;
 border:1px solid #e9ae46
}
.ui-btn-home,.ui-btn-home:active,.ui-btn-home:hover {
 color:#fff
}
.ui-btn-home:hover {
 background-color:#f2ba55;
 border-color:#f2ba55
}
.ui-btn-home:active {
 background-color:#e0a63d;
 border-color:#e0a63d
}
.ui-btn-beauty {
 background-color:#eb437a;
 border:1px solid #eb437a
}
.ui-btn-beauty,.ui-btn-beauty:active,.ui-btn-beauty:hover {
 color:#fff
}
.ui-btn-beauty:hover {
 background-color:#f45293;
 border-color:#f45293
}
.ui-btn-beauty:active {
 background-color:#d42d6d;
 border-color:#d42d6d
}
.ui-btn-kid {
 background-color:#32c7c0;
 border:1px solid #32c7c0
}
.ui-btn-kid,.ui-btn-kid:active,.ui-btn-kid:hover {
 color:#fff
}
.ui-btn-kid:hover {
 background-color:#42cdc7;
 border-color:#42cdc7
}
.ui-btn-kid:active {
 background-color:#28bcb3;
 border-color:#28bcb3
}
.ui-btn-float {
 background-color:#4c4c4c;
 background:rgba(0,0,0,.7);
 filter:progid:DXImageTransform.Microsoft.gradient(startcolorstr=#b2000000, endcolorstr=#b2000000)
}
.ui-btn-float,.ui-btn-float:active,.ui-btn-float:hover {
 color:#fff
}
.ui-btn-float:hover {
 background-color:#191919;
 background:rgba(0,0,0,.9);
 filter:progid:DXImageTransform.Microsoft.gradient(startcolorstr=#e5000000, endcolorstr=#e5000000)
}
.ui-btn-float:active {
 background:#000;
 -webkit-filter:none;
 filter:none
}
:root .ui-btn-float,:root .ui-btn-float:hover {
 -webkit-filter:none;
 filter:none
}
.ui-btn-disable,.ui-btn-disable:active,.ui-btn-disable:hover,.z-ui-btn-loading,.z-ui-btn-loading:active,.z-ui-btn-loading:hover {
 border:1px solid #d0d0d0;
 color:#999;
 background:#d0d0d0;
 cursor:not-allowed
}
.ui-btn-loading,button.ui-btn-loading {
 padding:0;
 overflow:hidden
}
.z-ui-btn-loading {
 -webkit-transition:none;
 transition:none
}
.z-ui-btn-loading .ui-btn-loading-before {
 -webkit-animation:ani-ui-loading-hide .6s;
 animation:ani-ui-loading-hide .6s
}
.z-ui-btn-loading .ui-btn-loading-after {
 position:relative;
 display:block;
 -webkit-animation:ani-ui-loading-show .8s;
 animation:ani-ui-loading-show .8s
}
.ui-btn-loading-before {
 display:inline-block
}
.ui-btn-loading-after {
 display:none;
 background-color:#d0d0d0
}
.ui-btn-txt {
 display:inline-block;
 vertical-align:top;
 margin-left:6px
}
.ui-btn-fav {
 display:inline-block;
 width:66px;
 line-height:22px;
 _line-height:25px;
 height:22px;
 border-radius:11px;
 font-size:12px;
 background-color:#f2f2f2;
 text-align:center;
 overflow:hidden;
 -webkit-transform:translateZ(0);
 transform:translateZ(0);
 vertical-align:top
}
.ui-btn-fav a {
 -webkit-transition:.3s;
 transition:.3s
}
.ui-btn-fav a .vipFont {
 font-size:13px;
 margin-right:4px;
 vertical-align:1px
}
.ui-btn-fav-like {
 display:block;
 color:#f32b80
}
.ui-btn-fav-like:hover {
 background-color:#f32b80;
 color:#fff
}
.ui-btn-fav-cancel {
 display:none
}
.ui-btn-fav-cancel span {
 color:#f32b80;
 display:block
}
.z-fav-liked-leave .ui-btn-fav-cancel:hover {
 _zoom:1
}
.z-fav-liked-leave .ui-btn-fav-cancel:hover .liked {
 display:none
}
.z-fav-liked .ui-btn-fav-like {
 display:none
}
.z-fav-liked .ui-btn-fav-cancel {
 display:block
}
.ui-btn-fav-simple {
 display:inline-block;
 position:relative;
 width:16px;
 height:16px;
 line-height:1;
 _overflow:hidden;
 vertical-align:top
}
.ui-btn-fav-simple .icon {
 display:none;
 font-size:15px;
 cursor:pointer;
 vertical-align:top
}
.ui-btn-fav-simple .ui-icon-like {
 display:inline-block;
 color:#f785c2
}
.ui-btn-fav-simple .ui-icon-like:hover {
 color:#f10280;
 -webkit-animation:ani-ui-fav-simple-hover 1.5s infinite;
 animation:ani-ui-fav-simple-hover 1.5s infinite
}
.ui-btn-fav-simple:hover {
 _overflow:visible;
 color:#333
}
.ui-btn-fav-simple:hover .ui-fav-tips-wrap {
 display:block
}
.ui-btn-fav-simple:hover .ui-fav-tips-wrap .like {
 display:block
}
.ui-fav-tips-wrap {
 position:absolute;
 display:none;
 left:50%;
 top:13px;
 *top:21px
}
.ui-fav-tips-wrap .ui-tooltips {
 position:relative;
 _width:80px;
 _text-align:center;
 left:-50%;
 white-space:nowrap;
 visibility:visible;
 opacity:1
}
.ui-fav-tips-wrap .ui-tooltips .text {
 display:none
}
.z-fav-simple-liked .ui-icon-like {
 display:none
}
.z-fav-simple-liked .ui-icon-liked {
 color:#f10180;
 display:inline-block
}
.z-fav-simple-liked .ui-icon-liked:hover {
 -webkit-animation:ani-ui-fav-simple-hover 1.5s infinite;
 animation:ani-ui-fav-simple-hover 1.5s infinite
}
.z-fav-simple-liked:hover .ui-tooltips .text {
 display:none
}
.z-fav-simple-liked:hover .ui-tooltips .liked {
 display:block
}
.z-fav-simple-liked-leave .ui-icon-liked:hover {
 -webkit-animation:ani-ui-fav-simple-cancel .2s infinite;
 animation:ani-ui-fav-simple-cancel .2s infinite
}
.z-fav-simple-liked-leave:hover .ui-tooltips .text {
 display:none
}
.z-fav-simple-liked-leave:hover .ui-tooltips .cancel {
 display:block
}
.z-fav-simple-cancel-leave:hover .ui-tooltips .text {
 display:none
}
.z-fav-simple-cancel-leave:hover .ui-tooltips .canceled {
 display:block
}
.ani-like-FadeIn .icon {
 -webkit-animation:ani-ui-fav-simple-fadeIn 1s!important;
 animation:ani-ui-fav-simple-fadeIn 1s!important
}
.ani-like-FadeOut .icon {
 -webkit-animation:ani-ui-fav-simple-fadeout 1s!important;
 animation:ani-ui-fav-simple-fadeout 1s!important
}
@-webkit-keyframes ani-ui-loading-show {
 0% {
  -webkit-transform:translate(0,-100%);
  transform:translate(0,-100%)
 }
 100% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
}
@keyframes ani-ui-loading-show {
 0% {
  -webkit-transform:translate(0,-100%);
  transform:translate(0,-100%)
 }
 100% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
}
@-webkit-keyframes ani-ui-loading-hide {
 0% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
 100% {
  -webkit-transform:translate(0,100%);
  transform:translate(0,100%)
 }
}
@keyframes ani-ui-loading-hide {
 0% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
 100% {
  -webkit-transform:translate(0,100%);
  transform:translate(0,100%)
 }
}
@-webkit-keyframes ani-ui-fav-simple-hover {
 25%,75% {
  -webkit-transform:scale(1.1);
  transform:scale(1.1)
 }
 50% {
  -webkit-transform:scale(.9);
  transform:scale(.9)
 }
}
@keyframes ani-ui-fav-simple-hover {
 25%,75% {
  -webkit-transform:scale(1.1);
  transform:scale(1.1)
 }
 50% {
  -webkit-transform:scale(.9);
  transform:scale(.9)
 }
}
@-webkit-keyframes ani-ui-fav-simple-fadeIn {
 0% {
  -webkit-transform:scale(2);
  transform:scale(2);
  opacity:0;
  filter:alpha(opacity=0)
 }
 100% {
  -webkit-transform:scale(1);
  transform:scale(1);
  opacity:1;
  filter:alpha(opacity=100)
 }
}
@keyframes ani-ui-fav-simple-fadeIn {
 0% {
  -webkit-transform:scale(2);
  transform:scale(2);
  opacity:0;
  filter:alpha(opacity=0)
 }
 100% {
  -webkit-transform:scale(1);
  transform:scale(1);
  opacity:1;
  filter:alpha(opacity=100)
 }
}
@-webkit-keyframes ani-ui-fav-simple-fadeout {
 100% {
  -webkit-transform:scale(2);
  transform:scale(2);
  opacity:0;
  filter:alpha(opacity=0)
 }
}
@keyframes ani-ui-fav-simple-fadeout {
 100% {
  -webkit-transform:scale(2);
  transform:scale(2);
  opacity:0;
  filter:alpha(opacity=0)
 }
}
@-webkit-keyframes ani-ui-fav-simple-cancel {
 25% {
  -webkit-transform:rotate(7deg);
  transform:rotate(7deg)
 }
 75% {
  -webkit-transform:rotate(-7deg);
  transform:rotate(-7deg)
 }
}
@keyframes ani-ui-fav-simple-cancel {
 25% {
  -webkit-transform:rotate(7deg);
  transform:rotate(7deg)
 }
 75% {
  -webkit-transform:rotate(-7deg);
  transform:rotate(-7deg)
 }
}
.ui-tips-big .close,.ui-tips-nor .close {
 position:absolute;
 right:0;
 top:0;
 padding:3px 6px;
 font:14px/1 arial
}
.ui-tips-big .close,.ui-tips-big .close:hover,.ui-tips-nor .close,.ui-tips-nor .close:hover {
 color:#a6a5a5;
 text-decoration:none
}
.ui-tips-big {
 position:relative;
 padding:4px 0 4px 40px;
 border-radius:2px;
 zoom:1;
 font-family:tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif
}
.ui-tips-big .title {
 line-height:24px;
 font-size:16px;
 color:#424141;
 font-weight:400
}
.ui-tips-big .info {
 line-height:20px;
 font-size:12px;
 color:#2a2a2a
}
.ui-tips-big i {
 position:absolute;
 left:14px;
 top:9px;
 line-height:1
}
.ui-tips-nor {
 position:relative;
 padding-left:15px;
 line-height:30px;
 border-radius:2px;
 zoom:1;
 font-family:tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif
}
.ui-tips-nor .info {
 font-size:14px;
 color:#2a2a2a
}
.ui-tips-nor i {
 margin-right:13px;
 vertical-align:top
}
.ui-tips1 {
 background-color:#fffbf3;
 border:1px solid #f8dcb0
}
.if-sigh {
 color:#f9a123
}
.ui-tips2 {
 background-color:#dff1f8;
 border:1px solid #b4e1f3
}
.if-info {
 color:#249fdf
}
.ui-tips3 {
 background-color:#dff2d9;
 border:1px solid #c1e0af
}
.if-success,.if-sucess {
 color:#47b85c
}
.ui-tips4 {
 background-color:#f4e5e5;
 border:1px solid #ebced0
}
.if-wrong {
 color:#f64a4a
}
.if-query {
 color:#2689f8
}
.ui-tips-pop .bottom,.ui-tips-pop .bottom1 {
 left:50%;
 margin-left:-7px
}
.ui-tips-pop .top,.ui-tips-pop .top1 {
 left:50%;
 margin-left:-7px
}
.ui-tips-pop .left,.ui-tips-pop .left1 {
 top:50%;
 margin-top:-7px
}
.ui-tips-pop .right,.ui-tips-pop .right1 {
 top:50%;
 margin-top:-7px
}
.ui-tips-pop,.ui-tooltips {
 position:absolute;
 max-width:800px;
 border:1px solid #dbdada;
 border-radius:2px;
 box-shadow:0 0 3px rgba(0,0,0,.1);
 font:12px/18px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 color:#4d4d4d;
 z-index:50
}
.ui-tips-pop .arrow,.ui-tooltips .arrow {
 position:absolute;
 width:14px;
 text-align:left;
 height:14px;
 *overflow:hidden;
 font:400 12px/14px \5B8B\4F53,Hiragino Sans GB;
 _line-height:16px;
 color:#fff
}
.ui-tips-pop .bottom {
 color:#dbdada;
 bottom:-6px;
 text-shadow:0 0 4px rgba(0,0,0,.15)
}
:root .ui-tips-pop .bottom {
 bottom:-7px \9
}
.ui-tips-pop .bottom1 {
 bottom:-5px
}
:root .ui-tips-pop .bottom1 {
 bottom:-6px \9
}
.ui-tips-pop .top {
 color:#dbdada;
 top:-5px;
 text-shadow:0 0 4px rgba(0,0,0,.15)
}
:root .ui-tips-pop .top {
 top:-4px \9
}
.ui-tips-pop .top1 {
 top:-4px
}
:root .ui-tips-pop .top1 {
 top:-3px \9
}
.ui-tips-pop .left {
 color:#dbdada;
 left:-4px;
 text-shadow:0 0 4px rgba(0,0,0,.15)
}
.ui-tips-pop .left1 {
 left:-3px
}
.ui-tips-pop .right {
 color:#dbdada;
 right:-7px;
 text-shadow:0 0 4px rgba(0,0,0,.15)
}
.ui-tips-pop .right1 {
 right:-6px
}
.ui-tips-pop .close {
 float:right;
 padding:3px 6px;
 font:14px/1 arial
}
.ui-tips-pop .close,.ui-tips-pop .close:hover {
 color:#a6a5a5;
 text-decoration:none
}
.ui-tips-pop .cnt {
 position:relative;
 background-color:#fff;
 padding:7px 15px;
 *zoom:1;
 *display:inline
}
.ui-tooltips-top-arrow,.ui-tooltips-top-left-arrow,.ui-tooltips-top-right-arrow {
 -webkit-transform:translateY(10px);
 -ms-transform:translateY(10px);
 transform:translateY(10px)
}
.ui-tooltips-top-arrow .ui-tooltips-arrow,.ui-tooltips-top-left-arrow .ui-tooltips-arrow,.ui-tooltips-top-right-arrow .ui-tooltips-arrow {
 left:0;
 top:-11px;
 width:100%;
 height:10px
}
.ui-tooltips-top-arrow .arrow,.ui-tooltips-top-left-arrow .arrow,.ui-tooltips-top-right-arrow .arrow {
 margin-left:-7px;
 bottom:-11px
}
.ui-tooltips-top-arrow .arrow-out,.ui-tooltips-top-left-arrow .arrow-out,.ui-tooltips-top-right-arrow .arrow-out {
 margin-left:-7px;
 bottom:-10px
}
.ui-tooltips-right-arrow,.ui-tooltips-right-bottom-arrow,.ui-tooltips-right-top-arrow {
 -webkit-transform:translateX(-10px);
 -ms-transform:translateX(-10px);
 transform:translateX(-10px)
}
.ui-tooltips-right-arrow .ui-tooltips-arrow,.ui-tooltips-right-bottom-arrow .ui-tooltips-arrow,.ui-tooltips-right-top-arrow .ui-tooltips-arrow {
 top:0;
 right:-11px;
 width:10px;
 height:100%
}
.ui-tooltips-right-arrow .arrow,.ui-tooltips-right-bottom-arrow .arrow,.ui-tooltips-right-top-arrow .arrow {
 margin-top:-7px;
 left:-9px
}
.ui-tooltips-right-arrow .arrow-out,.ui-tooltips-right-bottom-arrow .arrow-out,.ui-tooltips-right-top-arrow .arrow-out {
 margin-top:-7px;
 left:-8px
}
.ui-tooltips-bottom-arrow,.ui-tooltips-bottom-left-arrow,.ui-tooltips-bottom-right-arrow {
 -webkit-transform:translateY(-10px);
 -ms-transform:translateY(-10px);
 transform:translateY(-10px)
}
.ui-tooltips-bottom-arrow .ui-tooltips-arrow,.ui-tooltips-bottom-left-arrow .ui-tooltips-arrow,.ui-tooltips-bottom-right-arrow .ui-tooltips-arrow {
 left:0;
 bottom:-11px;
 width:100%;
 height:10px
}
.ui-tooltips-bottom-arrow .arrow,.ui-tooltips-bottom-left-arrow .arrow,.ui-tooltips-bottom-right-arrow .arrow {
 margin-left:-7px;
 top:-10px
}
:root .ui-tooltips-bottom-arrow .arrow,:root .ui-tooltips-bottom-left-arrow .arrow,:root .ui-tooltips-bottom-right-arrow .arrow {
 top:-9px\9
}
.ui-tooltips-bottom-arrow .arrow-out,.ui-tooltips-bottom-left-arrow .arrow-out,.ui-tooltips-bottom-right-arrow .arrow-out {
 margin-left:-7px;
 top:-9px
}
:root .ui-tooltips-bottom-arrow .arrow-out,:root .ui-tooltips-bottom-left-arrow .arrow-out,:root .ui-tooltips-bottom-right-arrow .arrow-out {
 top:-8px\9
}
.ui-tooltips-left-arrow,.ui-tooltips-left-bottom-arrow,.ui-tooltips-left-top-arrow {
 -webkit-transform:translateX(10px);
 -ms-transform:translateX(10px);
 transform:translateX(10px)
}
.ui-tooltips-left-arrow .ui-tooltips-arrow,.ui-tooltips-left-bottom-arrow .ui-tooltips-arrow,.ui-tooltips-left-top-arrow .ui-tooltips-arrow {
 top:0;
 left:-11px;
 width:10px;
 height:100%
}
.ui-tooltips-left-arrow .arrow,.ui-tooltips-left-bottom-arrow .arrow,.ui-tooltips-left-top-arrow .arrow {
 margin-top:-7px;
 right:-12px
}
.ui-tooltips-left-arrow .arrow-out,.ui-tooltips-left-bottom-arrow .arrow-out,.ui-tooltips-left-top-arrow .arrow-out {
 margin-top:-7px;
 right:-11px
}
.ui-tooltips {
 visibility:hidden;
 opacity:0;
 -webkit-transition:-webkit-transform ease-out .15s,opacity ease-out .15s;
 transition:transform ease-out .15s,opacity ease-out .15s
}
.ui-tooltips-close {
 position:absolute;
 z-index:10;
 right:6px;
 top:6px;
 font-size:10px;
 width:16px;
 line-height:16px;
 text-align:center;
 color:#999
}
@media screen and (-webkit-min-device-pixel-ratio:0) {
 .ui-tooltips-close {
  -webkit-transform:scale(.83);
  -ms-transform:scale(.83);
  transform:scale(.83);
  -webkit-transform-origin:right top;
  -ms-transform-origin:right top;
  transform-origin:right top
 }
}
.ui-tooltips-close:hover {
 color:#666
}
.ui-tooltips-content {
 position:relative;
 background-color:#fff;
 padding:6px 15px
}
.ui-tooltips-msg {
 padding-left:26px
}
.ui-tooltips-msg .vipFont {
 display:inline-block;
 width:26px;
 margin-left:-26px;
 text-align:left;
 vertical-align:top
}
.ui-tooltips-handle .ui-tooltips-content {
 padding:20px 25px
}
.ui-tooltips-command {
 margin-top:12px;
 text-align:center;
 _padding-left:10px
}
.ui-tooltips-command a,.ui-tooltips-command button {
 margin:0 5px;
 _margin:0 10px 0 0
}
.ui-tooltips-arrow {
 position:absolute
}
.ui-tooltips-arrow .arrow-out {
 color:#dbdada;
 text-shadow:0 0 4px rgba(0,0,0,.15)
}
.ui-tooltips-top-arrow .arrow,.ui-tooltips-top-arrow .arrow-out {
 left:50%
}
.ui-tooltips-top-left-arrow .arrow,.ui-tooltips-top-left-arrow .arrow-out {
 left:25%
}
.ui-tooltips-top-right-arrow .arrow,.ui-tooltips-top-right-arrow .arrow-out {
 left:75%
}
.ui-tooltips-right-arrow .arrow,.ui-tooltips-right-arrow .arrow-out {
 top:50%
}
.ui-tooltips-right-top-arrow .arrow,.ui-tooltips-right-top-arrow .arrow-out {
 top:25%
}
.ui-tooltips-right-bottom-arrow .arrow,.ui-tooltips-right-bottom-arrow .arrow-out {
 top:75%
}
.ui-tooltips-bottom-arrow .arrow,.ui-tooltips-bottom-arrow .arrow-out {
 left:50%
}
.ui-tooltips-bottom-left-arrow .arrow,.ui-tooltips-bottom-left-arrow .arrow-out {
 left:25%
}
.ui-tooltips-bottom-right-arrow .arrow,.ui-tooltips-bottom-right-arrow .arrow-out {
 left:75%
}
.ui-tooltips-left-arrow .arrow,.ui-tooltips-left-arrow .arrow-out {
 top:50%
}
.ui-tooltips-left-top-arrow .arrow,.ui-tooltips-left-top-arrow .arrow-out {
 top:25%
}
.ui-tooltips-left-bottom-arrow .arrow,.ui-tooltips-left-bottom-arrow .arrow-out {
 top:75%
}
.ui-tooltips-warning {
 border-color:#f8dbb1;
 box-shadow:none
}
.ui-tooltips-warning .ui-tooltips-content {
 background-color:#fffaf3
}
.ui-tooltips-warning .arrow {
 text-shadow:none;
 color:#fffaf3
}
.ui-tooltips-warning .arrow-out {
 color:#f8dbb1
}
.ui-tooltips-info {
 border-color:#91daf2;
 box-shadow:none
}
.ui-tooltips-info .ui-tooltips-content {
 background-color:#e7f9ff
}
.ui-tooltips-info .arrow {
 text-shadow:none;
 color:#e7f9ff
}
.ui-tooltips-info .arrow-out {
 color:#91daf2
}
.z-ui-tooltips-in,.z-ui-tooltips-in .ui-tooltips {
 visibility:visible;
 -webkit-transform:translate(0,0);
 -ms-transform:translate(0,0);
 transform:translate(0,0);
 opacity:1;
 -webkit-transition-duration:.25s;
 transition-duration:.25s
}
.z-ui-tooltips-out {
 opacity:0
}
.z-ui-tooltips-out .ui-tooltips {
 visibility:hidden;
 opacity:0
}
:root .z-ui-tooltips-out .ui-tooltips {
 visibility:visible
}
.ui-paging {
 font:12px/32px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 _zoom:1
}
.ui-paging .total {
 display:inline-block;
 font-size:14px;
 color:#424141;
 padding-right:8px
}
.ui-paging .focus {
 color:#e0468d;
 font-style:normal
}
.ui-paging .ellipsis {
 margin-left:12px;
 margin-right:13px
}
.ui-paging a {
 display:inline-block;
 min-width:18px;
 _width:18px;
 padding:0 6px;
 line-height:30px;
 border:1px solid #b8b8b8;
 background-color:#fff;
 margin-left:2px;
 margin-right:3px;
 border-radius:2px;
 color:#848585;
 white-space:nowrap;
 -webkit-transition:.3s ease-out;
 transition:.3s ease-out;
 text-align:center
}
.ui-paging a:hover {
 color:#de3083;
 background-color:#fef9fb;
 border-color:#f995c5
}
.ui-paging a:active {
 background-color:#ffe0ed;
 color:#de3083;
 border-color:#f778b5
}
.ui-paging a.z-current {
 background-color:#f22a80;
 color:#fff;
 border-color:#cd2a78
}
.ui-paging a.z-disable,.ui-paging a.z-disable:active,.ui-paging a.z-disable:hover {
 background-color:#fafafa;
 color:#d1d1d1;
 border-color:#dbdbdb;
 cursor:not-allowed
}
.ui-paging a.next {
 width:70px
}
.ui-paging a.next .vipFont {
 margin-right:-7px
}
.ui-paging-mini {
 line-height:24px
}
.ui-paging-mini a {
 padding:0 2px;
 min-width:18px;
 _width:18px;
 line-height:22px
}
.ui-paging-mini .next {
 width:62px
}
.ui-paging-btn {
 display:inline-block;
 width:30px;
 height:50px;
 background-color:#000;
 background:rgba(0,0,0,.2);
 filter:alpha(opacity=20);
 border-radius:2px;
 text-align:center;
 overflow:hidden;
 -webkit-transition:.3s ease-out;
 transition:.3s ease-out
}
.ui-paging-btn:hover {
 background:rgba(0,0,0,.35);
 filter:alpha(opacity=35)
}
.ui-paging-btn:active {
 background:rgba(0,0,0,.45);
 filter:alpha(opacity=45)
}
.ui-paging-btn .vipFont {
 color:#fff;
 font-size:21px;
 line-height:50px
}
:root .ui-paging-btn,:root .ui-paging-btn:active,:root .ui-paging-btn:hover {
 -webkit-filter:none;
 filter:none
}
.z-ui-paging-btn-disable {
 cursor:not-allowed
}
.z-ui-paging-btn-disable .vipFont {
 color:#c7c7c7
}
.z-ui-paging-btn-disable,.z-ui-paging-btn-disable:active,.z-ui-paging-btn-disable:hover {
 background:rgba(0,0,0,.1);
 filter:alpha(opacity=10)
}
.ui-paging-icon-btn {
 font-size:21px;
 color:grey
}
.ui-paging-icon-btn:hover {
 color:#4c4c4c
}
.ui-paging-icon-btn:active {
 color:#333
}
.z-ui-paging-icon-btn-disable {
 cursor:not-allowed
}
.z-ui-paging-icon-btn-disable,.z-ui-paging-icon-btn-disable:active,.z-ui-paging-icon-btn-disable:hover {
 color:#ccc
}
.ui-window-mask {
 display:none;
 position:fixed;
 _position:absolute;
 z-index:1000;
 width:100%;
 height:100%;
 left:0;
 top:0;
 background:rgba(0,0,0,.7);
 filter:progid:DXImageTransform.Microsoft.gradient(startcolorstr=#B2000000, endcolorstr=#B2000000)
}
:root .ui-window-mask {
 -webkit-filter:none;
 filter:none
}
.ui-dialog {
 display:none;
 position:fixed;
 _position:absolute;
 z-index:1001;
 padding:5px;
 color:#666;
 background-color:#bfbfbf;
 background:rgba(255,255,255,.5);
 box-shadow:0 1px 6px rgba(0,0,0,.5);
 visibility:hidden;
 -webkit-transform:translateY(15px);
 -ms-transform:translateY(15px);
 transform:translateY(15px);
 opacity:0;
 -webkit-transition:-webkit-transform ease-out .35s,opacity ease-out .35s;
 transition:transform ease-out .35s,opacity ease-out .35s;
 font-family:tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif
}
:root .ui-dialog {
 -webkit-filter:none;
 filter:none;
 display:block
}
.ui-dialog-task .ui-dialog-inner {
 padding-top:40px
}
.ui-dialog-small {
 width:390px
}
.ui-dialog-medium {
 width:460px
}
.ui-dialog-large {
 width:600px
}
.ui-dialog-super {
 width:800px
}
.ui-dialog-inner {
 background-color:#fff;
 padding:50px 60px;
 max-height:430px;
 min-height:74px;
 _height:74px;
 font-size:13px;
 line-height:1.6;
 overflow:auto;
 _overflow:visible
}
.ui-dialog-inner::-webkit-scrollbar {
 width:8px;
 height:8px
}
.ui-dialog-inner::-webkit-scrollbar-thumb {
 border-radius:10px;
 background:rgba(0,0,0,.2)
}
.ui-dialog-inner::-webkit-scrollbar-thumb:window-inactive {
 background:rgba(0,0,0,.1)
}
.ui-dialog-inner::-webkit-scrollbar-thumb:vertical:hover {
 background-color:rgba(0,0,0,.3)
}
.ui-dialog-inner::-webkit-scrollbar-thumb:vertical:active {
 background-color:rgba(0,0,0,.7)
}
.ui-dialog-close {
 position:absolute;
 right:15px;
 top:15px;
 font-size:14px;
 line-height:14px;
 text-align:center;
 color:#999;
 padding:1px
}
.ui-dialog-close:hover {
 color:#666;
 text-decoration:none
}
.ui-dialog-title {
 position:relative;
 height:34px;
 line-height:34px;
 background-color:#f7f7f7;
 font-size:16px;
 color:#333;
 border-bottom:1px solid #efefef;
 text-indent:10px;
 font-weight:400;
 -webkit-text-stroke:.3px rgba(0,0,0,.6)
}
.ui-dialog-tips {
 position:relative;
 font-size:16px;
 line-height:24px;
 font-weight:400;
 min-height:32px;
 _height:32px;
 margin-bottom:16px;
 color:#333
}
.ui-dialog-tips .vipFont {
 float:left;
 margin-left:-42px;
 _margin-left:-39px;
 margin-top:-5px;
 font-size:32px;
 line-height:1
}
.ui-dialog-tips .text {
 display:inline-block;
 padding-top:5px;
 text-align:left;
 padding-left:42px
}
.ui-dialog-command {
 margin-top:26px;
 text-align:center
}
.ui-dialog-command a {
 margin:0 10px
}
.z-ui-dialog-in {
 display:block;
 visibility:visible;
 opacity:1;
 -webkit-transform:translateY(0);
 -ms-transform:translateY(0);
 transform:translateY(0)
}
.z-ui-dialog-out {
 display:none;
 visibility:hidden;
 opacity:0;
 -webkit-transform:translateY(-15px);
 -ms-transform:translateY(-15px);
 transform:translateY(-15px)
}
:root .z-ui-dialog-out {
 display:block;
 visibility:visible
}
.ui-radio {
 display:inline-block;
 vertical-align:middle;
 margin-right:5px;
 font-size:0;
 line-height:0
}
.ui-radio-normal {
 vertical-align:text-top
}
.ui-radio-simulation {
 display:none;
 cursor:pointer
}
:root .ui-radio-normal {
 display:none
}
:root .ui-radio-normal:checked+.ui-radio-simulation {
 background-position:0 -42px
}
:root .ui-radio-normal[disabled]+.ui-radio-simulation {
 cursor:not-allowed;
 background-position:-21px -42px
}
:root .ui-radio-normal:checked[disabled]+.ui-radio-simulation {
 cursor:not-allowed;
 background-position:-48px -21px
}
:root .ui-radio-simulation {
 display:block;
 -webkit-user-select:none;
 -moz-user-select:none;
 -ms-user-select:none;
 user-select:none;
 background-image:url(//bootstrap.vipstatic.com/img/ui/sprite.png?fedeff1a);
 background-position:-72px 0;
 width:16px;
 height:16px
}
:root .ui-radio-simulation:hover {
 background-position:-42px -42px
}
@media only screen and (-webkit-min-device-pixel-ratio:2),only screen and (-moz-min-device-pixel-ratio:2),only screen and (-o-min-device-pixel-ratio:2/1),only screen and (min-device-pixel-ratio:2) {
 :root .ui-radio-normal:checked+.ui-radio-simulation {
  background-position:-48px -21px
 }
 :root .ui-radio-normal[disabled]+.ui-radio-simulation {
  background-position:-42px -42px
 }
 :root .ui-radio-normal:checked[disabled]+.ui-radio-simulation {
  background-position:0 -42px
 }
 :root .ui-radio-simulation {
  background-image:url(//bootstrap.vipstatic.com/img/ui/sprite@2x.png?99e1ccc9);
  background-position:-21px -42px;
  background-size:88px 58px
 }
 :root .ui-radio-simulation:hover {
  background-position:-72px 0
 }
}
.ui-checkbox {
 display:inline-block;
 vertical-align:middle;
 margin-right:5px;
 font-size:0;
 line-height:0
}
.ui-checkbox-normal {
 vertical-align:text-top
}
.ui-checkbox-simulation {
 display:none;
 cursor:pointer
}
:root .ui-checkbox-normal {
 display:none
}
:root .ui-checkbox-normal:checked+.ui-checkbox-simulation {
 background-position:-24px 0
}
:root .ui-checkbox-normal[disabled]+.ui-checkbox-simulation {
 cursor:not-allowed;
 background-position:0 -21px
}
:root .ui-checkbox-normal:checked[disabled]+.ui-checkbox-simulation {
 cursor:not-allowed;
 background-position:0 0
}
:root .ui-checkbox-simulation {
 display:block;
 -webkit-user-select:none;
 -moz-user-select:none;
 -ms-user-select:none;
 user-select:none;
 background-image:url(//bootstrap.vipstatic.com/img/ui/sprite.png?fedeff1a);
 background-position:-48px 0;
 width:19px;
 height:16px
}
:root .ui-checkbox-simulation:hover {
 background-position:-24px -21px
}
@media only screen and (-webkit-min-device-pixel-ratio:2),only screen and (-moz-min-device-pixel-ratio:2),only screen and (-o-min-device-pixel-ratio:2/1),only screen and (min-device-pixel-ratio:2) {
 :root .ui-checkbox-normal:checked+.ui-checkbox-simulation {
  background-position:0 0
 }
 :root .ui-checkbox-normal[disabled]+.ui-checkbox-simulation {
  background-position:-24px -21px
 }
 :root .ui-checkbox-normal:checked[disabled]+.ui-checkbox-simulation {
  background-position:-24px 0
 }
 :root .ui-checkbox-simulation {
  background-image:url(//bootstrap.vipstatic.com/img/ui/sprite@2x.png?99e1ccc9);
  background-position:0 -21px;
  background-size:88px 58px
 }
 :root .ui-checkbox-simulation:hover {
  background-position:-48px 0
 }
}
.ui-dropdown {
 position:relative;
 display:inline-block;
 *display:inline;
 *zoom:1;
 width:162px;
 border-radius:3px;
 text-align:left;
 font:12px/28px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 vertical-align:top
}
.ui-dropdown-bd {
 display:none;
 top:31px;
 left:0;
 min-width:calc(100% - 2px);
 max-height:346px;
 overflow-y:auto;
 overflow-x:hidden;
 _overflow:auto;
 position:absolute;
 padding-bottom:8px;
 background-color:#fff;
 border:1px solid #848484;
 border-radius:0 0 3px 3px;
 box-shadow:0 0 0 2px #f7f7f7
}
.ui-dropdown-bd-right {
 left:auto;
 right:0
}
.ui-dropdown-bd .selected a,.ui-dropdown-bd .selected a:active,.ui-dropdown-bd .selected a:hover {
 background-color:#f10180;
 color:#fff
}
.ui-dropdown-bd a {
 display:block;
 padding:0 10px;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden;
 color:#333;
 text-decoration:none;
 *zoom:1
}
.ui-dropdown-bd a:hover {
 color:#666;
 text-decoration:none;
 background-color:#ededed
}
.ui-dropdown-bd a:active {
 background-color:#f10180;
 color:#fff
}
.ui-dropdown-hd {
 position:relative;
 z-index:2;
 padding:0 10px;
 border:1px solid #b3b3b3;
 border-radius:3px;
 background-color:#fff;
 -webkit-user-select:none;
 -moz-user-select:none;
 -ms-user-select:none;
 user-select:none;
 cursor:pointer;
 *zoom:1
}
.ui-dropdown-hd:hover {
 border-color:#949494
}
.ui-dropdown-hd:hover .vipFont {
 color:#949494
}
.ui-dropdown-hd .vipFont {
 position:absolute;
 right:7px;
 color:#b3b3b3;
 -webkit-transition:-webkit-transform .2s;
 transition:transform .2s;
 line-height:1
}
.ui-dropdown-hd .i-arrow-down {
 top:7px
}
.ui-dropdown-hd .i-arrow-up {
 visibility:hidden;
 -webkit-transform:rotate(-180deg);
 -ms-transform:rotate(-180deg);
 transform:rotate(-180deg);
 top:6px
}
.ui-dropdown-current {
 display:block;
 zoom:1;
 color:#999;
 line-height:30px;
 text-decoration:none;
 font-size:14px;
 margin-right:10px;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden
}
.ui-dropdown-current:hover {
 color:#999;
 text-decoration:none
}
.ui-dropdown-tips {
 padding:12px 0 4px 10px;
 line-height:20px;
 color:#ed1616
}
.ui-dropdown .ui-dropdown-menu .ui-dropdown-loading {
 float:none;
 width:auto;
 padding-top:10px;
 line-height:80px;
 text-align:center;
 font-size:14px;
 color:#333
}
.ui-dropdown .ui-dropdown-menu .ui-dropdown-loading .ii-loading-pink-16x16,.ui-dropdown .ui-dropdown-menu .ui-dropdown-loading .ii-loading-pink-24x24,.ui-dropdown .ui-dropdown-menu .ui-dropdown-loading .ii-loading-pink-32x32 {
 vertical-align:middle;
 margin-right:12px
}
.ui-dropdown .ui-dropdown-menu .ui-dropdown-loading .text {
 display:inline-block;
 vertical-align:middle
}
.ui-dropdown-col-2,.ui-dropdown-col-3,.ui-dropdown-col-4 {
 width:115px
}
.z-ui-dropdown-open .ui-dropdown-col-2 .ui-dropdown-hd,.z-ui-dropdown-open .ui-dropdown-col-3 .ui-dropdown-hd,.z-ui-dropdown-open .ui-dropdown-col-4 .ui-dropdown-hd {
 border-bottom:0;
 padding-bottom:1px
}
.ui-dropdown-col-2 .ui-dropdown-bd,.ui-dropdown-col-3 .ui-dropdown-bd,.ui-dropdown-col-4 .ui-dropdown-bd {
 padding-top:8px
}
.ui-dropdown-col-2 .ui-dropdown-tips,.ui-dropdown-col-3 .ui-dropdown-tips,.ui-dropdown-col-4 .ui-dropdown-tips {
 padding-top:0
}
.ui-dropdown-col-2 .ui-dropdown-menu,.ui-dropdown-col-3 .ui-dropdown-menu,.ui-dropdown-col-4 .ui-dropdown-menu {
 padding:0 5px
}
.ui-dropdown-col-2 .ui-dropdown-menu li,.ui-dropdown-col-3 .ui-dropdown-menu li,.ui-dropdown-col-4 .ui-dropdown-menu li {
 float:left;
 _overflow:hidden
}
.ui-dropdown-col-2 .ui-dropdown-menu li a,.ui-dropdown-col-3 .ui-dropdown-menu li a,.ui-dropdown-col-4 .ui-dropdown-menu li a {
 _width:83px;
 padding:0 0 0 5px;
 margin:0 5px 2px
}
.ui-dropdown-col-2 .ui-dropdown-bd {
 width:190px
}
.ui-dropdown-col-2 .ui-dropdown-menu li {
 width:50%
}
.ui-dropdown-col-3 .ui-dropdown-bd {
 width:280px
}
.ui-dropdown-col-3 .ui-dropdown-menu li {
 width:33%
}
.ui-dropdown-col-4 .ui-dropdown-bd {
 width:370px
}
.ui-dropdown-col-4 .ui-dropdown-menu li {
 width:25%
}
.ui-dropdown-float {
 line-height:26px;
 width:120px
}
.ui-dropdown-float-hover,.ui-dropdown-float:hover {
 z-index:100
}
.ui-dropdown-float-hover .ui-dropdown-hd .vipFont,.ui-dropdown-float:hover .ui-dropdown-hd .vipFont {
 color:#848484;
 line-height:1
}
.ui-dropdown-float-hover .ui-dropdown-hd .i-arrow-up,.ui-dropdown-float:hover .ui-dropdown-hd .i-arrow-up {
 visibility:visible;
 -webkit-transform:rotate(0);
 -ms-transform:rotate(0);
 transform:rotate(0)
}
.ui-dropdown-float-hover .ui-dropdown-hd .i-arrow-down,.ui-dropdown-float:hover .ui-dropdown-hd .i-arrow-down {
 visibility:hidden;
 -webkit-transform:rotate(180deg);
 -ms-transform:rotate(180deg);
 transform:rotate(180deg)
}
.ui-dropdown-float-hover .ui-dropdown-bd,.ui-dropdown-float:hover .ui-dropdown-bd {
 display:block
}
.ui-dropdown-float-hover .ui-dropdown-current,.ui-dropdown-float:hover .ui-dropdown-current {
 color:#333
}
.ui-dropdown-float .ui-dropdown-current {
 display:inline-block;
 padding-right:16px;
 margin-right:0;
 color:#666;
 font-size:12px
}
.ui-dropdown-float .ui-dropdown-current:hover {
 color:#333
}
.ui-dropdown-float .ui-dropdown-hd {
 border:0 none;
 background:0 0
}
.ui-dropdown-float .ui-dropdown-hd .vipFont {
 right:auto;
 margin-left:-16px
}
.ui-dropdown-float .ui-dropdown-bd {
 top:0;
 max-height:312px;
 padding-top:30px;
 border-radius:0;
 border-color:#cbcaca
}
.ui-dropdown-float .ui-dropdown-bd a {
 color:#666
}
.ui-dropdown-float .ui-dropdown-bd a:active,.ui-dropdown-float .ui-dropdown-bd a:hover {
 background:0 0;
 color:#f10180
}
.ui-dropdown-float .ui-dropdown-bd .selected a,.ui-dropdown-float .ui-dropdown-bd .selected a:active,.ui-dropdown-float .ui-dropdown-bd .selected a:hover {
 background:0 0;
 color:#f10180
}
.ui-dropdown-float .ui-dropdown-menu .ui-dropdown-loading {
 line-height:50px;
 font-size:12px
}
.z-ui-dropdown-selected .ui-dropdown-current,.z-ui-dropdown-selected .ui-dropdown-current:hover {
 color:#333
}
.z-ui-dropdown-disable .ui-dropdown-hd {
 background-color:#f0efef;
 color:#999;
 cursor:not-allowed
}
.z-ui-dropdown-disable .ui-dropdown-hd:hover {
 border-color:#b3b3b3
}
.z-ui-dropdown-disable .ui-dropdown-hd:hover .vipFont {
 color:#b3b3b3
}
.z-ui-dropdown-disable .ui-dropdown-current,.z-ui-dropdown-disable .ui-dropdown-current:hover {
 color:#999;
 cursor:not-allowed
}
.z-ui-dropdown-open {
 z-index:100;
 box-shadow:0 0 0 2px rgba(153,153,153,.08)
}
.z-ui-dropdown-open .ui-dropdown-hd {
 border-radius:3px 3px 0 0;
 border-color:#848484;
 border-bottom-color:#dcdada
}
.z-ui-dropdown-open .ui-dropdown-hd .vipFont {
 color:#848484
}
.z-ui-dropdown-open .ui-dropdown-hd .i-arrow-up {
 visibility:visible;
 -webkit-transform:rotate(0);
 -ms-transform:rotate(0);
 transform:rotate(0)
}
.z-ui-dropdown-open .ui-dropdown-hd .i-arrow-down {
 visibility:hidden;
 -webkit-transform:rotate(180deg);
 -ms-transform:rotate(180deg);
 transform:rotate(180deg)
}
.z-ui-dropdown-open .ui-dropdown-bd {
 display:block
}
.ui-input,.ui-textarea {
 width:148px;
 font:14px/20px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 color:#333;
 background-color:#fff;
 border:1px solid #b2b2b2;
 border-radius:3px;
 outline:0;
 -webkit-transition:border-color .3s cubic-bezier(.39,.575,.565,1),background-color .3s cubic-bezier(.39,.575,.565,1);
 transition:border-color .3s cubic-bezier(.39,.575,.565,1),background-color .3s cubic-bezier(.39,.575,.565,1)
}
.ui-input:focus,.ui-input:hover,.ui-textarea:focus,.ui-textarea:hover {
 border-color:#666
}
.ui-input[disabled],.ui-textarea[disabled] {
 background-color:#ecebeb;
 border-color:#b2b2b2;
 cursor:not-allowed
}
.ui-input::-webkit-input-placeholder,.ui-textarea::-webkit-input-placeholder {
 color:#999;
 text-overflow:ellipsis
}
.ui-input::-moz-placeholder,.ui-textarea::-moz-placeholder {
 color:#999;
 text-overflow:ellipsis
}
.ui-input:-ms-input-placeholder,.ui-textarea:-ms-input-placeholder {
 color:#999!important;
 text-overflow:ellipsis
}
.ui-input {
 height:18px;
 line-height:18px;
 padding:6px 10px
}
.z-ui-input-disable {
 background-color:#ecebeb;
 border-color:#b2b2b2;
 cursor:not-allowed
}
.ui-textarea {
 padding:5px 10px;
 height:72px;
 overflow:auto;
 resize:vertical
}
.ui-input-success {
 position:absolute;
 right:1px;
 top:1px;
 *top:2px;
 z-index:11;
 padding-right:10px;
 padding-left:5px;
 line-height:30px;
 font-size:17px;
 background:#fff;
 border-radius:3px;
 visibility:hidden;
 opacity:0;
 -webkit-transition:.3s;
 transition:.3s
}
.ui-label {
 display:inline-block;
 font:14px/32px tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif;
 vertical-align:middle;
 margin-right:10px;
 cursor:pointer;
 _line-height:34px;
 _height:32px;
 _overflow:hidden
}
.ui-form-item-group {
 position:relative;
 display:inline-block;
 *display:inline;
 *zoom:0;
 vertical-align:top;
 -webkit-transition:none!important;
 transition:none!important;
 -webkit-transition-duration:none!important;
 transition-duration:none!important;
 opacity:1!important
}
.ui-form-item-group .ui-tooltips-bottom-left-arrow {
 left:0;
 bottom:100%;
 margin-bottom:10px
}
.ui-form-item-group .ui-tooltips-bottom-left-arrow .arrow {
 left:14px
}
.ui-form-item-group .ui-tooltips-left-arrow {
 left:100%;
 top:0;
 margin-left:5px
}
.z-ui-form-item-warning .ui-dropdown-hd,.z-ui-form-item-warning .ui-dropdown-hd:hover,.z-ui-form-item-warning .ui-input,.z-ui-form-item-warning .ui-input:focus,.z-ui-form-item-warning .ui-input:hover,.z-ui-form-item-warning .ui-textarea,.z-ui-form-item-warning .ui-textarea:focus,.z-ui-form-item-warning .ui-textarea:hover {
 border-color:#fca1a5;
 background-color:#ffe6e7
}
.z-ui-form-item-success .ui-input-success {
 visibility:visible;
 opacity:1
}
.ui-quantity {
 display:inline-block;
 width:73px;
 height:22px;
 background-color:#fff;
 border:1px solid #e3e2e2;
 color:#333;
 vertical-align:top;
 text-align:center;
 -webkit-transition:.3s ease-out;
 transition:.3s ease-out
}
.ui-quantity:hover {
 border-color:#cac9c9
}
.ui-quantity a {
 float:left;
 width:21px;
 height:100%;
 line-height:22px;
 font-size:15px;
 color:#7d7c7c;
 background-color:#f9f8f8;
 -webkit-transition:.3s ease-out;
 transition:.3s ease-out
}
.ui-quantity a:hover {
 color:#333;
 text-decoration:none
}
.ui-quantity a:active {
 color:#333;
 background-color:#ebe9e9
}
.ui-quantity .vipFont {
 font-size:10px
}
.ui-quantity .z-disable {
 cursor:not-allowed
}
.ui-quantity .z-disable,.ui-quantity .z-disable:active,.ui-quantity .z-disable:hover {
 background-color:#f9f8f8;
 color:#dad8d8
}
.ui-quantity .z-loading {
 font-size:0;
 background:#f9f8f8 url(//bootstrap.vipstatic.com/img/ui/ui-quantity-loading.gif?857c8d1b) center center no-repeat;
 color:#f9f8f8
}
.ui-quantity .amount {
 float:left;
 width:29px;
 height:100%;
 line-height:22px;
 font-size:12px;
 border-left:1px solid #e4e3e3;
 border-right:1px solid #e4e3e3;
 overflow:hidden
}
.ui-quantity .ii-loading-pink-16x16 {
 margin-top:3px
}
.z-ui-quantity-disable {
 cursor:not-allowed;
 color:#999
}
.z-ui-quantity-disable:hover {
 border-color:#e3e2e2
}
.z-ui-quantity-disable a {
 cursor:not-allowed
}
.z-ui-quantity-disable a,.z-ui-quantity-disable a:active,.z-ui-quantity-disable a:hover {
 background-color:#f9f8f8;
 color:#dad8d8
}
.ui-tab-panel {
 font-size:0;
 *word-spacing:-1px;
 position:relative;
 zoom:1;
 border-bottom:1px solid #ccc
}
@media screen and (-webkit-min-device-pixel-ratio:0) {
 .ui-tab-panel {
  letter-spacing:-5px
 }
}
.ui-tab-panel li {
 font-size:12px;
 letter-spacing:normal;
 word-spacing:normal;
 vertical-align:top;
 display:inline-block;
 *display:inline;
 *zoom:1;
 min-width:44px;
 _width:44px;
 padding:0 10px;
 line-height:34px;
 color:#666;
 text-align:center;
 cursor:pointer;
 white-space:nowrap;
 -webkit-transition-duration:.3s;
 transition-duration:.3s;
 -webkit-transition-timing-function:cubic-bezier(0,1,.75,1.2);
 transition-timing-function:cubic-bezier(0,1,.75,1.2)
}
.ui-tab-panel li.z-current,.ui-tab-panel li:hover {
 color:#f10180
}
.ui-tab-panel .line {
 position:absolute;
 left:0;
 bottom:-1px;
 padding:0;
 min-width:0;
 width:0;
 height:10px;
 overflow:hidden;
 border-bottom:2px solid #f10180
}
.ui-tab-classic .ui-tab-panel {
 border-bottom:0 none
}
.ui-tab-classic .ui-tab-panel li {
 font-size:14px;
 min-width:56px;
 _width:56px;
 padding:0 19px;
 line-height:30px;
 border:1px solid #e5e5e5;
 color:#666;
 background-color:#fafafa;
 margin-right:-1px;
 -webkit-transition-property:background-color,color,border-color;
 transition-property:background-color,color,border-color
}
.ui-tab-classic .ui-tab-panel li:hover {
 color:#f10180;
 background-color:#fff
}
.ui-tab-classic .ui-tab-panel li.z-current {
 border-top:2px solid #f10180;
 border-bottom-color:#fff;
 color:#f10180;
 height:29px;
 line-height:28px;
 background-color:#fff
}
.ui-tab-classic .ui-tab-bd {
 margin-top:-1px;
 border:1px solid #e5e5e5;
 background-color:#fff
}
.f-hidden {
 display:none
}
.f-block {
 display:block
}
.f-inline-block {
 display:inline-block;
 *display:inline;
 *zoom:1
}
.f-tal,.f-text-left {
 text-align:left
}
.f-tac,.f-text-center {
 text-align:center
}
.f-tar,.f-text-right {
 text-align:right
}
.f-nowrap {
 white-space:nowrap
}
.f-default {
 cursor:default
}
.f-pointer {
 cursor:pointer
}
.f-not-allowed {
 cursor:not-allowed
}
.vipFontEnd {
 color:red
}
article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary {
 display:block
}
blockquote,body,button,code,dd,div,dl,dt,fieldset,figure,form,h1,h2,h3,h4,h5,h6,input,legend,li,ol,p,pre,td,textarea,th,ul {
 margin:0;
 padding:0
}
fieldset,img {
 border:0 none
}
a,img {
 vertical-align:top
}
a {
 background:0 0;
 -webkit-tap-highlight-color:rgba(255,255,255,0)
}
a:active,a:hover {
 outline:0 none
}
a,a:hover {
 text-decoration:none
}
:focus {
 outline:0 none
}
address,caption,cite,code,dfn,em,optgroup,th,var {
 font-style:normal;
 font-weight:400
}
h1,h2,h3,h4,h5,h6 {
 font-size:100%
}
abbr,acronym {
 border:0 none;
 font-variant:normal
}
button,input,optgroup,option,select,textarea {
 font-family:inherit;
 font-size:100%;
 font-style:inherit;
 font-weight:inherit
}
button,code,input,kbd,samp,select,textarea,tt {
 font-size:100%
}
li,ol,ul {
 list-style:none
}
table {
 border-collapse:collapse;
 border-spacing:0
}
sub,sup {
 font-size:100%;
 vertical-align:baseline
}
blockquote,q {
 quotes:none
}
blockquote:after,blockquote:before,q:after,q:before {
 content:''
}
button,html input[type=button],input[type=reset],input[type=submit] {
 -webkit-appearance:button;
 cursor:pointer
}
button[disabled],html input[disabled] {
 cursor:not-allowed
}
button {
 overflow:visible
}
em,i {
 font-style:normal
}
.f-left {
 float:left
}
.f-right {
 float:right
}
.f-clearfix,.g-hd,.m-shopping-tips,.product-tab .tab-hd {
 zoom:1
}
.f-clearfix:after,.f-clearfix:before,.g-hd:after,.g-hd:before,.m-shopping-tips:after,.m-shopping-tips:before,.product-tab .tab-hd:after,.product-tab .tab-hd:before {
 display:table;
 content:' '
}
.f-clearfix:after,.g-hd:after,.m-shopping-tips:after,.product-tab .tab-hd:after {
 clear:both
}
html .f-hide {
 display:none
}
.f-text-left {
 text-align:left
}
.f-text-right {
 text-align:right
}
.f-text-center {
 text-align:center
}
body {
 font:12px/1.5 tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,\5FAE\8F6F\96C5\9ED1,\5B8B\4F53,sans-serif;
 color:#333;
 -webkit-font-smoothing:antialiased;
 min-width:1000px
}
a {
 color:#333
}
a:hover {
 color:#f10180
}
.a-bounce-in {
 -webkit-animation-name:bounceIn;
 animation-name:bounceIn
}
.a-fadein-bottom,.a-fadein-left,.a-fadein-right,.a-fadein-top {
 -webkit-animation-duration:1s;
 animation-duration:1s;
 -webkit-animation-fill-mode:both;
 animation-fill-mode:both
}
.a-fadein-top {
 -webkit-animation-name:fadeInTop;
 animation-name:fadeInTop
}
.a-fadein-right {
 -webkit-animation-name:fadeInRight;
 animation-name:fadeInRight
}
.a-fadein-bottom {
 -webkit-animation-name:fadeInBottom;
 animation-name:fadeInBottom
}
@-webkit-keyframes bounceIn {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:scale(.3);
  transform:scale(.3)
 }
 50% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:scale(1.05);
  transform:scale(1.05)
 }
 70% {
  -webkit-transform:scale(.9);
  transform:scale(.9)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:scale(1);
  transform:scale(1)
 }
}
@keyframes bounceIn {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:scale(.3);
  transform:scale(.3)
 }
 50% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:scale(1.05);
  transform:scale(1.05)
 }
 70% {
  -webkit-transform:scale(.9);
  transform:scale(.9)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:scale(1);
  transform:scale(1)
 }
}
@-webkit-keyframes fadeInTop {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:translateY(-20px);
  transform:translateY(-20px)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:translateY(0);
  transform:translateY(0)
 }
}
@keyframes fadeInTop {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:translateY(-20px);
  transform:translateY(-20px)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:translateY(0);
  transform:translateY(0)
 }
}
@-webkit-keyframes fadeInRight {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:translateX(20px);
  transform:translateX(20px)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:translateX(0);
  transform:translateX(0)
 }
}
@keyframes fadeInRight {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:translateX(20px);
  transform:translateX(20px)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:translateX(0);
  transform:translateX(0)
 }
}
@-webkit-keyframes fadeInBottom {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:translateY(20px);
  transform:translateY(20px)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:translateY(0);
  transform:translateY(0)
 }
}
@keyframes fadeInBottom {
 0% {
  opacity:0;
  filter:alpha(opacity=0);
  -webkit-transform:translateY(20px);
  transform:translateY(20px)
 }
 100% {
  opacity:1;
  filter:alpha(opacity=100);
  -webkit-transform:translateY(0);
  transform:translateY(0)
 }
}
.u-clearfix {
 *zoom:1
}
.u-clearfix:after,.u-clearfix:before {
 display:table;
 content:''
}
.u-clearfix:after {
 clear:both
}
.u-hidden {
 display:none!important
}
.u-inline {
 display:inline!important
}
.u-inline-block {
 display:inline-block!important;
 max-width:100%
}
.u-block {
 display:block!important
}
.u-invisible {
 visibility:hidden!important
}
.u-table {
 display:table!important
}
.u-table-cell {
 display:table-cell!important
}
.u-highlight {
 color:#f10180!important
}
.u-yen {
 padding:0 2px;
 font-family:Arial!important
}
.u-price {
 font-family:Arial!important
}
.u-split-line {
 display:inline-block;
 width:1px;
 height:12px;
 vertical-align:middle;
 background-color:#b3b3b3;
 overflow:hidden
}
.u-open-arrow {
 font-family:\5b8b\4f53,'Hiragino Sans GB'
}
html .f-hide {
 display:none
}
.member-level {
 display:inline-block;
 background-image:url(//pay.vipstatic.com/img/share/comm_level.png?be4fa05e);
 background-repeat:no-repeat;
 line-height:9999em;
 overflow:hidden
}
.member-level-1,.member-level-2,.member-level-3,.member-level-4 {
 width:16px;
 height:21px
}
.member-level-1 {
 background-position:-10px 0
}
.member-level-2 {
 background-position:-10px -29px
}
.member-level-3 {
 background-position:-10px -54px
}
.member-level-4 {
 background-position:-10px -79px
}
.member-level-5 {
 width:25px;
 height:17px;
 background-position:-1px -106px
}
.member-level-6 {
 width:24px;
 height:17px;
 background-position:-1px -133px
}
a {
 color:#1d94d1;
 text-decoration:none
}
a:hover {
 color:#3cbdff;
 text-decoration:none
}
.vip-common-footer .footer-inner {
 padding-top:30px
}
.u-icon {
 display:inline-block;
 vertical-align:middle;
 line-height:999px;
 overflow:hidden
}
.icon-help-small {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-553px -256px;
 width:16px;
 height:16px
}
.icon-warning-small {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-448px -256px;
 width:16px;
 height:16px
}
.icon-warning {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-577px -292px;
 width:32px;
 height:32px
}
.icon-error-small {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-532px -256px;
 width:16px;
 height:16px
}
.icon-error-small-spe {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-511px -256px;
 width:16px;
 height:16px
}
.icon-error {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-569px -201px;
 width:32px;
 height:32px
}
.icon-success-small {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-469px -256px;
 width:16px;
 height:16px
}
.icon-success {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-261px -347px;
 width:32px;
 height:32px
}
.icon-success-large {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-208px -347px;
 width:48px;
 height:48px
}
.icon-tel {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-569px -238px;
 width:11px;
 height:11px
}
.icon-wallet-tips-arrow {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-261px -384px;
 width:4px;
 height:10px
}
.icon-online-service {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:0 -402px;
 width:11px;
 height:15px
}
.icon-online-service-hover,.m-site-nav .online-service a:hover .icon-online-service {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-16px -402px;
 width:11px;
 height:15px
}
.icon-online-service-large {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-406px -347px;
 width:14px;
 height:18px
}
.icon-questionnaire {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-425px -347px;
 width:14px;
 height:18px
}
.icon-member {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-574px -256px;
 width:15px;
 height:14px
}
.device-pc .m-servers-dropdown-hover .servers-dropdown-hd .icon-member,.device-pc .m-servers-dropdown:hover .servers-dropdown-hd .icon-member,.icon-member-hover,.m-servers-dropdown.z-touch .servers-dropdown-hd .icon-member {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-594px -256px;
 width:15px;
 height:14px
}
.bg-loading-gray,.icon-loading-gray {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-gray.gif?ba99ee34);
 background-repeat:no-repeat
}
.icon-loading-gray {
 width:24px;
 height:24px
}
.bg-loading-gray-small,.icon-loading-gray-small {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-gray-small.gif?556f7744);
 background-repeat:no-repeat
}
.icon-loading-gray-small {
 width:16px;
 height:16px
}
.bg-loading-gray-large,.icon-loading-gray-large {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-gray-large.gif?d7d51ca0);
 background-repeat:no-repeat
}
.icon-loading-gray-large {
 width:32px;
 height:32px
}
.bg-loading-pink,.icon-loading-pink {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-pink.gif?3ccd0481);
 background-repeat:no-repeat
}
.icon-loading-pink {
 width:24px;
 height:24px
}
.bg-loading-pink-small,.icon-loading-pink-small {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-pink-small.gif?dba3b172);
 background-repeat:no-repeat
}
.icon-loading-pink-small {
 width:16px;
 height:16px
}
.bg-loading-pink-large,.icon-loading-pink-large {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-pink-large.gif?14105a40);
 background-repeat:no-repeat
}
.icon-loading-pink-large {
 width:32px;
 height:32px
}
.icon-loading-black-large {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-black-large.gif?4820672a);
 width:32px;
 height:32px
}
.bg-loading-gray,.bg-loading-gray-large,.bg-loading-gray-small,.bg-loading-pink,.bg-loading-pink-large,.bg-loading-pink-small {
 text-indent:-99999px;
 background-position:center center;
 overflow:hidden;
 zoom:1
}
.btn-close-small {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-499px -347px;
 width:8px;
 height:8px
}
.btn-close-small:hover {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-512px -347px;
 width:8px;
 height:8px
}
.icon-arrow-gray {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-577px -329px;
 width:11px;
 height:7px
}
.icon-arrow-light-gray {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-593px -329px;
 width:11px;
 height:7px
}
.icon-arrow-blue,.icon-arrow-bottom-blue {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-585px -238px;
 width:11px;
 height:7px
}
.icon-arrow-top-blue {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-590px -188px;
 width:11px;
 height:7px
}
.icon-arrow-pink {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-307px -281px;
 width:10px;
 height:6px
}
.icon-arrow-white {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-322px -281px;
 width:10px;
 height:6px
}
.icon-quality-goods {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-332px -256px;
 width:20px;
 height:20px
}
.icon-return-of-goods {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-307px -256px;
 width:20px;
 height:20px
}
.icon-return-freight {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-357px -256px;
 width:20px;
 height:20px
}
.icon-star-corner {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-444px -347px;
 width:12px;
 height:18px
}
body {
 min-width:960px;
 overflow-x:auto;
 background-color:#fff
}
.t-background-gray body {
 background-color:#f8f8f8
}
.t-background-gray .g-ft,.t-background-gray .g-hd {
 background-color:#fff
}
.g-row {
 margin-right:auto;
 width:960px;
 margin-left:auto
}
.g-ft {
 margin-top:35px;
 background-color:#fff
}
[type=button]::-moz-focus-inner,button::-moz-focus-inner {
 margin:0;
 padding:0;
 border:none
}
.u-btn {
 display:inline-block;
 *display:inline;
 cursor:pointer;
 padding:0 20px;
 height:32px;
 font:14px/32px 'Microsoft Yahei';
 background:0 0;
 border:none;
 text-align:center;
 white-space:nowrap;
 -webkit-user-select:none;
 -moz-user-select:none;
 -ms-user-select:none;
 user-select:none;
 -webkit-transition:background-color .3s ease-in,border-color .3s ease-in;
 transition:background-color .3s ease-in,border-color .3s ease-in;
 *zoom:1;
 *overflow:visible
}
a.u-btn {
 height:30px;
 line-height:30px
}
a.u-btn .btn-text {
 height:30px;
 line-height:30px
}
.u-btn:hover {
 text-decoration:none
}
.btn-text {
 display:inline-block;
 cursor:pointer;
 vertical-align:top
}
.btn-loading-text {
 display:none;
 background-color:#d0d0d0
}
.btn-primary {
 color:#fff;
 background-color:#f10180;
 border-radius:3px
}
.btn-primary,.btn-primary .u-btn-inner {
 border:1px solid #f10180
}
.btn-primary:hover {
 color:#fff;
 background-color:#f43499
}
.btn-primary:active {
 color:#fff;
 background-color:#d80173
}
.btn-secondary {
 color:#e00078;
 background-color:#fcedf2;
 border:1px solid #ffbde0;
 border-radius:3px
}
.btn-secondary:hover {
 color:#e00078;
 background-color:#fbf5f7
}
.btn-secondary:active {
 color:#e00078;
 background-color:#fcdee8
}
.btn-default {
 color:#333;
 background-color:#fafafa;
 border:1px solid #c2c2c2;
 border-radius:3px
}
.btn-default:hover {
 color:#333;
 background-color:#fff
}
.btn-default:active {
 color:#333;
 background-color:#f0f0f0
}
.btn-link {
 color:#1d94d1
}
.btn-link:hover {
 color:#46acf9
}
.btn-large {
 padding:0 20px;
 height:44px;
 font:18px/44px 'Microsoft Yahei'
}
a.btn-large {
 height:42px;
 line-height:42px
}
a.btn-large .btn-text {
 height:42px;
 line-height:42px
}
.btn-small {
 padding:0 12px;
 height:24px;
 font:12px/24px 'Microsoft Yahei'
}
a.btn-small {
 height:22px;
 line-height:22px
}
a.btn-small .btn-text {
 height:22px;
 line-height:22px
}
button.u-btn {
 *line-height:1.6
}
.is-button-disabled,.is-button-disabled:active,.is-button-disabled:hover,.is-button-loading,.is-button-loading:active,.is-button-loading:hover,.z-btn-disabled,.z-btn-disabled:active,.z-btn-disabled:hover,.z-btn-loading,.z-btn-loading:active,.z-btn-loading:hover,.z-form-item-disabled .u-btn,.z-form-item-disabled .u-btn:active,.z-form-item-disabled .u-btn:hover {
 cursor:not-allowed;
 color:#9b9b9b;
 -webkit-transition:none;
 transition:none;
 background-color:#d0d0d0;
 border-color:#d0d0d0
}
.is-button-disabled .btn-text,.is-button-loading .btn-text,.z-btn-disabled .btn-text,.z-btn-loading .btn-text,.z-form-item-disabled .u-btn .btn-text {
 cursor:not-allowed
}
.is-button-loading,.z-btn-loading {
 position:relative;
 vertical-align:top;
 overflow:hidden;
 *overflow:visible;
 -webkit-transition:none;
 transition:none
}
.is-button-loading .btn-text,.z-btn-loading .btn-text {
 -webkit-animation:hideText .6s;
 animation:hideText .6s
}
.is-button-loading .btn-loading-text,.z-btn-loading .btn-loading-text {
 display:block;
 position:absolute;
 top:0;
 left:0;
 width:100%;
 height:100%;
 -webkit-animation:showLoadingText .5s;
 animation:showLoadingText .5s;
 cursor:not-allowed
}
button.is-button-loading,button.z-btn-loading {
 padding:0;
 border:none
}
@-webkit-keyframes showLoadingText {
 0% {
  -webkit-transform:translate(0,-100%);
  transform:translate(0,-100%)
 }
 100% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
}
@keyframes showLoadingText {
 0% {
  -webkit-transform:translate(0,-100%);
  transform:translate(0,-100%)
 }
 100% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
}
@-webkit-keyframes hideText {
 0% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
 100% {
  -webkit-transform:translate(0,100%);
  transform:translate(0,100%)
 }
}
@keyframes hideText {
 0% {
  -webkit-transform:translate(0,0);
  transform:translate(0,0)
 }
 100% {
  -webkit-transform:translate(0,100%);
  transform:translate(0,100%)
 }
}
.m-dropdown {
 position:relative;
 z-index:1
}
.dropdown-hd {
 position:relative;
 cursor:pointer;
 height:30px;
 border:1px solid #a5a5a5;
 background-color:#fff;
 border-radius:2px
}
.dropdown-hd-title {
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden;
 display:block;
 padding:6px 28px 6px 10px;
 height:18px;
 color:#333;
 font:14px/18px 'Microsoft Yahei'
}
.dropdown-hd-arrow-icon {
 position:absolute;
 top:12px;
 right:8px;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-352px -281px;
 width:10px;
 height:6px;
 z-index:3
}
.dropdown-bd {
 display:none;
 position:absolute;
 top:31px;
 left:0;
 padding:0 5px;
 border:1px solid #a5a5a5;
 border-top:none;
 background-color:#fff;
 border-bottom-left-radius:3px;
 border-bottom-right-radius:3px;
 z-index:1
}
.dropdown-list {
 padding:5px 0;
 border-top:1px solid #dcdada
}
.dropdown-list-item {
 height:28px
}
.dropdown-list-item .dropdown-option {
 display:block;
 padding:5px 6px;
 cursor:pointer;
 color:#333;
 font-size:12px;
 line-height:18px
}
.dropdown-list-item .dropdown-option-hover,.dropdown-list-item .dropdown-option:hover {
 color:#fff;
 background-color:#f10180;
 text-decoration:none
}
.dropdown-list-item-loading {
 padding:34px 0;
 height:32px;
 text-align:center;
 font-size:14px;
 line-height:32px
}
.dropdown-list-item-loading .icon-loading-pink-large {
 margin-right:10px
}
.z-dropdown-disabled .dropdown-hd {
 border-color:#d7d7d7
}
.z-dropdown-disabled .dropdown-hd-title {
 color:#999
}
.z-dropdown-disabled:focus .dropdown-hd {
 box-shadow:none
}
.z-dropdown-expanded {
 z-index:2
}
.z-dropdown-expanded .dropdown-hd {
 border-bottom:1px solid #fff;
 border-bottom-left-radius:0;
 border-bottom-right-radius:0;
 border-color:#999;
 box-shadow:0 0 3px rgba(155,155,155,.08);
 z-index:2
}
.z-dropdown-expanded .dropdown-hd-title {
 position:relative;
 background-color:#fff;
 z-index:2
}
.z-dropdown-expanded .dropdown-hd-arrow-icon {
 -webkit-transform:rotate(180deg);
 -ms-transform:rotate(180deg);
 transform:rotate(180deg)
}
.z-dropdown-expanded .dropdown-bd {
 display:block;
 box-shadow:0 0 3px rgba(155,155,155,.08)
}
.z-dropdown-selected .dropdown-hd {
 border:1px solid #a5a5a5
}
.z-dropdown-selected .dropdown-hd-title {
 color:#333
}
::-webkit-input-placeholder {
 color:#999
}
:-moz-placeholder {
 color:#999
}
::-moz-placeholder {
 color:#999
}
input:-ms-input-placeholder {
 color:#999
}
.u-placeholder {
 color:#999
}
.ipt-simulate,.u-ipt {
 padding:6px 10px;
 height:18px;
 border:1px solid #a5a5a5;
 font:14px/18px 'Microsoft Yahei';
 background-color:#fff;
 border-radius:2px
}
.u-ipt:focus,.u-textarea:focus {
 border-color:#999;
 box-shadow:0 0 3px rgba(155,155,155,.08)
}
.u-ipt-disabled,.u-ipt:disabled,.u-ipt[disabled],.u-textarea-disabled,.u-textarea:disabled,.u-textarea[disabled],.z-form-item-disabled .u-ipt {
 cursor:not-allowed;
 color:#999;
 border-color:#d7d7d7
}
.u-textarea {
 padding:5px 10px;
 height:60px;
 line-height:15px;
 background-color:#fff;
 border:1px solid #a5a5a5;
 border-radius:2px;
 overflow:auto;
 resize:none
}
.u-checkbox,.u-radio {
 display:inline;
 float:left;
 *zoom:1
}
.checkbox-text,.radio-text {
 display:inline-block;
 *display:inline;
 vertical-align:top;
 cursor:pointer;
 color:#333;
 overflow:hidden;
 zoom:1
}
.u-checkbox,.u-radio {
 position:relative;
 cursor:pointer;
 overflow:hidden
}
.u-checkbox input,.u-radio input {
 position:absolute;
 top:-40px;
 left:-40px;
 z-index:1
}
.u-checkbox .simulate,.u-radio .simulate {
 position:relative;
 float:left;
 line-height:9999px;
 overflow:hidden;
 cursor:pointer
}
.z-checkbox-disabled .checkbox-text,.z-checkbox-disabled .radio-text,.z-checkbox-disabled .simulate,.z-radio-disabled .checkbox-text,.z-radio-disabled .radio-text,.z-radio-disabled .simulate {
 cursor:not-allowed
}
.z-checkbox-disabled .checkbox-text,.z-checkbox-disabled .radio-text,.z-radio-disabled .checkbox-text,.z-radio-disabled .radio-text {
 color:#666
}
.u-radio {
 width:16px;
 height:16px
}
.u-radio .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-490px -256px;
 width:16px;
 height:16px
}
.radio-text {
 padding-left:10px
}
.z-radio-checked .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-427px -256px;
 width:16px;
 height:16px
}
.z-radio-checked .radio-text {
 color:#333
}
.z-radio-disabled .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-406px -256px;
 width:16px;
 height:16px
}
.u-checkbox {
 width:19px;
 height:16px
}
.u-checkbox .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-590px -167px;
 width:19px;
 height:16px
}
.checkbox-text {
 padding-left:7px
}
.z-checkbox-checked .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-382px -256px;
 width:19px;
 height:16px
}
.z-checkbox-checked .checkbox-text {
 color:#333
}
.z-checkbox-disabled .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-590px -146px;
 width:19px;
 height:16px
}
.form-item .u-form-label {
 display:inline-block;
 margin-bottom:5px
}
.form-item .form-control {
 position:relative
}
.form-horizontal .form-item {
 *zoom:1;
 margin-bottom:10px;
 padding-left:100px
}
.form-horizontal .form-item:after,.form-horizontal .form-item:before {
 display:table;
 content:''
}
.form-horizontal .form-item:after {
 clear:both
}
.form-horizontal .u-form-label {
 display:inline;
 float:left;
 margin-left:-100px;
 margin-bottom:0;
 padding:6px 5px 6px 0;
 width:90px;
 text-align:right;
 color:#333;
 line-height:20px
}
.form-horizontal .form-item-actions {
 margin-top:20px;
 margin-bottom:0
}
.form-group {
 *zoom:1
}
.form-group:after,.form-group:before {
 display:table;
 content:''
}
.form-group:after {
 clear:both
}
.form-group .u-ipt {
 float:left;
 padding-right:10px;
 width:218px;
 border-top-right-radius:0;
 border-bottom-right-radius:0
}
.form-group .u-btn {
 float:left;
 margin-left:-1px;
 padding-right:5px;
 padding-left:5px;
 width:70px;
 border-top-left-radius:0;
 border-bottom-left-radius:0
}
.z-form-item-error .m-dropdown .dropdown-hd,.z-form-item-error .u-ipt,.z-form-item-error .u-textarea {
 border-color:#f1585e
}
.z-form-item-error-tooltips,.z-form-item-info-tooltips {
 position:relative
}
.z-form-item-error-tooltips .tooltips-error,.z-form-item-info-tooltips .tooltips-info {
 opacity:1;
 filter:alpha(opacity=100);
 visibility:visible;
 pointer-events:auto
}
.is-form-item-tooltips-in {
 z-index:50
}
.c-input-group {
 position:relative;
 z-index:1;
 *zoom:1
}
.input-group-input {
 *margin-top:-1px;
 width:220px;
 border-top-right-radius:0;
 border-bottom-right-radius:0
}
.input-group-button {
 position:relative;
 left:-1px;
 z-index:2;
 border-top-left-radius:0;
 border-bottom-left-radius:0
}
.u-label {
 display:inline-block;
 padding:5px;
 min-width:48px;
 _width:48px;
 height:12px;
 text-align:center;
 color:#fff;
 font:400 12px/12px \5B8B\4F53;
 white-space:nowrap;
 border-radius:2px
}
.label-default {
 background-color:#999
}
.label-info {
 background-color:#f3b241
}
.c-list,.m-list {
 margin-bottom:-5px
}
.c-list .list-item,.m-list .list-item {
 margin-bottom:5px
}
.e-disc-list,.e-list-disc {
 padding-left:15px
}
.e-disc-list .list-item,.e-list-disc .list-item {
 list-style:outside disc none
}
.e-decimal-list,.e-list-decimal {
 padding-left:20px
}
.e-decimal-list .list-item,.e-list-decimal .list-item {
 list-style:outside decimal none
}
.e-list-decimal,.e-list-disc {
 padding-left:0
}
.e-list-decimal .list-item,.e-list-disc .list-item {
 list-style-position:inside
}
.m-modal {
 position:relative;
 margin-right:auto;
 margin-left:auto;
 padding:5px;
 width:420px;
 box-shadow:0 0 6px rgba(0,0,0,.5);
 background-color:rgba(255,255,255,.5);
 filter:progid:DXImageTransform.Microsoft.gradient(startcolorstr=#7FFFFFFF, endcolorstr=#7FFFFFFF);
 zoom:1;
 z-index:101
}
.modal-inner {
 position:relative;
 padding:40px;
 background-color:#fff;
 z-index:102
}
.btn-modal-close {
 position:absolute;
 top:15px;
 right:15px;
 color:#898989;
 text-indent:99999em;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-461px -347px;
 width:14px;
 height:14px;
 font:700 22px/18px Tahoma;
 overflow:hidden;
 z-index:103
}
.btn-modal-close:hover {
 color:#333;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-480px -347px;
 width:14px;
 height:14px;
 text-decoration:none
}
.modal-actions {
 margin-top:20px;
 text-align:center
}
.modal-error-cnt,.modal-success-cnt {
 display:none
}
.modal-loader-cnt {
 display:none;
 padding:50px 0
}
.e-modal-box .modal-inner {
 padding:0
}
.e-modal-box .modal-hd {
 margin-bottom:30px;
 padding:0 37px 0 10px;
 height:40px;
 line-height:40px;
 border-bottom:2px solid #de3083
}
.e-modal-box .modal-hd-title {
 color:#393939;
 font-size:14px;
 font-weight:700
}
.e-modal-box .modal-bd {
 padding:0 40px 40px
}
.modal-large {
 width:520px
}
.modal-small {
 width:320px
}
.z-modal-loading .modal-cnt {
 display:none
}
.z-modal-loading .modal-loader-cnt {
 display:block
}
.z-modal-error .modal-cnt {
 display:none
}
.z-modal-error .modal-error-cnt {
 display:block
}
.z-modal-success .modal-cnt {
 display:none
}
.z-modal-success .modal-success-cnt {
 display:block
}
.u-plus {
 display:inline-block;
 width:12px;
 height:12px;
 position:relative;
 vertical-align:middle;
 z-index:0
}
.u-plus .line-horizontal,.u-plus .line-verticality {
 position:absolute;
 cursor:pointer;
 font:0/0 arial;
 color:#898787;
 background-color:#898787;
 z-index:1
}
.u-plus .line-horizontal {
 top:5px;
 left:0;
 width:10px;
 height:2px;
 border-right:1px solid #bdbcbc;
 border-left:1px solid #bdbcbc
}
.u-plus .line-verticality {
 top:0;
 left:5px;
 width:2px;
 height:10px;
 border-top:1px solid #bdbcbc;
 border-bottom:1px solid #bdbcbc
}
.c-icons {
 display:inline-block;
 *display:inline;
 *zoom:1;
 vertical-align:top
}
.m-tips {
 min-height:16px;
 font-size:0;
 *word-spacing:-1px
}
.m-tips .tips-cnt,.m-tips .tips-icon {
 display:inline-block;
 *display:inline;
 vertical-align:top;
 word-spacing:normal;
 letter-spacing:normal;
 font-size:12px;
 *zoom:1
}
.m-tips .tips-icon {
 margin-right:15px;
 font-size:24px;
 line-height:1
}
.m-tips .tips-cnt {
 padding-top:4px
}
.m-tips .tips-text {
 font-size:14px;
 line-height:24px
}
.m-tips .tips-text a {
 color:#1d94d1
}
.m-tips .tips-text a:hover {
 color:#46acf9
}
.m-tips .tips-icon-large {
 font-size:32px
}
.m-tips .tips-icon-small {
 font-size:16px
}
@media screen and (-webkit-min-device-pixel-ratio:0) {
 .m-tips {
  letter-spacing:-5px
 }
}
.tips-small {
 padding:1px 0
}
.tips-small .tips-icon {
 margin-right:10px
}
.tips-small .tips-cnt {
 padding-top:0
}
.tips-small .tips-text {
 line-height:16px;
 font-size:12px
}
.tips-large .tips-icon {
 margin-right:20px
}
.tips-large .tips-cnt {
 padding-top:20px
}
.tips-large .tips-text {
 font-size:16px;
 line-height:24px
}
.e-tips-large .tips-icon {
 margin-right:10px;
 font-size:32px
}
.e-tips-large .tips-text {
 font-size:20px
}
.e-tips-warning .tips-icon {
 color:#f9a123
}
.tips-wrapper,.tips-wrapper-error {
 padding:8px 15px;
 border-width:1px;
 border-style:solid
}
.tips-wrapper {
 border-color:#dcdbdb;
 background-color:#fff
}
.tips-wrapper-error {
 border-color:#f8dbb1;
 background-color:#fffaf3
}
.m-tips-box {
 position:relative;
 z-index:1;
 zoom:1
}
.m-tips-box .tips-box-icon {
 position:absolute;
 top:0;
 left:0;
 line-height:1
}
.m-tips-box .tips-box-title {
 font-weight:400
}
.e-tips-box-large .tips-box-content {
 padding-left:42px
}
.e-tips-box-large .tips-box-icon {
 font-size:32px
}
.e-tips-box-large .tips-box-title {
 margin-bottom:10px;
 font-size:20px
}
.e-tips-box-large .tips-box-explain {
 font-size:14px
}
.e-tips-box-warning .tips-box-icon {
 color:#f9a123
}
.m-tooltips {
 opacity:0;
 filter:alpha(opacity=0);
 visibility:hidden;
 position:absolute;
 padding:6px 15px;
 font-weight:400;
 font-size:12px;
 line-height:1.5;
 color:#27292a;
 border-width:1px;
 border-style:solid;
 background:#fff;
 border-radius:3px;
 pointer-events:none;
 -webkit-transition:-webkit-transform .2s ease-out .1s,visibility .2s ease-out .1s,opacity .2s ease-out .1s;
 transition:transform .2s ease-out .1s,visibility .2s ease-out .1s,opacity .2s ease-out .1s;
 z-index:50
}
.tooltips-cnt {
 min-height:18px
}
.tooltips-arrows-wrapper {
 position:absolute;
 z-index:1;
 overflow:hidden
}
.tooltips-arrows {
 position:absolute;
 width:12px;
 height:12px;
 text-align:left
}
.tooltips-arrow-bg,.tooltips-arrow-border {
 position:absolute;
 text-align:left;
 font:400 12px/1 SimSun,\5B8B\4F53,'Hiragino Sans GB'
}
.tooltips-arrow-border {
 z-index:0
}
.tooltips-arrow-bg {
 color:#fff;
 z-index:1
}
.tooltips-bottom-arrows .tooltips-arrows-wrapper,.tooltips-top-arrows .tooltips-arrows-wrapper {
 _width:100%;
 height:10px;
 right:-1px;
 left:-1px
}
.tooltips-top-arrows {
 -webkit-transform:translateY(-10px);
 -ms-transform:translateY(-10px);
 transform:translateY(-10px)
}
.tooltips-top-arrows .tooltips-arrows-wrapper {
 top:-10px
}
.tooltips-top-arrows .tooltips-arrows {
 top:7px;
 _top:8px;
 left:50%;
 margin-left:-6px
}
.tooltips-top-arrows .tooltips-arrow-border {
 top:-2px
}
.tooltips-bottom-arrows {
 -webkit-transform:translateY(10px);
 -ms-transform:translateY(10px);
 transform:translateY(10px)
}
.tooltips-bottom-arrows .tooltips-arrows-wrapper {
 bottom:-10px
}
.tooltips-bottom-arrows .tooltips-arrows {
 bottom:6px;
 _bottom:5px;
 left:50%;
 margin-left:-6px
}
.tooltips-bottom-arrows .tooltips-arrow-border {
 bottom:-2px
}
.tooltips-left-arrows .tooltips-arrows-wrapper,.tooltips-right-arrows .tooltips-arrows-wrapper {
 width:10px;
 _height:100%;
 top:0;
 bottom:0
}
.tooltips-right-arrows {
 -webkit-transform:translateX(10px);
 -ms-transform:translateX(10px);
 transform:translateX(10px)
}
.tooltips-right-arrows .tooltips-arrows-wrapper {
 right:-10px
}
.tooltips-right-arrows .tooltips-arrows {
 top:50%;
 right:6px;
 margin-top:-6px
}
.tooltips-right-arrows .tooltips-arrow-border {
 right:-2px
}
.tooltips-left-arrows {
 -webkit-transform:translateX(-10px);
 -ms-transform:translateX(-10px);
 transform:translateX(-10px)
}
.tooltips-left-arrows .tooltips-arrows-wrapper {
 left:-10px
}
.tooltips-left-arrows .tooltips-arrows {
 top:50%;
 left:7px;
 margin-top:-6px
}
.tooltips-left-arrows .tooltips-arrow-border {
 left:-2px
}
.btn-tooltips-close {
 float:right;
 padding:4px 5px;
 width:8px;
 height:8px
}
.btn-tooltips-close .tooltips-close-icon {
 display:inline-block;
 vertical-align:top;
 line-height:9999px;
 overflow:hidden;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-499px -347px;
 width:8px;
 height:8px
}
.btn-tooltips-close:hover .tooltips-close-icon {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-512px -347px;
 width:8px;
 height:8px
}
.tooltips-default {
 border-color:#dcdbdb;
 box-shadow:0 0 3px rgba(0,0,0,.15)
}
.tooltips-default .tooltips-arrow-border {
 color:#dcdbdb
}
.tooltips-default .tooltips-top-arrows .tooltips-arrow-border {
 text-shadow:0 -2px 3px rgba(0,0,0,.08)
}
.tooltips-default .tooltips-right-arrows .tooltips-arrow-border {
 text-shadow:2px 0 3px rgba(0,0,0,.08)
}
.tooltips-default .tooltips-bottom-arrows .tooltips-arrow-border {
 text-shadow:0 2px 3px rgba(0,0,0,.08)
}
.tooltips-default .tooltips-left-arrows .tooltips-arrow-border {
 text-shadow:-2px 0 3px rgba(0,0,0,.08)
}
.tooltips-info {
 border-color:#91daf2;
 background-color:#e7f9ff
}
.tooltips-info .tooltips-arrow-border {
 color:#91daf2
}
.tooltips-info .tooltips-arrow-bg {
 color:#e7f9ff
}
.tooltips-warning {
 border-color:#f8dbb1;
 background-color:#fffaf3
}
.tooltips-warning .tooltips-arrow-border {
 color:#f8dbb1
}
.tooltips-warning .tooltips-arrow-bg {
 color:#fffaf3
}
.tooltips-error {
 border-color:#f8dbb1;
 background-color:#fffaf3
}
.tooltips-error .tooltips-arrow-border {
 color:#f8dbb1
}
.tooltips-error .tooltips-arrow-bg {
 color:#fffaf3
}
.c-tooltips-trigger {
 display:inline-block;
 *display:inline;
 *zoom:1;
 position:relative;
 z-index:1;
 vertical-align:top
}
.c-tooltips-trigger .tooltips-trigger-icon,.c-tooltips-trigger .tooltips-trigger-text {
 vertical-align:top;
 *zoom:1
}
.c-tooltips-trigger .tooltips-trigger-icon {
 cursor:default;
 line-height:1
}
.c-tooltips-trigger .ui-tooltips {
 *zoom:1
}
.is-tooltips-trigger-active {
 z-index:2
}
.tab-trigger {
 cursor:pointer
}
.z-tab-trigger-current {
 cursor:default
}
.tab-bd-cnt {
 display:none
}
.c-input-group {
 position:relative;
 z-index:1;
 *zoom:1
}
.input-group-input {
 *margin-top:-1px;
 width:220px;
 border-top-right-radius:0;
 border-bottom-right-radius:0
}
.input-group-button {
 position:relative;
 left:-1px;
 z-index:2;
 border-top-left-radius:0;
 border-bottom-left-radius:0
}
.c-ads {
 padding:5px 20px;
 border:1px solid #f8dbb1;
 background-color:#fffaf3
}
.ads-text {
 color:#2f2f2f;
 font-size:12px
}
.m-amount {
 position:relative;
 padding:0 23px;
 width:28px;
 height:22px;
 border:1px solid #e3e2e2;
 border-radius:2px
}
.m-amount:hover {
 box-shadow:0 0 3px rgba(0,0,0,.08)
}
.amount-num {
 position:relative;
 padding:3px 0;
 width:28px;
 height:16px;
 overflow:hidden
}
.amount-num input {
 position:absolute;
 top:0;
 left:0;
 z-index:1
}
.amount-num ul {
 position:absolute;
 top:0;
 left:0;
 width:28px;
 z-index:0;
 -webkit-transition:top 150ms;
 transition:top 150ms
}
.amount-num input,.amount-num li {
 width:28px;
 height:22px;
 text-align:center;
 line-height:22px;
 color:#272525;
 background-color:#fff;
 font-family:'Microsoft Yahei';
 border:none
}
.amount-trigger {
 position:absolute;
 top:0;
 width:22px;
 height:22px
}
.amount-trigger .line-horizontal,.amount-trigger .line-verticality {
 position:absolute;
 cursor:pointer;
 font:0/0 arial;
 color:#aaa;
 background-color:#aaa;
 z-index:1
}
.amount-trigger .line-horizontal {
 top:10px;
 left:6px;
 width:8px;
 height:2px;
 border-right:1px solid #bdbcbc;
 border-left:1px solid #bdbcbc
}
.amount-trigger:hover .line-horizontal,.amount-trigger:hover .line-verticality {
 color:#666;
 background-color:#666
}
.amount-trigger:hover .line-horizontal {
 border-right-color:#878787;
 border-left-color:#878787
}
.amount-trigger:hover .line-verticality {
 border-top-color:#878787;
 border-bottom-color:#878787
}
.amount-trigger-minus {
 left:0;
 border-right:1px solid #e3e2e2
}
.amount-trigger-plus {
 right:0;
 border-left:1px solid #e3e2e2
}
.amount-trigger-plus .line-verticality {
 top:6px;
 left:10px;
 width:2px;
 height:8px;
 border-top:1px solid #bdbcbc;
 border-bottom:1px solid #bdbcbc
}
.z-amount-trigger-disabled,.z-amount-trigger-disabled:hover,.z-amount-trigger-disabled:visited {
 cursor:not-allowed
}
.z-amount-trigger-disabled .line-horizontal,.z-amount-trigger-disabled .line-verticality,.z-amount-trigger-disabled:hover .line-horizontal,.z-amount-trigger-disabled:hover .line-verticality,.z-amount-trigger-disabled:visited .line-horizontal,.z-amount-trigger-disabled:visited .line-verticality {
 cursor:default;
 color:#e7e6e6;
 background-color:#e7e6e6
}
.z-amount-trigger-disabled .line-horizontal,.z-amount-trigger-disabled:hover .line-horizontal,.z-amount-trigger-disabled:visited .line-horizontal {
 border-right-color:#ebeaea;
 border-left-color:#ebeaea
}
.z-amount-trigger-disabled .line-verticality,.z-amount-trigger-disabled:hover .line-verticality,.z-amount-trigger-disabled:visited .line-verticality {
 border-top-color:#ebeaea;
 border-bottom-color:#ebeaea
}
.z-amount-trigger-loading .line-horizontal,.z-amount-trigger-loading .line-verticality {
 display:none
}
.z-amount-trigger-loading .amount-trigger-loading {
 display:block;
 width:22px;
 height:22px;
 background:url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-round-small.gif?ca3b3da8) no-repeat center
}
.amount-tooltips {
 top:33px;
 right:-64px;
 width:195px
}
.amount-tooltips .ui-tooltips-content {
 padding:25px 30px 17px
}
.amount-tooltips .confirm-actions {
 margin-top:13px
}
.amount-tooltips .confirm-actions .u-btn {
 padding:0 10px;
 width:40px
}
.amount-tooltips .confirm-actions .btn-secondary {
 margin-right:10px
}
.amount-error-tooltips {
 position:absolute;
 left:50%;
 bottom:30px;
 margin-left:-85px;
 width:170px
}
.amount-error-tooltips .ui-tooltips-content {
 text-align:center
}
.amount-error-tooltips-nostock {
 margin-left:-53px;
 width:106px
}
.z-amount-locked .amount-trigger {
 cursor:not-allowed
}
.z-amount-locked .amount-trigger .line-horizontal,.z-amount-locked .amount-trigger .line-verticality {
 cursor:default;
 color:#e7e6e6;
 background-color:#e7e6e6
}
.z-amount-locked .amount-trigger .line-horizontal {
 border-right-color:#ebeaea;
 border-left-color:#ebeaea
}
.z-amount-locked .amount-trigger .line-verticality {
 border-top-color:#ebeaea;
 border-bottom-color:#ebeaea
}
.m-flow-step {
 width:610px;
 margin:0 auto 35px auto;
 *zoom:1
}
.m-flow-step:after,.m-flow-step:before {
 display:table;
 content:''
}
.m-flow-step:after {
 clear:both
}
.m-flow-step .flow-step {
 width:100px;
 font-size:14px;
 float:left;
 text-align:center;
 color:#acb2b5
}
.m-flow-step .flow-step .flow-step-text {
 height:34px;
 line-height:34px;
 zoom:1
}
.m-flow-step .flow-step .flow-step-pic {
 width:100px;
 height:50px
}
.m-flow-step .flow-step-line {
 width:152px
}
.flow-step-cart-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-262px -292px;
 width:100px;
 height:50px
}
.flow-step-line-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-307px -146px;
 width:152px;
 height:50px
}
.flow-step-checkout-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-472px -292px;
 width:100px;
 height:50px
}
.flow-step-line-unfinished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:0 -292px;
 width:152px;
 height:50px
}
.flow-step-pay-unfinished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-464px -201px;
 width:100px;
 height:50px
}
.z-flow-step-confirm .flow-step-cart-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-367px -292px;
 width:100px;
 height:50px
}
.z-flow-step-confirm .flow-step-line-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-307px -201px;
 width:152px;
 height:50px
}
.z-flow-step-confirm .flow-step-checkout-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:0 -347px;
 width:100px;
 height:50px
}
.z-flow-step-finished .flow-step-cart-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-367px -292px;
 width:100px;
 height:50px
}
.z-flow-step-finished .flow-step-line-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-307px -201px;
 width:152px;
 height:50px
}
.z-flow-step-finished .flow-step-checkout-finished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-105px -347px;
 width:98px;
 height:50px
}
.z-flow-step-finished .flow-step-line-unfinished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-307px -201px;
 width:152px;
 height:50px
}
.z-flow-step-finished .flow-step-pay-unfinished {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-157px -292px;
 width:100px;
 height:50px
}
.z-flow-step-cart .flow-step-cart {
 color:#000;
 cursor:pointer
}
.z-flow-step-cart .flow-step-cart:hover {
 color:#000
}
.z-flow-step-cart .flow-step-confirm {
 color:#acb2b5
}
.z-flow-step-cart .flow-step-submit {
 color:#acb2b5
}
.z-flow-step-confirm .flow-step-cart {
 color:#999;
 cursor:pointer
}
.z-flow-step-confirm .flow-step-cart:hover {
 color:#ccc
}
.z-flow-step-confirm .flow-step-confirm {
 color:#000;
 cursor:pointer
}
.z-flow-step-confirm .flow-step-confirm:hover {
 color:#000
}
.z-flow-step-confirm .flow-step-submit {
 color:#acb2b5
}
.g-hd {
 margin-bottom:25px;
 height:78px;
 border-bottom:2px solid #f3168a;
 background-color:#fff
}
.m-helper {
 margin-top:40px
}
.m-helper .quality-goods {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:0 0;
 width:302px;
 height:141px
}
.m-helper .return-of-goods {
 margin-right:27px;
 margin-left:27px;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-307px 0;
 width:302px;
 height:141px
}
.m-helper .return-freight {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:0 -146px;
 width:302px;
 height:141px
}
.helper-item {
 width:302px;
 height:141px;
 line-height:9999px;
 overflow:hidden
}
.m-helper-small {
 display:inline;
 float:right;
 padding-right:30px;
 *width:415px
}
.helper-small-item {
 display:inline;
 float:left;
 margin-left:26px;
 overflow:hidden
}
.helper-small-item-text {
 display:inline;
 float:left;
 padding:1px 0;
 color:#333;
 white-space:nowrap
}
.helper-small-item .u-icon,.helper-small-item .vipFont {
 display:inline;
 float:left;
 margin-right:12px;
 vertical-align:top
}
.helper-small-item .vipFont {
 font-size:20px;
 line-height:1;
 color:#f66a96
}
.m-inline-block {
 font-size:0;
 *word-spacing:-1px
}
.inline-block-item {
 display:inline-block;
 *display:inline;
 vertical-align:top;
 word-spacing:normal;
 letter-spacing:normal;
 font-size:12px;
 *zoom:1
}
@media screen and (-webkit-min-device-pixel-ratio:0) {
 .m-inline-block {
  letter-spacing:-5px
 }
}
.m-logo {
 float:left;
 padding:16px 0 12px;
 height:50px
}
.m-logo .logo-link {
 display:block;
 line-height:999999px;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-464px -146px;
 width:121px;
 height:50px;
 overflow:hidden
}
.floats-wrapper {
 position:relative;
 margin-right:auto;
 margin-left:auto;
 width:960px;
 height:0
}
.m-floats {
 position:absolute;
 left:50%;
 bottom:0;
 margin-left:500px;
 width:42px;
 z-index:10
}
.float-item {
 display:block;
 width:40px;
 height:40px;
 border:1px solid #d8d8d8;
 background-color:#fff;
 border-radius:3px;
 color:#b5b5b5
}
.float-item .icon-inner {
 display:block
}
.float-item .text-inner {
 display:none;
 padding:6px;
 color:#fff;
 font:12px/14px 'Microsoft Yahei';
 background-color:#878787;
 text-align:center
}
.float-item .vipFont {
 font-size:16px
}
.float-item:hover {
 border-color:#817f7f;
 text-decoration:none
}
.float-item:hover .icon-inner {
 display:none
}
.float-item:hover .text-inner {
 display:block
}
.m-questionnaire {
 margin-bottom:10px
}
.m-questionnaire .icon-inner {
 padding:11px 14px
}
.m-customer-service .icon-inner {
 padding:9px 12px;
 width:16px;
 height:16px
}
.pin-floats {
 position:fixed;
 bottom:120px;
 *bottom:0
}
.m-label {
 *zoom:1
}
.m-label:after,.m-label:before {
 display:table;
 content:''
}
.m-label:after {
 clear:both
}
.m-label .label-text,.m-label .u-label {
 float:left
}
.m-label .u-label {
 margin-right:15px
}
.m-label .label-text {
 color:#666;
 line-height:20px
}
.m-label .discount {
 margin-left:5px;
 color:#333
}
.m-label .discount .sign {
 margin-right:2px;
 margin-left:3px
}
.m-label .highlight {
 color:#f10180
}
.m-label .more {
 margin-left:15px;
 color:#1d94d1;
 zoom:1
}
.m-label .more .u-open-arrow {
 margin-left:3px
}
.m-label .more:hover {
 text-decoration:none
}
.m-loader {
 text-align:center
}
.m-loader .loader-icon,.m-loader .loader-text {
 vertical-align:top
}
.m-loader .loader-icon {
 margin-right:10px
}
.m-loader .loader-text {
 display:inline-block;
 line-height:24px
}
.loader-small .loader-text {
 font-size:14px;
 line-height:16px
}
.loader-large .loader-text {
 font-size:16px;
 line-height:32px
}
.m-product {
 padding-left:90px;
 min-height:97px;
 *height:97px
}
.m-product .product-title {
 margin-bottom:5px;
 max-height:32px;
 _height:32px;
 font-weight:400;
 line-height:16px;
 word-break:break-all;
 word-wrap:break-word;
 overflow:hidden
}
.m-product .product-title a {
 *height:14px;
 color:#333;
 text-decoration:none
}
.m-product .product-title a:hover {
 color:#f10180
}
.m-product .product-pic {
 display:inline;
 float:left;
 margin-left:-90px;
 width:75px;
 height:95px;
 border:1px solid #e0e0e0;
 line-height:14px
}
.m-product .product-pic img {
 display:block;
 overflow:hidden
}
.m-product .product-pic a {
 color:#666
}
.m-product .product-size {
 margin-bottom:5px
}
.m-product .product-price {
 margin-bottom:5px
}
.m-product .product-price .m-price {
 margin-right:10px;
 color:#f10180
}
.m-product .product-price .market-price,.m-product .product-price .market-price .u-price {
 color:#999
}
.product-small {
 padding-left:92px;
 min-height:74px;
 *height:74px
}
.product-small .product-title {
 margin-bottom:5px;
 padding-top:11px
}
.product-small .product-pic {
 width:58px;
 height:74px;
 margin-left:-92px;
 border:none;
 box-shadow:0 1px 2px rgba(0,0,0,.1)
}
.product-mini {
 padding-left:85px;
 min-height:69px;
 *height:69px
}
.product-mini .product-title {
 margin-bottom:5px;
 padding-top:15px
}
.product-mini .product-pic {
 width:54px;
 height:69px;
 border:none;
 box-shadow:0 1px 2px rgba(0,0,0,.1)
}
.m-site-nav {
 float:right;
 padding:10px 5px 20px 0;
 height:18px;
 color:grey
}
.m-site-nav .u-split-line {
 margin:3px 12px
}
.m-site-nav a,.m-site-nav a:visited {
 color:grey;
 text-decoration:none
}
.m-site-nav a:hover {
 color:#333
}
.m-site-nav .member-actions-logout,.m-site-nav .member-actions-logout:visited {
 color:#aaa9a9
}
.m-site-nav .member-actions-logout:hover {
 color:#333
}
.m-site-nav .dropdown-text,.m-site-nav .member-actions,.m-site-nav .online-service,.m-site-nav .tel {
 line-height:18px
}
.m-site-nav .member-actions .welcome-text {
 color:grey
}
.m-site-nav .member-actions .member-actions-link {
 margin-left:15px
}
.m-site-nav .member-actions .member-level {
 display:inline-block;
 margin-left:5px;
 background-image:url(//pay.vipstatic.com/img/share/comm_level.png?be4fa05e);
 background-repeat:no-repeat;
 line-height:9999em;
 overflow:hidden
}
.m-site-nav .member-actions .member-level-1,.m-site-nav .member-actions .member-level-2,.m-site-nav .member-actions .member-level-3,.m-site-nav .member-actions .member-level-4 {
 width:16px;
 height:21px
}
.m-site-nav .member-actions .member-level-1 {
 background-position:-10px 0
}
.m-site-nav .member-actions .member-level-2 {
 background-position:-10px -29px
}
.m-site-nav .member-actions .member-level-3 {
 background-position:-10px -54px
}
.m-site-nav .member-actions .member-level-4 {
 background-position:-10px -79px
}
.m-site-nav .member-actions .member-level-5 {
 width:25px;
 height:17px;
 background-position:-1px -106px
}
.m-site-nav .member-actions .member-level-6 {
 width:24px;
 height:17px;
 background-position:-1px -133px
}
.m-site-nav .icon-member,.m-site-nav .icon-online-service,.m-site-nav .icon-tel,.m-site-nav .if-member,.m-site-nav .if-online-service,.m-site-nav .if-tel {
 margin-right:6px;
 color:#b5b5b5
}
.m-site-nav .if-member {
 vertical-align:top
}
.m-site-nav .icon-tel {
 margin-top:-3px
}
.m-site-nav .if-tel {
 font-size:12px
}
.m-site-nav .online-service a,.m-site-nav .online-service a:visited {
 color:grey
}
.m-site-nav .online-service .icon-online-service {
 margin-top:-4px
}
.m-site-nav .online-service a:hover {
 color:#333
}
.m-site-nav .online-service a:hover .if-online-service {
 color:#565656
}
.m-site-nav .servers-links {
 position:relative;
 width:95px
}
.m-site-nav .servers-links .if-member {
 vertical-align:top
}
.m-servers-dropdown .icon-member {
 margin-top:-2px
}
.device-pc .m-servers-dropdown-hover,.device-pc .m-servers-dropdown:hover,.m-servers-dropdown.z-touch {
 position:absolute;
 top:-9px;
 left:-15px;
 width:120px;
 background-color:#fff;
 z-index:1;
 box-shadow:0 0 3px rgba(0,0,0,.18)
}
.device-pc .m-servers-dropdown-hover .servers-dropdown-hd,.device-pc .m-servers-dropdown:hover .servers-dropdown-hd,.m-servers-dropdown.z-touch .servers-dropdown-hd {
 padding:9px 0 0 15px;
 width:103px;
 border-color:#cbcaca;
 border-bottom:none;
 border-radius:0
}
.device-pc .m-servers-dropdown-hover .servers-dropdown-hd .dropdown-hd-arrow-icon,.device-pc .m-servers-dropdown-hover .servers-dropdown-hd .if-arrow-down,.device-pc .m-servers-dropdown:hover .servers-dropdown-hd .dropdown-hd-arrow-icon,.device-pc .m-servers-dropdown:hover .servers-dropdown-hd .if-arrow-down,.m-servers-dropdown.z-touch .servers-dropdown-hd .dropdown-hd-arrow-icon,.m-servers-dropdown.z-touch .servers-dropdown-hd .if-arrow-down {
 top:15px;
 right:17px;
 _right:18px;
 -webkit-transform:rotate(180deg);
 -ms-transform:rotate(180deg);
 transform:rotate(180deg)
}
.device-pc .m-servers-dropdown-hover .servers-dropdown-hd .if-arrow-down,.device-pc .m-servers-dropdown:hover .servers-dropdown-hd .if-arrow-down,.m-servers-dropdown.z-touch .servers-dropdown-hd .if-arrow-down {
 top:11px
}
.device-pc .m-servers-dropdown-hover .servers-dropdown-hd .servers-dropdown-hd-title,.device-pc .m-servers-dropdown:hover .servers-dropdown-hd .servers-dropdown-hd-title,.m-servers-dropdown.z-touch .servers-dropdown-hd .servers-dropdown-hd-title {
 height:18px;
 color:#333
}
.device-pc .m-servers-dropdown-hover .servers-dropdown-hd .if-member,.device-pc .m-servers-dropdown:hover .servers-dropdown-hd .if-member,.m-servers-dropdown.z-touch .servers-dropdown-hd .if-member {
 color:#565656
}
.device-pc .m-servers-dropdown-hover .servers-dropdown-bd,.device-pc .m-servers-dropdown:hover .servers-dropdown-bd,.m-servers-dropdown.z-touch .servers-dropdown-bd {
 display:block;
 width:70px
}
.servers-dropdown-hd {
 position:relative;
 padding-right:24px;
 height:16px;
 line-height:16px;
 cursor:pointer;
 border:1px solid #fff;
 z-index:1
}
.servers-dropdown-hd-title {
 white-space:nowrap;
 line-height:18px;
 font-size:12px
}
.servers-dropdown-hd .dropdown-hd-arrow-icon,.servers-dropdown-hd .if-arrow-down {
 position:absolute;
 top:6px;
 right:7px;
 z-index:1
}
.servers-dropdown-hd .if-arrow-down {
 top:2px
}
.servers-dropdown-bd {
 display:none;
 padding:8px 36px 0 12px;
 width:118px;
 border:1px solid #cbcaca;
 border-top:none;
 border-radius:0
}
.servers-dropdown-bd li {
 margin-bottom:8px;
 text-align:right
}
.servers-dropdown-bd li a,.servers-dropdown-bd li a:hover,.servers-dropdown-bd li a:visited {
 color:#666
}
.m-shopping-tips {
 height:20px
}
.m-shopping-tips .shopping-tips-text {
 float:left
}
.m-shopping-tips .success-text,.m-shopping-tips .timeout-text {
 display:none
}
.m-shopping-tips .m-tooltips-trigger {
 float:left;
 padding-top:2px;
 width:16px;
 height:16px
}
.m-shopping-tips .m-tooltips-trigger .tooltips-trigger-icon {
 vertical-align:top
}
.m-shopping-tips .m-tooltips {
 width:390px;
 bottom:25px;
 left:-9px
}
.m-shopping-tips .tooltips-arrows {
 left:16px
}
.m-shopping-tips .tooltips-trigger {
 float:left;
 padding-top:2px;
 width:16px;
 height:16px
}
.m-shopping-tips .tooltips-trigger-icon {
 line-height:1
}
.m-shopping-tips .ui-tooltips {
 width:420px;
 bottom:25px;
 left:-42px
}
.m-shopping-tips .ui-tooltips .arrow {
 left:50px
}
.shopping-tips-text {
 margin-right:12px;
 color:#666;
 font:14px/20px 'Microsoft Yahei'
}
.shopping-tips-text .countdown {
 margin-right:3px;
 margin-left:3px;
 color:#f43499
}
.shopping-tips-text .countdown-num {
 font-family:Arial
}
.channel-tips {
 margin-bottom:15px
}
.channel-tips .channel-tips-cnt {
 margin-left:15px;
 padding-left:15px;
 border-left:1px solid #c4c4c4
}
.channel-tips .shopping-tips-text {
 font-size:15px
}
.channel-tips .shopping-tips-text .countdown {
 vertical-align:top
}
.channel-tips .shopping-tips-text .countdown-num {
 font-size:18px
}
.channel-tips .ui-tooltips-arrow {
 width:420px
}
.channel-tips-title {
 font-size:14px;
 line-height:999px;
 overflow:hidden
}
.z-shopping-tips-timeout .countdown-text {
 display:none
}
.z-shopping-tips-timeout .timeout-text {
 display:block
}
.z-shopping-tips-success .countdown-text,.z-shopping-tips-success .m-tooltips-trigger {
 display:none
}
.z-shopping-tips-success .success-text {
 display:block
}
.m-scroll {
 position:relative
}
.m-scroll .scroll-inner {
 position:relative;
 overflow:hidden
}
.m-scroll .scroll-list {
 *zoom:1;
 position:absolute;
 top:0;
 left:0;
 width:99999px;
 z-index:1
}
.m-scroll .scroll-list:after,.m-scroll .scroll-list:before {
 display:table;
 content:''
}
.m-scroll .scroll-list:after {
 clear:both
}
.m-scroll .scroll-list-item {
 display:inline;
 float:left
}
.m-scroll .scroll-trigger {
 position:absolute
}
.m-scroll .scroll-trigger-icon {
 line-height:99999px;
 vertical-align:top;
 overflow:hidden
}
.product-scroll {
 width:878px
}
.product-scroll .scroll-inner {
 height:100px
}
.product-scroll .scroll-list-item {
 width:878px;
 height:100px
}
.product-scroll .scroll-trigger-num {
 position:absolute;
 z-index:1
}
.product-scroll .scroll-trigger-num-current {
 color:#f72f99
}
.product-scroll .btn-secondary {
 vertical-align:top
}
.product-scroll .scroll-trigger {
 top:0;
 padding:40px 3px 39px 4px;
 width:13px;
 height:21px;
 color:#d9d9d9;
 overflow:hidden
}
.product-scroll .scroll-trigger:hover {
 color:#a7a6a6
}
.product-scroll .trigger-icon {
 position:absolute;
 top:40px;
 left:0;
 font-size:20px;
 line-height:1;
 z-index:1
}
.product-scroll .scroll-trigger-icon {
 display:inline-block
}
.product-scroll .scroll-trigger-prev {
 left:-30px;
 width:13px;
 height:21px
}
.product-scroll .scroll-trigger-prev .scroll-trigger-icon {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-334px -347px;
 width:13px;
 height:21px
}
.product-scroll .scroll-trigger-prev:hover .scroll-trigger-icon {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-370px -347px;
 width:13px;
 height:21px
}
.product-scroll .scroll-trigger-next {
 right:-30px
}
.product-scroll .scroll-trigger-next .scroll-trigger-icon {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-388px -347px;
 width:13px;
 height:21px
}
.product-scroll .scroll-trigger-next:hover .scroll-trigger-icon {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/commons/sprites.png?0813e79e);
 background-position:-316px -347px;
 width:13px;
 height:21px
}
.scroll-product-list {
 *zoom:1;
 width:876px
}
.scroll-product-list:after,.scroll-product-list:before {
 display:table;
 content:''
}
.scroll-product-list:after {
 clear:both
}
.scroll-product-list .scroll-inner,.scroll-product-list .scroll-list-item,.scroll-product-list .scroll-product-list-item {
 height:120px
}
.scroll-product-list-item {
 display:inline;
 float:left;
 margin-right:30px;
 width:189px;
 height:120px
}
.scroll-product-list .product-actions {
 position:relative;
 z-index:1;
 _height:22px
}
.scroll-product-list .ui-btn-secondary {
 width:62px
}
.optional-product-scroll .scroll-inner,.optional-product-scroll .scroll-list-item {
 height:164px
}
.optional-product-scroll .scroll-trigger-num {
 top:-54px;
 right:-15px
}
.optional-product-scroll .scroll-trigger {
 top:47px
}
.m-optional-tips {
 margin-bottom:25px;
 height:22px;
 line-height:22px;
 font-size:14px
}
.m-optional-tips .activities,.m-optional-tips .quantity {
 margin-right:3px;
 margin-left:3px;
 color:#f43499
}
.optional-product-list {
 *zoom:1
}
.optional-product-list:after,.optional-product-list:before {
 display:table;
 content:''
}
.optional-product-list:after {
 clear:both
}
.optional-product-list-item {
 display:inline;
 float:left;
 margin-right:15px;
 width:160px;
 height:120px
}
.optional-product-list .m-product {
 padding-left:85px
}
.optional-product-list .product-pic {
 margin-left:-85px
}
.optional-product-list .product-actions {
 height:22px
}
.optional-product-list .product-title {
 margin-bottom:19px;
 _width:72px
}
.optional-product-list .btn-product-select {
 width:38px
}
.optional-product-list .product-selected,.optional-product-list .product-sold-out {
 display:none;
 line-height:22px;
 color:#666
}
.optional-product-list .product-selected {
 overflow:hidden
}
.optional-product-list .product-selected-text {
 color:#f10180
}
.optional-product-list .z-product-sold-out .btn-product-select {
 display:none
}
.optional-product-list .z-product-sold-out .product-sold-out {
 display:block
}
.optional-product-list .z-product-selected .btn-product-select {
 display:none
}
.optional-product-list .z-product-selected .product-selected {
 display:block
}
.removed-product-scroll .scroll-inner,.removed-product-scroll .scroll-list-item,.removed-product-scroll .scroll-product-list-item {
 height:120px
}
.removed-product-scroll .m-product {
 width:99px
}
.removed-product-scroll .product-title {
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden;
 word-break:normal;
 word-wrap:normal;
 _width:96px;
 _height:16px
}
.removed-product-scroll .product-size {
 margin-bottom:12px;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden
}
.removed-product-scroll .ui-btn-secondary {
 white-space:nowrap
}
.removed-product-scroll .cart-max-tooltips,.removed-product-scroll .not-enough-tooltips,.removed-product-scroll .success-tooltips {
 bottom:32px
}
.removed-product-scroll .not-enough-tooltips .ui-tooltips-content,.removed-product-scroll .success-tooltips .ui-tooltips-content {
 white-space:nowrap;
 text-align:center
}
.removed-product-scroll .success-tooltips {
 left:-33px;
 width:130px
}
.removed-product-scroll .not-enough-tooltips {
 left:-22px;
 width:106px
}
.removed-product-scroll .cart-max-tooltips {
 width:170px;
 left:-47px
}
.history-tab-item .scroll-inner,.history-tab-item .scroll-list-item,.history-tab-item .scroll-product-list-item {
 height:120px
}
.recommend-product-scroll .scroll-inner,.recommend-product-scroll .scroll-list-item {
 width:970px;
 height:470px
}
.recommend-product-scroll .trigger-icon {
 position:absolute;
 top:95px;
 font-size:20px;
 line-height:1;
 z-index:1
}
.recommend-product-scroll .scroll-trigger {
 top:50%;
 margin-top:-104px;
 padding:94px 8px 94px 8px;
 width:13px;
 height:21px;
 cursor:pointer;
 color:#fff;
 background-color:rgba(0,0,0,.15);
 _background:#d9d9d9;
 zoom:1;
 z-index:2
}
.recommend-product-scroll .scroll-trigger .scroll-trigger-icon {
 display:inline-block
}
.recommend-product-scroll .scroll-trigger:hover {
 background-color:rgba(0,0,0,.45);
 color:#fff;
 _background:#8c8c8c
}
.recommend-product-scroll .scroll-trigger-prev {
 left:5px;
 border-top-right-radius:3px;
 border-bottom-right-radius:3px
}
.recommend-product-scroll .scroll-trigger-prev .trigger-icon {
 left:5px
}
.recommend-product-scroll .scroll-trigger-next {
 right:5px;
 border-top-left-radius:3px;
 border-bottom-left-radius:3px
}
.recommend-product-scroll .scroll-trigger-next .trigger-icon {
 right:3px
}
.recommend-product-scroll .scroll-trigger-num {
 position:absolute;
 top:-34px;
 right:5px;
 height:24px;
 line-height:24px;
 font-size:16px;
 z-index:1
}
.recommend-product-scroll .scroll-trigger-num-current {
 color:#f72f99
}
.product-tab {
 border:1px solid #d8d8d8
}
.product-tab .tab-hd {
 background-color:#f3f3f3
}
.product-tab .tab-hd .tab-trigger {
 float:left;
 padding:0 28px;
 height:35px;
 line-height:35px;
 font-size:14px
}
.product-tab .tab-hd .z-tab-trigger-current {
 margin-top:-1px;
 font-weight:700;
 border-top:1px solid #f43499;
 background-color:#fff
}
.product-tab .tab-bd {
 padding:28px 40px
}
.product-tab .tab-bd-item-loader {
 margin-right:auto;
 margin-left:auto;
 padding:32px 0 33px;
 width:32px;
 height:32px
}
.optional-product-tab {
 margin-bottom:20px
}
.optional-product-tab .tab-bd {
 padding-bottom:8px
}
.removed-product-tab {
 margin-bottom:20px
}
.removed-product-tab .scroll-trigger-num {
 top:-54px;
 right:-15px
}
.removed-product-tab .tab-bd {
 padding-bottom:8px
}
.m-tooltips-trigger,.tooltips-trigger {
 display:inline-block;
 *display:inline;
 *zoom:1;
 position:relative
}
.m-tooltips-trigger:hover,.tooltips-trigger:hover {
 text-decoration:none
}
.m-tooltips-trigger .tooltips-trigger-icon,.m-tooltips-trigger .tooltips-trigger-text,.tooltips-trigger .tooltips-trigger-icon,.tooltips-trigger .tooltips-trigger-text {
 cursor:help
}
.device-pc .tooltips-trigger-bottom-hover,.device-pc .tooltips-trigger-bottom:hover,.device-pc .tooltips-trigger-left-hover,.device-pc .tooltips-trigger-left:hover,.device-pc .tooltips-trigger-right-hover,.device-pc .tooltips-trigger-right:hover,.device-pc .tooltips-trigger-top-hover,.device-pc .tooltips-trigger-top:hover,.tooltips-trigger-bottom.z-touch,.tooltips-trigger-left.z-touch,.tooltips-trigger-right.z-touch,.tooltips-trigger-top.z-touch {
 z-index:50
}
.device-pc .tooltips-trigger-bottom-hover .m-tooltips,.device-pc .tooltips-trigger-bottom:hover .m-tooltips,.device-pc .tooltips-trigger-left-hover .m-tooltips,.device-pc .tooltips-trigger-left:hover .m-tooltips,.device-pc .tooltips-trigger-right-hover .m-tooltips,.device-pc .tooltips-trigger-right:hover .m-tooltips,.device-pc .tooltips-trigger-top-hover .m-tooltips,.device-pc .tooltips-trigger-top:hover .m-tooltips,.tooltips-trigger-bottom.z-touch .m-tooltips,.tooltips-trigger-left.z-touch .m-tooltips,.tooltips-trigger-right.z-touch .m-tooltips,.tooltips-trigger-top.z-touch .m-tooltips {
 opacity:1;
 filter:alpha(opacity=100);
 visibility:visible;
 pointer-events:auto;
 z-index:51
}
.device-pc .tooltips-trigger-bottom-hover .m-tooltips,.device-pc .tooltips-trigger-bottom:hover .m-tooltips,.device-pc .tooltips-trigger-top-hover .m-tooltips,.device-pc .tooltips-trigger-top:hover .m-tooltips,.tooltips-trigger-bottom.z-touch .m-tooltips,.tooltips-trigger-top.z-touch .m-tooltips {
 -webkit-transform:translateY(0);
 -ms-transform:translateY(0);
 transform:translateY(0)
}
.device-pc .tooltips-trigger-left-hover .m-tooltips,.device-pc .tooltips-trigger-left:hover .m-tooltips,.device-pc .tooltips-trigger-right-hover .m-tooltips,.device-pc .tooltips-trigger-right:hover .m-tooltips,.tooltips-trigger-left.z-touch .m-tooltips,.tooltips-trigger-right.z-touch .m-tooltips {
 -webkit-transform:translateX(0);
 -ms-transform:translateX(0);
 transform:translateX(0)
}
.u-arrow {
 width:0;
 height:0;
 border-style:solid
}
.arrow-top {
 border-width:0 3px 5.2px 3px;
 border-color:transparent transparent #ccc transparent;
 line-height:0;
 _border-color:#000 #000 #ccc #000;
 _filter:progid:DXImageTransform.Microsoft.Chroma(color="#000000")
}
.timeout-modal .tips-cnt,.timeout-modal .tips-icon {
 vertical-align:middle
}
.timeout-modal .tips-cnt {
 width:292px
}
.timeout-modal .m-tips {
 margin:0 auto 25px
}
.timeout-modal .modal-actions {
 text-align:center
}
.switch-location-modal .m-tips {
 margin-bottom:25px
}
.switch-location-modal .tips-cnt {
 padding-top:0;
 width:292px
}
.switch-location-modal .modal-actions {
 margin-top:50px
}
.switch-location-modal .modal-actions .u-open-arrow {
 margin-left:5px
}
.switch-location-modal .u-open-arrow {
 margin-left:5px
}
.order-adjust-modal {
 width:600px;
 min-height:318px
}
.order-adjust-modal .modal-inner {
 padding-right:70px;
 padding-left:70px
}
.order-adjust-modal .timeout-actions {
 text-align:left;
 overflow:hidden
}
.order-adjust-modal .timeout-actions .ui-btn-primary {
 float:right
}
.order-adjust-modal .timeout-actions .action-tips {
 color:#666;
 line-height:30px
}
.order-adjust-modal .delivery-actions {
 position:relative;
 z-index:1
}
.order-adjust-modal .delivery-actions .ui-tooltips-warnning {
 left:108px;
 bottom:39px
}
.order-adjust-modal .delivery-actions .ui-tooltips-warnning a {
 margin-right:3px;
 margin-left:3px
}
.order-adjust-modal .z-delivery-actions-error-tooltips .tooltips-error {
 opacity:1;
 filter:alpha(opacity=100);
 visibility:visible;
 pointer-events:auto;
 z-index:51;
 -webkit-transform:translateY(0);
 -ms-transform:translateY(0);
 transform:translateY(0)
}
.m-order-adjust {
 margin-bottom:14px;
 max-height:365px;
 _height:365px;
 overflow-y:auto
}
.order-adjust-table {
 width:100%
}
.order-adjust-table th {
 height:36px;
 color:#333;
 font-size:14px;
 border-top:1px solid #d9d8d8;
 border-bottom:1px solid #d9d8d8
}
.order-adjust-table td {
 padding-top:15px;
 padding-bottom:15px;
 background:url(//pay.vipstatic.com/img/cart/te/4/cart/line-gray.png?65a044b2) repeat-x bottom left
}
.order-adjust-table .price-item,.order-adjust-table .quantity-item {
 text-align:center
}
.order-adjust-table .product-item {
 padding-left:3px;
 padding-right:30px
}
.order-adjust-table .price-item {
 padding-right:10px;
 padding-left:10px;
 width:70px
}
.order-adjust-table .price-item .m-price {
 color:#333;
 font-size:14px
}
.order-adjust-table .price-item .u-yen {
 font-size:12px
}
.order-adjust-table .quantity-item {
 width:74px
}
.order-adjust-table .adjust-amount,.order-adjust-table .after-adjust {
 display:block
}
.order-adjust-table .after-adjust {
 color:#50a406
}
.order-adjust-table .after-adjust .quantity {
 margin-right:3px;
 margin-left:3px
}
.order-adjust-table .not-delivery,.order-adjust-table .z-sold-out {
 color:#ed1616
}
.message-modal {
 text-align:center
}
.message-modal .message-tips {
 margin-bottom:20px
}
.message-modal .message-tips .tips-text {
 font-size:16px
}
.message-modal .message-text {
 font-size:14px
}
.m-common-error-tips {
 margin-bottom:20px;
 padding:25px 0;
 text-align:center
}
.m-common-error-tips .m-tips {
 margin-bottom:10px
}
.m-common-error-tips .tips-cnt {
 margin-bottom:10px
}
.m-common-error-tips .tips-text {
 font-size:18px
}
.m-common-error-tips .common-error-actions .btn-primary {
 margin:0 10px
}
.m-recommend {
 margin:45px -5px 55px;
 width:970px
}
.recommend-hd {
 margin-bottom:5px;
 padding:0 5px
}
.recommend-hd-title {
 color:#666;
 font-size:16px
}
.recommend-product-list {
 *zoom:1;
 padding:5px;
 width:987px
}
.recommend-product-list:after,.recommend-product-list:before {
 display:table;
 content:''
}
.recommend-product-list:after {
 clear:both
}
.recommend-product-list-item {
 display:inline;
 float:left;
 margin-right:27px;
 margin-bottom:27px;
 width:300px;
 height:214px;
 border:1px solid #e6e6e6;
 box-shadow:0 0 5px rgba(0,0,0,.2)
}
.recommend-product-list-item:hover {
 border-color:#b3b3b3;
 box-shadow:0 0 5px rgba(0,0,0,.4)
}
.recommend-product-list-item a {
 cursor:pointer;
 display:block
}
.recommend-product {
 position:relative;
 width:300px;
 height:214px;
 z-index:1
}
.recommend-product-pic {
 width:300px;
 height:174px
}
.recommend-product-discount {
 position:absolute;
 right:0;
 bottom:0;
 height:40px;
 padding:0 15px 0 20px;
 color:#666;
 background-color:#fff
}
.recommend-product-discount .salebg2 {
 color:#f10180;
 font-size:22px;
 font-family:Arial
}
.recommend-product-title {
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden;
 padding:0 120px 0 15px;
 width:165px;
 height:40px;
 color:#333;
 font-size:14px;
 font-weight:400;
 line-height:40px;
 overflow:hidden
}
.m-ad {
 padding:5px 20px;
 color:#2f2f2f;
 font-size:12px;
 border:1px solid #f8dbb1;
 background-color:#fffaf3
}
.page-top-ad {
 margin-bottom:20px
}
.ui-dialog {
 position:relative
}
.ui-btn-loading-before {
 cursor:pointer
}
.ui-btn-disable .ui-btn-loading-before {
 cursor:not-allowed
}
    /**
 * VipShopPayFE Team
 * @version 2017-6-14 11:55:25
 */
.icon-rhombus-orange {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-776px -364px;
 width:11px;
 height:11px
}
.icon-corner-tick-small,.payment-method-corner {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-767px -292px;
 width:22px;
 height:22px
}
.icon-password {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-641px -431px;
 width:16px;
 height:19px
}
.icon-view-order {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-513px -162px;
 width:17px;
 height:22px
}
.common-error-box-actions .view-order-link:hover .u-icon,.icon-view-order-hover {
 background-position:-513px -189px
}
.icon-go-home {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-590px -431px;
 width:21px;
 height:21px
}
.common-error-box-actions .go-home-link:hover .u-icon,.icon-go-home-hover {
 background-position:-767px -319px
}
.icon-qa-q {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-714px -407px;
 width:16px;
 height:16px
}
.icon-qa-a {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-735px -407px;
 width:16px;
 height:16px
}
.icon-quick-pay {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-666px -347px;
 width:105px;
 height:30px
}
.icon-shopping-bag {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-662px -431px;
 width:14px;
 height:19px
}
.icon-tape {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-272px -361px;
 width:51px;
 height:56px
}
.icon-product-scroll-trigger-left {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -153px;
 width:8px;
 height:14px
}
.icon-product-scroll-trigger-right {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -172px;
 width:8px;
 height:14px
}
.icon-wechat-payment {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-272px -315px;
 width:161px;
 height:41px
}
.icon-qr-scan {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-328px -361px;
 width:49px;
 height:49px
}
.icon-plus {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-776px -347px;
 width:12px;
 height:12px
}
.icon-arrow-bottom-black,.payment-method-more-link .icon-arrow-bottom {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -242px;
 width:10px;
 height:6px
}
.icon-arrow-bottom-blue,.payment-method-more-link:hover .icon-arrow-bottom {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -231px;
 width:10px;
 height:6px
}
.icon-arrow-left-blue {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -214px;
 width:8px;
 height:12px
}
.is-page-lefeng .m-logo .logo-link {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-666px -292px;
 width:96px;
 height:50px
}
.is-page-lefeng .g-ft,.is-page-lefeng .m-helper-small,.is-page-lefeng .m-site-nav,.is-page-lefeng .wechat-notice {
 display:none
}
.payment-ad {
 margin-bottom:10px
}
.payment-ad-band-warning {
 background-color:#feedd5;
 border:1px solid #fe8a01
}
.m-orders-status {
 margin-top:30px;
 margin-bottom:15px;
 padding:18px 24px 16px;
 border:1px solid #b7d7bd;
 background-color:#f4fbf5
}
.m-orders-status .m-tips {
 margin-bottom:5px
}
.m-orders-status .tips-cnt {
 color:#333
}
.m-orders-status .tips-text {
 font-size:20px
}
.m-orders-status .orders-status-desc {
 margin-bottom:5px;
 padding-left:47px;
 font-size:14px
}
.m-orders-status .orders-status-desc .u-highlight {
 margin-right:5px;
 margin-left:5px
}
.m-orders-status .orders-detail {
 padding-left:47px;
 color:#666
}
.m-orders-status .orders-num {
 padding-top:4px;
 line-height:18px
}
.m-orders-status .orders-dropdown {
 display:inline-block;
 *display:inline;
 position:relative;
 *zoom:1
}
.m-orders-status .orders-dropdown-hd {
 border:1px solid #f4fbf5
}
.m-orders-status .orders-dropdown-hd .dropdown-hd-arrow-icon {
 top:10px
}
.m-orders-status .orders-dropdown-hd-inner {
 padding:0 20px 0 10px;
 width:30px;
 height:24px;
 line-height:24px;
 background-color:#f4fbf5
}
.m-orders-status .orders-dropdown-bd {
 display:none;
 position:absolute;
 top:25px;
 right:0;
 padding:10px;
 background-color:#fff;
 z-index:1
}
.m-orders-status .orders-dropdown-bd li {
 padding:2px 0;
 line-height:18px
}
.device-pc .m-orders-status .orders-dropdown-hover,.device-pc .m-orders-status .orders-dropdown:hover,.m-orders-status .orders-dropdown.z-touch {
 position:relative;
 margin-right:-1px;
 z-index:11
}
.device-pc .m-orders-status .orders-dropdown-hover .orders-dropdown-hd,.device-pc .m-orders-status .orders-dropdown:hover .orders-dropdown-hd,.m-orders-status .orders-dropdown.z-touch .orders-dropdown-hd {
 position:relative;
 border-color:#cbcaca;
 border-bottom:none;
 z-index:2
}
.device-pc .m-orders-status .orders-dropdown-hover .orders-dropdown-hd .dropdown-hd-arrow-icon,.device-pc .m-orders-status .orders-dropdown:hover .orders-dropdown-hd .dropdown-hd-arrow-icon,.m-orders-status .orders-dropdown.z-touch .orders-dropdown-hd .dropdown-hd-arrow-icon {
 top:9px
}
.device-pc .m-orders-status .orders-dropdown-hover .orders-dropdown-hd-inner,.device-pc .m-orders-status .orders-dropdown:hover .orders-dropdown-hd-inner,.m-orders-status .orders-dropdown.z-touch .orders-dropdown-hd-inner {
 padding-right:21px;
 background-color:#fff;
 border-bottom:1px solid #fff
}
.device-pc .m-orders-status .orders-dropdown-hover .orders-dropdown-bd,.device-pc .m-orders-status .orders-dropdown:hover .orders-dropdown-bd,.m-orders-status .orders-dropdown.z-touch .orders-dropdown-bd {
 display:block;
 border:1px solid #cbcaca
}
.m-orders-status .u-split-line {
 margin:7px 15px 0;
 background-color:#666
}
.m-orders-status .be-paid {
 padding-top:1px;
 line-height:22px
}
.m-orders-status .be-paid .u-price {
 color:#e53b9a;
 font-size:14px;
 font-weight:700
}
.order-status-tips .if-sigh,.order-status-tips .if-success {
 line-height:1;
 margin-right:20px
}
.readd-orders-status {
 padding-top:20px;
 padding-bottom:20px
}
.z-orders-status-error {
 border-color:#fcd6a0;
 background-color:#fef8f0
}
.z-orders-status-error .orders-dropdown-hd {
 border-color:#fef8f0
}
.z-orders-status-error .orders-dropdown-hd-inner {
 background-color:#fef8f0
}
.m-quick-pay-order-status {
 margin-bottom:10px;
 padding-top:5px;
 padding-left:120px;
 zoom:1
}
.m-quick-pay-order-status .icon-quick-pay {
 float:left;
 margin-top:4px;
 margin-left:-120px
}
.m-quick-pay-order-status .u-highlight {
 margin-right:2px;
 margin-left:2px;
 font-size:14px;
 color:#f10180
}
.m-quick-pay-order-status .u-price {
 font-size:14px;
 color:#f10180
}
.m-quick-pay-order-status .order-num,.m-quick-pay-order-status .u-split-line {
 margin-right:15px
}
.m-quick-pay-order-status .order-num {
 *vertical-align:baseline
}
.m-quick-pay-order-status .u-split-line {
 margin-top:5px;
 background-color:#666
}
.quick-pay-order-status-tips {
 margin-bottom:5px;
 font-size:16px;
 line-height:1
}
.quick-pay-order-status-info {
 color:#666;
 line-height:22px
}
.quick-pay-order-status-info .order-num-dropdown .if-arrow-bottom {
 vertical-align:top
}
.order-num-dropdown {
 position:relative
}
.order-num-dropdown-hd {
 border-left:1px solid #fff
}
.order-num-dropdown-hd .dropdown-hd-arrow-icon {
 top:8px
}
.order-num-dropdown-hd-inner {
 padding-right:5px;
 background-color:#fff
}
.order-num-dropdown-bd {
 display:none;
 position:absolute;
 top:22px;
 right:0;
 padding:10px;
 background-color:#fff;
 z-index:1
}
.order-num-dropdown-bd li {
 padding:2px 0;
 line-height:18px
}
.device-pc .order-num-dropdown-hover,.device-pc .order-num-dropdown:hover,.order-num-dropdown.z-touch {
 position:relative;
 margin:-2px -1px 0 -10px;
 z-index:11
}
.device-pc .order-num-dropdown-hover .order-num-dropdown-hd,.device-pc .order-num-dropdown:hover .order-num-dropdown-hd,.order-num-dropdown.z-touch .order-num-dropdown-hd {
 position:relative;
 border:1px solid #cbcaca;
 border-bottom:none;
 z-index:2
}
.device-pc .order-num-dropdown-hover .order-num-dropdown-hd-inner,.device-pc .order-num-dropdown:hover .order-num-dropdown-hd-inner,.order-num-dropdown.z-touch .order-num-dropdown-hd-inner {
 padding:3px 5px 0 10px;
 line-height:18px;
 border-bottom:1px solid #fff
}
.device-pc .order-num-dropdown-hover .order-num-dropdown-bd,.device-pc .order-num-dropdown:hover .order-num-dropdown-bd,.order-num-dropdown.z-touch .order-num-dropdown-bd {
 *right:-1px;
 display:block;
 border:1px solid #cbcaca
}
.m-box {
 padding:15px 36px 20px;
 border:1px solid #dddcdc
}
.m-payment-box {
 padding:15px 36px 20px;
 border:1px solid #dddcdc;
 border-top:2px solid #e3007f;
 background-color:#fff
}
.m-payment-box .payment-box-ad {
 margin-bottom:40px
}
.e-quick-pay-box {
 border-top:1px solid #dddcdc
}
.payment-box-loading {
 display:none;
 position:absolute;
 top:0;
 left:0;
 width:100%;
 height:100%;
 _width:960px;
 _height:290px;
 background:url(//pay.vipstatic.com/img/cart/te/4/commons/bg-white-80-opacity.png);
 background:rgba(255,255,255,.8);
 _background:#fff;
 z-index:5
}
.payment-box-loading .m-loader {
 padding-top:170px;
 text-align:center
}
.z-need-other-payment .m-payment-method-box {
 display:block
}
.z-need-other-payment .m-payment-vip .payment-method-toggle,.z-need-other-payment .z-other-payment-not-selected .m-payment-method-chosen,.z-need-other-payment .z-other-payment-not-selected .payment-method-tab-toggle,.z-need-other-payment .z-other-payment-selected .m-other-payment-price {
 display:none
}
.z-need-other-payment .m-payment-vip {
 margin-bottom:0
}
.z-payment-box-loading {
 position:relative;
 z-index:1;
 zoom:1
}
.z-payment-box-loading .payment-box-loading {
 display:block
}
.m-orders-actions {
 margin-top:20px;
 padding-right:15px;
 padding-left:15px;
 font-size:14px
}
.m-orders-actions a {
 margin-right:10px;
 margin-left:10px
}
.m-payment-vip {
 position:relative;
 margin-top:1px;
 margin-bottom:45px;
 z-index:1;
 zoom:1
}
.m-payment-vip .payment-method-toggle {
 bottom:-28px;
 z-index:3
}
.payment-vip-item {
 position:relative;
 margin-top:-1px
}
.device-pc .payment-vip-item-hover,.device-pc .payment-vip-item:hover {
 cursor:pointer
}
.device-pc .payment-vip-item-hover .payment-vip-item-inner,.device-pc .payment-vip-item:hover .payment-vip-item-inner {
 background-color:#fefbfc
}
.payment-vip-item-inner {
 padding:29px 20px;
 height:22px;
 border-top:1px solid #dfdfdf;
 border-bottom:1px solid #dfdfdf;
 background-color:#fff;
 *zoom:1
}
.payment-vip-item-inner:after,.payment-vip-item-inner:before {
 display:table;
 content:''
}
.payment-vip-item-inner:after {
 clear:both
}
.payment-vip-item-inner .coin-tooltips,.payment-vip-item-inner .m-checkbox,.payment-vip-item-inner .payment-vip-item-tips {
 float:left
}
.payment-vip-item-inner .payment-vip-most-available {
 display:none
}
.payment-vip-item-inner .m-checkbox .coin-num-wrapper {
 display:none;
 vertical-align:top
}
.payment-vip-item-inner .m-checkbox .coin-num {
 margin-right:15px;
 margin-left:15px;
 color:#f10180;
 font-size:16px;
 font-weight:700
}
.payment-vip-item-inner .u-checkbox {
 padding:3px 0 2px
}
.payment-vip-item-inner .checkbox-text {
 font-size:14px;
 line-height:22px
}
.payment-vip-item-inner .payment-price {
 display:none;
 float:right;
 color:#333;
 font-size:16px;
 line-height:22px
}
.payment-vip-item-inner .payment-price .m-price {
 color:#f10180;
 vertical-align:middle
}
.payment-vip-item-inner .payment-price .u-yen {
 font-size:16px
}
.payment-vip-item-inner .payment-price .u-price {
 font-size:22px
}
.payment-vip-item-tips {
 margin-right:5px;
 padding-left:15px;
 color:#999;
 line-height:22px
}
.payment-vip-item-tips .coin-num {
 margin-right:2px;
 margin-left:2px;
 color:#666
}
.coin-tooltips {
 bottom:25px;
 left:-9px;
 white-space:nowrap
}
.coin-tooltips .tooltips-arrows {
 left:16px
}
.payment-vip-coin-item .payment-vip-item-inner {
 border-top-color:#fff
}
.payment-vip-coin-item .tooltips-trigger-bottom {
 padding-top:1px
}
.z-payment-vip-item-disabled .payment-vip-item-inner {
 cursor:not-allowed;
 border-color:#cecece
}
.device-pc .z-payment-vip-item-disabled-hover .payment-vip-item-inner,.device-pc .z-payment-vip-item-disabled:hover .payment-vip-item-inner {
 border-color:#cecece;
 background-color:#fff
}
.z-payment-vip-item-disabled .z-checkbox-disabled .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-690px -407px;
 width:19px;
 height:16px
}
.z-payment-vip-item-disabled .checkbox-text,.z-payment-vip-item-disabled .simulate {
 cursor:not-allowed
}
.z-payment-vip-item-checked {
 z-index:2
}
.z-payment-vip-item-checked .payment-vip-item-inner {
 background-color:#fefbfc;
 border-color:#fbd3e7
}
.z-payment-vip-item-checked .m-checkbox .coin-num-wrapper,.z-payment-vip-item-checked .payment-vip-most-available {
 display:inline
}
.z-payment-vip-item-checked .payment-price {
 display:block
}
.device-pc .z-payment-vip-item-checked-hover .payment-vip-item-inner,.device-pc .z-payment-vip-item-checked:hover .payment-vip-item-inner {
 border-color:#fbd3e7
}
.z-payment-vip-item-checked .z-checkbox-disabled .simulate {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-666px -407px;
 width:19px;
 height:16px
}
.m-payment-vip-password {
 margin-bottom:35px
}
.payment-vip-password-inner {
 padding:18px 10px;
 border:1px solid #cecece;
 border-top:2px solid #ffdc71
}
.payment-vip-password-inner .form-item {
 *zoom:1
}
.payment-vip-password-inner .form-item:after,.payment-vip-password-inner .form-item:before {
 display:table;
 content:''
}
.payment-vip-password-inner .form-item:after {
 clear:both
}
.payment-vip-password-inner .form-control,.payment-vip-password-inner .u-form-label {
 float:left
}
.payment-vip-password-inner .u-form-label {
 margin-right:10px;
 margin-bottom:0;
 font-size:14px;
 line-height:32px
}
.payment-vip-password-inner .u-form-label .icon-password {
 margin-right:18px
}
.payment-vip-password-inner .form-control {
 margin-right:15px
}
.payment-vip-password-inner .u-ipt {
 width:203px
}
.payment-vip-password-inner .tooltips-error {
 bottom:38px;
 left:0
}
.payment-vip-password-inner .tooltips-error .tooltips-arrows {
 left:23px
}
.device-pc .payment-vip-password-inner .tooltips-error {
 -webkit-transform:translateY(0);
 transform:translateY(0)
}
.payment-vip-password-inner .forgot-password-link {
 line-height:32px
}
.m-payment-method-box {
 display:none;
 position:relative;
 z-index:2
}
.payment-method-box-loading {
 display:none;
 position:absolute;
 top:100px;
 left:338px;
 padding:20px 0;
 width:210px;
 height:32px;
 text-align:center;
 color:#fff;
 font-size:14px;
 line-height:32px;
 z-index:50;
 background-color:rgba(0,0,0,.6);
 -ms-filter:progid: DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
 filter:progid: DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)
}
.payment-method-box-loading .icon-loading-black-large {
 margin-right:10px
}
.z-payment-method-box-expanded .payment-method-toggle {
 background-color:#fff
}
.z-payment-method-box-expanded .payment-method-toggle .payment-method-switch-expanded {
 display:none
}
.z-payment-method-box-expanded .payment-method-toggle .payment-method-switch-collapse {
 display:block
}
.z-payment-method-box-expanded .payment-method-chosen-toggle {
 display:none
}
.z-payment-method-box-expanded .m-payment-method-chosen {
 border-bottom-style:dashed;
 border-color:#e5e5e5;
 background-color:#fff
}
.z-payment-method-box-expanded .m-payment-method-recommend {
 display:none
}
.z-payment-method-box-loading .payment-method-box-loading {
 display:block
}
.m-payment-method-chosen {
 position:relative;
 margin-top:-1px;
 margin-bottom:45px;
 padding-top:35px;
 padding-bottom:20px;
 border-top:1px solid #fbd3e7;
 border-bottom:1px solid #fbd3e7;
 background-color:#fefbfc;
 z-index:1;
 *zoom:1
}
.m-payment-method-chosen:after,.m-payment-method-chosen:before {
 display:table;
 content:''
}
.m-payment-method-chosen:after {
 clear:both
}
.payment-method-chosen-cnt,.payment-method-chosen-radio {
 float:left
}
.payment-method-chosen-radio {
 margin-right:25px;
 padding:10px 0 10px 20px;
 height:21px;
 color:#000;
 font-size:14px;
 line-height:21px;
 font-weight:400
}
.payment-method-chosen-radio .u-radio {
 padding:3px 0 2px
}
.payment-method-chosen-cnt {
 position:relative;
 width:765px;
 z-index:1;
 *zoom:1
}
.payment-method-chosen-cnt:after,.payment-method-chosen-cnt:before {
 display:table;
 content:''
}
.payment-method-chosen-cnt:after {
 clear:both
}
.payment-method-chosen-cnt .payment-method,.payment-method-chosen-cnt .payment-method-info,.payment-method-chosen-cnt .payment-method-toggle {
 float:left
}
.payment-method-chosen-cnt .payment-method {
 margin-right:25px
}
.payment-method-chosen-cnt .payment-method-info {
 display:none;
 position:relative;
 margin-right:25px;
 padding:8px 15px;
 height:22px;
 line-height:22px;
 color:#333;
 box-shadow:0 0 3px rgba(0,0,0,.15);
 border-radius:3px;
 white-space:nowrap;
 border:1px solid #dbdada;
 background-color:#fff;
 z-index:1
}
.payment-method-chosen-cnt .payment-method-info .arrows {
 position:absolute;
 top:15px;
 left:-8px;
 width:8px;
 height:8px;
 z-index:1;
 overflow:hidden
}
.payment-method-chosen-cnt .payment-method-info .arrow-bg,.payment-method-chosen-cnt .payment-method-info .arrow-border {
 position:absolute;
 width:0;
 height:0;
 border-width:4px;
 border-style:dashed solid dashed dashed;
 overflow:hidden;
 z-index:1
}
.payment-method-chosen-cnt .payment-method-info .arrow-bg {
 right:1px;
 border-color:transparent #dbdada transparent transparent
}
.payment-method-chosen-cnt .payment-method-info .arrow-border {
 right:0;
 border-color:transparent #fff transparent transparent
}
.payment-method-chosen-cnt .payment-method-info .action-link {
 margin-left:10px
}
.payment-method-chosen-info {
 position:absolute;
 top:0;
 right:0;
 padding-top:21px;
 text-align:right;
 vertical-align:top;
 word-spacing:normal;
 letter-spacing:normal;
 white-space:nowrap;
 z-index:1
}
.payment-method-chosen-info .discount-item {
 position:absolute;
 top:0;
 right:0;
 color:#333;
 z-index:1
}
.payment-method-chosen-info .price-item {
 font-size:16px
}
.payment-method-chosen-info .price-item .m-price {
 color:#e3007f
}
.payment-method-chosen-info .price-item .u-price {
 font-size:22px;
 line-height:1
}
.payment-method-toggle {
 position:absolute;
 bottom:-29px;
 left:20px;
 width:112px;
 height:28px;
 line-height:28px;
 font-size:14px;
 border:1px solid #d7d5d6;
 border-top:none;
 text-align:center;
 border-bottom-right-radius:3px;
 border-bottom-left-radius:3px;
 background-color:#fefbfc;
 z-index:1
}
.payment-method-toggle .u-icon {
 margin-left:5px
}
.payment-method-toggle .payment-method-switch-collapse {
 display:none
}
.payment-method-chosen-toggle {
 border-color:#fbd3e7
}
.payment-method-chosen-toggle .payment-method-switch-expanded {
 display:block
}
.z-payment-method-chosen-has-cod .payment-method-cod-info,.z-payment-method-chosen-has-installment .payment-method-installment-info {
 display:inline-block;
 *display:inline;
 zoom:1
}
.z-payment-method-chosen-is-vipcredit .payment-method-tips {
 display:block
}
.payment-method-tips {
 display:none;
 padding:10px 0 10px 0;
 line-height:21px;
 color:#999;
 float:left
}
.payment-method-tips .u-price {
 color:#f10180;
 padding-right:4px
}
.m-other-payment-price {
 margin-bottom:45px;
 padding:30px 20px;
 border-bottom:1px dashed #e5e5e5;
 color:#333;
 font-size:14px
}
.m-other-payment-price .u-highlight {
 margin:0 5px
}
.payment-method-tab {
 display:none;
 margin-top:30px;
 margin-bottom:65px
}
.payment-method-tab .tab-trigger-wrapper {
 padding:0 6px;
 letter-spacing:-.31em;
 *letter-spacing:normal;
 word-spacing:-.43em
}
.payment-method-tab .tab-trigger {
 display:inline-block;
 *display:inline;
 position:relative;
 zoom:1;
 vertical-align:top;
 word-spacing:normal;
 letter-spacing:normal;
 margin-right:12px;
 text-align:center;
 border:1px solid #dddada;
 border-bottom:none;
 border-top-left-radius:2px;
 border-top-right-radius:2px
}
.payment-method-tab .tab-trigger-text {
 display:block;
 *display:inline-block;
 padding:0 35px;
 height:45px;
 line-height:45px;
 color:#666;
 font-size:16px;
 background-color:#f4f4f4
}
.payment-method-tab .tab-trigger-text:hover {
 background-color:#e5e5e5
}
.payment-method-tab .z-tab-trigger-current {
 position:relative;
 margin-bottom:-1px;
 border-bottom:1px solid #fff;
 z-index:2
}
.payment-method-tab .z-tab-trigger-current .tab-trigger-text,.payment-method-tab .z-tab-trigger-current:active .tab-trigger-text,.payment-method-tab .z-tab-trigger-current:hover .tab-trigger-text,.payment-method-tab .z-tab-trigger-current:visited .tab-trigger-text {
 cursor:default;
 color:#333;
 font-size:18px;
 font-weight:700;
 background-color:#fff
}
.payment-method-tab .icon-star-corner {
 position:absolute;
 top:-1px;
 left:7px
}
.payment-method-tab .tab-bd {
 position:relative;
 border:1px solid #cecece;
 z-index:1
}
.payment-method-tab .tab-bd-item {
 padding:19px 29px 8px
}
.payment-method-tab .tab-bd-loader {
 padding:50px 0;
 text-align:center
}
.payment-method-tab-trigger-ad {
 position:absolute;
 padding:0 10px;
 top:-28px;
 left:-7px;
 height:20px;
 cursor:default;
 color:#333;
 border:1px solid #f8dbb1;
 background-color:#fffaf3;
 line-height:20px;
 border-radius:3px;
 white-space:nowrap;
 z-index:1
}
.payment-method-tab-trigger-ad .arrows {
 position:absolute;
 bottom:-8px;
 left:15px;
 width:8px;
 height:8px;
 text-align:left;
 overflow:hidden;
 z-index:1
}
.payment-method-tab-trigger-ad .arrow-bg,.payment-method-tab-trigger-ad .arrow-border {
 position:absolute;
 width:0;
 height:0;
 border-style:solid dashed dashed dashed;
 border-width:4px;
 overflow:hidden;
 z-index:1
}
.payment-method-tab-trigger-ad .arrow-bg {
 bottom:1px;
 border-color:#fffaf3 transparent transparent transparent;
 z-index:2
}
.payment-method-tab-trigger-ad .arrow-border {
 border-color:#f8dbb1 transparent transparent transparent
}
.payment-method-tab-trigger-ad .ad-text {
 min-width:50px;
 text-align:center
}
.payment-tab-bd-ad {
 margin-bottom:20px
}
.payment-method-group {
 padding-bottom:12px
}
.payment-method-group-hd {
 margin-bottom:30px
}
.payment-method-group-title {
 margin-bottom:15px;
 color:#333;
 font-size:14px;
 font-weight:400
}
.payment-method-group-title .icon-rhombus-orange {
 margin-right:8px
}
.payment-method-group-title .title-remark,.payment-method-group-title .title-text {
 vertical-align:middle
}
.payment-method-group-title .title-remark {
 color:grey
}
.payment-method-group-title .title-text-quickpay {
 display:inline-block;
 margin-right:9px;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-666px -382px;
 width:71px;
 height:20px;
 line-height:999px;
 overflow:hidden
}
.payment-method-group-bd .payment-method-list {
 margin-right:-19px;
 margin-left:-19px;
 width:860px
}
.payment-method-group-bd-notice {
 display:none;
 margin-bottom:20px
}
.payment-method-group-hd-desc .text {
 margin-right:5px
}
.payment-method-guide {
 display:inline-block;
 position:relative;
 padding:0 5px;
 height:22px;
 color:#f53097;
 border:1px solid #f53097;
 border-radius:2px;
 z-index:2
}
.payment-method-guide-text {
 cursor:pointer;
 white-space:nowrap;
 line-height:22px
}
.payment-method-guide-panel {
 position:absolute;
 top:28px;
 left:0;
 border:1px solid #dbdada;
 opacity:0;
 background:#fefdfe url(//pay.vipstatic.com/img/cart/te/4/commons/icon-loading-pink-large.gif) center center;
 visibility:hidden;
 pointer-events:none;
 box-shadow:0 0 3px rgba(0,0,0,.15);
 -webkit-transition:visibility .2s ease-out .1s,opacity .2s ease-out .1s,-webkit-transform .2s ease-out .1s;
 transition:visibility .2s ease-out .1s,opacity .2s ease-out .1s,-webkit-transform .2s ease-out .1s;
 transition:transform .2s ease-out .1s,visibility .2s ease-out .1s,opacity .2s ease-out .1s;
 transition:transform .2s ease-out .1s,visibility .2s ease-out .1s,opacity .2s ease-out .1s,-webkit-transform .2s ease-out .1s;
 -webkit-transform:translateY(10px);
 transform:translateY(10px);
 z-index:1
}
.payment-method-guide .arrows-wrapper {
 display:block;
 position:absolute;
 top:-6px;
 left:0;
 width:100%;
 height:6px;
 overflow:hidden
}
.payment-method-guide .arrows {
 position:absolute;
 top:0;
 left:58px;
 width:12px;
 height:12px;
 overflow:hidden;
 text-align:left;
 z-index:1
}
.payment-method-guide .arrow-bg,.payment-method-guide .arrow-border {
 position:absolute;
 font:400 12px/12px \5B8B\4F53,'Hiragino Sans GB';
 z-index:1
}
.payment-method-guide .arrow-bg {
 top:2px;
 color:#ededed;
 z-index:2
}
.payment-method-guide .arrow-border {
 color:#dbdada;
 text-shadow:0 -2px 3px rgba(0,0,0,.08)
}
.device-pc .payment-method-guide-hover,.device-pc .payment-method-guide:hover,.payment-method-guide.z-touch {
 z-index:5
}
.device-pc .payment-method-guide-hover .payment-method-guide-panel,.device-pc .payment-method-guide:hover .payment-method-guide-panel,.payment-method-guide.z-touch .payment-method-guide-panel {
 opacity:1;
 visibility:visible;
 pointer-events:auto;
 -webkit-transform:translateY(0);
 transform:translateY(0)
}
.z-payment-method-group-notice .payment-method-group-bd-notice {
 display:block
}
.m-payment-method-recommend {
 margin-top:30px;
 margin-bottom:14px;
 border:1px solid #cecece
}
.payment-method-recommend-title {
 margin-bottom:10px;
 padding-top:13px;
 padding-left:25px;
 color:#000;
 font-weight:400
}
.payment-method-recommend-bd {
 padding:4px 12px 20px;
 height:41px
}
.payment-method-recommend-bd .payment-method-list-item {
 margin-bottom:0
}
.m-payment-method-actions {
 position:relative;
 margin-top:30px;
 *zoom:1;
 z-index:1
}
.m-payment-method-actions:after,.m-payment-method-actions:before {
 display:table;
 content:''
}
.m-payment-method-actions:after {
 clear:both
}
.m-payment-method-actions .btn-primary {
 width:176px;
 font-weight:700
}
.m-payment-method-actions .payment-method-actions-tips {
 display:inline-block;
 *display:inline;
 margin-left:30px;
 font-size:14px;
 line-height:44px;
 zoom:1
}
.m-payment-method-actions .order-guide-tooltips {
 bottom:34px;
 left:15px;
 width:188px;
 height:16px;
 line-height:1;
 color:#333;
 white-space:nowrap
}
.m-payment-method-actions .order-guide-tooltips .tooltips-arrows-wrapper {
 display:none
}
.m-payment-method-actions .order-guide-tooltips .icon-error-small {
 margin-right:10px
}
.m-payment-method-actions .order-guide-tooltips a,.m-payment-method-actions .order-guide-tooltips span {
 vertical-align:middle
}
.m-payment-method-actions .order-guide-tooltips a {
 margin-left:5px
}
.z-payment-method-actions-show-tips .order-guide-tooltips {
 opacity:1;
 visibility:visible;
 pointer-events:auto;
 -webkit-transform:translateY(0);
 transform:translateY(0)
}
.m-payment-method-switch {
 margin-top:20px
}
.payment-method-switch-inner {
 padding:26px 15px 0 55px;
 font-size:14px;
 border-top:1px solid #e4e5e6
}
.payment-method-switch-inner .u-open-arrow {
 margin-left:5px
}
.payment-method-list {
 letter-spacing:-.31em;
 *letter-spacing:normal;
 word-spacing:-.43em
}
.payment-method-list-item {
 display:inline-block;
 *display:inline;
 zoom:1;
 margin:0 19px 28px;
 width:177px;
 height:41px;
 vertical-align:top;
 word-spacing:normal;
 letter-spacing:normal
}
.payment-method-list-item-more a {
 display:block;
 padding:10px;
 height:21px;
 line-height:21px;
 font-size:14px
}
.payment-method-list-item-more .icon-arrow-blue {
 margin-left:5px
}
.payment-method {
 position:relative;
 width:177px;
 height:41px;
 z-index:1
}
.device-pc .payment-method-hover,.device-pc .payment-method:hover {
 z-index:2
}
.device-pc .payment-method-hover .payment-method-inner,.device-pc .payment-method:hover .payment-method-inner {
 border-color:#919090
}
.z-payment-method-current .payment-method-inner {
 border-color:#919090
}
.z-payment-method-current .payment-method-corner {
 display:block
}
.z-payment-method-current .payment-method-card-num {
 right:22px
}
.z-payment-method-disabled {
 cursor:not-allowed
}
.z-payment-method-disabled .payment-method-mask,.z-payment-method-disabled .payment-method-tag-mask {
 display:block
}
.device-pc .z-payment-method-disabled-hover,.device-pc .z-payment-method-disabled:hover,.z-payment-method-disabled.z-touch {
 z-index:2
}
.device-pc .z-payment-method-disabled-hover .payment-method-inner,.device-pc .z-payment-method-disabled:hover .payment-method-inner,.z-payment-method-disabled.z-touch .payment-method-inner {
 border-color:#cbcbcb
}
.device-pc .z-payment-method-disabled-hover .payment-method-disabled-tooltips,.device-pc .z-payment-method-disabled:hover .payment-method-disabled-tooltips,.z-payment-method-disabled.z-touch .payment-method-disabled-tooltips {
 opacity:1;
 visibility:visible;
 pointer-events:auto;
 -webkit-transform:translateY(0);
 transform:translateY(0);
 z-index:6
}
.payment-method-inner {
 border:1px solid #cbcbcb;
 width:175px;
 height:39px
}
.payment-method-logo {
 cursor:pointer;
 width:175px;
 height:39px;
 overflow:hidden;
 zoom:1
}
.payment-method-logo img {
 display:block
}
.payment-method-tag {
 position:absolute;
 top:3px;
 right:-4px;
 cursor:pointer;
 z-index:1
}
.payment-method-tag-text {
 position:relative;
 display:block;
 width:68px;
 height:14px;
 text-align:center;
 color:#656565;
 font-family:arial;
 line-height:14px;
 text-shadow:1px 0 0 #fff;
 background-color:#f3f1f4;
 border:1px solid #cbcbcb;
 z-index:2;
 zoom:1
}
.payment-method-tag-shadow {
 position:absolute;
 right:0;
 bottom:-2px;
 width:0;
 height:0;
 border-color:#000;
 border-color:rgba(255,255,255,0);
 border-color:transparent\9;
 border-width:4px 0 3px 4px;
 border-left-color:#666;
 border-style:solid;
 overflow:hidden;
 z-index:1
}
.payment-method-tag-mask {
 display:none;
 position:absolute;
 top:0;
 right:0;
 bottom:-2px;
 width:4px;
 cursor:not-allowed;
 background-color:rgba(255,255,255,.5);
 -ms-filter:progid: DXImageTransform.Microsoft.gradient(startColorstr=#B2FFFFFF, endColorstr=#B2FFFFFF);
 filter:progid: DXImageTransform.Microsoft.gradient(startColorstr=#B2FFFFFF, endColorstr=#B2FFFFFF);
 *zoom:1;
 z-index:3
}
.payment-method-corner {
 display:none;
 position:absolute;
 right:0;
 bottom:0;
 cursor:pointer
}
.payment-method-card-num {
 position:absolute;
 right:6px;
 bottom:3px;
 line-height:1;
 font-family:arial;
 font-weight:700;
 z-index:1
}
.payment-method-card-num .hidden-num {
 font-size:12px;
 font-family:\5B8B\4F53,'Hiragino Sans GB'
}
.payment-method-card-num .last-num {
 font-size:14px
}
.payment-method-ad {
 position:absolute;
 top:-17px;
 left:0;
 padding:0 10px;
 height:16px;
 color:#ff8145;
 background-color:#fff;
 border:1px solid #ff8145;
 border-bottom:none;
 z-index:5
}
.payment-method-ad-text {
 height:16px;
 line-height:16px;
 overflow:hidden
}
.device-pc .payment-method-ad-hover .payment-method-ad-tooltips,.device-pc .payment-method-ad:hover .payment-method-ad-tooltips,.payment-method-ad.z-touch .payment-method-ad-tooltips {
 opacity:1;
 visibility:visible;
 pointer-events:auto;
 -webkit-transform:translateX(0);
 transform:translateX(0)
}
.payment-method-ad-tooltips,.payment-method-disabled-tooltips {
 position:absolute;
 opacity:0;
 visibility:hidden;
 padding:5px 10px;
 white-space:nowrap;
 color:#333;
 border:1px solid #f8dbb1;
 background-color:#fffaf3;
 border-radius:3px;
 pointer-events:none;
 -webkit-transition:visibility .2s ease-out .1s,opacity .2s ease-out .1s,-webkit-transform .2s ease-out .1s;
 transition:visibility .2s ease-out .1s,opacity .2s ease-out .1s,-webkit-transform .2s ease-out .1s;
 transition:transform .2s ease-out .1s,visibility .2s ease-out .1s,opacity .2s ease-out .1s;
 transition:transform .2s ease-out .1s,visibility .2s ease-out .1s,opacity .2s ease-out .1s,-webkit-transform .2s ease-out .1s;
 z-index:1
}
.payment-method-ad-tooltips .arrows,.payment-method-disabled-tooltips .arrows {
 position:absolute;
 width:10px;
 height:10px;
 z-index:1
}
.payment-method-ad-tooltips .arrow-bg,.payment-method-ad-tooltips .arrow-border,.payment-method-disabled-tooltips .arrow-bg,.payment-method-disabled-tooltips .arrow-border {
 display:inline-block;
 position:absolute;
 width:0;
 height:0;
 border-width:5px;
 overflow:hidden;
 z-index:1
}
.payment-method-ad-tooltips .arrow-bg,.payment-method-disabled-tooltips .arrow-bg {
 z-index:2
}
.payment-method-ad-tooltips {
 top:-10px;
 right:-142px;
 width:110px;
 -webkit-transform:translateX(10px);
 transform:translateX(10px)
}
.payment-method-ad-tooltips .arrows {
 top:10px;
 left:-10px
}
.payment-method-ad-tooltips .arrow-bg,.payment-method-ad-tooltips .arrow-border {
 border-style:solid solid solid dashed
}
.payment-method-ad-tooltips .arrow-border {
 border-color:transparent #f8dbb1 transparent transparent
}
.payment-method-ad-tooltips .arrow-bg {
 left:1px;
 border-color:transparent #fffaf3 transparent transparent
}
.payment-method-ad-tooltips .tooltips-cnt {
 word-break:break-all;
 word-wrap:break-word;
 white-space:normal
}
.payment-method-disabled-tooltips {
 top:-40px;
 left:0;
 height:20px;
 line-height:20px;
 -webkit-transform:translateY(10px);
 transform:translateY(10px)
}
.payment-method-disabled-tooltips .arrows-wrapper {
 position:absolute;
 right:0;
 bottom:-10px;
 left:0;
 height:10px;
 z-index:1;
 overflow:hidden
}
.payment-method-disabled-tooltips .arrows {
 top:0;
 left:10px
}
.payment-method-disabled-tooltips .arrow-bg,.payment-method-disabled-tooltips .arrow-border {
 border-style:solid dashed dashed
}
.payment-method-disabled-tooltips .arrow-border {
 border-color:#f8dbb1 transparent transparent
}
.payment-method-disabled-tooltips .arrow-bg {
 bottom:1px;
 border-color:#fffaf3 transparent transparent
}
.payment-method-mask {
 display:none;
 position:absolute;
 top:0;
 right:0;
 width:177px;
 height:41px;
 background-color:rgba(255,255,255,.5);
 -ms-filter:progid: DXImageTransform.Microsoft.gradient(startColorstr=#B2FFFFFF, endColorstr=#B2FFFFFF);
 filter:progid: DXImageTransform.Microsoft.gradient(startColorstr=#B2FFFFFF, endColorstr=#B2FFFFFF);
 *zoom:1;
 z-index:3
}
.m-quick-pay {
 padding:25px 0 15px;
 position:relative
}
.vip-quick-pay {
 *zoom:1
}
.pic-vip-quickpay-not-bound-security {
 position:absolute;
 top:26px;
 right:0;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:0 -162px;
 width:267px;
 height:292px
}
.pic-vip-quickpay-not-bound-security strong {
 font-size:14px;
 color:#747474;
 line-height:16px;
 display:block;
 width:205px;
 padding-bottom:15px;
 padding-left:47px;
 font-weight:400;
 position:relative;
 text-align:left
}
.pic-vip-quickpay-not-bound-security .J-security-first {
 margin-top:145px
}
.pic-vip-quickpay-not-bound-security strong b {
 height:0;
 display:inline-block;
 position:absolute;
 left:28px;
 top:0;
 font-weight:400
}
.c-payment-notice {
 padding:6px 15px;
 height:18px;
 border:1px solid #f8dbb1;
 background-color:#fffaf3;
 overflow:hidden
}
.payment-notice-icon {
 *display:inline;
 float:left;
 margin-top:1px;
 margin-right:10px
}
.payment-notice-explain {
 color:#333;
 font-size:12px;
 line-height:18px;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden
}
.quick-pay-bank {
 margin-bottom:20px;
 *zoom:1
}
.quick-pay-bank:after,.quick-pay-bank:before {
 display:table;
 content:''
}
.quick-pay-bank:after {
 clear:both
}
.discount-price,.quick-pay-bank-current,.quick-pay-bank-title,.quick-pay-price {
 float:left
}
.discount-price,.quick-pay-bank-title,.quick-pay-price {
 line-height:41px
}
.discount-price .u-price,.discount-price .u-yen,.quick-pay-bank-title .u-price,.quick-pay-bank-title .u-yen,.quick-pay-price .u-price,.quick-pay-price .u-yen {
 color:#f10180
}
.quick-pay-bank-title {
 margin-right:10px;
 width:125px;
 font-size:14px;
 line-height:41px;
 text-align:right
}
.quick-pay-bank-current {
 margin-right:30px
}
.quick-pay-price .u-price {
 color:#f10180;
 font-size:14px
}
.quick-pay-cart-number {
 line-height:32px
}
.quick-pay-cart-number .hidden-number {
 font-family:\5B8B\4F53
}
.quick-pay-form {
 position:relative;
 z-index:1
}
.quick-pay-form .quick-pay-loading-tips {
 display:none;
 margin-top:10px;
 color:#333
}
.cart-num-float,.quick-pay-form .cart-num-float {
 display:none;
 position:absolute;
 bottom:32px;
 left:0;
 padding:0 10px;
 min-width:245px;
 _width:250px;
 height:36px;
 border:1px solid #f8dbb1;
 border-bottom:0;
 white-space:nowrap;
 line-height:36px;
 font-weight:700;
 background-color:#fffaf3;
 color:#f35609;
 font-size:18px;
 font-family:arial;
 z-index:1
}
.quick-pay-form .simulate-ipt {
 padding:6px 10px;
 width:238px;
 height:18px;
 line-height:18px;
 cursor:text;
 border:1px solid #a5a5a5;
 border-radius:2px;
 background-color:#fff;
 display:inline-block;
 *zoom:1;
 *display:inline
}
.quick-pay-form .z-ui-form-item-warning .simulate-ipt {
 border-color:#fca1a5;
 background-color:#ffe6e7
}
.quick-pay-form .form-item {
 margin-bottom:20px;
 padding-left:135px
}
.quick-pay-form .form-item .tooltips-common-error-tips {
 white-space:nowrap
}
.quick-pay-form .card-user-name {
 padding-left:41px
}
.quick-pay-form .card-user-name .card-user-name-tooltips .ui-tooltips-arrow {
 width:296px
}
.quick-pay-form .credit-card-number {
 padding-left:41px
}
.quick-pay-form .credit-card-number .credit-card-number-tooltips .ui-tooltips-arrow {
 width:320px
}
.quick-pay-form .bank-card-number {
 padding-left:55px
}
.quick-pay-form .bank-card-number .bank-card-number-tooltips .ui-tooltips-arrow {
 width:116px
}
.quick-pay-form .card-number-test {
 padding-left:55px
}
.quick-pay-form .bank-obligate-phone {
 padding-left:13px
}
.quick-pay-form .bank-obligate-phone .bank-obligate-phone-tooltips .ui-tooltips-arrow {
 width:128px
}
.quick-pay-form .message-test-number {
 padding-left:41px;
 *zoom:1
}
.quick-pay-form .message-test-number:after,.quick-pay-form .message-test-number:before {
 display:table;
 content:''
}
.quick-pay-form .message-test-number:after {
 clear:both
}
.quick-pay-form .message-test-number .ui-form-item-group,.quick-pay-form .message-test-number .ui-label {
 float:left
}
.quick-pay-form .message-test-number .message-test-number-tooltips .ui-tooltips-arrow {
 width:152px
}
.quick-pay-form .dropdown-error-tooltips .ui-tooltips-arrow {
 width:188px
}
.quick-pay-form .form-item-actions {
 margin-top:-5px
}
.quick-pay-form .ui-form-item-group {
 *z-index:1
}
.quick-pay-form .form-item-dropdown .ui-form-item-group {
 *z-index:2
}
.quick-pay-form .u-form-label {
 margin-left:-135px;
 width:125px;
 font-size:14px
}
.quick-pay-form .dropdown-desc {
 display:inline-block;
 line-height:32px;
 font-size:14px
}
.quick-pay-form .ui-input {
 width:238px;
 *margin-top:-1px;
 *margin-bottom:-1px
}
.quick-pay-form .cvv-ipt {
 width:98px
}
.quick-pay-form .form-control-result-text {
 font-size:14px;
 line-height:32px
}
.quick-pay-form .service-agreement {
 margin-top:10px
}
.quick-pay-form .service-agreement a {
 margin-left:-3px;
 font-size:14px
}
.quick-pay-form .sms-guide-tips {
 margin-top:10px
}
.quick-pay-form .form-item-actions .ui-btn-primary {
 width:210px
}
.quick-pay-form .form-item-actions .ui-btn-primary .ii-loading-gray-32x32 {
 margin-top:7px
}
.quick-pay-form .form-item-actions .tooltips-error {
 top:-39px;
 bottom:auto
}
.quick-pay-form .form-item-actions-tips {
 display:none;
 margin-top:10px;
 color:#999
}
.quick-pay-form .z-form-item-actions-loading-tips .form-item-actions-tips {
 display:block
}
.quick-pay-form .form-item-dropdown {
 padding-left:69px
}
.quick-pay-month-dropdown,.quick-pay-year-dropdown {
 display:inline-block;
 *display:inline;
 margin-right:5px;
 width:96px;
 vertical-align:top;
 zoom:1
}
.quick-pay-month-dropdown .ui-dropdown-bd,.quick-pay-year-dropdown .ui-dropdown-bd {
 width:94px
}
.quick-pay-year-dropdown {
 margin-left:10px
}
.quick-pay-year-dropdown .ui-dropdown-bd {
 max-height:347px;
 overflow-y:auto
}
.quick-pay-sms-group {
 *padding-top:1px
}
.quick-pay-sms-group .ui-input {
 width:117px;
 float:left;
 border-top-right-radius:0;
 border-bottom-right-radius:0;
 float:left;
 border-top-right-radius:0;
 border-bottom-right-radius:0
}
.quick-pay-sms-group .ui-btn-secondary {
 width:120px;
 float:left;
 margin-left:-1px;
 border-top-left-radius:0;
 border-bottom-left-radius:0;
 *margin-top:-1px
}
.quick-pay-sms-group .sms-error-tips,.quick-pay-sms-group .sms-success-tips {
 display:none;
 float:left;
 width:170px;
 padding-left:10px
}
.quick-pay-sms-group .sms-error-tips .tips-text,.quick-pay-sms-group .sms-success-tips .tips-text {
 width:144px;
 color:#666;
 word-break:break-all;
 word-wrap:break-word
}
.quick-pay-sms-group .btn-countdown-loading-text {
 display:none
}
.quick-pay-sms-group .z-btn-countdown-loading,.quick-pay-sms-group .z-btn-countdown-loading:active,.quick-pay-sms-group .z-btn-countdown-loading:hover {
 cursor:not-allowed;
 color:#9b9b9b;
 -webkit-transition:none;
 transition:none;
 background-color:#d0d0d0;
 border-color:#d0d0d0
}
.quick-pay-sms-group .z-btn-countdown-loading {
 position:relative;
 vertical-align:top;
 overflow:hidden;
 *overflow:visible;
 -webkit-transition:none;
 transition:none
}
.quick-pay-sms-group .z-btn-countdown-loading .btn-loading-text,.quick-pay-sms-group .z-btn-countdown-loading .btn-text {
 -webkit-animation:hideText .6s;
 animation:hideText .6s
}
.quick-pay-sms-group .z-btn-countdown-loading .btn-countdown-loading-text {
 display:block;
 position:absolute;
 top:0;
 left:0;
 width:100%;
 height:100%;
 background-color:#d0d0d0;
 -webkit-animation:showLoadingText .5s;
 animation:showLoadingText .5s;
 cursor:not-allowed
}
.quickpay-binding-guide-tooltips {
 top:-104px;
 left:259px
}
.quickpay-binding-guide-tooltips .tooltips-arrows {
 margin-top:25px
}
.quickpay-binding-guide-tooltips .ui-tooltips-content {
 padding:5px
}
.quickpay-binding-guide-tooltips .ui-tooltips-arrow {
 height:158px
}
.ui-form-item-group .cvv-guide-tooltips {
 top:-103px;
 left:133px
}
.ui-form-item-group .cvv-guide-tooltips .ui-tooltips-arrow {
 height:158px
}
.ui-form-item-group .cardnum-test-tooltips .ui-tooltips-arrow {
 width:140px
}
.pic-binding-guide-expiration-date {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-272px -162px;
 width:236px;
 height:148px
}
.pic-binding-guide-card-verification-code {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-553px 0;
 width:236px;
 height:148px
}
.z-cart-num-typing .cart-num-float,.z-quick-pay-form-loading .quick-pay-loading-tips {
 display:block
}
.z-form-item-guide-tooltips .ui-form-item-group {
 z-index:2
}
.z-form-item-error-tooltips {
 *z-index:2
}
.z-form-item-error-tooltips .tooltips-error {
 -webkit-transform:translateY(0);
 transform:translateY(0)
}
.z-quick-pay-sms-group-error-tips .sms-error-tips,.z-quick-pay-sms-group-success-tips .sms-success-tips {
 display:inline
}
.agreement-popwin-txt {
 font-size:14px
}
.agreement-popwin-btn {
 color:#666;
 font-size:12px
}
.agreement-popwin-btn:hover {
 color:#666;
 text-decoration:underline
}
.service-agreement-modal .ui-dialog-content {
 height:426px;
 overflow-y:auto
}
.service-agreement-modal .ui-dialog-inner {
 max-height:500px
}
.service-agreement-modal p {
 margin-bottom:10px
}
.service-agreement-modal .u-text-bold {
 font-weight:700
}
.service-agreement-modal .u-text-underline {
 text-decoration:underline
}
.service-agreement-modal .u-text-center {
 text-align:center
}
.z-pay-for-another .payment-method-tab .tab-bd {
 border-left:none;
 border-right:none
}
.z-pay-for-another .m-payment-method-box {
 display:block
}
.payment-detail-box {
 margin-bottom:25px;
 padding:30px 56px;
 *zoom:1
}
.payment-detail-box:after,.payment-detail-box:before {
 display:table;
 content:''
}
.payment-detail-box:after {
 clear:both
}
.payment-detail-box .column {
 float:left
}
.payment-detail-box .column-hd {
 margin-bottom:2px;
 padding-bottom:10px;
 font-size:16px;
 overflow:hidden;
 border-bottom:1px dashed #d7d7d7
}
.payment-detail-box .column-hd strong {
 display:inline-block;
 margin-right:10px;
 color:#f10180;
 font-size:24px;
 line-height:1
}
.payment-detail-box .comment-column {
 padding-right:67px;
 width:480px;
 border-right:1px solid #d7d7d7
}
.payment-detail-box .address-info,.payment-detail-box .order-number-info,.payment-detail-box .product-list-info {
 margin-bottom:3px;
 color:#666;
 line-height:26px;
 *zoom:1
}
.payment-detail-box .address-info:after,.payment-detail-box .address-info:before,.payment-detail-box .order-number-info:after,.payment-detail-box .order-number-info:before,.payment-detail-box .product-list-info:after,.payment-detail-box .product-list-info:before {
 display:table;
 content:''
}
.payment-detail-box .address-info:after,.payment-detail-box .order-number-info:after,.payment-detail-box .product-list-info:after {
 clear:both
}
.payment-detail-box .address-info .info-title,.payment-detail-box .order-number-info .info-title,.payment-detail-box .product-list-info .info-title {
 display:inline;
 float:left;
 width:62px;
 text-align:right
}
.payment-detail-box .address-info .info-content,.payment-detail-box .order-number-info .info-content,.payment-detail-box .product-list-info .info-content {
 vertical-align:top;
 overflow:hidden;
 zoom:1
}
.payment-detail-box .product-list-info .product-name {
 display:inline-block;
 margin-right:5px
}
.payment-detail-box .m-payment-message {
 margin-top:40px
}
.payment-detail-box .countdown-column {
 padding-top:59px;
 padding-left:56px;
 width:242px
}
.payment-detail-box .countdown-column .column-title {
 margin-bottom:40px;
 font-size:14px;
 font-weight:400;
 text-align:center
}
.payment-detail-box .countdown-text {
 margin-bottom:40px;
 font-size:16px;
 text-align:center;
 color:#f43499;
 font-weight:700;
 line-height:1.1
}
.payment-detail-box .countdown-minute,.payment-detail-box .countdown-second {
 font-size:40px;
 font-weight:400
}
.payment-detail-box .countdown-minute {
 margin-right:3px
}
.payment-detail-box .countdown-second {
 margin-right:3px;
 margin-left:3px
}
.payment-detail-box .ad-countdown {
 width:242px;
 overflow:hidden
}
.payment-product-scroll {
 padding:0 10px;
 width:365px;
 height:80px
}
.payment-product-scroll .scroll-inner {
 width:365px;
 height:80px
}
.payment-product-scroll .scroll-thumbnail {
 border:1px solid #e1e1e1
}
.payment-product-scroll .scroll-trigger {
 display:none;
 top:0;
 padding-top:32px;
 padding-bottom:32px;
 width:8px;
 height:14px;
 color:#999
}
.payment-product-scroll .scroll-trigger-prev {
 left:-3px;
 padding-right:7px
}
.payment-product-scroll .scroll-trigger-next {
 right:3px;
 padding-left:7px
}
.payment-product-scroll .scroll-trigger-icon {
 display:inline-block;
 cursor:pointer
}
.payment-product-scroll .product-list-item {
 float:left;
 padding:0 5px
}
.payment-product-scroll .m-loader {
 margin-right:auto;
 margin-left:auto;
 padding-top:24px;
 padding-bottom:24px
}
.m-payment-message {
 position:relative;
 padding:15px;
 width:450px;
 height:80px;
 background-color:#fffef8;
 border-width:1px;
 border-style:solid;
 border-color:#f1f1f1 #ececec #e6e6e6;
 box-shadow:1px 2px 5px rgba(0,0,0,.06);
 z-index:1
}
.m-payment-message .payment-message-title {
 _position:relative;
 _z-index:2;
 margin-bottom:14px;
 font-size:16px;
 line-height:1
}
.m-payment-message .form-item {
 padding-left:45px;
 border-bottom:1px solid #faf1e4
}
.m-payment-message .form-text-item {
 margin-bottom:10px
}
.m-payment-message .u-form-label {
 display:inline;
 float:left;
 margin-left:-45px;
 color:#f23373;
 line-height:16px
}
.m-payment-message .u-ipt {
 padding:0;
 height:16px;
 line-height:16px;
 font-size:12px;
 color:#333;
 border:0;
 background-color:#fffef8
}
.m-payment-message .text-ipt {
 width:379px
}
.m-payment-message .sign-ipt {
 width:195px
}
.m-payment-message .icon-success-small {
 display:none;
 vertical-align:top
}
.m-payment-message .z-form-item-success .icon-success-small {
 display:inline-block
}
.m-payment-message .icon-tape {
 position:absolute;
 top:-20px;
 left:-15px;
 z-index:1
}
.payment-timeout-box {
 margin-bottom:50px;
 padding:25px 80px
}
.payment-timeout-box .timeout-tips-box {
 margin-bottom:27px;
 margin-left:-42px
}
.payment-timeout-box .order-info {
 padding-top:26px;
 border-top:1px solid #d7d7d7
}
.payment-timeout-box .product-info-title {
 margin-bottom:18px;
 color:#333;
 font-weight:400
}
.payment-timeout-box .payment-product-scroll,.payment-timeout-box .scroll-inner {
 width:511px
}
.payment-timeout-box .payment-product-scroll {
 margin-bottom:18px;
 margin-left:-15px
}
.payment-timeout-box .address-info,.payment-timeout-box .order-number-info {
 color:#666
}
.payment-timeout-box .address-info .info-title,.payment-timeout-box .order-number-info .info-title {
 display:inline;
 float:left;
 width:62px;
 color:#333;
 text-align:right
}
.payment-timeout-box .address-info .info-content,.payment-timeout-box .order-number-info .info-content {
 vertical-align:top;
 overflow:hidden;
 zoom:1
}
.payment-error-box {
 padding:88px 313px 80px;
 width:330px
}
.payment-error-tips {
 margin-bottom:53px
}
.payment-error-actions {
 text-align:center
}
.payment-success-box {
 margin-bottom:50px;
 padding:52px 81px
}
.success-gift-banner {
 position:relative;
 margin-right:auto;
 margin-left:auto;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:0 0;
 width:548px;
 height:157px;
 z-index:1
}
.success-gift-banner-text,.success-gift-banner-title {
 position:absolute;
 left:245px;
 z-index:1
}
.success-gift-banner-title {
 top:40px;
 color:#f23373;
 font-size:20px;
 font-weight:400
}
.success-gift-banner-text {
 top:74px;
 width:260px;
 height:42px;
 font-size:14px;
 overflow:hidden
}
.success-comment-info {
 margin:0 auto 10px;
 padding-top:18px;
 width:508px;
 height:auto
}
.success-comment-info .payment-message-content {
 position:relative;
 padding:0 30px 1px 20px;
 overflow:hidden;
 z-index:1
}
.success-comment-info .payment-message-title {
 margin-bottom:3px;
 font-size:12px;
 font-weight:400;
 color:#f23373
}
.success-comment-info .payment-message-name,.success-comment-info .payment-message-text {
 line-height:28px
}
.success-comment-info .payment-message-text {
 position:relative;
 font-size:16px;
 line-height:28px;
 z-index:2
}
.success-comment-info .u-mark {
 font:25px/18px tahoma;
 vertical-align:text-top
}
.success-comment-info .payment-message-name {
 text-align:right
}
.success-comment-info .payment-message-name .title {
 color:#f23373
}
.success-comment-info .simulate-message-line {
 position:absolute;
 left:0;
 width:505px;
 height:1px;
 font-size:0;
 line-height:0;
 background-color:#faf1e4;
 overflow:hidden;
 z-index:1
}
.success-comment-info .line-1 {
 top:28px
}
.success-comment-info .line-2 {
 top:56px
}
.success-comment-info .line-3 {
 top:84px
}
.success-comment-info .line-4 {
 top:112px
}
.success-comment-info .line-5 {
 top:140px
}
.success-product-info {
 margin:0 auto 17px;
 width:542px
}
.success-product-info-title {
 margin-bottom:18px;
 font-weight:400
}
.success-product-info .payment-product-scroll,.success-product-info .scroll-inner {
 width:511px
}
.success-product-info .payment-product-scroll {
 margin-left:-15px
}
.success-address-info,.success-order-number-info {
 margin-right:auto;
 margin-left:auto;
 width:542px;
 color:#666
}
.success-address-info .info-title,.success-order-number-info .info-title {
 display:inline;
 float:left;
 width:62px;
 color:#333;
 text-align:right
}
.success-address-info .info-content,.success-order-number-info .info-content {
 vertical-align:top;
 overflow:hidden;
 zoom:1
}
.success-share-info {
 margin-top:30px;
 padding:20px 127px 0;
 height:24px;
 border-top:1px solid #d7d7d7
}
.success-share-info .share-sns {
 float:left
}
.payment-actions-box {
 margin-bottom:80px;
 text-align:center
}
.payment-actions-box .ui-btn-large {
 width:128px
}
.payment-actions-box .btn-pay-for-another {
 margin-right:20px
}
.m-duplicate-explain {
 margin:0 auto 28px;
 width:540px
}
.m-duplicate-explain .m-tooltips-trigger {
 display:block
}
.m-duplicate-explain .tooltips-trigger-text {
 text-align:right;
 color:#f10180
}
.tooltips-duplicate-explain {
 top:26px;
 right:-32px;
 width:370px
}
.tooltips-duplicate-explain .tooltips-arrows {
 left:338px
}
.tooltips-duplicate-explain .ui-tooltips-arrow {
 width:370px
}
.m-error-box {
 margin-top:50px;
 padding:80px 0 50px;
 border:1px solid #d7d7d7;
 border-left:3px solid #ea9821
}
.common-error-box {
 text-align:center
}
.common-error-box .m-tips {
 margin-bottom:65px
}
.common-error-box .tips-text {
 color:#333;
 font-size:16px
}
.common-error-box-actions {
 margin-top:25px
}
.common-error-box-actions a {
 display:inline-block;
 color:#333;
 font-size:14px
}
.common-error-box-actions a:hover {
 color:#010101
}
.common-error-box-actions .btn-primary {
 vertical-align:middle
}
.common-error-box-actions .u-icon {
 float:left;
 margin-right:10px
}
.common-error-box-actions .view-order-link {
 margin-right:60px
}
.quick-pay-error-box-actions,.quick-pay-error-box-text,.quick-pay-error-box-tips {
 margin-right:auto;
 margin-left:auto;
 width:400px
}
.quick-pay-error-box-text {
 padding-left:47px;
 width:353px
}
.quick-pay-error-box-tips {
 margin-bottom:10px
}
.quick-pay-error-box-tips .tips-text {
 color:#333;
 font-size:16px
}
.quick-pay-error-box-text {
 margin-bottom:10px;
 color:#666
}
.quick-pay-error-box-actions {
 margin-top:20px;
 padding-top:20px;
 padding-left:47px;
 width:353px;
 border-top:1px dashed #e3e3e3
}
.quick-pay-error-box-actions .btn-primary,.quick-pay-error-box-actions .split,.quick-pay-error-box-actions .title,.quick-pay-error-box-actions a {
 vertical-align:middle
}
.quick-pay-error-box-actions .title {
 color:#666
}
.quick-pay-error-box-actions .split {
 margin-right:10px;
 margin-left:10px
}
.quick-pay-error-box-actions .cod-link {
 font-size:14px
}
.m-payment-qa {
 margin-top:20px;
 padding:25px 40px 10px;
 border:1px solid #dddcdc
}
.payment-qa-hd {
 margin-bottom:7px
}
.payment-qa-hd-title {
 font-size:14px
}
.m-qa {
 margin-bottom:18px;
 padding-top:18px;
 color:#666
}
.qa-bd .icon-qa-a,.qa-hd .icon-qa-q {
 float:left;
 margin-right:15px
}
.qa-hd {
 margin-bottom:8px
}
.qa-bd-text,.qa-hd-title {
 overflow:hidden;
 vertical-align:top;
 zoom:1
}
.pwd-guide-modal .guide-text {
 margin-bottom:20px;
 font-size:14px;
 text-align:center
}
.pwd-guide-modal .u-ipt {
 padding:6px 12px
}
.payment-vip-modal .form-item {
 margin-bottom:20px
}
.payment-vip-modal .form-item-actions {
 margin-top:36px;
 margin-bottom:0
}
.payment-vip-modal .form-item-actions .confirm-pay-btn {
 width:130px
}
.payment-vip-modal .get-pwd-link {
 display:inline-block;
 margin-left:12px;
 font-size:12px;
 line-height:32px;
 vertical-align:top
}
.payment-vip-modal .form-item-actions-tips {
 display:none;
 margin-top:10px;
 color:#999
}
.payment-vip-modal .z-form-item-actions-loading-tips .form-item-actions-tips {
 display:block
}
.payment-vip-modal .loading-cnt {
 padding:49px 0;
 text-align:center;
 font-size:14px
}
.payment-vip-modal .loading-cnt .ii-loading-pink-24x24 {
 margin-right:10px
}
.payment-vip-modal .load-fail-cnt {
 display:none;
 padding:89px 0;
 font-size:14px;
 text-align:center
}
.payment-vip-modal .load-fail-cnt p {
 line-height:32px;
 margin-right:10px
}
.payment-vip-modal .load-fail-cnt p .if-sigh {
 vertical-align:top
}
.payment-vip-modal .load-fail-cnt a {
 margin-left:5px
}
.payment-vip-modal .has-set-pwd-cnt {
 display:none
}
.payment-vip-modal .has-set-pwd-cnt .u-form-label {
 font-size:14px;
 color:#333
}
.payment-vip-modal .has-set-pwd-cnt .pwd-ipt {
 width:208px
}
.payment-vip-modal .has-set-pwd-cnt .form-item-actions .btn-primary {
 margin-right:45px
}
.payment-vip-modal .has-set-pwd-cnt .tooltips-error {
 bottom:29px
}
.payment-vip-modal .has-set-pwd-cnt .tooltips-error .tooltips-arrows {
 left:24px
}
.payment-vip-modal .has-set-pwd-cnt .z-form-item-error-tooltips .tooltips-error {
 -webkit-transform:translateY(0);
 transform:translateY(0)
}
.payment-vip-modal .has-set-pwd-cnt .form-item-mobile-security {
 margin-bottom:20px;
 position:relative;
 z-index:2
}
.payment-vip-modal .has-set-pwd-cnt .form-item-result-text {
 margin-bottom:15px;
 font-size:14px
}
.payment-vip-modal .has-set-pwd-cnt .mobile-security-header {
 margin-bottom:8px
}
.payment-vip-modal .has-set-pwd-cnt .mobile-security-body,.payment-vip-modal .has-set-pwd-cnt .mobile-security-footer {
 margin-top:10px
}
.payment-vip-modal .has-set-pwd-cnt .mobile-security-body a,.payment-vip-modal .has-set-pwd-cnt .mobile-security-footer a {
 margin-left:5px
}
.payment-vip-modal .has-set-pwd-cnt .mobile-security-footer {
 margin-top:15px;
 padding-top:5px;
 border-top:1px dotted #ccc
}
.payment-vip-modal .has-set-pwd-cnt .mobile-security-tooltips {
 top:25px;
 left:-30px;
 white-space:nowrap;
 color:#666
}
.payment-vip-modal .has-set-pwd-cnt .mobile-security-tooltips .ui-tooltips-arrow {
 width:278px
}
.payment-vip-modal .has-set-pwd-cnt .mobile-security-tooltips .list-item {
 margin-bottom:1px
}
.payment-vip-modal .has-set-pwd-cnt .quickpay-binding-guide-tooltips {
 top:-32px;
 left:138px
}
.payment-vip-modal .has-set-pwd-cnt .quickpay-binding-guide-tooltips .ui-tooltips-arrow {
 height:158px
}
.payment-vip-modal .has-set-pwd-cnt .quickpay-binding-guide-tooltips .tooltips-arrows {
 margin-top:-38px
}
.payment-vip-modal .has-set-pwd-cnt .quickpay-binding-guide-tooltips .ui-tooltips-content {
 padding:5px
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .form-control,.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-form-item-group {
 *zoom:1
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .form-control:after,.payment-vip-modal .has-set-pwd-cnt .sms-item .form-control:before,.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-form-item-group:after,.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-form-item-group:before {
 display:table;
 content:''
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .form-control:after,.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-form-item-group:after {
 clear:both
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .sms-error-tips,.payment-vip-modal .has-set-pwd-cnt .sms-item .sms-success-tips,.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-btn-secondary,.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-input {
 float:left
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .u-ipt,.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-input {
 margin-right:10px;
 width:140px
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .ui-btn-secondary {
 padding-right:0;
 padding-left:0;
 width:138px
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .btn-countdown-loading-text {
 display:none
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .z-btn-countdown-loading,.payment-vip-modal .has-set-pwd-cnt .sms-item .z-btn-countdown-loading:active,.payment-vip-modal .has-set-pwd-cnt .sms-item .z-btn-countdown-loading:hover {
 cursor:not-allowed;
 color:#9b9b9b;
 -webkit-transition:none;
 transition:none;
 background-color:#d0d0d0;
 border-color:#d0d0d0
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .z-btn-countdown-loading {
 position:relative;
 vertical-align:top;
 overflow:hidden;
 *overflow:visible;
 -webkit-transition:none;
 transition:none
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .z-btn-countdown-loading .btn-loading-text,.payment-vip-modal .has-set-pwd-cnt .sms-item .z-btn-countdown-loading .btn-text {
 -webkit-animation:hideText .6s;
 animation:hideText .6s
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .z-btn-countdown-loading .btn-countdown-loading-text {
 display:block;
 position:absolute;
 top:0;
 left:0;
 width:100%;
 height:100%;
 background-color:#d0d0d0;
 -webkit-animation:showLoadingText .5s;
 animation:showLoadingText .5s;
 cursor:not-allowed
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .sms-error-tips,.payment-vip-modal .has-set-pwd-cnt .sms-item .sms-success-tips {
 display:none;
 position:absolute;
 top:0;
 left:312px;
 padding-left:5px;
 width:158px
}
.payment-vip-modal .has-set-pwd-cnt .sms-item .tips-cnt {
 width:132px
}
.payment-vip-modal .has-set-pwd-cnt .z-form-item-sms-error-tips,.payment-vip-modal .has-set-pwd-cnt .z-form-item-sms-success-tips {
 position:relative;
 z-index:1
}
.payment-vip-modal .has-set-pwd-cnt .z-form-item-sms-error-tips .sms-error-tips,.payment-vip-modal .has-set-pwd-cnt .z-form-item-sms-success-tips .sms-success-tips {
 display:block
}
.payment-vip-modal .has-set-pwd-cnt .card-last-num-ipt {
 margin-right:10px;
 width:108px
}
.payment-vip-modal .has-set-pwd-cnt .guide-text {
 font-size:14px
}
.payment-vip-modal .has-set-pwd-cnt .guide-text .u-split-line {
 margin-right:5px;
 margin-left:5px
}
.payment-vip-modal .success-cnt {
 display:none;
 text-align:center
}
.payment-vip-modal .success-cnt .u-highlight {
 margin-right:5px;
 margin-left:5px
}
.payment-vip-modal .success-cnt .wallet-enough-text {
 display:none
}
.payment-vip-modal .z-pay-success-wallet .tips-text {
 display:none
}
.payment-vip-modal .z-pay-success-wallet .wallet-enough-text {
 display:block
}
.test-number-form .form-control .card-test-error-tooltips .ui-tooltips-arrow,.test-number-form .ui-form-item-group .card-test-error-tooltips .ui-tooltips-arrow {
 width:140px
}
.test-number-form .form-control .quickpay-binding-guide-tooltips,.test-number-form .ui-form-item-group .quickpay-binding-guide-tooltips {
 padding:0;
 top:-24px
}
.test-number-form .form-control .quickpay-binding-guide-tooltips .ui-tooltips-content,.test-number-form .ui-form-item-group .quickpay-binding-guide-tooltips .ui-tooltips-content {
 padding:5px
}
.sms-item .form-control .ui-input,.sms-item .ui-form-item-group .ui-input,.vip-passport-form .form-control .ui-input,.vip-passport-form .ui-form-item-group .ui-input {
 width:153px
}
.sms-item .message-error-tooltips {
 white-space:nowrap
}
.sms-item .message-error-tooltips .ui-tooltips-arrow {
 width:152px
}
.vip-passport-form .password-error-tooltips {
 white-space:nowrap
}
.vip-passport-form .password-error-tooltips .ui-tooltips-arrow {
 width:140px
}
.confirm-pay-tooltips .ui-tooltips-arrow {
 width:116px
}
.z-payment-vip-modal-verify-pwd .has-set-pwd-cnt .pwd-ipt {
 width:300px
}
.z-payment-vip-modal-verify-pwd .has-set-pwd-cnt .from-tips-spe {
 display:none
}
.payment-vip-modal.ui-dialog-large {
 width:630px
}
.z-payment-vip-modal-load-fail .modal-cnt,.z-payment-vip-modal-pwd-has-set .modal-cnt,.z-payment-vip-modal-pwd-pre-award .modal-cnt,.z-payment-vip-modal-success .modal-cnt {
 position:relative;
 display:none
}
.z-payment-vip-modal-success .ui-dialog-close {
 display:none
}
.z-payment-vip-modal-load-fail .load-fail-cnt,.z-payment-vip-modal-pwd-has-set .has-set-pwd-cnt,.z-payment-vip-modal-pwd-pre-award .has-set-pwd-cnt,.z-payment-vip-modal-success .success-cnt {
 display:block
}
.z-payment-vip-modal-load-fail {
 width:600px
}
.J_passport_form,.J_preaward_form {
 display:none
}
.z-payment-vip-modal-pwd-has-set .J_passport_form,.z-payment-vip-modal-pwd-pre-award .J_preaward_form {
 display:block
}
.J_preaward_form {
 font-size:14px;
 color:#333;
 text-align:center;
 margin-top:-20px;
 width:100%
}
.z-payment-vip-modal-pwd-pre-award .modal-cnt {
 position:relative
}
.modal-stepbar {
 width:250px;
 text-align:center;
 margin:0 auto;
 overflow:hidden;
 padding-bottom:50px
}
.modal-bar {
 position:absolute;
 width:156px;
 background:#e3e3e3;
 height:2px;
 left:183px;
 top:38px;
 overflow:hidden
}
.modal-bar-pross {
 width:156px;
 height:2px;
 overflow:hidden;
 display:inline-block;
 line-height:0;
 font-size:0;
 float:left;
 position:relative;
 left:-78px;
 -webkit-transition:all .5s ease-in-out;
 transition:all .5s ease-in-out
}
.z-payment-vip-modal-pwd-has-set .modal-bar-pross {
 left:0
}
.modal-bar-pross-same {
 width:78px;
 height:2px;
 float:left
}
.modal-bar-pross-first {
 background:#a1ea9a
}
.modal-bar-pross-second {
 background:#46c33b
}
.modal-static-wait strong,.z-payment-vip-modal-pwd-has-set .modal-static-gray strong {
 color:#222
}
.modal-static-succ b,.z-payment-vip-modal-pwd-has-set .modal-static-wait b {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-742px -382px;
 width:20px;
 height:20px
}
.modal-static-wait b,.z-payment-vip-modal-pwd-has-set .modal-static-gray b {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-616px -431px;
 width:20px;
 height:20px;
 font-size:0
}
.modal-static-gray strong,.modal-static-succ strong,.z-payment-vip-modal-pwd-has-set .modal-static-wait strong {
 color:#999
}
.modal-static-gray b {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-767px -382px;
 width:20px;
 height:20px
}
.modal-stepbar-same b {
 display:inline-block;
 width:20px;
 height:20px;
 text-align:center;
 color:#999;
 overflow:hidden
}
.modal-stepbar-same strong {
 width:72px;
 display:block;
 font-weight:400;
 font-size:12px;
 padding-bottom:10px
}
.modal-stepbar-stepTwo strong {
 width:48px
}
.modal-stepbar-stepOne {
 float:left
}
.modal-stepbar-stepTwo {
 float:right
}
.modal-form-title-first {
 text-align:left;
 overflow:hidden
}
.modal-form-title-second {
 text-align:left;
 font-size:12px;
 color:#999;
 padding-bottom:40px;
 padding-top:8px
}
.z-payment-vip-modal-pwd-pre-award .form-item-actions {
 margin-top:16px;
 overflow:hidden
}
.z-payment-vip-modal-pwd-pre-award .confirm-pay-btn {
 _margin:0 atuo;
 _float:left;
 _margin-left:185px
}
.payment-modal {
 display:block
}
.payment-modal .modal-inner {
 padding:35px
}
.payment-modal .recommend-payment {
 padding-left:47px
}
.payment-modal .payment-modal-tips {
 margin-bottom:15px;
 color:#333;
 font-size:14px
}
.payment-modal .payment-error-tips,.payment-modal .payment-success-tips {
 padding:20px 0
}
.payment-modal .payment-error-tips .ui-btn-primary,.payment-modal .payment-error-tips .ui-btn-secondary,.payment-modal .payment-success-tips .ui-btn-primary,.payment-modal .payment-success-tips .ui-btn-secondary {
 margin-top:-4px
}
.payment-modal .payment-error-tips .cash-on-delivery-a,.payment-modal .payment-success-tips .cash-on-delivery-a {
 height:22px;
 line-height:22px;
 font-size:12px
}
.payment-modal .payment-success-tips {
 border-bottom:1px dotted #e5e4e4
}
.payment-modal .payment-success-tips .ui-btn-primary {
 display:none
}
.payment-modal .payment-error-tips {
 margin-bottom:10px
}
.payment-modal .payment-error-tips .split {
 display:inline-block;
 margin-right:10px;
 margin-left:10px;
 vertical-align:top;
 line-height:22px
}
.payment-modal .payment-error-tips .btn-link {
 padding:0
}
.payment-modal .payment-modal-error-message {
 display:none;
 margin-top:15px;
 padding:0 5px;
 color:#f40b2c
}
.payment-modal .modal-success-cnt {
 padding:20px 0;
 text-align:center
}
.payment-modal .modal-success-cnt .m-tips {
 margin-bottom:25px
}
.payment-modal .modal-success-message {
 color:#999
}
.payment-modal .modal-success-message .second {
 margin-right:3px;
 color:#333
}
.payment-modal .modal-success-message .u-highlight {
 margin-left:10px
}
.z-payment-modal-error .payment-success-tips {
 padding-bottom:12px
}
.z-payment-modal-error .payment-success-tips .ui-btn-secondary {
 display:none
}
.z-payment-modal-error .payment-modal-error-message {
 display:block
}
.z-payment-modal-error .payment-success-tips .btn-primary,.z-payment-modal-error .payment-success-tips .ui-btn-primary {
 display:inline-block
}
.z-payment-modal-success .modal-cnt {
 display:none
}
.z-payment-modal-success .modal-success-cnt {
 display:block
}
.m-modal-qa {
 margin-top:5px;
 color:#333
}
.modal-qa-hd {
 padding:12px 0;
 height:16px;
 line-height:16px;
 position:relative
}
.modal-qa-hd a {
 color:#333;
 vertical-align:middle
}
.modal-qa-hd .icon-arrow-question {
 margin-left:5px;
 -webkit-transition:.3s ease-in;
 transition:.3s ease-in;
 position:absolute;
 padding-top:3px
}
.modal-qa-hd .u-split-line {
 margin-right:10px;
 margin-left:26px
}
.modal-qa-bd {
 *display:none;
 max-height:0;
 -webkit-transition:.2s max-height cubic-bezier(.42,0,.58,1) .2s padding cubic-bezier(.42,0,.58,1);
 transition:.2s max-height cubic-bezier(.42,0,.58,1) .2s padding cubic-bezier(.42,0,.58,1);
 overflow:hidden
}
.modal-qa-bd .modal-qa-item {
 margin-bottom:25px
}
.modal-qa-bd .modal-qa-item-last {
 margin-bottom:0
}
.modal-qa-bd .modal-qa-item-title {
 margin-bottom:5px
}
.modal-qa-bd .modal-qa-item-text {
 line-height:24px
}
.z-modal-qa-expanded .modal-qa-bd {
 *display:block;
 max-height:150px;
 overflow:auto;
 padding-top:10px;
 border-top:1px solid #dddbdc
}
.z-modal-qa-expanded .icon-arrow-question {
 -webkit-transform:rotate(180deg);
 transform:rotate(180deg)
}
.delivery-modal .delivery-desc {
 text-align:center;
 line-height:22px
}
.delivery-modal .u-highlight {
 margin-right:3px;
 margin-left:3px
}
.alipay-account-modal .u-ipt {
 width:228px
}
.alipay-account-modal .tooltips-error {
 bottom:38px;
 left:0
}
.alipay-account-modal .z-form-item-error-tooltips .tooltips-error {
 -webkit-transform:translateY(0);
 transform:translateY(0)
}
.alipay-account-modal .tooltips-arrows-bottom {
 margin-left:-147px
}
.alipay-account-modal .btn-primary {
 width:60px
}
.alipay-account-modal .modal-success-cnt .u-highlight {
 margin-right:3px;
 margin-left:3px;
 font-size:14px
}
.alipay-account-modal .modal-success-cnt .btn-primary {
 margin-left:10px
}
.installment-modal {
 *-webkit-filter:none;
 *        filter:none;
 -webkit-filter:none\9;
 filter:none\9
}
.installment-modal .ui-dialog-inner {
 overflow:visible
}
.installment-modal .ui-dialog-command .btn-link {
 min-width:33px;
 margin:0
}
.installment-modal .ui-dialog-command a {
 margin:0
}
.installment-modal .modal-action .btn-primary {
 width:56px
}
.installment-modal .z-ui-tooltips-in {
 z-index:100
}
.installment-modal .z-ui-tooltips-in table {
 display:inline-block
}
.installment-modal .installment-info-item-cnt {
 float:left
}
.installment-modal .tooltips-trigger-top {
 z-index:2
}
.installment-payment-info {
 margin-bottom:10px;
 height:41px
}
.installment-payment-info .payment-method {
 display:inline-block;
 *display:inline;
 zoom:1;
 margin-right:10px
}
.installment-payment-info .m-tooltips-trigger {
 padding-top:11px;
 vertical-align:top
}
.installment-payment-info .tooltips-default {
 top:35px
}
.installment-payment-info .payment-installment-tooltips {
 left:-55px
}
.installment-payment-info .payment-installment-tooltips .ui-tooltips-arrow {
 width:351px
}
.installment-payment-info .payment-installment-tooltips td,.installment-payment-info .payment-installment-tooltips th {
 white-space:nowrap
}
.installment-table {
 *display:none;
 white-space:nowrap
}
.tooltips-trigger-top-hover .installment-table {
 display:block
}
.installment-table td,.installment-table th {
 padding:5px;
 border:1px solid #e6e6e6
}
.installment-info-item {
 margin-bottom:5px;
 *zoom:1
}
.installment-info-item:after,.installment-info-item:before {
 display:table;
 content:''
}
.installment-info-item:after {
 clear:both
}
.installment-info-item-title {
 *display:inline;
 float:left;
 margin-right:5px;
 font-weight:400
}
.installment-info-item-cnt {
 vertical-align:top;
 overflow:hidden
}
.installment-info-item-desc {
 margin-top:5px;
 color:#999
}
.installment-info-item .radio-wrapper {
 float:left;
 margin-right:6px;
 margin-top:-7px
}
.installment-pay-amount {
 margin-bottom:10px
}
.readd-wrapper {
 padding:40px 60px 48px;
 border:1px solid #dddcdc
}
.readd-orders-status .tips-text {
 font-size:16px
}
.readd-modal {
 width:838px
}
.readd-table {
 width:838px
}
.readd-table .product-item {
 padding-right:146px;
 width:322px
}
.readd-table .quantity-item {
 width:156px
}
.readd-table .price-item {
 width:134px
}
.readd-table .subtotal-item {
 width:80px
}
.readd-table thead {
 border-bottom:1px solid #d9d8d8
}
.readd-table thead th {
 height:35px;
 line-height:35px;
 color:#333;
 font-size:14px
}
.readd-table tbody .price-item,.readd-table tbody .quantity-item,.readd-table tbody .subtotal-item {
 text-align:center
}
.readd-table tbody td {
 padding:15px 0;
 border-bottom:1px dashed #e8e5e5
}
.readd-table .price-item .u-price,.readd-table .subtotal-item .u-price {
 font-size:14px
}
.readd-table .quantity-item .after-adjust {
 color:#50a406
}
.readd-table .quantity-item .num {
 margin-right:3px;
 margin-left:3px
}
.readd-table tfoot {
 border-top:1px solid #d9d8d8
}
.readd-table tfoot td {
 padding-top:40px;
 text-align:center
}
.readd-table tfoot .u-btn,.readd-table tfoot .ui-btn-default {
 width:100px
}
.readd-table tfoot .btn-primary,.readd-table tfoot .ui-btn-primary {
 margin-right:30px
}
.adjust-result-modal {
 text-align:center
}
.adjust-result-modal .m-tips {
 margin-bottom:20px
}
.adjust-result-modal .tips-text {
 font-size:16px
}
.adjust-result-modal .u-highlight {
 margin-right:3px
}
.adjust-result-modal .adjust-result-tips {
 margin-bottom:30px;
 font-size:14px
}
.adjust-result-modal .readd-result-jump-tips {
 font-size:12px;
 margin-top:20px;
 color:#999
}
.m-copyright {
 padding:10px 0 30px;
 text-align:center;
 color:#767074
}
.m-copyright a {
 color:#767074
}
.m-site-links {
 margin-bottom:10px;
 height:34px;
 line-height:34px;
 text-align:center;
 color:#fefefe;
 white-space:nowrap;
 background-color:#d7237e
}
.m-site-links a,.m-site-links a:active,.m-site-links a:hover {
 display:inline-block;
 padding:0 6px;
 color:#f5f3f5;
 *vertical-align:middle
}
.m-site-partners {
 width:1000px;
 height:40px;
 text-align:center
}
.m-site-partners a {
 display:inline-block
}
.m-site-partners a:hover {
 text-decoration:none
}
.c-label {
 display:inline-block;
 *display:inline;
 *zoom:1;
 border-radius:2px;
 color:#fff;
 text-align:center;
 background-color:grey;
 vertical-align:top;
 overflow:hidden
}
.e-label-mini {
 padding-right:5px;
 padding-left:5px;
 height:18px;
 font-size:12px;
 line-height:18px;
 *line-height:19px
}
.s-label-blue {
 background-color:#4eabf9
}
.s-label-orange {
 background-color:#f8be4c
}
.s-label-tangerine {
 background-color:#f58c67
}
.s-label-green {
 background-color:#339f08
}
.s-label-pink {
 background-color:#f02a79
}
.c-ad-text {
 padding-right:2px;
 padding-left:2px;
 color:#fff;
 font-size:12px;
 line-height:18px;
 background-color:#f8be4c
}
.c-ad-box {
 padding:6px 15px;
 height:18px;
 border:1px solid #f8dbb1;
 background-color:#fffaf3;
 overflow:hidden
}
.ad-box-explain {
 color:#333;
 font-size:12px;
 line-height:18px;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden
}
.top-ad-box {
 margin-bottom:10px
}
.tab-ad-box {
 margin:0 13px 20px
}
.c-ad-tag {
 *zoom:1;
 position:relative;
 z-index:1;
 *zoom:1;
 margin-right:10px;
 padding-right:5px;
 height:18px
}
.c-ad-tag:after,.c-ad-tag:before {
 display:table;
 content:''
}
.c-ad-tag:after {
 clear:both
}
.c-ad-tag.is-touch .ad-tag-detail,.device-pc .c-ad-tag-hover .ad-tag-detail,.device-pc .c-ad-tag:hover .ad-tag-detail {
 display:block
}
.ad-tag-inner {
 *display:inline;
 float:left;
 padding-right:8px;
 padding-left:5px;
 height:18px;
 background-color:#ff9000
}
.ad-tag-explain {
 max-width:96px;
 color:#fff;
 line-height:18px;
 overflow:hidden;
 white-space:nowrap;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden
}
.ad-tag-corner {
 position:absolute;
 top:0;
 right:0;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -191px;
 width:5px;
 height:18px;
 z-index:1
}
.ad-tag-detail {
 display:none;
 position:absolute;
 bottom:18px;
 left:0;
 padding:10px 15px;
 width:178px;
 background-color:#fffaf3;
 border:1px solid #f8dbb1;
 z-index:1
}
.c-passport-ad {
 display:inline-block;
 *display:inline;
 *zoom:1;
 position:relative;
 z-index:1;
 padding-left:15px;
 height:18px;
 vertical-align:top
}
.passport-ad-text {
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden;
 display:inline-block;
 padding-left:7px;
 padding-right:5px;
 color:#e31515;
 max-width:123px;
 line-height:16px;
 border:1px solid #e31515;
 border-radius:2px
}
.passport-ad-icon {
 position:absolute;
 top:-1px;
 left:-1px;
 width:18px;
 height:20px;
 text-align:center;
 line-height:20px;
 color:#fff;
 font-family:Arial;
 background-color:#e31515;
 border-radius:2px
}
.m-order-status-a {
 padding-left:0;
 margin-bottom:20px;
 font-size:14px
}
.order-status-tips-a {
 margin-bottom:7px;
 padding-top:10px
}
.order-status-tips-a .tips-icon {
 margin-right:10px;
 line-height:1;
 font-size:32px
}
.order-status-tips-a .tips-text {
 color:#333;
 font-size:20px
}
.dual-payment-order-status-tips {
 display:none
}
.order-status-info-a {
 padding-left:42px
}
.order-status-info-a .m-price {
 color:#e3007f
}
.order-status-info-a .u-yen {
 font-size:16px
}
.order-status-info-a .u-price {
 font-size:22px
}
.order-status-info-a .countdown-minute,.order-status-info-a .countdown-second {
 margin-right:3px;
 margin-left:3px
}
.order-detail-tooltips-trigger {
 z-index:3
}
.order-detail-tooltips-trigger .tooltips-trigger-text {
 color:#1d94d1
}
.order-detail-tooltips-trigger .tooltips-arrows {
 left:28px
}
.order-detail-tooltips {
 width:390px;
 left:-70px;
 top:25px
}
.order-detail-tooltips .ui-tooltips-arrow {
 _width:390px
}
.order-detail-tooltips .ui-tooltips-content {
 padding:21px;
 max-height:188px;
 _height:188px;
 overflow:auto
}
.order-detail-group {
 margin-bottom:10px;
 padding-bottom:10px;
 border-bottom:1px dotted #e4e4e4
}
.order-detail-group-last {
 margin-bottom:0;
 padding-bottom:0;
 border-bottom:none
}
.order-detail-number {
 margin-bottom:5px
}
.order-detail-list .list-item {
 list-style-position:inside;
 word-wrap:break-word;
 word-break:break-all
}
.order-detail-list .goods-size {
 margin-left:10px
}
.c-payment-notice {
 margin-bottom:10px;
 padding:6px 15px;
 height:18px;
 border:1px solid #f8dbb1;
 background-color:#fffaf3;
 overflow:hidden
}
.payment-notice-icon {
 *display:inline;
 float:left;
 margin-top:1px;
 margin-right:10px;
 line-height:1
}
.payment-notice-explain {
 color:#333;
 font-size:12px;
 line-height:18px;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden
}
.m-payment-box-a {
 position:relative;
 padding-top:3px;
 padding-bottom:40px;
 background:#fff url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAECAMAAAC0n5/jAAAAFVBMVEX6+vr7+/v+/v78/Pz5+fn4+Pj///9LhJrQAAAAJklEQVR42kXIuREAAAgCMHxg/5EtlDNlICuQHSm5srlK+PFdBd8ANeEBaarUUYgAAAAASUVORK5CYII=) repeat-x 0 bottom;
 z-index:1
}
.payment-box-a-top {
 position:absolute;
 left:-8px;
 top:-3px;
 width:976px;
 height:6px;
 background-color:#d4d4d4;
 border-top:1px solid #c5c5c5;
 border-radius:3px;
 overflow:hidden;
 z-index:1
}
.adv-txt-wrapper {
 font-size:12px;
 padding-left:83px;
 padding-right:83px;
 padding-top:20px;
 padding-bottom:20px
}
.c-adv-txt-content {
 padding-left:38px
}
.payment-box-a-content {
 position:relative;
 background-color:#fff;
 z-index:2;
 zoom:1
}
.is-payment-box-loading .payment-box-loading {
 display:block
}
.m-payment-common {
 _zoom:1;
 position:relative;
 z-index:6
}
.payment-common-item {
 cursor:pointer;
 margin-top:-1px;
 padding:0
}
.device-pc .payment-common-item-hover,.device-pc .payment-common-item:hover,.payment-common-item.is-touch {
 position:relative;
 z-index:3
}
.payment-common-item-first .payment-common-inner {
 border-top-color:#fff
}
.payment-common-inner {
 position:relative;
 _float:left;
 padding:16px 42px;
 width:876px;
 border-top:1px solid #eae9e9;
 border-bottom:1px solid #eae9e9;
 *zoom:1;
 z-index:1
}
.payment-common-inner:after,.payment-common-inner:before {
 display:table;
 content:''
}
.payment-common-inner:after {
 clear:both
}
.payment-common-radio {
 *display:inline;
 position:relative;
 float:left;
 z-index:1
}
.payment-common-radio .ui-radio {
 margin-right:11px;
 padding-top:12px;
 padding-bottom:12px
}
.payment-common-radio .radio-text {
 padding-left:0
}
.payment-common-logo {
 position:relative;
 _float:left;
 padding-left:0;
 z-index:2
}
.payment-common-content {
 *display:inline;
 float:left;
 padding:11px 36px 11px 20px;
 height:18px;
 line-height:18px;
 position:relative;
 z-index:6
}
.payment-common-card-number {
 display:inline-block;
 margin-right:20px;
 font-size:14px;
 line-height:18px;
 vertical-align:top
}
.card-type-label {
 margin-right:5px
}
.payment-common-content-ad {
 display:inline-block;
 *display:inline;
 *zoom:1;
 margin-right:5px;
 vertical-align:top
}
.payment-common-disable-explain {
 display:none;
 color:#999;
 vertical-align:top
}
.payment-common-disable-explain .payment-common-tips .u-price {
 color:#666
}
.payment-common-disabled-tooltips-trigger {
 z-index:5;
 margin-left:15px;
 padding-top:1px
}
.payment-common-disabled-tooltips-trigger .if-query {
 vertical-align:top
}
.payment-common-disabled-tooltips-trigger .tooltips-trigger-icon {
 vertical-align:top
}
.payment-common-favorable,.payment-common-subtotal {
 display:none;
 color:#333;
 white-space:nowrap;
 z-index:1
}
.payment-common-favorable .m-price,.payment-common-subtotal .m-price {
 color:#f10180
}
.payment-common-favorable .m-price-fix,.payment-common-subtotal .m-price-fix {
 padding-right:4px
}
.payment-common-favorable {
 margin-top:-1px
}
.payment-common-tips {
 color:#666;
 font-size:13px;
 margin-right:10px
}
.payment-common-tips .u-price {
 color:#f10180;
 padding-right:4px
}
.payment-common-subtotal {
 font-size:14px
}
.payment-common-subtotal .u-yen {
 font-size:12px
}
.payment-common-subtotal .u-price {
 font-size:20px
}
.payment-common-periodpay {
 display:none;
 padding-right:4px;
 color:#666;
 margin-top:10px;
 margin-bottom:-2px
}
.payment-common-more {
 position:relative;
 display:none;
 margin-top:-1px;
 margin-bottom:30px;
 padding-left:47px;
 padding-right:47px;
 text-align:right;
 z-index:3;
 zoom:1
}
.button-payment-common-more {
 display:inline-block;
 width:70px;
 height:22px;
 text-align:center;
 line-height:22px;
 color:#999;
 border:1px solid #eae9e9;
 background-color:#fff
}
.button-payment-common-more:hover {
 color:#1d94d1;
 border-color:#1d94d1
}
.vcp-disabled-tooltips {
 cursor:default;
 top:26px;
 left:-71px;
 width:316px
}
.vcp-disabled-tooltips .ui-tooltips-content {
 padding-left:31px
}
.vcp-disabled-tooltips .ui-tooltips-arrow {
 width:316px
}
.vcp-goods-item {
 cursor:text;
 list-style:outside disc none
}
.vcp-goods-explain {
 margin-top:20px;
 color:#999
}
.payment-common-item .vip-jr-tips-field {
 top:10px;
 *top:0;
 display:none;
 position:relative
}
.payment-selection-result .vip-jr-tips-field {
 margin-top:15px;
 padding-top:10px;
 padding-bottom:10px;
 border-bottom:1px dashed #ddd
}
.vip-jr-tips-field {
 clear:both;
 border-top:1px dashed #ddd;
 font-size:12px;
 color:#666;
 padding-top:8px
}
.vip-jr-tips-field .vip-jr-intro-field {
 position:relative;
 z-index:5
}
.vip-jr-tips-field .vip-jr-agreement-field,.vip-jr-tips-field .vip-jr-intro-field {
 line-height:23px
}
.vip-jr-tips-field .vip-jr-info-tips {
 display:inline-block;
 position:relative
}
.vip-jr-tips-field .vip-jr-info-tips .ui-tooltips-msg {
 padding-left:0
}
.vip-jr-tips-field .vip-jr-info-tips .ui-tooltips {
 top:18px;
 left:-52px
}
.vip-jr-tips-field .vip-jr-info-tips .ui-tooltips-content {
 padding:15px 30px;
 width:180px
}
.vip-jr-info-tips.hover .ui-tooltips,.vip-jr-info-tips:hover .ui-tooltips {
 visibility:visible;
 opacity:1
}
.payment-selection-result .vip-jr-tips-hide {
 display:none
}
.is-payment-common-item-selected .vip-jr-tips-field {
 display:block
}
.is-payment-common-item-selected .vip-jr-tips-field-installment {
 margin-left:30px;
 margin-top:5px;
 border:0;
 padding:0
}
.is-payment-common-item-selected {
 padding-right:0;
 padding-left:0
}
.is-payment-common-item-selected .payment-common-noperiodpay,.is-payment-common-item-selected .payment-common-periodpay,.is-payment-common-item-selected .payment-common-realsubtotal,.is-payment-common-item-selected .vipbao {
 display:block
}
.is-payment-common-item-selected .payment-common-inner {
 padding:16px 42px;
 background-color:#fcfef9;
 z-index:2
}
.is-payment-common-item-selected .payment-common-subtotal {
 display:block
}
.is-payment-common-item-selected .payment-method-clip-background {
 background-color:#fcfef9
}
.emphasize {
 color:#f10180
}
.emphasize .installment-context .installment-text .installment-text-item .intallment-price .intallment-price-text {
 position:absolute;
 right:150px
}
.emphasize .installment-context .installment-text .installment-text-item .intallment-price .intallment-price-amount {
 position:absolute;
 right:87px
}
.is-payment-common-item-disabled {
 cursor:not-allowed;
 padding-right:0;
 padding-left:0
}
.is-payment-common-item-disabled .payment-common-inner {
 padding:16px 42px;
 background-color:#fbfbfb;
 z-index:3
}
.is-payment-common-item-disabled .payment-method-clip-background {
 background-color:#fbfbfb
}
.is-payment-common-item-disabled .payment-common-content-ad {
 display:none
}
.is-payment-common-item-disabled .payment-common-disable-explain,.is-payment-common-item-disabled .payment-common-disabled-tooltips-trigger {
 display:inline-block;
 *display:inline;
 _zoom:1
}
.is-payment-common-more-in .payment-common-more {
 display:block
}
.is-payment-common-favorable-in .is-payment-common-item-selected .payment-common-favorable {
 display:block
}
.installment-context {
 clear:both;
 margin-top:52px;
 *margin-top:0;
 color:#666
}
.installment-context .installment-item {
 margin-bottom:6px
}
.installment-context .installment-emphasize {
 color:#f10180;
 font-weight:700
}
.installment-context .installment-number {
 font-weight:700;
 color:#000
}
.installment-context .installment-interest-free {
 position:absolute;
 top:-14px;
 right:-1px;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-553px -431px;
 width:32px;
 height:21px
}
.installment-context .installment-discount {
 position:absolute;
 top:-14px;
 right:-1px;
 height:21px;
 z-index:10
}
.installment-context .installment-discount span {
 float:left
}
.installment-context .installment-icon-radius-center {
 width:auto;
 color:#fff;
 background:#ff9000;
 padding:0 2px;
 line-height:18px
}
.installment-context .installment-icon-radius-left {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-786px -253px;
 width:2px;
 height:18px
}
.installment-context .installment-icon-radius-right {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -253px;
 width:2px;
 height:18px
}
.installment-context .installment-icon-arrow-up {
 position:absolute;
 right:8px;
 bottom:0;
 _overflow:hidden;
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-779px -276px;
 width:6px;
 height:3px
}
.installment-context .installment-separator {
 margin-left:1px;
 margin-right:2px
}
.installment-context .installment-item li {
 display:inline-block;
 *display:inline;
 border:solid 1px #666;
 border-radius:3px;
 padding:5px;
 margin:0 10px 0 0;
 background-color:#fff;
 position:relative;
 zoom:1;
 height:20px;
 width:104px;
 text-align:center
}
.installment-context .installment-item .installment-zero {
 width:42px
}
.installment-context .installment-item .is-installment-number-selected {
 border:solid 2px #f10180;
 color:#f10180;
 padding:4px 5px 4px 5px
}
.installment-context .installment-item .is-installment-number-selected .installment-number {
 color:#f10180
}
.installment-context .installment-text {
 line-height:28px
}
.installment-context .installment-text .installment-text-item {
 height:28px;
 display:none
}
.installment-context .installment-text .installment-text-item .intallment-price .intallment-price-text {
 position:absolute;
 right:118px
}
.installment-context .installment-text .installment-text-item .intallment-price .intallment-price-amount {
 position:absolute;
 right:58px
}
.installment-context .installment-text .is-installment-text-selected {
 display:block
}
.vipbao {
 display:none;
 margin-top:10px;
 clear:both
}
.vipbao .vipbao-text {
 color:#666
}
.vipbao .vipbao-price {
 position:absolute;
 right:33px;
 color:#666;
 padding-right:4px;
 width:200px;
 text-align:right
}
.vipbao .vipbao-price .vipbao-price-amount {
 font-weight:700
}
.vipbao .vipbao-price .emphasize {
 color:#f10180;
 font-weight:700
}
.c-payment-chosen .vip-jr-preaward {
 border:none;
 margin:0;
 padding:0;
 color:#666;
 padding-top:11px;
 padding-left:84px
}
.c-payment-chosen .vip-jr-preaward .installment-emphasize {
 color:#f10180;
 font-weight:700
}
.jr_preAward_tips {
 color:#666;
 font-size:13px
}
.payment-common-suballinfo {
 position:absolute;
 right:35px;
 text-align:right
}
.payment-common-realsubtotal {
 color:#666;
 display:none;
 margin-top:1px
}
.payment-common-realsubtotal .if-query {
 font-size:14px;
 letter-spacing:-4px;
 vertical-align:top;
 position:relative;
 top:-1px
}
.payment-common-realsubtotal .payment-comm-tips-hover {
 letter-spacing:0;
 font-size:12px;
 color:#666;
 right:-25px;
 _right:120px;
 top:8px;
 width:180px;
 font-family:tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif
}
.payment-common-realsubtotal .passport-ad-limit b {
 width:100%;
 float:left
}
.payment-common-realsubtotal .passport-ad-limit b.common-realsubtotal-last {
 border-top:1px solid #ccc;
 margin-top:4px;
 padding-top:4px
}
.payment-common-realsubtotal .payment-comm-tips {
 top:13px;
 padding:10px 16px
}
.payment-common-realsubtotal .payment-comm-arr.if-jragreement {
 left:auto;
 right:22px;
 _top:-4px
}
.payment-common-realsubtotal .payment-comm-sub {
 float:left;
 width:110px;
 line-height:14px
}
.payment-common-noperiodpay {
 display:none;
 margin-bottom:-18px;
 margin-top:0;
 position:relative
}
.payment-common-noperiodpay .vipbao-price {
 position:absolute;
 right:-9px;
 color:#666;
 top:-19px;
 width:200px;
 text-align:right
}
.m-payment-selection {
 margin-right:auto;
 margin-left:auto;
 width:920px
}
.payment-selection-trigger {
 padding:19px 66px 24px 22px;
 border-bottom:1px solid #c6c7c7;
 *zoom:1
}
.payment-selection-trigger:after,.payment-selection-trigger:before {
 display:table;
 content:''
}
.payment-selection-trigger:after {
 clear:both
}
.payment-selection-trigger .u-btn {
 display:inline;
 float:left;
 margin-right:15px;
 padding:10px 20px;
 height:21px;
 line-height:21px;
 font-size:14px
}
.payment-selection-trigger .icon-plus {
 margin-top:4px;
 _margin-top:3px;
 margin-right:5px;
 vertical-align:top
}
.payment-selection-result {
 display:none
}
.is-payment-selection-result-in .payment-selection-tab,.is-payment-selection-result-in .payment-selection-trigger,.is-payment-selection-tab-in .payment-selection-trigger {
 display:none
}
.is-payment-selection-result-in .payment-selection-result,.is-payment-selection-tab-in .payment-selection-tab {
 display:block
}
.is-payment-selection-result-in {
 position:relative;
 margin-top:0;
 padding-top:0;
 border-top:none;
 z-index:4
}
.payment-comm-discount {
 text-decoration:line-through
}
.payment-comm-discount span {
 padding:0
}
.payment-common-realsubtotal .payment-comm-tips-hover-discount {
 width:240px
}
.card_type_item_weiBaoImg {
 display:inline;
 padding-right:10px
}
.canNotPayText {
 clear:both;
 margin-top:52px;
 *margin-top:2px;
 color:#666;
 display:none
}
.payment-selection-tab {
 display:none;
 padding-top:19px;
 border-bottom:1px solid #c6c7c7
}
.payment-a-tab-header {
 padding-right:66px;
 padding-left:22px;
 height:43px;
 *zoom:1
}
.payment-a-tab-header:after,.payment-a-tab-header:before {
 display:table;
 content:''
}
.payment-a-tab-header:after {
 clear:both
}
.payment-a-tab-trigger {
 display:inline;
 position:relative;
 float:left;
 cursor:pointer;
 margin-right:15px;
 padding:10px 20px;
 height:21px;
 font:14px/21px "Microsoft Yahei";
 color:#333;
 vertical-align:top;
 text-align:center;
 background-color:#f6f6f6;
 border:1px solid #cbcaca;
 border-top-left-radius:3px;
 border-top-right-radius:3px;
 z-index:1
}
.payment-a-tab-trigger .icon-plus {
 margin-top:4px;
 _margin-top:3px;
 margin-right:5px;
 vertical-align:top
}
.payment-a-tab-trigger .tab-trigger-explain {
 vertical-align:top
}
.payment-tab-trigger-ad {
 position:absolute;
 top:-1px;
 right:-1px;
 padding-right:2px;
 padding-left:2px;
 color:#fff;
 font-size:12px;
 line-height:18px;
 background-color:#f8be4c
}
.is-payment-a-tab-trigger-active {
 cursor:default;
 background-color:#fff;
 border-bottom-color:#fff;
 z-index:2
}
.payment-a-tab-body {
 margin-top:-1px;
 padding-top:20px;
 padding-bottom:5px;
 border-top:1px solid #c6c7c7
}
.payment-a-tab-panel {
 display:none;
 padding-right:50px;
 padding-left:50px;
 *zoom:1
}
.payment-a-tab-panel:after,.payment-a-tab-panel:before {
 display:table;
 content:''
}
.payment-a-tab-panel:after {
 clear:both
}
.device-pc .payment-tab-panel-platform .c-payment-method-hover,.device-pc .payment-tab-panel-platform .c-payment-method:hover {
 margin:-1px -2px -2px -1px;
 border-width:2px;
 border-color:#7cbf13
}
.device-pc .payment-tab-panel-platform .is-payment-method-disabled-hover,.device-pc .payment-tab-panel-platform .is-payment-method-disabled:hover {
 margin:0;
 border-width:1px;
 border-color:#d2d1d1
}
.is-payment-a-tab-panel-active {
 display:block
}
.payment-method-item {
 *display:inline;
 float:left;
 padding:10px 13px 15px;
 width:179px;
 height:52px;
 *zoom:1
}
.payment-method-item .c-payment-method {
 z-index:3
}
.payment-method-item-more {
 *padding-right:8px
}
.payment-method-more-link {
 display:block;
 padding-top:13px;
 padding-bottom:13px;
 height:24px;
 text-align:center;
 color:#333;
 font-size:16px;
 border:1px dashed #d2d1d1
}
.payment-method-more-link:hover {
 color:#1d94d1;
 border-color:#1d94d1
}
.payment-method-more-link .if-big-arrow-bottom {
 font-size:12px
}
.payment-method-more-explain {
 line-height:24px
}
.payment-a-tab-tips {
 font-size:14px;
 padding-left:13px
}
.payment-chosen-row .payment-chosen-type-item1,.payment-chosen-row .payment-chosen-type-item:first-child {
 z-index:5
}
.c-payment-chosen {
 padding:18px 70px 0
}
.payment-chosen-row {
 *zoom:1
}
.payment-chosen-row:after,.payment-chosen-row:before {
 display:table;
 content:''
}
.payment-chosen-row:after {
 clear:both
}
.payment-chosen-column {
 *display:inline;
 float:left;
 vertical-align:top
}
.payment-chosen-title {
 margin-right:10px;
 color:#333;
 font-size:14px;
 line-height:40px
}
.payment-chosen-card-num {
 line-height:40px;
 font-size:22px;
 color:#333;
 margin-right:10px
}
.payment-chosen-logo {
 margin-right:15px
}
.payment-chosen-content {
 padding-top:11px;
 padding-bottom:11px
}
.payment-chosen-content .label-card-type {
 margin-right:5px
}
.payment-chosen-content .payment-chosen-tips {
 color:#666;
 font-size:13px
}
.payment-chosen-content .payment-chosen-tips .u-price {
 color:#f10180;
 padding-right:4px
}
.payment-chosen-radio .ui-label,.payment-chosen-radio .ui-radio {
 *zoom:1;
 *display:inline
}
.payment-chosen-operation {
 padding:10px 0 10px 54px;
 line-height:20px;
 font-size:13px;
 color:#1d94d1
}
.payment-chosen-operation .if-big-arrow-left {
 font-size:12px
}
.button-payment-chosen {
 display:block
}
.button-payment-chosen .if-arrow-left {
 font-size:23px;
 vertical-align:top
}
.payment-chosen-type {
 position:relative;
 margin-top:9px;
 padding:14px 25px 15px;
 border:1px solid #e3e3e3;
 background-color:#fbfbfb;
 z-index:1;
 white-space:nowrap;
 *zoom:1
}
.payment-chosen-type:after,.payment-chosen-type:before {
 display:table;
 content:''
}
.payment-chosen-type:after {
 clear:both
}
.payment-chosen-type-label {
 margin-top:2px
}
.payment-chosen-type-arrow,.payment-chosen-type-arrow-border {
 position:absolute;
 top:-3px;
 left:78px;
 width:0;
 height:0;
 border-right:5px solid transparent;
 border-left:5px solid transparent;
 border-bottom:5px solid #fbfbfb;
 overflow:hidden;
 z-index:2
}
.payment-chosen-type-arrow-border {
 top:-5px;
 z-index:1;
 border-bottom-color:#e3e3e3
}
.payment-chosen-type-item {
 *display:inline;
 float:left;
 position:relative;
 margin-right:25px;
 *zoom:1;
 z-index:3
}
.payment-chosen-type-item:after,.payment-chosen-type-item:before {
 display:table;
 content:''
}
.payment-chosen-type-item:after {
 clear:both
}
.payment-chosen-type-item .radio-wrapper {
 display:inline-block;
 *display:inline;
 _zoom:1;
 margin-right:-5px;
 vertical-align:top;
 margin-top:-6px
}
.payment-chosen-type-item-ad {
 display:inline-block;
 *display:inline;
 _zoom:1;
 margin-top:1px;
 margin-left:5px;
 vertical-align:top
}
.payment-chosen-type-item-last {
 width:112px
}
.payment-chosen-type-item-installment .z-radio-checked {
 position:relative;
 z-index:1
}
.installment-tooltips {
 bottom:31px;
 left:-27px;
 width:150px;
 white-space:nowrap
}
.installment-tooltips .u-highlight {
 margin-right:3px
}
.installment-tooltips .button-installment-operate {
 margin-left:5px
}
.trigger-affinity-card-tooltips {
 _margin-right:5px;
 padding-top:3px;
 padding-bottom:2px;
 height:16px
}
.trigger-affinity-card-tooltips .tooltips-trigger-icon {
 vertical-align:top;
 line-height:1
}
.affinity-card-tooltips {
 right:-118px;
 bottom:24px;
 width:250px
}
.affinity-card-tooltips .ui-tooltips-content {
 *position:static
}
.affinity-card-tooltips .tooltips-text {
 word-wrap:break-word;
 word-break:break-all
}
.affinity-card-tooltips .ui-tooltips-arrow {
 width:250px
}
.payment-chosen-item-disabled-tooltips {
 bottom:31px;
 left:-3px;
 white-space:nowrap
}
.payment-chosen-item-disabled-tooltips .ui-tooltips-arrow {
 width:44px
}
.is-payment-chosen-type-item-disabled {
 z-index:4
}
.payment-chosen-price {
 margin-top:20px;
 vertical-align:text-bottom
}
.payment-chosen-favorable,.payment-chosen-subtitle {
 padding-top:8px
}
.payment-chosen-subtotal {
 margin-right:5px;
 margin-left:5px
}
.payment-chosen-subtotal .m-price {
 color:#f10180
}
.payment-chosen-subtotal .u-yen {
 font-size:16px
}
.payment-chosen-subtotal .u-price {
 font-size:22px
}
.payment-chosen-favorable .u-price {
 margin-right:2px;
 margin-left:2px;
 color:#f10180
}
.c-payment-method {
 display:inline-block;
 *display:inline;
 *zoom:1;
 position:relative;
 width:177px;
 height:50px;
 cursor:pointer;
 border:1px solid #d2d1d1;
 z-index:1
}
.c-payment-method.is-touch,.device-pc .c-payment-method-hover,.device-pc .c-payment-method:hover {
 *display:block;
 z-index:4
}
.c-payment-method.is-touch .payment-method-type,.device-pc .c-payment-method-hover .payment-method-type,.device-pc .c-payment-method:hover .payment-method-type {
 display:block
}
.has-payment-method-type {
 cursor:default
}
.payment-method-logo-a {
 position:absolute;
 top:5px;
 left:1px;
 z-index:2
}
.payment-method-logo-background {
 background-color:#fff
}
.payment-method-name {
 position:absolute;
 top:0;
 left:0;
 padding-top:15px;
 padding-bottom:15px;
 width:177px;
 height:20px;
 text-align:center;
 line-height:20px;
 z-index:1
}
.payment-method-ad-platform {
 position:absolute;
 top:-9px;
 left:-1px;
 z-index:3
}
.payment-method-ad-card {
 position:absolute;
 top:-1px;
 right:-1px;
 padding-right:2px;
 padding-left:2px;
 color:#fff;
 line-height:18px;
 background-color:#ff9000;
 z-index:2
}
.payment-method-type {
 *zoom:1;
 display:none;
 position:absolute;
 top:50px;
 left:-1px;
 z-index:5;
 width:179px;
 height:40px;
 border-bottom:2px solid #dfdfdf
}
.payment-method-type:after,.payment-method-type:before {
 display:table;
 content:''
}
.payment-method-type:after {
 clear:both
}
.payment-method-type-credit,.payment-method-type-savings {
 *display:inline;
 float:left;
 position:relative;
 width:90px;
 height:40px;
 z-index:1
}
.payment-method-type-savings {
 width:89px
}
.payment-method-type-link {
 display:block;
 height:40px;
 color:#fff;
 font-size:14px;
 text-align:center;
 line-height:40px
}
.payment-method-type-savings .payment-method-type-link {
 background-color:#fb9b79
}
.payment-method-type-savings .payment-method-type-link:hover {
 color:#fff;
 background-color:#ee9373
}
.payment-method-type-savings .payment-method-type-link:active {
 color:#fff;
 background-color:#e18b6d
}
.payment-method-type-credit .payment-method-type-link {
 background-color:#71bcfa
}
.payment-method-type-credit .payment-method-type-link:hover {
 color:#fff;
 background-color:#6bb2ed
}
.payment-method-type-credit .payment-method-type-link:active {
 color:#fff;
 background-color:#65a9e1
}
.payment-method-type-ad {
 position:absolute;
 top:0;
 right:0;
 padding-right:2px;
 padding-left:2px;
 color:#fff;
 font-size:12px;
 line-height:18px;
 background-color:#ff9000;
 z-index:1
}
.payment-method-disabled-tooltips-a {
 bottom:60px;
 left:-1px;
 white-space:nowrap
}
.payment-method-disabled-tooltips-a .ui-tooltips-arrow {
 width:114px
}
.payment-method-credit-tooltips,.payment-method-savings-tooltips {
 bottom:49px;
 width:177px
}
.payment-method-credit-tooltips .tooltips-arrows-wrapper,.payment-method-savings-tooltips .tooltips-arrows-wrapper {
 _width:180px
}
.payment-method-savings-tooltips {
 left:0
}
.payment-method-savings-tooltips .ui-tooltips-arrow {
 width:177px
}
.payment-method-credit-tooltips {
 right:0
}
.payment-method-credit-tooltips .tooltips-arrows {
 left:auto;
 right:20px
}
.is-payment-method-disabled,.is-payment-method-disabled .payment-method-logo-background {
 background-color:#dedede
}
.is-payment-method-disabled,.is-payment-method-disabled:active,.is-payment-method-disabled:hover {
 cursor:not-allowed
}
.device-pc .is-payment-method-disabled-hover .payment-method-type,.device-pc .is-payment-method-disabled:hover .payment-method-type,.is-payment-method-disabled.is-touch .payment-method-type {
 display:none
}
.is-payment-method-type-disable .payment-method-type-link,.is-payment-method-type-disable .payment-method-type-link:active,.is-payment-method-type-disable .payment-method-type-link:hover {
 cursor:not-allowed;
 color:#999;
 background-color:#d0d0d0
}
.icon-payment-logo {
 display:inline-block;
 width:175px;
 height:40px;
 vertical-align:top;
 background-repeat:no-repeat
}
.icon-payment-logo-99bill {
 background-position:0 0
}
.icon-payment-logo-abc {
 background-position:0 -40px
}
.icon-payment-logo-ainong {
 background-position:0 -80px
}
.icon-payment-logo-alipay {
 background-position:0 -120px
}
.icon-payment-logo-aosicard {
 background-position:0 -160px
}
.icon-payment-logo-bcom {
 background-position:0 -200px
}
.icon-payment-logo-bea {
 background-position:0 -240px
}
.icon-payment-logo-bestpay {
 background-position:0 -280px
}
.icon-payment-logo-bjrcb {
 background-position:0 -320px
}
.icon-payment-logo-bob {
 background-position:0 -360px
}
.icon-payment-logo-boc {
 background-position:0 -400px
}
.icon-payment-logo-bos {
 background-position:0 -440px
}
.icon-payment-logo-cnhb {
 background-position:0 -480px
}
.icon-payment-logo-ccb {
 background-position:0 -520px
}
.icon-payment-logo-ceb {
 background-position:0 -560px
}
.icon-payment-logo-cib {
 background-position:0 -600px
}
.icon-payment-logo-cmb {
 background-position:0 -640px
}
.icon-payment-logo-cmbc {
 background-position:0 -680px
}
.icon-payment-logo-cmpay {
 background-position:0 -720px
}
.icon-payment-logo-cncb {
 background-position:0 -760px
}
.icon-payment-logo-dlb {
 background-position:0 -800px
}
.icon-payment-logo-fuioupay {
 background-position:0 -840px
}
.icon-payment-logo-gdb {
 background-position:0 -880px
}
.icon-payment-logo-gzcb {
 background-position:0 -920px
}
.icon-payment-logo-gzrcc {
 background-position:16px -960px
}
.icon-payment-logo-hnapay {
 background-position:0 -1000px
}
.icon-payment-logo-hxb {
 background-position:0 -1040px
}
.icon-payment-logo-hzb {
 background-position:0 -1080px
}
.icon-payment-logo-icbc {
 background-position:0 -1120px
}
.icon-payment-logo-jctcard {
 background-position:0 -1160px
}
.icon-payment-logo-jsb {
 background-position:0 -1200px
}
.icon-payment-logo-nbcb {
 background-position:0 -1240px
}
.icon-payment-logo-njcb {
 background-position:0 -1280px
}
.icon-payment-logo-pab {
 background-position:0 -1320px
}
.icon-payment-logo-psbc {
 background-position:0 -1360px
}
.icon-payment-logo-sanwing {
 background-position:0 -1400px
}
.icon-payment-logo-sdb {
 background-position:0 -1440px
}
.icon-payment-logo-shanglsycard {
 background-position:0 -1480px
}
.icon-payment-logo-shanglvtcard {
 background-position:0 -1520px
}
.icon-payment-logo-sinapay {
 background-position:0 -1560px
}
.icon-payment-logo-spdb {
 background-position:0 -1600px
}
.icon-payment-logo-srcb {
 background-position:0 -1640px
}
.icon-payment-logo-sumpay {
 background-position:0 -1680px
}
.icon-payment-logo-tenpay {
 background-position:0 -1720px
}
.icon-payment-logo-unionpay {
 background-position:0 -1760px
}
.icon-payment-logo-verypass {
 background-position:0 -1800px
}
.icon-payment-logo-wanlitong {
 background-position:0 -1840px
}
.icon-payment-logo-weixin {
 background-position:0 -1880px
}
.icon-payment-logo-xinhuapay {
 background-position:0 -1920px
}
.icon-payment-logo-ydcard {
 background-position:0 -1960px
}
.icon-payment-logo-alipay-code {
 background-position:0 -2000px
}
.icon-payment-logo-cod-cash {
 background-position:0 -2040px
}
.icon-payment-logo-cod-pos {
 background-position:0 -2080px
}
.icon-payment-logo-alipay-cod {
 background-position:0 -2120px
}
.icon-payment-logo-vcp {
 background-position:0 -2160px
}
.icon-payment-logo-wallet {
 width:70px;
 background-position:0 -2231px
}
.payment-method-clip {
 position:relative;
 z-index:1
}
.payment-method-clip .icon-payment-logo {
 position:relative;
 z-index:2
}
.payment-method-clip-name {
 position:absolute;
 top:0;
 left:2px;
 padding-top:10px;
 padding-bottom:10px;
 height:20px;
 text-align:center;
 line-height:20px;
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden;
 z-index:1
}
.payment-method-clip-background {
 background-color:#fff
}
.payment-method-clip .icon-payment-logo-99bill {
 width:59px;
 background-position:-63px 0
}
.payment-method-clip .icon-payment-logo-abc {
 width:137px;
 background-position:-19px -40px
}
.payment-method-clip .icon-payment-logo-ainong {
 width:175px;
 background-position:0 -80px
}
.payment-method-clip .icon-payment-logo-alipay {
 width:95px;
 background-position:-40px -120px
}
.payment-method-clip .icon-payment-logo-aosicard {
 width:175px;
 background-position:0 -160px
}
.payment-method-clip .icon-payment-logo-bcom {
 width:113px;
 background-position:-31px -200px
}
.payment-method-clip .icon-payment-logo-bea {
 width:175px;
 background-position:0 -240px
}
.payment-method-clip .icon-payment-logo-bestpay {
 width:82px;
 background-position:-47px -280px
}
.payment-method-clip .icon-payment-logo-bjrcb {
 width:175px;
 background-position:0 -320px
}
.payment-method-clip .icon-payment-logo-bob {
 width:104px;
 background-position:-36px -360px
}
.payment-method-clip .icon-payment-logo-boc {
 width:85px;
 background-position:-45px -400px
}
.payment-method-clip .icon-payment-logo-bos {
 width:91px;
 background-position:-42px -440px
}
.payment-method-clip .icon-payment-logo-cnhb {
 width:175px;
 background-position:0 -480px
}
.payment-method-clip .icon-payment-logo-ccb {
 width:120px;
 background-position:-28px -520px
}
.payment-method-clip .icon-payment-logo-ceb {
 width:127px;
 background-position:-24px -560px
}
.payment-method-clip .icon-payment-logo-cib {
 width:103px;
 background-position:-36px -600px
}
.payment-method-clip .icon-payment-logo-cmb {
 width:96px;
 background-position:-40px -640px
}
.payment-method-clip .icon-payment-logo-cmbc {
 width:130px;
 background-position:-22px -680px
}
.payment-method-clip .icon-payment-logo-cmpay {
 width:175px;
 background-position:0 -720px
}
.payment-method-clip .icon-payment-logo-cncb {
 width:91px;
 background-position:-42px -760px
}
.payment-method-clip .icon-payment-logo-dlb {
 width:175px;
 background-position:0 -800px
}
.payment-method-clip .icon-payment-logo-fuioupay {
 width:175px;
 background-position:0 -840px
}
.payment-method-clip .icon-payment-logo-gdb {
 width:131px;
 background-position:-22px -880px
}
.payment-method-clip .icon-payment-logo-gzcb {
 width:175px;
 background-position:0 -920px
}
.payment-method-clip .icon-payment-logo-gzrcc {
 width:175px;
 background-position:0 -960px
}
.payment-method-clip .icon-payment-logo-hnapay {
 width:175px;
 background-position:0 -1000px
}
.payment-method-clip .icon-payment-logo-hxb {
 width:103px;
 background-position:-36px -1040px
}
.payment-method-clip .icon-payment-logo-hzb {
 width:175px;
 background-position:0 -1080px
}
.payment-method-clip .icon-payment-logo-icbc {
 width:116px;
 background-position:-30px -1120px
}
.payment-method-clip .icon-payment-logo-jctcard {
 width:175px;
 background-position:0 -1160px
}
.payment-method-clip .icon-payment-logo-jsb {
 width:175px;
 background-position:0 -1200px
}
.payment-method-clip .icon-payment-logo-nbcb {
 width:175px;
 background-position:0 -1240px
}
.payment-method-clip .icon-payment-logo-njcb {
 width:175px;
 background-position:0 -1280px
}
.payment-method-clip .icon-payment-logo-pab {
 width:71px;
 background-position:-52px -1320px
}
.payment-method-clip .icon-payment-logo-psbc {
 width:131px;
 background-position:-22px -1360px
}
.payment-method-clip .icon-payment-logo-sanwing {
 width:175px;
 background-position:0 -1400px
}
.payment-method-clip .icon-payment-logo-sdb {
 width:175px;
 background-position:0 -1440px
}
.payment-method-clip .icon-payment-logo-shanglsycard {
 width:175px;
 background-position:0 -1480px
}
.payment-method-clip .icon-payment-logo-shanglvtcard {
 width:175px;
 background-position:0 -1520px
}
.payment-method-clip .icon-payment-logo-sinapay {
 width:175px;
 background-position:0 -1560px
}
.payment-method-clip .icon-payment-logo-spdb {
 width:93px;
 background-position:-41px -1600px
}
.payment-method-clip .icon-payment-logo-srcb {
 width:175px;
 background-position:0 -1640px
}
.payment-method-clip .icon-payment-logo-sumpay {
 width:175px;
 background-position:0 -1680px
}
.payment-method-clip .icon-payment-logo-tenpay {
 width:84px;
 background-position:-45px -1720px
}
.payment-method-clip .icon-payment-logo-unionpay {
 width:101px;
 background-position:-37px -1760px
}
.payment-method-clip .icon-payment-logo-verypass {
 width:175px;
 background-position:0 -1800px
}
.payment-method-clip .icon-payment-logo-wanlitong {
 width:175px;
 background-position:0 -1840px
}
.payment-method-clip .icon-payment-logo-weixin {
 width:119px;
 background-position:-29px -1880px
}
.payment-method-clip .icon-payment-logo-xinhuapay {
 width:175px;
 background-position:0 -1920px
}
.payment-method-clip .icon-payment-logo-ydcard {
 width:175px;
 background-position:0 -1960px
}
.payment-method-clip .icon-payment-logo-alipay-code {
 width:116px;
 background-position:-30px -2000px
}
.payment-method-clip .icon-payment-logo-cod-cash {
 width:175px;
 background-position:0 -2040px
}
.payment-method-clip .icon-payment-logo-cod-pos {
 width:175px;
 background-position:0 -2080px
}
.payment-method-clip .icon-payment-logo-alipay-cod {
 width:175px;
 background-position:0 -2120px
}
.payment-method-clip .icon-payment-logo-vcp {
 width:120px;
 background-position:-28px -2160px
}
.payment-method-clip .icon-payment-logo-remits {
 width:120px;
 background-position:-28px -2196px
}
.m-payment-operation {
 text-align:left;
 padding:30px 0 0 42px
}
.payment-operate-guide-explain {
 display:none;
 margin-left:14px;
 margin-right:0;
 line-height:44px;
 color:#ef4c4c;
 font-size:14px
}
.is-payment-operation-guide-in {
 line-height:44px
}
.is-payment-operation-guide-in .payment-operate-guide-explain {
 display:inline-block
}
.c-order-actions {
 text-align:left;
 margin-top:20px;
 padding-right:0;
 padding-left:42px;
 font-size:14px
}
.c-order-actions a {
 margin-right:0;
 margin-left:10px
}
.is-page-dual-payment .countdown-container,.is-page-dual-payment .order-status-tips-a,.is-page-timeout .countdown-container {
 display:none
}
.is-page-dual-payment .dual-payment-order-status-tips {
 display:block
}
.payment-check {
 padding:20px 0 35px 13px;
 position:relative;
 zoom:1
}
.payment-check .ui-input {
 width:347px;
 float:left;
 border-top-right-radius:0;
 border-bottom-right-radius:0
}
.payment-check .ipt-fork-delete::-ms-clear,.payment-check .ipt-fork-delete::-ms-reveal {
 display:none
}
.payment-check .form-group .payment-check-btn {
 float:left;
 margin-left:-1px;
 border-top-left-radius:0;
 border-bottom-left-radius:0;
 padding:0 5px;
 width:70px
}
.cart-number-position {
 top:-17px;
 left:13px;
 width:347px
}
.payment-card-bank {
 position:absolute;
 top:27px;
 left:211px;
 text-align:right;
 width:160px;
 white-space:nowrap
}
.payment-check-loading {
 vertical-align:bottom;
 margin-top:1px
}
.payment-card-tips {
 color:#999;
 position:absolute;
 left:476px;
 top:26px;
 font-size:14px;
 display:none;
 white-space:nowrap
}
.payment-check-distinguish,.payment-check-loading,.payment-check-message,.payment-check-support {
 display:none
}
.is-payment-check-cardnum .cart-num-float,.is-payment-check-distinguish .payment-check-distinguish,.is-payment-check-support .payment-check-support {
 display:block
}
.is-payment-check-loading .payment-check-loading,.is-payment-check-message .payment-check-message {
 display:inline-block
}
.payment-check-modal .payment-check-item {
 font-size:14px;
 padding:11px 0 2px 0;
 height:52px;
 line-height:52px
}
.payment-check-modal .payment-check-item .card-details,.payment-check-modal .payment-check-item .card-tips {
 *display:inline;
 float:left
}
.payment-check-modal .payment-check-item .card-tips {
 margin-right:14px
}
.payment-check-card-type {
 padding-top:3px
}
.payment-check-card-type .card-number {
 font-size:22px
}
.payment-check-card-type .bank-name,.payment-check-card-type .card-type {
 font-size:16px
}
.payment-check-card-type .bank-name {
 margin-left:4px;
 margin-right:11px
}
.payment-check-logo {
 height:52px
}
.payment-check-card-pay .m-price {
 color:#f10180
}
.payment-check-card-pay .pay-price {
 margin-right:5px
}
.payment-check-card-pay .pay-price .u-yen {
 font-size:16px
}
.payment-check-card-pay .pay-price .u-price {
 font-size:22px
}
.passport-ad-limit {
 width:100%;
 display:inline-block
}
.passport-ad-limit b {
 font-weight:400
}
.payment-selection-result-line {
 height:1px;
 line-height:0;
 font-size:0;
 overflow:hidden;
 background:#c6c7c7;
 position:absolute;
 left:0;
 bottom:-1px;
 z-index:5;
 width:960px;
 display:none
}
.payment-chosen-platform {
 margin-top:8px
}
.payment-selection-position {
 position:relative;
 height:0;
 z-index:10
}
.payment-selection-position .c-order-actions,.payment-selection-position .payment-selection-tips {
 font-size:12px;
 position:absolute;
 right:0;
 bottom:5px;
 margin:0;
 padding:0;
 line-height:32px;
 height:32px;
 display:inline-block;
 color:#249fdf
}
.payment-selection-newcoustomer .c-order-actions {
 color:#333
}
.payment-selection-position .if-info {
 display:inline-block;
 vertical-align:top;
 *line-height:16px
}
.payment-comm-arr .comm-arr-tborder,.payment-comm-arr .comm-arr-triangle {
 font-family:"宋体","Hiragino Sans GB";
 display:block;
 width:12px;
 height:16px;
 font-size:12px;
 overflow:hidden;
 _position:relative;
 margin-left:10px
}
.payment-comm-arr .comm-arr-tborder {
 margin-top:-7px;
 _margin-top:-5px;
 color:#dbdada;
 font-style:normal
}
.payment-comm-arr .comm-arr-triangle {
 margin-top:-14px;
 color:#fff
}
.payment-comm-arr.if-passport {
 right:40px
}
.payment-comm-arr.if-selection {
 right:60px
}
.payment-comm-tips-hover {
 position:absolute;
 right:0;
 top:0;
 display:none;
 white-space:normal;
 width:100%;
 height:300%;
 cursor:default;
 float:left;
 line-height:normal;
 z-index:10
}
.c-passport-ad .payment-comm-tips-hover {
 width:160px
}
.payment-selection-position .payment-comm-tips-hover {
 width:406px;
 height:418px;
 overflow:hidden
}
.payment-selection-position .if-tips-medium {
 width:354px
}
.payment-comm-tips-bindarea:hover .payment-comm-tips-hover {
 display:block
}
.payment-comm-tips {
 border:1px solid #dbdada;
 box-shadow:0 0 3px rgba(0,0,0,.1);
 border-radius:2px;
 background:#fff;
 position:absolute;
 right:0;
 top:35px;
 width:100%;
 padding:10px 10px;
 float:left
}
.payment-comm-tips.if-tips-medium {
 padding:20px 30px
}
.payment-selection-position .if-tips-medium {
 padding-right:20px;
 padding-bottom:0
}
.payment-comm-arr {
 position:absolute;
 right:30px;
 top:-3px;
 line-height:18px
}
.payment-comm-tips.if-passport-tips {
 top:35px
}
.payment-tips-info {
 font-size:14px;
 color:#333;
 display:block
}
.payment-tips-note {
 font-size:12px;
 color:#999
}
.pic-payment-tips {
 margin-top:10px;
 margin-right:10px;
 float:left;
 width:108px;
 height:134px
}
.payment-tips-step-qs {
 padding-top:15px;
 padding-bottom:7px;
 width:100%;
 display:block;
 color:#333;
 font-size:14px;
 line-height:normal
}
.payment-tips-step {
 width:374px;
 padding-left:30px;
 _padding-left:60px;
 margin-left:-30px;
 margin-right:-20px;
 background:#f0f0f0;
 float:left;
 border-radius:2px;
 margin-top:15px;
 color:#666;
 font-size:13px;
 padding-bottom:20px;
 line-height:22px;
 overflow:hidden
}
.payment-tips-step-ps {
 width:100%;
 display:block;
 color:#999;
 font-size:12px;
 padding-top:10px;
 line-height:normal
}
.pic-payment-tips-safe {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-666px -153px;
 width:108px;
 height:134px
}
.pic-payment-tips-faster {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-553px -153px;
 width:108px;
 height:134px
}
.pic-payment-tips-fastest {
 background-image:url(//pay.vipstatic.com/img/cart/te/4/ipay/sprites.png?1490845004126);
 background-position:-553px -292px;
 width:108px;
 height:134px
}
.form-item .jr_vip_agreement {
 margin-top:10px
}
.ui-dialog-task .ui-dialog-inner {
 overflow:inherit
}
.jr_vip_agreement a {
 font-size:14px
}
.jr_vip_agreement i {
 display:inline;
 vertical-align:middle;
 position:relative
}
.jr_vip_agreement .payment-selection-tips {
 font-size:12px;
 position:absolute;
 right:0;
 bottom:5px;
 margin:0;
 padding:0;
 line-height:32px;
 height:32px;
 display:inline-block;
 color:#249fdf
}
.payment-comm-arr.if-jragreement {
 left:8px
}
.jr_vip_agreement .payment-comm-tips-hover {
 width:234px;
 right:auto;
 left:5px
}
.jr_vip_agreement .payment-comm-tips {
 top:27px;
 *top:33px
}
.jr_vip_agreement .passport-ad-limit {
 width:100%;
 display:inline-block;
 font-size:12px;
 font-family:" tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,\5FAE\8F6F\96C5\9ED1,\5B8B\4F53,sans-serif";
 margin-top:-5px
}
.jr_vip_agreement .passport-ad-limit b {
 color:#333;
 width:100%;
 display:inline-block;
 font-weight:700;
 padding-top:5px;
 padding-bottom:2px
}
.jr_vip_agreement .passport-ad-limit span {
 color:#666;
 width:100%;
 display:inline-block;
 line-height:18px;
 padding-left:5px;
 padding-bottom:5px
}
.ui-dialog-title-limit {
 width:120%;
 _width:100%;
 overflow:hidden;
 text-align:center;
 height:34px;
 line-height:34px
}
.ui-dialog-title-limit span {
 width:253px;
 float:left;
 height:33px;
 background:#f7f7f7;
 border:1px solid #ccc;
 border-top:none;
 margin-left:-1px;
 cursor:pointer
}
.ui-dialog-title-limit .isHover {
 background:#fff;
 border-bottom:1px solid #fff
}
.ui-dialog-title-limit span.ui-dialog-titlelast {
 width:225px
}
.ui-dialog-title-ex {
 border-bottom:none
}
.ui-dialog-same {
 display:none
}
.payment-tips-remits {
 color:#666
}
.payment-tips-remits .if-query {
 vertical-align:top;
 padding-left:4px;
 position:relative
}
.payment-tips-remits .payment-comm-tips-hover {
 left:-16px;
 top:-18px;
 width:90%;
 height:200%
}
.payment-tips-remits .payment-comm-tips {
 left:3px;
 width:266px;
 top:auto;
 bottom:22px
}
.payment-tips-remits .payment-comm-arr .comm-arr-triangle {
 margin-top:-18px
}
.payment-tips-remits .payment-comm-arr {
 left:8px;
 top:auto;
 bottom:-7px;
 *bottom:-8px
}
.payment-tips-remits .passport-ad-limit {
 font-size:12px;
 color:#808081;
 line-height:22px;
 font-family:tahoma,arial,Hiragino Sans GB,WenQuanYi Micro Hei,'\5FAE\8F6F\96C5\9ED1','\5B8B\4F53',sans-serif
}
.pay_offline {
 padding:50px 40px
}
.pay_offline .text {
 padding-left:0;
 font-size:20px
}
.pay_offline .delivery-desc {
 font-size:16px
}
.m-payment-box-a-beifu .J_show_bank_tab,.m-payment-box-a-beifu .J_show_platform_tab {
 border:1px dashed #c2c2c2
}
.m-payment-box-a-beifu .payment-common-beifu-pms {
 color:#ff0081;
 border:solid 1px #ff0081;
 padding:2px 5px;
 border-radius:2px;
 line-height:20px;
 margin-right:5px
}
.m-payment-box-a-beifu .J_beifu_tip_txt {
 margin-top:2px
}
.m-payment-box-a-beifu .is-payment-common-item-disabled label {
 cursor:not-allowed;
 background-position:-21px -42px
}
.m-payment-box-a-beifu .is-payment-common-item-disabled label:hover {
 background-position:-21px -42px
}
.m-payment-box-a-beifu .adv-txt-wrapper {
 border:1px solid #eae9e9;
 border-top:none;
 border-bottom:none;
 padding-left:41px;
 padding-right:41px
}
.m-payment-box-a-beifu .payment-common-tips-right {
 float:right;
 margin-top:10px
}
.m-payment-box-a-beifu .payment-common-inner {
 width:874px
}
.m-payment-box-a-beifu .recommendPayment {
 border-left:1px solid #eae9e9;
 border-right:1px solid #eae9e9;
 margin-bottom:15px;
 margin-top:1px
}
.m-payment-box-a-beifu .beifuPaymentList {
 border-left:1px solid #eae9e9;
 border-right:1px solid #eae9e9;
 position:relative;
 margin-bottom:15px
}
.m-payment-box-a-beifu .beifuPaymentList-more {
 margin-bottom:40px
}
.m-payment-box-a-beifu .beifuPaymentList-more .more {
 padding:0 17px 0 17px;
 position:absolute;
 right:-1px;
 cursor:pointer;
 height:22px;
 line-height:22px;
 margin-top:-1px;
 color:#1d94d1;
 border:1px solid #1d94d1
}
.m-payment-box-a-beifu .beifuPaymentList-more .more:hover {
 color:#1d94d1;
 border-color:#1d94d1
}
.m-payment-box-a-beifu .historyPaymentList {
 border-left:1px solid #eae9e9;
 border-right:1px solid #eae9e9
}
.m-payment-box-a-beifu .payment-common-item:hover {
 position:initial
}
.m-payment-box-a-beifu .is-payment-common-item-selected .payment-common-inner {
 border:1px solid #7cbf12;
 position:relative;
 left:-1px;
 z-index:4
}
.m-payment-box-a-beifu .disabledHack .payment-common-inner {
 z-index:100
}
.ui-dialog-inner-beifu .modal-qa-hd {
 text-align:center
}
.ui-dialog-inner-beifu .modal-qa-hd a {
 color:#1d94d1
}
.ui-dialog-inner-beifu .modal-qa-hd .u-split-line {
 background-color:#1d94d1
}
.ui-dialog-inner-beifu .ui-btn-secondary {
 background-color:#f10180;
 border:1px solid #f10180;
 color:#fff
}
.ui-dialog-content-addCard p {
 text-align:center;
 margin-bottom:20px
}
.ui-dialog-content-addCard ul li {
 display:block;
 margin-bottom:20px
}
.ui-dialog-content-addCard ul li span {
 background:#fff;
 font-size:12px;
 color:#f10180;
 padding:0 5px;
 border-radius:2px;
 margin-left:10px
}
.is-payment-common-item-disabled {
 opacity:.6
}
.m-payment-box-a {
 background:0 0
}
.m-payment-selection {
 width:auto
}
.payment-selection-trigger {
 padding-left:0;
 padding-right:0
}
.payment-selection-trigger a {
 background:#fff
}
.payment-a-tab-header {
 padding:0
}
.m-payment-operation {
 padding-left:0
}
.c-order-actions {
 padding-left:0
}
.order-status-info-a {
 height:35px;
 line-height:35px
}
.order-status-info-a .order-info-countdown-row {
 float:left
}
.order-status-info-a .to-be-paid {
 float:right
}
.payment-common-more {
 padding-right:0
}
.payment-common-more a {
 width:auto;
 padding:0 17px 0 17px;
 color:#1d94d1;
 border:1px solid #1d94d1
}
.J_waiting_module .ui-dialog-inner {
 padding-bottom:20px
}
.is-payment-common-more-in-2 .payment-common-more {
 display:none
}
.is-payment-common-more-in-2 .payment-common-more-2 {
 display:block
}
    
    </style>
  </head>
  
  <body>
    <body>

            <div class="g-hd">
        <div class="g-row">
            
<div class="m-logo">
    <a href="http://www.vip.com/" class="logo-link">唯品会 - 一家专门做特卖的网站</a>
</div>
<div class="m-inline-block m-site-nav">
    <div class="inline-block-item member-actions login_after" id="J_head_log">
    <span class="welcome-text" id="J_welcome_text">你好, <a target="_blank" href="http://myi.vip.com/">150704882</a><a href="http://club.vip.com/index.php" target="_blank" class="member-level member-level-1" title="等级：铁牌会员"></a></span>
    <a href="###" id="J_header_lnkLogOut" class="member-actions-link J_fake_a">[退出]</a>
    <a href="http://order.vip.com/order/orderlist?_r=714039976" target="_blank" class="member-actions-link">订单管理</a>
</div>

    <span class="inline-block-item u-split-line"></span>

    <div class="inline-block-item tel">
        <span class="vipFont if-tel"></span>400-6789-888
    </div>

    <span class="inline-block-item u-split-line"></span>

    <div class="inline-block-item online-service">
        <a href="http://acs.vip.com/" class="J_header_olService J_fake_a" target="_blank" rel="external">
            <span class="vipFont if-online-service"></span>在线客服
        </a>
    </div>

    <span class="inline-block-item u-split-line"></span>

    <div class="inline-block-item servers-links">
        <div class="m-servers-dropdown" data-hover="m-servers-dropdown-hover" data-touch="z-touch">
            <div class="servers-dropdown-hd">
                <span class="servers-dropdown-hd-title">
                    <span class="vipFont if-member"></span>会员服务
                </span>
                <span class="vipFont if-arrow-down"></span>
            </div>
            <div class="servers-dropdown-bd">
                <ul>
                    <li>
                        <a href="http://help.vip.com/" target="_blank" rel="external">帮助中心</a>
                    </li>
                    <li>
                        <a href="http://feedback.vip.com/feedback!hotFeedback.do" target="_blank" rel="external">会员反馈</a>
                    </li>
                    <li>
                        <a href="http://club.vip.com" target="_blank" rel="external">会员俱乐部</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- / .m-site-nav -->

<!--用$isNoLoginUser来区分是否免注册流程-->
<script type="text/html" id="J_header_logBefor">
    <a href="###" id="J_header_lnkLogin" class="member-actions-link J_fake_a">登录</a>
    <a href="###" id="J_header_lnkRegister" class="member-actions-link J_fake_a">注册</a>
</script>

<script type="text/html" id="J_header_logAfter">
    <span class="welcome-text" id="J_welcome_text">你好, <a target="_blank" href="http://myi.vip.com/">{$J_header_account}</a></span>
    <a href="###" id="J_header_lnkLogOut" class="member-actions-link J_fake_a">[退出]</a>
    <a href="http://order.vip.com/order/orderlist?_r=714039976" target="_blank" class="member-actions-link">订单管理</a>
</script>

<script type="text/javascript">
        VIPSHOP = $.extend({}, VIPSHOP, {"jsMainVer":"2","cssMainVer":"4","mCssMainVer":"1","mJsMainVer":"1","cssVer":"2017062203","jsVer":"2017062203","staticJs":"\/\/pay.vipstatic.com\/js\/public","staticCss":"\/\/pay.vipstatic.com\/css\/public","staticImg":"\/\/pay.vipstatic.com\/img","frontHost":"http:\/\/www.vip.com","cartHost":"http:\/\/cart.vip.com\/te2","checkoutHost":"http:\/\/checkout.vip.com\/te2","apiHost":"http:\/\/www.vip.com","userHost":"https:\/\/passport.vip.com"});
</script>
        <ul class="m-helper-small">
            <li class="helper-small-item">
                <span class="vipFont"></span>
                <span class="helper-small-item-text">100% 正品保证</span>
            </li>
            <li class="helper-small-item">
                <span class="vipFont"></span>
                <span class="helper-small-item-text">七天无理由放心退</span>
            </li>
            <li class="helper-small-item">
                <span class="vipFont"></span>
                <span class="helper-small-item-text">退货返运费</span>
            </li>
        </ul>
        </div>
    </div>
        <div class="g-bd">
                <div class="g-row J_ue_position_container" id="J_counter">
            
<div class="m-order-status-a " id="J_order_mod">

    <div class="m-tips order-status-tips-a">
        <i class="vipFont if-sucess if-size-32 tips-icon"></i>
        <div class="tips-cnt">
                        <p class="tips-text J_ad_AD016wm08">订单提交成功，还差一步就抢到心爱的商品，快快支付吧~</p>
        </div>
    </div>

        <div class="m-tips  order-status-tips-a dual-payment-order-status-tips">
        <i class="vipFont if-sigh if-size-32 tips-icon"></i>
        <div class="tips-cnt">
                        <p class="tips-text J_ad_AD016wm09">还差一步就抢到心爱的商品啦，快快支付吧~</p>
        </div>
    </div>

    <div class="order-status-info-a">
        <div class="order-info-row  order-info-countdown-row">
            <div class="order-detail">
                共<span class="order-number">1</span>张订单，
                <div class="m-tooltips-trigger  tooltips-trigger-bottom  order-detail-tooltips-trigger" data-toggle="tooltip">
                    <span class="tooltips-trigger-text">订单详情</span>。

                    
                    <div class="ui-tooltips  ui-tooltips-top-left-arrow order-detail-tooltips" id="J_order_tips">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content J_tooltips_content">
                        <div class="order-detail-group
                        order-detail-group-last
                        ">
                            <div class="order-detail-number">订单1: 17062805838854</div>
                            <ul class="c-list  e-disc-list  order-detail-list">
                                
                                    <li class="list-item"><span class="goods-name">卡宾CABBEEN男装专场 - 2017年新品豹子印花百搭短袖T恤</span><span class="goods-size">48</span></li>
                                
                                    <li class="list-item"><span class="goods-name">magic power男装专场 - 变形金刚系列深蓝男式衬衫</span><span class="goods-size">170/88A(M)</span></li>
                                
                            </ul>
                        </div>
                        </div>
</div>

                   
                </div>
                
                <span class="countdown-container">请在<span class="J_countdown_container"><span class="countdown-minute  u-highlight  J_wrap_countdown_min">0</span>分<span class="countdown-second  u-highlight  J_wrap_countdown_sec">0</span>秒</span>内完成支付。</span>
              
            </div>
        </div>
        <div class="order-info-row to-be-paid">
            待支付：<span class="m-price"><span class="u-yen">¥</span><span class="u-price J_payTotalNotFav">264</span></span>
        </div>
    </div>

</div>

                        <div class="c-payment-notice f-hide J_ad_AD458">
                <i class="vipFont if-sigh payment-notice-icon"></i>
                <p class="payment-notice-explain J_ad_text"></p>
            </div>
                        <div class="c-ad-box top-ad-box f-hide J_ad_AD016wm10" style="display: block;">
                <p class="ad-box-explain J_ad_text">快捷支付，无需开通网银，免手续费</p>
            </div>
			            
                        <div class="m-payment-box-a " id="J_payment_box">
                
                <div class="payment-box-a-content">
                    <div id="JisMantissa"></div>
                    
<div class="m-payment-common" id="J_common_payment_mod" data-hover="payment-common-item-hover" data-touch="is-touch"><style>.icon-payment-logo {background-image: url(//pay.vipstatic.com/img/share/sprites-payment-logo.png?2017062203);}</style>
    <div class="historyPaymentList"></div>
    <div class="payment-common-more J_show_all">
        <a class="button-payment-common-more J_fake_a" href="###" role="button" rel="nofollow" mars_sead="pay_morechief_btn">更多支付方式</a>
    </div>





</div>



<div class="m-payment-selection is-payment-selection-tab-in" id="J_payment_selection">
    <div class="payment-selection-trigger">
                        <a data-list_key="historyPaymentList" data-pay_isadd="0" data-pay_type="0" data-payment_key="0" data-pay_id="0" class="u-btn  btn-default  J_fake_a  J_show_bank_tab" data-length="0" href="###" role="button" rel="nofollow" mars_sead="pay_bankcard_btn">
                    使用银行卡                </a>
                            <a data-list_key="historyPaymentList" data-pay_isadd="0" data-pay_type="0" data-payment_key="0" data-pay_id="0" class="u-btn  btn-default  J_fake_a  J_show_platform_tab" data-length="0" href="###" role="button" rel="nofollow" mars_sead="pay_platform_btn">
                    微信等平台                </a>
                </div>
    

<div class="m-payment-a-tab  payment-selection-tab J_payment_selection_tab">
    <div class="payment-a-tab-header">
                    <div class="payment-a-tab-trigger J_tab_trigger  is-payment-a-tab-trigger-active" mars_sead="pay_bankcard_btn">
                使用银行卡                            </div>
                    <div class="payment-a-tab-trigger J_tab_trigger" mars_sead="pay_platform_btn">
                微信等平台                            </div>
                
    </div>

    
        <div class="payment-selection-position">
         <div class="payment-selection-tips payment-comm-tips-bindarea Js_selection_tips">
            <i class="vipFont if-info"></i>
            使用快捷支付惊喜不断哦~~
            <div class="payment-comm-tips-hover">
                <div class="payment-comm-tips if-tips-medium">
                    <div class="payment-comm-arr if-selection"><span class="comm-arr-tborder">◆</span><span class="comm-arr-triangle">◆</span></div>
                    <span class="payment-tips-info">快捷支付专享特权<span class="payment-tips-note">（不包括支付宝及微信的快捷支付）</span></span>
                    <span class="pic-payment-tips pic-payment-tips-safe"></span>
                    <span class="pic-payment-tips pic-payment-tips-faster"></span>
                    <span class="pic-payment-tips pic-payment-tips-fastest"></span>
                    <div class="payment-tips-step">
                         <span class="payment-tips-step-qs">Q：怎么使用快捷支付？</span>
                        1. 选择“使用银行卡”；<br>
                        2. 选择对应的银行以及银行卡类型；<br>
                        3. 选择“快捷支付”；<br>
                        4. 点击“前往支付”进入绑卡支付流程；<br>
                        
                        <span class="payment-tips-step-ps">PS：绑卡成功下次选择快捷支付只需短信验证码即可完成付款哦~</span>
                    </div>
            </div>
        </div>
        </div>
    </div>
        <div class="payment-a-tab-body">
                <div class="payment-a-tab-panel  J_tab_panel active-pannel" data-list_key="bankList" style="display: block;">
            
            <div class="c-ad-box tab-ad-box f-hide J_ad_AD204">
                <p class="ad-box-explain J_ad_text"></p>
            </div>

            <div class="payment-check J_check_card_mod">
    <div class="form-group">
        <input name="cardNo" class="ui-input ipt-fork-delete J_bank_cid_input" placeholder="输入银行卡号进行智能识别" maxlength="23" type="text">
                <a href="###" class="ui-btn-medium ui-btn-primary payment-check-btn J_fake_a J_use_card z-btn-disabled" role="button" mars_sead="pay_banknum_btn">确定</a>
    </div>
    
    <div class="cart-num-float cart-number-position J_zoom_in_cardNo"></div>

    <div class="payment-card-bank">
        <span class="payment-check-message J_card_info">

        </span>
        <span class="ii-loading-pink-16x16 payment-check-loading"></span>

    </div>
    <span class="payment-card-tips payment-check-distinguish">卡号无法识别，您可以<a href="#" class="J_fake_a J_clear_cardNo">重新输入</a>或手动选择支付方式。</span>
    <span class="payment-card-tips payment-check-support">暂不支持该银行卡，请选择其他支付方式。</span>

</div>

<script type="text/html" id="J_card_info_tmpl">
    <span title="{{bank_name}}">{{bank_name | cutter:10}}</span>
    <span>{{card_type}}</span>
</script>
            <div class="payment-a-tab-tips">或直接选择银行：</div>
            
            <div class="J_bank_list">
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-ccb payment-method-clip-background" data-init_logo="0" title="中国建设银行"></div>
    <span class="payment-method-name">中国建设银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151110000" data-name="储蓄卡" data-logo="icon-payment-logo-ccb" mars_sead="card_id_type151110000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151120000" data-name="信用卡" data-logo="icon-payment-logo-ccb" mars_sead="card_id_type151120000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-icbc payment-method-clip-background" data-init_logo="0" title="中国工商银行"></div>
    <span class="payment-method-name">中国工商银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151210000" data-name="储蓄卡" data-logo="icon-payment-logo-icbc" mars_sead="card_id_type151210000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151220000" data-name="信用卡" data-logo="icon-payment-logo-icbc" mars_sead="card_id_type151220000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-abc payment-method-clip-background" data-init_logo="0" title="中国农业银行"></div>
    <span class="payment-method-name">中国农业银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151310000" data-name="储蓄卡" data-logo="icon-payment-logo-abc" mars_sead="card_id_type151310000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151320000" data-name="信用卡" data-logo="icon-payment-logo-abc" mars_sead="card_id_type151320000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cmb payment-method-clip-background" data-init_logo="0" title="招商银行"></div>
    <span class="payment-method-name">招商银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151410000" data-name="储蓄卡" data-logo="icon-payment-logo-cmb" mars_sead="card_id_type151410000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151420000" data-name="信用卡" data-logo="icon-payment-logo-cmb" mars_sead="card_id_type151420000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-boc payment-method-clip-background" data-init_logo="0" title="中国银行&nbsp;"></div>
    <span class="payment-method-name">中国银行&nbsp;</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151510000" data-name="储蓄卡" data-logo="icon-payment-logo-boc" mars_sead="card_id_type151510000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151520000" data-name="信用卡" data-logo="icon-payment-logo-boc" mars_sead="card_id_type151520000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-spdb payment-method-clip-background" data-init_logo="0" title="上海浦东发展银行"></div>
    <span class="payment-method-name">上海浦东发展银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type152310000" data-name="储蓄卡" data-logo="icon-payment-logo-spdb" mars_sead="card_id_type152310000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type152320000" data-name="信用卡" data-logo="icon-payment-logo-spdb" mars_sead="card_id_type152320000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-psbc payment-method-clip-background" data-init_logo="0" title="中国邮政储蓄银行"></div>
    <span class="payment-method-name">中国邮政储蓄银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151610000" data-name="储蓄卡" data-logo="icon-payment-logo-psbc" mars_sead="card_id_type151610000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151620000" data-name="信用卡" data-logo="icon-payment-logo-psbc" mars_sead="card_id_type151620000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-bcom payment-method-clip-background" data-init_logo="0" title="交通银行"></div>
    <span class="payment-method-name">交通银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151710000" data-name="储蓄卡" data-logo="icon-payment-logo-bcom" mars_sead="card_id_type151710000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151720000" data-name="信用卡" data-logo="icon-payment-logo-bcom" mars_sead="card_id_type151720000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-pab payment-method-clip-background" data-init_logo="0" title="中国平安银行"></div>
    <span class="payment-method-name">中国平安银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151810000" data-name="储蓄卡" data-logo="icon-payment-logo-pab" mars_sead="card_id_type151810000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151820000" data-name="信用卡" data-logo="icon-payment-logo-pab" mars_sead="card_id_type151820000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-gdb payment-method-clip-background" data-init_logo="0" title="广发银行&nbsp;"></div>
    <span class="payment-method-name">广发银行&nbsp;</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type151910000" data-name="储蓄卡" data-logo="icon-payment-logo-gdb" mars_sead="card_id_type151910000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type151920000" data-name="信用卡" data-logo="icon-payment-logo-gdb" mars_sead="card_id_type151920000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cncb payment-method-clip-background" data-init_logo="0" title="中信银行"></div>
    <span class="payment-method-name">中信银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type152010000" data-name="储蓄卡" data-logo="icon-payment-logo-cncb" mars_sead="card_id_type152010000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type152020000" data-name="信用卡" data-logo="icon-payment-logo-cncb" mars_sead="card_id_type152020000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cib payment-method-clip-background" data-init_logo="0" title="兴业银行"></div>
    <span class="payment-method-name">兴业银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type152110000" data-name="储蓄卡" data-logo="icon-payment-logo-cib" mars_sead="card_id_type152110000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type152120000" data-name="信用卡" data-logo="icon-payment-logo-cib" mars_sead="card_id_type152120000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-ceb payment-method-clip-background" data-init_logo="0" title="中国光大银行"></div>
    <span class="payment-method-name">中国光大银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type152210000" data-name="储蓄卡" data-logo="icon-payment-logo-ceb" mars_sead="card_id_type152210000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type152220000" data-name="信用卡" data-logo="icon-payment-logo-ceb" mars_sead="card_id_type152220000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-cmbc payment-method-clip-background" data-init_logo="0" title="中国民生银行"></div>
    <span class="payment-method-name">中国民生银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type152410000" data-name="储蓄卡" data-logo="icon-payment-logo-cmbc" mars_sead="card_id_type152410000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type152420000" data-name="信用卡" data-logo="icon-payment-logo-cmbc" mars_sead="card_id_type152420000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
    
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-hxb payment-method-clip-background" data-init_logo="0" title="华夏银行"></div>
    <span class="payment-method-name">华夏银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type152710000" data-name="储蓄卡" data-logo="icon-payment-logo-hxb" mars_sead="card_id_type152710000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type152720000" data-name="信用卡" data-logo="icon-payment-logo-hxb" mars_sead="card_id_type152720000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
      f-hide 
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-bos payment-method-clip-background" data-init_logo="0" title="上海银行"></div>
    <span class="payment-method-name">上海银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type152810000" data-name="储蓄卡" data-logo="icon-payment-logo-bos" mars_sead="card_id_type152810000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type152820000" data-name="信用卡" data-logo="icon-payment-logo-bos" mars_sead="card_id_type152820000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    <div class="payment-method-item J_payment_btn_outer
      f-hide 
    ">
        
        <div class="c-payment-method J_payment_btn
  has-payment-method-type

" data-hover="c-payment-method-hover" data-touch="is-touch" data-plat_type="" data-bankid="">
    <div class="icon-payment-logo payment-method-logo-a icon-payment-logo-gzrcc payment-method-clip-background" data-init_logo="0" title="广州农商银行"></div>
    <span class="payment-method-name">广州农商银行</span>
        
        
    
    <div class="payment-method-type">
        
        
        <div class="J_card
            
            payment-method-type-savings
            
            " data-card_pay_type_id="type178010000" data-name="储蓄卡" data-logo="icon-payment-logo-gzrcc" mars_sead="card_id_type178010000">
            <a class="payment-method-type-link J_fake_a" href="###">储蓄卡</a>
            
        </div>
        
        <div class="J_card
            
            payment-method-type-credit
            
            " data-card_pay_type_id="type178020000" data-name="信用卡" data-logo="icon-payment-logo-gzrcc" mars_sead="card_id_type178020000">
            <a class="payment-method-type-link J_fake_a" href="###">信用卡</a>
            
        </div>
        
        
    </div>
    
        <div class="" data-toggle="tooltip">
        <div class="ui-tooltips  ui-tooltips-bottom-left-arrow payment-method-disabled-tooltips-a" id="">
    <div class="ui-tooltips-arrow">
        <span class="arrow arrow-out">◆</span>
        <span class="arrow">◆</span>
    </div>
    <div class="ui-tooltips-content">
                    <p class="tooltips-text J_tip_txt"></p>            </div>
</div>
    </div>
</div>
    </div>
    
    
    <div class="payment-method-item  payment-method-item-more J_show_all">
        <a class="payment-method-more-link J_fake_a" href="###" role="button" rel="nofollow" mars_sead="pay_morebank_btn">
            <span class="payment-method-more-explain">
                
                    更多银行
                
            </span>
        <i class="vipFont if-big-arrow-bottom"></i>
        </a>
    </div>
    </div>


        </div>



                <div class="payment-a-tab-panel payment-tab-panel-platform J_tab_panel" data-list_key="platformList" style="display: none;">
            
            <div class="c-ad-box tab-ad-box f-hide J_ad_AD0">
                <p class="ad-box-explain J_ad_text"></p>
            </div>

            
            <div class="J_platform_list"></div>


        </div>



            </div>
</div>

    <div class="payment-selection-result">
                <div class="c-payment-chosen">
                        <div class="payment-chosen-row J_selectedPayment"></div>
                        <div class="payment-chosen-row  payment-chosen-type J_cardPayTypeList f-hide"></div>
            
            <div class="vip-jr-tips-field vip-jr-preaward vip-jr-tips-hide J_vip_preaward"></div>
            <div class="vip-jr-tips-field vip-jr-tips-hide J_vip_jr_tips_field ">
                <div class="vip-jr-intro-field">
                                        <span class="J_ad_AD016wm15">您满足唯品花优先体验资格，当月消费下月还，随心分期！</span>
                    <span class="vip-jr-info-tips J_jr_ag_tips">
                        <i class="vipFont if-query vip-jr-info-icon"></i>
                        <div class="ui-tooltips ui-tooltips-top-left-arrow J_jr_query_Content">
                            <div class="ui-tooltips-arrow">
                                <i class="arrow arrow-out">◆</i>
                                <i class="arrow">◆</i>
                            </div>
                            <div class="ui-tooltips-content">
                                <p class="ui-tooltips-msg">
                                    唯品会提供的个人消费信贷产品，给予会员一定消费额度，使其可享受当月购物、下月再还款的服务，并可分期还款哦。
                                </p>
                            </div>
                        </div>
                    </span>
                </div>
                <div class="vip-jr-agreement-field">
                    <span>我已阅读并同意<a href="###" class="J_fake_a J_vip_jr_agreement_pop" role="button" mars_sead="m_pay_xfd_agreement_btn">《唯品金融服务开通协议》</a></span>
                </div>
            </div>
            
                        <div class="payment-chosen-row  payment-chosen-price">
                <div class="payment-chosen-column  payment-chosen-subtitle">支付：</div>
                <div class="payment-chosen-column  payment-chosen-subtotal">
                    <span class="m-price"><span class="u-yen">¥</span><span class="u-price J_payTotal">264</span></span>
                </div>
                <div class="payment-chosen-column  payment-chosen-favorable f-hide J_paymentFav">
                    （已优惠<span class="u-price J_paymentFav_txt"></span>元）
                </div>
                <div class="payment-chosen-platform  J_platformTypeList"></div>
            </div>
        </div>
    </div>
</div>

<div class="m-payment-operation is-payment-operation-guide-in" id="J_counter_mod">
     <a class="ui-btn-large ui-btn-primary J_fake_a is-button-disabled" href="###" role="button" rel="nofollow" id="J_go2pay" mars_sead="pay_action_btn">前往支付</a>
    <span class="payment-operate-guide-explain">请选择支付方式</span>
   
    
</div>
<div class="payment-box-loading">
    <div class="m-loader loader-large">
        <i class="ii-loading-pink-32x32 loader-icon"></i><span class="loader-text">加载中...</span>
    </div>
</div>
                </div>

                <div class="payment-box-a-top"></div>
            </div>
            <!-- / .m-payment-box -->
                                <div id="J_order_cod_option" class="c-order-actions">
                        不想在线支付了？<a href="###" class="J_fake_a  J_to_cod" role="link" mars_sead="pay_changecod_btn">改用货到付款</a>
                    </div> 
                        


            <div class="floats-wrapper">
    <div class="m-floats pin-floats" id="J_ue_container">
                <a class="float-item m-questionnaire f-hide J_questionnaire J_fake_a" href="###">
            <span class="icon-inner">
                <span class="u-icon icon-questionnaire"></span>
            </span>
            <span class="text-inner">
                <span class="text">问卷调查</span>
            </span>
        </a>
        <a class="float-item m-customer-service J_online_service J_fake_a" href="###">
            <span class="icon-inner">
                <i class="vipFont"></i>
            </span>
            <span class="text-inner">
                <span class="text">在线客服</span>
            </span>
        </a>
    </div><!-- / .m-floats -->
</div><!-- / .floats-wrapper -->
        </div>
        <!-- / .g-row -->
    </div>
    <!-- / .g-bd -->
        <div class="g-ft">
        <div class="m-site-links">
    <div class="g-row">
        <a href="http://support.vip.com/contact/" target="_blank" rel="external" title="关于我们">关于我们</a>|<!--
     --><a href="http://support.vip.com/contact/?act=en" target="_blank" rel="external" title="About us">About us</a>|<!--
     --><a href="http://ir.vip.com/" target="_blank" rel="external" title="Investor Relations">Investor Relations</a>|<!--
     --><a href="http://comm.vip.com/media/" target="_blank" rel="external" title="媒体报道">媒体报道</a>|<!--
     --><a href="http://support.vip.com/investment/" target="_blank" rel="external" title="品牌招商">品牌招商</a>|<!--
     --><a href="http://support.vip.com/privacy/" target="_blank" rel="external" title="隐私条款">隐私条款</a>|<!--
     --><a href="http://w2.vip.com/help_center/friend.php" target="_blank" rel="external" title="友情链接">友情链接</a>|<!--
     --><a href="http://support.vip.com/recruit/" target="_blank" rel="external" title="唯品诚聘">唯品诚聘</a>|<!--
     --><a href="http://w2.vip.com/foundation.php" target="_blank" rel="external" title="365爱心基金">365爱心基金</a>|<!--
     --><a href="http://vipcard.vip.com" target="_blank" rel="external" title="唯品卡">唯品卡</a>|<!--
     --><a href="http://ued.vip.com/?c=index&amp;m=index&amp;source_id=10" target="_blank" rel="external" title="用户体验提升计划">用户体验提升计划</a>|<!--
     --><a href="http://support.vip.com/map/" target="_blank" rel="external" title="唯品地图">唯品地图</a>|<!--
     --><a href="http://brand.vip.com/" target="_blank">品牌大全</a>
    </div>
</div>
<div class="m-copyright g-row">
    <p>Copyright © 2008-2017 vip.com，All Rights Reserved <a href="http://www.miibeian.gov.cn/publish/query/indexFirst.action" rel="nofollow">粤ICP备08114786号</a> <a href="http://www.miibeian.gov.cn/" rel="nofollow">许可证：粤B2-20080329 </a> 使用本网站即表示接受<a href="http://support.vip.com/clause/" rel="nofollow">唯品会用户协议</a>。<br>版权所有 <a href="http://www.vip.com/" rel="nofollow">广州唯品会信息科技有限公司</a></p>
</div>
<div class="m-site-partners g-row">
    <a href="https://online.unionpay.com/" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_01.jpg" alt="银联特约商户" width="120" height="40">
    </a><!--
 --><a href="https://www.alipay.com/aip/aip_validate_list.htm?trust_id=AIP11032080" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_02.jpg" alt="支付宝特约商家" width="110" height="40">
    </a><!--
 --><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1679707845" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_03.jpg" alt="中国信用企业" width="120" height="40">
    </a><!--
 --><a href="http://netadreg.gzaic.gov.cn/ntmm/WebSear/WebLogoPub.aspx?logo=440103103022008082200055" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_04.jpg" alt="红盾电子" width="100" height="40">
    </a><!--
 --><a href="http://210.76.65.188/webrecord/innernet/Welcome.jsp?bano=4406064003138" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_05.jpg" alt="网络警察报警平台" width="100" height="40">
    </a><!--
 --><a href="http://210.76.65.188/" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_06.jpg" alt="公安局网络警察支队" width="105" height="40">
    </a><!--
 --><a href="http://www.ccredit.cn/zx/zx_website.aspx?id=54" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_07.jpg" alt="公允有信" width="120" height="40">
    </a><!--
 --><a href="https://ss.cnnic.cn/verifyseal.dll?sn=2011022400100006603&amp;pa=200812" target="_blank" rel="nofollow, external">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_08.jpg" alt="可信网站" width="105" height="40">
    </a><!--
 --><a id="___szfw_logo___" href="https://search.szfw.org/cert/l/CX20120918001651001721" target="_blank" rel="nofollow">
        <img src="//pay.vipstatic.com/img/share/blank.png" class="lazy" data-original="//pay.vipstatic.com/img/cart/te2/resource/foot_09.jpg" alt="诚信网站" width="120" height="40">
    </a>
</div>










<form action="//pay.vip.com/pay/index" method="post" id="J_payment_form" target="_blank">
        <input name="pay_fav" value="no" type="hidden">
        <input name="has_order_fail" value="0" type="hidden">
        <input name="orders" value="75000000004182780" type="hidden">
        <input name="order_sn" value="17062805838854" type="hidden">
        <input name="pay_type" value="0" type="hidden">
        <input name="pay_type_id" value="0" type="hidden">
        <input name="pay_id" value="0" type="hidden">
        <input name="bank_id" value="0" type="hidden">
        <input name="operate" value="web" type="hidden">
        <input name="express_card_id" value="" type="hidden">
        <input name="alipayUserName" value="" type="hidden">
        <input name="instalments" value="" type="hidden">
        <input name="member_id" value="" type="hidden">
        <input name="source" id="J_page_source" value="checkout" type="hidden">
        <input name="ext_params" value="eyJwYXlfZmF2Ijoibm8iLCJoYXNfb3JkZXJfZmFpbCI6MCwib3JkZXJzIjoiNzUwMDAwMDAwMDQxODI3ODAiLCJvcmRlcl9zbiI6IjE3MDYyODA1ODM4ODU0IiwicGF5X3R5cGUiOjAsInBheV90eXBlX2lkIjowLCJwYXlfaWQiOjAsImJhbmtfaWQiOiIiLCJvcGVyYXRlIjoid2ViIn0=" type="hidden">
    <input name="use_purse" value="0" type="hidden">
    <input name="password" value="" type="hidden">
    <input name="isUsedSecurityCtl" value="0" type="hidden">
    <input name="vpoint" value="0" type="hidden">
    <input name="vmoney" value="0" type="hidden">
    <input name="edit_unable" value="0" type="hidden">
    <input name="cardNo" value="" type="hidden">
    <input name="order_sn" value="17062805838854" type="hidden">
            
        <input name="card_type" value="" type="hidden">
    <input name="card_number" value="" type="hidden">
    
    <input name="issPayAmt" value="0" type="hidden">
    <input name="voucherAmt" value="0" type="hidden">
    <input name="voucherId" value="" type="hidden">
    <input name="reBind" value="0" type="hidden">
    <input name="modifyKeys" value="" type="hidden">
    <input name="go_beifu_cashier" value="0" type="hidden">
    <input id="J_submit_payment_form" style="display: none;" type="submit">

</form>



    <input id="J_ad_ids" name="payment_ad_ids" value="016wm08,016wm09,458,016wm10,204,0,016wm15" type="hidden">

    <!-- 是否虚拟商品 -->
    <input id="JisVirtual" name="isVirtual" value="" type="hidden">
    
        <p class="u-text-bold"></p>


    
    
       



</body>
  </body>
</html>
