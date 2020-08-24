<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
   href="css/common.css?v=<%=new Date().getTime()%>">

<link rel="stylesheet" type="text/css"	href="resources/js/datatables.min.css"/>
<link rel="stylesheet" type="text/css"	href="resources/js/jquery.dataTables.min.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script type="text/javascript"	src="resources/js/jquery.dataTables.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

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


<Style>
			* {margin:0px auto;padding:0px;text-decoration:none;list-style:none;} 
            a {color:#222}
            body {font-family:'Noto Sans KR', sans-serif; color:#222; -webkit-font-smoothing:antialiased; -moz-osx-font-smoothing:grayscale}
            address {font-style:normal}
            header {position:relative}
            
            .inner {overflow:hidden; width:1300px; margin:0 auto}

            .header_top {height:45px;}
            .header_top .inner {border-bottom:1px solid #dedede}

            .login ul {float:right}
            .login ul li {float:left;width: 70px;text-align:center;font-size: 13px;}
            .login ul li:last-child {margin-right:0}
            .login ul li a {line-height:45px;color: #888;}
            
            nav {position:relative; height:100px; line-height:100px; border-bottom: 1px solid #777;}
            nav .gnb {position:relative; height:100px;  width:1300px; margin:0 auto}
            nav > .gnb:hover .sub_depth { }

            nav .gnb a.h_logo {float:left; position:absolute; top:25px}
            nav .gnb > ul {float:right}
            nav .gnb > ul li {float:left; width:160px; font-size:18px; font-weight:500; text-align:center}
            nav .gnb > ul li:hover a {color:#0f24b7}
            nav .gnb > ul li a {color:#333}
            nav .gnb > ul li:last-child {margin-right:0}
            
            .sub_depth {position:absolute; display:none; z-index:1; top:100px; left:-301px; padding-top: 15px; width:1902px; height: 250px; background:#fff; border-top:1px solid #dedede}
            .sub_depth .sub_menu {position:absolute; right:302px; line-height:initial; display: block;}
            .sub_depth .sub_menu > ul {float:left;width:160px;}
            .sub_depth .sub_menu > ul li {padding: 10px 0;}
            .sub_depth .sub_menu > ul li a {display:block;color: #777; text-align:center; font-size:15px; font-weight:400;}
            .sub_depth .sub_menu > ul li a:hover {color:#222}
            
          
            
          	
</style>


</head>
    <body>
        <header>
            <div class="header_top">
                <div class="inner">
                    <div class="login">
                        <!-- 로그인한 경우
                        <c:if test="${!empty login_info}">
                            <ul>
                                <li>${login_info.name }[${login_info.id }]</li>
                                <li><a class="btn-fill" onclick="go_logout()">로그아웃</a></li>
                            </ul> 
                        </c:if> -->
                        <!-- 로그인하지 않은 경우 -->
                        <c:if test="${empty login_info}">
                            <ul>
                                <!--<li>
                                    <span style="position: absolute; top: -14px; left: -120px;">
                                        <input type="text" id="userid" placeholder="아이디"/>
                                        <input type="password" onkeypress="if(event.keyCode==13 ){ go_login()}"  id="userpw" placeholder="비밀번호"/>
                                    </span>
                                </li>-->
                                <li><a class='btn-fill' onclick="go_login()" >로그인</a></li>
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
                            <li><a href="list.cu" ${category eq 'cu' ? "class='active'" : "" }>고객관리</a></li>
                            <li><a href="list.no" ${category eq 'no' ? "class='active'" : "" }>공지사항</a></li>
                            <li><a href="list.bo" ${category eq 'bo' ? "class='active'" : "" }>방명록</a></li>
                            <li><a href="list.da" ${category eq 'da' ? "class='active'" : "" }>공공데이터</a></li>
                            <li><a href="list.qa" ${category eq 'ed' ? "class='active'" : "" }>교육</a></li>
                        </ul>
                        <div class="sub_depth">
                            <div class="sub_menu">
                                <ul>
                                    <li><a href="#">메뉴1</a></li>
                                    <li><a href="#">메뉴2</a></li>
                                    <li><a href="#">메뉴3</a></li>
                                    <li><a href="#">메뉴4</a></li>
                                    <li><a href="#">메뉴5</a></li>
                                </ul>
                                <ul>
                                    <li><a href="#">메뉴1</a></li>
                                    <li><a href="#">메뉴2</a></li>
                                    <li><a href="#">메뉴3</a></li>
                                    <li><a href="#">메뉴4</a></li>
                                    <li><a href="#">메뉴5</a></li>
                                </ul>
                                <ul>
                                    <li><a href="#">메뉴1</a></li>
                                    <li><a href="#">메뉴2</a></li>
                                    <li><a href="#">메뉴3</a></li>
                                    <li><a href="#">메뉴4</a></li>
                                    <li><a href="#">메뉴5</a></li>
                                </ul>
                                <ul>
                                    <li><a href="#">메뉴1</a></li>
                                    <li><a href="#">메뉴2</a></li>
                                    <li><a href="#">메뉴3</a></li>
                                    <li><a href="#">메뉴4</a></li>
                                    <li><a href="#">메뉴5</a></li>
                                </ul>
                                <ul>
                                    <li><a href="libraryList.ed">도서관정보</a></li>
                                    <li><a href="#">메뉴2</a></li>
                                    <li><a href="#">메뉴3</a></li>
                                    <li><a href="#">메뉴4</a></li>
                                    <li><a href="#">메뉴5</a></li>
                                </ul>
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
        
        <script type="text/javascript" src="js/header_menu.js"></script>
	</body>
<script>



function go_logout(){
   $.ajax({
      type:'post',
      url:'logout',
      success(){
            location.reload();
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
</Script>