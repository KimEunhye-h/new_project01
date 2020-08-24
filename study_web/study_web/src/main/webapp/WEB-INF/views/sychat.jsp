<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DevEric Chatting</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>


<style type="text/css">
   
   .chat_con::-webkit-scrollbar {
/* 스크롤바 전체 영역 */
  width: 10px;
} 
.chat_con::-webkit-scrollbar-track {
      background-color: #fff;
/* 스크롤이 움직이는 영역  */
} 
.chat_con::-webkit-scrollbar-thumb {
/*  스크롤  */
      background-color: #000; 
  border-radius:30px;
} 
.chat_con::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment {
/*  스크롤의 화살표가 포함된 영역   */
  display:block;
  height:8px;
  background-color: #000; 
} 
.chat_con::-webkit-scrollbar-corner {
/*  상하+좌우 스크롤이 만나는 공간   */
      background-color: red;
} 

   #messageWindow{
      background: black;
      color: greenyellow;
   }
   #inputMessage{
      width:500px;
      height:20px
   }
   #btn-submit{
      background: white;
      background: #F7E600;
      width:60px;
      height:30px;
      color:#607080;
      border:none;
   }
   
   #main-container{
      width:370px;
      height:500px;
      margin:10px;
      display: inline-block;
      float: left;
      
   }
   /* 채팅창 배경 */
   #chat-container{
      vertical-align: bottom;
      margin:10px;
      min-height: 450px;
      max-height: 450px;
      overflow: scroll;
      overflow-x:hidden;
   }
   
   .chat{
      font-size: 20px;
      color:black;
      margin: 5px;
      min-height: 20px;
      padding: 5px;
      min-width: 50px;
      text-align: left;
      height:auto;
     	word-break : break-all;
        width:auto;
        display:inline-block;
        border-radius: 10px 10px 10px 10px;
        background-color: #fff;
        font-size: 14px;
   }
   
   .notice{
      color: #607080;
    font-weight: bold;
    border: none;
    text-align: center;
    background-color: #f3f3f3;
    display: block;
    font-size: 11px;
    margin-top: 9px;
   }

   .my-chat{
      text-align: right;
      background: #000;
      color:#fff;
      border-radius: 10px 10px 10px 10px;
   }
   
   #bottom-container{
      margin:10px;
   }
   
   .chat-info{
      color:#556677;
      font-size: 10px;
      text-align: right;
      padding: 5px;
      padding-top: 0px;

   }
   
   .chat-box{
      text-align:left;
   }
   .my-chat-box{
      text-align: right;
   }
   
   .partner {
background-color: #000;
    color: #fff;
    font-size: 24px;
    font-weight: 800;
    line-height: 55px;
    border-radius: 11px;
    text-align: center;
    
}
   
   
</style>
</head>
<body>
	<div id="main-container">
		<div>
			<p class="partner">Good Partner Chat</p>
		</div>
		<div id="chat-container" class="chat_con">
    	</div>
   </div>
</body>
<script type="text/javascript">
   

   var textarea = document.getElementById("messageWindow");
   //var webSocket = new WebSocket('ws://ec2-13-125-250-66.ap-northeast-2.compute.amazonaws.com:8080/DevEricServers/webChatServer');
   
   // 로컬에서 테스트할 때 사용하는 URL입니다.
    //var webSocket = new WebSocket('ws://localhost/DevEricServers/webChatServer');
    var webSocket = new WebSocket("ws://192.168.0.24/study/webChatServer");
   var inputMessage = document.getElementById('inputMessage');
   
   webSocket.onerror = function(e){
      onError(e);
   };
   webSocket.onopen = function(e){
      onOpen(e);
   };
   webSocket.onmessage = function(e){
      onMessage(e);
   };
   
   
   function onMessage(e){
      var chatMsg = event.data;
      var date = new Date();
      var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
      if(chatMsg.substring(0,  chatMsg.indexOf(':')-1).trim() == '관리자^-^'){
         var $chat = $("<div class='chat notice'>" + chatMsg + "</div>");
         $('#chat-container').append($chat);
      }else{
         var $chat = $("<div class='chat-box'><div class='chat' style='background-color: #000; color: #fff; margin: 10px 0 0 0;'>" + chatMsg + "</div><div class='chat-info chat-box'>"+ dateInfo +"</div></div>");
         $('#chat-container').append($chat);
      }
      
      
      $('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
   }
   
   function onOpen(e){
      
   }
   
   function onError(e){
      alert(e.data);
   }
   
   function send(){
      var chatMsg = inputMessage.value;
      if(chatMsg == ''){
         return;
      }
      var date = new Date();
      var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
      var $chat = $("<div class='my-chat-box'><div class='chat my-chat'>" + chatMsg + "</div><div class='chat-info'>"+ dateInfo +"</div></div>");
      $('#chat-container').append($chat);
      webSocket.send(chatMsg);
      inputMessage.value = "";
      $('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
   }
   
</script>

<script type="text/javascript">
   $(function(){
      $('#inputMessage').keydown(function(key){
         if(key.keyCode == 13){
            $('#inputMessage').focus();
            send();
         }
      });
      $('#btn-submit').click(function(){
         send();
      });
      
   })
</script>
</html>
 