<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String spath = request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>客服</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="js/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="js/layui/css/modules/layim/layimAdmin.css" media="all"/>
    <script src="js/layui/lay/modules/jquery.js"></script>
    <script src="js/layui/layui.js"></script>
	
	<script type="text/javascript">
		layui.config({
		  base: '/layui/lay/modules/' //你的模块目录
		}).use('layim'); //加载入口
    </script>
	<script type="text/javascript">
	
	
	
	
	
	
	layui.use('layim', function(){
	  
		  var layim = layui.layim;
		  
		  
		           var autoReplay = [
    '您好，我现在有事不在，一会再和您联系。', 
    '你没发错吧？face[微笑] ',
    '洗澡中，请勿打扰，偷窥请购票，个体四十，团体八折，订票电话：一般人我不告诉他！face[哈哈] ',
    '你好，我是主人的美女秘书，有什么事就跟我说吧，等他回来我会转告他的。face[心] face[心] face[心] ',
    'face[威武] face[威武] face[威武] face[威武] ',
    '<（@￣︶￣@）>',
    '你要和我说话？你真的要和我说话？你确定自己想说吗？你一定非说不可吗？那你说吧，这是自动回复。',
    'face[黑线]  你慢慢说，别急……',
    '(*^__^*) face[嘻嘻] ，是贤心吗？'
  ];
		  
		  var socket = null;
    var im = {
        
        init:function(){
            if ('WebSocket' in window){
                var socketUrl = 'ws://<%=spath%>chat/custom';
                socket = new WebSocket(socketUrl);
                im.startListener();
            } else {
                alert('当前浏览器不支持WebSocket功能，请更换浏览器访问。');
            }
        },
        startListener:function () {
            if (socket) {
                // 连接发生错误的回调方法
                socket.onerror = function () {
                    console.log("连接失败!");
                };
                // 连接成功建立的回调方法
                socket.onopen = function (event) {
                    layui.use('layer',function(){
                       var layer = layui.layer;
                       layer.msg("连接成功",{icon:1});
                    });
                    console.log("连接成功");
                }
                // 接收到消息的回调方法
                socket.onmessage = function (event) {
                    console.log("接收到消息");
                    im.handleMessage(event.data);
                }
                // 连接关闭的回调方法
                socket.onclose = function () {
                    console.log("关闭连接！!");
                }
            }
        },
        handleMessage:function (msg) {
            var msg = JSON.parse(msg);
            console.log(msg);
            switch (msg.type){
                case 'yk':
                    layim.getMessage(msg.msg);
                    break;
                case 'system':
                    layim.getMessage(msg.msg);
                    break;    
                default:
                    break;
            }
        }
    };

    im.init();
		  
		  //基础配置
		  layim.config({
		    //初始化接口
		    init: {
		      url: 'jsps/getList.json'
		      ,data: {}
		    }
		    //查看群员接口
		    ,members: {
		      url: '/layim/json/getMembers.json'
		      ,data: {}
		    }
		    
		    ,uploadImage: {
		      url: '' //（返回的数据格式见下文）
		      ,type: '' //默认post
		    }
		    ,uploadFile: {
		      url: '' //（返回的数据格式见下文）
		      ,type: '' //默认post
		    }
		    
		    ,isAudio: true //开启聊天工具栏音频
		    ,isVideo: true //开启聊天工具栏视频
		    
		    //扩展工具栏
		    ,tool: [{
		      alias: 'code'
		      ,title: '代码'
		      ,icon: '&#xe64e;'
		    }]
		    
		    //,brief: true //是否简约模式（若开启则不显示主面板）
		    
		    //,title: 'WebIM' //自定义主面板最小化时的标题
		    //,right: '100px' //主面板相对浏览器右侧距离
		    //,minRight: '90px' //聊天面板最小化时相对浏览器右侧距离
		    ,initSkin: '3.jpg' //1-5 设置初始背景
		    //,skin: ['aaa.jpg'] //新增皮肤
		    //,isfriend: false //是否开启好友
		    //,isgroup: false //是否开启群组
		    //,min: true //是否始终最小化主面板，默认false
		    //,notice: true //是否开启桌面消息提醒，默认false
		    //,voice: false //声音提醒，默认开启，声音文件为：default.mp3
		    
		    ,msgbox: '/layim/demo/msgbox.html' //消息盒子页面地址，若不开启，剔除该项即可
		    ,find: '/layim/demo/find.html' //发现页面地址，若不开启，剔除该项即可
		    ,chatLog: '/layim/demo/chatLog.html' //聊天记录页面地址，若不开启，剔除该项即可
		  });
		  //监听在线状态的切换事件
		  layim.on('online', function(status){
		    layer.msg(status);
		  });
		  
		  //监听签名修改
		  layim.on('sign', function(value){
		    layer.msg(value);
		  });
		  //监听自定义工具栏点击，以添加代码为例
		  layim.on('tool(code)', function(insert){
		    layer.prompt({
		      title: '插入代码 - 工具栏扩展示例'
		      ,formType: 2
		      ,shade: 0
		    }, function(text, index){
		      layer.close(index);
		      insert('[pre class=layui-code]' + text + '[/pre]'); //将内容插入到编辑器
		    });
		  });
		  
		  //监听layim建立就绪
		  layim.on('ready', function(res){
		    //console.log(res.mine);
		    layim.msgbox(5); //模拟消息盒子有新消息，实际使用时，一般是动态获得
		  });
		  //监听发送消息
		  layim.on('sendMessage', function(data){
		    var To = data.to;
		    
		    if(To.type === 'friend'){
		      layim.setChatStatus('<span style="color:#FF5722;">对方正在输入。。。</span>');
		    }
		    
		   
		    var i = JSON.stringify({
		       type: 'yk' //随便定义，用于在服务端区分消息类型
		       ,data: data
		    });
		    
		    
		    socket.send(i);
		    
		    
		    
      /* layim.getMessage( {
          username: To.name
          ,avatar: To.avatar
          ,id: To.id
          ,type: To.type
          ,content: autoReplay[Math.random()*9|0]
        }
     ); */
		  });
		  //监听查看群员
		  layim.on('members', function(data){
		    //console.log(data);
		  });
		  
		  
		  //监听聊天窗口的切换
		  $('.site-demo-layim').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });
		});
	
	
	</script>


  </head>
  
  <body style="width:100%;height:100%;">
  <%=basePath%>
  <p>亲，有什么可以帮助你的吗？face[微笑]</p>
  <p>亲，您女朋友应该穿xxl码~face[微笑]</p>
  <p>很荣幸能帮助您~face[心]face[心]face[心]</p>
  </body>
</html>
