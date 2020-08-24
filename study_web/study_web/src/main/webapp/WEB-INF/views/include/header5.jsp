<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="css/common.css?v=<%=new Date().getTime()%>"> --%>
	
<link rel="stylesheet" type="text/css" href="css/common.css?v=<%=new Date().getTime()%>">	

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css"	href="resources/js/datatables.min.css"/>
<link rel="stylesheet" type="text/css"	href="resources/js/jquery.dataTables.min.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript"	src="resources/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link href="https://rawgit.com/kenwheeler/slick/master/slick/slick-theme.css" rel="stylesheet"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<!-- <link rel="stylesheet" type="text/css"	href="resources/js/buttons.dataTables.min.css" /> -->

<title>Good Partner</title>

<script>

$(function(){
	$.ajax({
		url : "education/libraryList",
		success : function(data){
			console.log(data)	
		},

        complete : function(data) {
			console.log(data)
        },

        error : function(xhr, status, error) {
			console.log(error)
			console.log(xhr)
			console.log(status)
// 			alert(error)
        }
	}); 
})

</script>

<style>
			* {margin:0px auto;padding:0px;text-decoration:none;list-style:none;} 
            a {color:#222}
            body {font-family:'Noto Sans KR', sans-serif; color:#222; -webkit-font-smoothing:antialiased; -moz-osx-font-smoothing:grayscale; }
            address {font-style:normal}
            header {position:relative}
            
            .inner {overflow:hidden; width:1263px; margin:0 auto}

            .header_top {}
            .header_top .inner {border-bottom:1px solid #dedede; padding-right: 50px; height: 47px;}

            .login ul {float:right}
            .login ul li {float:left; min-width: 70px; text-align:center;font-size: 13px; line-height: 46px;}
            .login ul li:last-child {margin-right:0}
            .login ul li a {line-height:45px;color: #000; border: 1px solid #ccc; background: #fff}
            
            nav {position:relative; height:100px; line-height:100px}
            nav .gnb {position:relative; height:100px;  width:1263px; margin:0 auto; border-bottom: 1px solid #ddd;}
            nav > .gnb:hover .sub_depth { }

            nav .gnb a.h_logo {    width: 90px; position: absolute; top: -45px; left: 35px}
            nav .gnb a.h_logo img {  width: 110px; position: absolute; top: 40px; left: 15px}
            nav .gnb > ul {float:right}
            nav .gnb > ul li {float:left; width:160px; font-size:18px; font-weight:500; text-align:center;}
            nav .gnb > ul li:hover a {color:#0f24b7}
            nav .gnb > ul li a {color:#333}
            nav .gnb > ul li:last-child {margin-right:0}
            
            .sub_depth {position:absolute; display:none; z-index:2; top:100px; left:-335px; padding-top: 15px; width:1902px; height: 275px; background:#fff; border-top:1px solid #dedede; border-bottom: 1px solid #dedede;}
            .sub_depth .sub_menu {position:absolute; right:302px; line-height:initial; display: block; }
            .sub_depth .sub_menu > ul {float:left;width:160px;}
            .sub_depth .sub_menu > ul li {padding: 10px 0;}
            .sub_depth .sub_menu > ul li a {display:block;color: #777; text-align:center; font-size:15px; font-weight:400; }
            .sub_depth .sub_menu > ul li a:hover {color:#222}
            
			.dropbtn { background-color: #4CAF50; color: white; padding:3px; font-size: 13px; border: none; cursor: pointer; }
			.dropbtn:hover, .dropbtn:focus { background-color: #fff;}
			
			.dropdown { position: relative;display: inline-block; }
			.dropdown-content {display: none; background-color: #f9f9f9; min-width: 160px; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); }
			.dropdown-content a { color: black; text-decoration: none; display: block;}
			.dropdown-content a:hover {background-color: #f1f1f1}
			
			.show {display:block;}
			
			.btn_non {}
            
</style>

</head>
    <body>
        <header>
            <div class="header_top">
                <div class="inner">
                <p style="float: left; color: #bfbfbf; width: 15%; line-height: 46px;" > We Cherish Your Life </p>
                    <div class="login">
                        <!--로그인한 경우-->
                        <c:if test="${!empty login_info}">
                            <ul>
                               <div class="dropdown" style="position: absolute;">
                                <li style="position: absolute; left: -125px;">
                                   <a onclick="myFunction()" class="dropbtn btn_non" style="border: #fff;">[${login_info.name }] 환영합니다!</a>  </li>
                                   <div id="myDropdown" class="dropdown-content" style="position: relative; top: 39px; right: 158px; z-index: 3;">
                                      <a href="list.me" style="display: block;">쪽지함</a>
                                    <a href="list.my">내가 쓴 글</a>
                                    </div>
                                </div>

                                <c:if test="${login_info.admin eq 'y' }">
                                	<li style="position: relative; right: 100px;"><a class="btn_non" href="admin_M_list.cu" onclick="" style="border: #fff; " >관리자</a></li>
                                </c:if>
                                <li><a class="btn_non" href="mypage_list.ed" onclick="" style="border: #fff ">내정보</a></li>
                                <li><a class="btn-fill" onclick="go_logout()">로그아웃</a></li>
                                 
                            </ul> 
                        </c:if> 
                        <!-- 로그인하지 않은 경우 -->
                        <c:if test="${empty login_info}">
                            <ul>
                                <!--<li>
                                    <span style="position: absolute; top: -14px; left: -120px;">
                                        <input type="text" id="userid" placeholder="아이디"/>
                                        <input type="password" onkeypress="if(event.keyCode==13 ){ go_login()}"  id="userpw" placeholder="비밀번호"/>
                                    </span>
                                </li>-->
                                <li><a class='btn-fill' href="login" >로그인</a></li>
                                <li><a class='btn-fill' href="member">회원가입</a></li>
                            </ul>
                        </c:if>
                    </div>
                    <!-- login -->  
                </div>
                <!-- inner -->
            </div>
            <!-- header_top -->
                <nav>
                    <div class="gnb">
                        <a class="h_logo" href="<c:url value='/'/>"><img src="./img/hanul.logo.png" alt="홈으로"/></a>
                        <ul class="dropmenu">
                            <li><a href="hi.sp" ${category eq 'sp' ? "class='active'" : "" }>Good Partner</a></li>
                            <li><a href="list.no" ${category eq 'ne' ? "class='active'" : "" }>News</a></li>
                            
                            <li><a href="list.sc" ${category eq 'da' ? "class='active'" : "" }>Community</a></li>
                            <li><a href="libraryList.ed">Education</a></li>
                            <c:if test="${!empty login_info}">
                            <li><a href="studyTime.ti" ${category eq 'co' ? "class='active'" : "" }>Contents</a></li>
                            </c:if>
                        </ul>
                        <div class="sub_depth">
                            <div class="sub_menu">
                                <ul>
                                    <li><a href="hi.sp">사이트 소개</a></li>
                                    <li><a href="app.sp">어플 소개</a></li>
                                </ul>
                                <ul>
                                    <li><a href="list.no">공지사항</a></li>
                                    <li><a href="list.op">의견 및 질문</a></li>
                                    <li><a href="list.ev">행사 및 전시</a></li>
                                    <li><a href="list.pr">보도자료</a></li>
                                </ul>
                                <ul>
                                    <li><a href="list.sc">초/중/고</a></li>
                                    <li><a href="list.un">대학/편입</a></li>
                                    <li><a href="list.go">고시</a></li>
                                    <li><a href="list.job">취준생</a></li>
                                    <li><a href="list.emp">직장인</a></li>
                                    <li><a href="list.etc">기타</a></li>
                                </ul>
                                <ul>
                                    <li><a href="libraryList.ed">도서관정보</a></li>
                                    <li><a href="studyVideo.ed">인기 교육영상</a></li>
                                </ul>
                                <c:if test="${!empty login_info}">
                                <ul>
                                    <li><a href="studyTime.ti">나의공부시간</a></li>
                                    <li><a href="list.ch">오픈채팅</a></li>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                </ul>
                                </c:if>
                            </div>
                            <!-- sub_menu -->
                        </div>
                        <!-- sub_depth --> 
                    </div>
                    <!-- gnb -->
                </nav>
                <!-- nav -->
        </header>
        <!--header-->
        
        
        <script type="text/javascript" src="resources/js/header_menu.js"></script>
	</body>


<Script>

function go_logout(){
   $.ajax({
      type:'post',
      url:'logout',
      success(){
            location.href='/study';
         },error:function(req,text){
               alert(text+":"+req.status);
            }
      });
}
function go_login(){
   if($('#userid').val()==''){
         
         $('#userid').focus();
         return;
      }else if($('#userpw').val()==''){
         alert('비밀번호를 입력하세요!');
         $('#userpw').focus();
         return;
      }

      $.ajax({
         type:'post',
         url:'login',
         data: {id:$('#userid').val(),pw:$('#userpw').val()},
         success: function(data){
            alert(data);
            if(data=='true'){
                  location.reload();
               }else{
                     alert('아이디나 비밀번호가 일치하지 않습니다!');
                     $('#userid').focus();
                  }
            },error:function(req, text){
                  alert(text+":"+req.status);
               }
      });
}

/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

</Script>