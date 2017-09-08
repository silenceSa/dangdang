layui.use('layim', function(layim){
        var layim = layui.layim;
        var socket = null;
        var im = {
            
            init:function(){
                if ('WebSocket' in window){
                    var socketUrl = 'ws://localhost:80/dangdang/chat/007';
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
                        layer.msg("连接成功",{icon:1});
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
                switch (msg.type){
                    case 'kf':
                        layim.getMessage(msg.msg);
                        break;
                    case 'system':
                        layer.msg(msg.content);
                        break;
                    default:
                        layim.getMessage(msg.msg);
                        break;
                }
            }
        };

        im.init();
        
        

        
        layim.config({
          init: {
            //配置客户信息
            mine: {
              "username": "访客" //我的昵称
              ,"id": "007" //我的ID
              ,"status": "online" //在线状态 online：在线、hide：隐身
              ,"remark": "在深邃的编码世界，做一枚轻盈的纸飞机" //我的签名
              ,"avatar": "images/mayun.jpg" //我的头像
            }
          }
          //开启客服模式
          ,brief: true
        });
        //打开一个客服面板
        layim.chat({
          name: '纸飞机' //名称
          ,type: 'friend' //聊天类型
          ,avatar: 'images/custom.jpg' //头像
          ,id: 100000 //定义唯一的id方便你处理信息
        });
        layim.setChatMin(); //收缩聊天面板
        
        
        layim.on('sendMessage', function(data){
		    var To = data.to;
		    
		    if(To.type === 'friend'){
		      layim.setChatStatus('<span style="color:#FF5722;">对方正在输入。。。</span>');
		    }
		    
		   
		    var i = JSON.stringify({
		       type: 'kf' //随便定义，用于在服务端区分消息类型
		       ,data: data
		    });
		    
		    socket.send(i);
		   
		  });
        
        
        
      });