<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="css/common.css?v=<%=new Date().getTime()%>">
<!-- <link rel="stylesheet" type="text/css"	href="resources/js/datatables.min.css"/> -->
<!-- <link rel="stylesheet" type="text/css"	href="resources/js/jquery.dataTables.min.css" /> -->
<!-- <link rel="stylesheet" type="text/css"	href="resources/js/buttons.dataTables.min.css" /> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- <script type="text/javascript"	src="resources/js/jquery-3.5.1.min.js"></script> -->

<!-- <script type="text/javascript"	src="resources/js/jquery.dataTables.js"></script> -->
<!-- <script type="text/javascript"	src="resources/js/dataTables.buttons.min.js"></script> -->
<!-- <script type="text/javascript"	src="resources/js/buttons.html5.min.js"></script> -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	
<!-- <link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/>  -->
<!-- <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script> -->

<Style>
<style>
#topMenu {
	height: 30px; /* 메인 메뉴의 높이 */
	width: 850px; /* 메인 메뉴의 넓이 */
}

#topMenu ul { /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */
	list-style-type: none; /* 메인 메뉴 안의 ul 내부의 목록 표시를 없애줌 */
	margin: 0px; /* 메인 메뉴 안의 ul의 margin을 없앰 */
	padding: 0px; /* 메인 메뉴 안의 ul의 padding을 없앰 */
}

#topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
	color: white; /* 글씨 색을 흰색으로 설정 */
	background-color: #2d2d2d; /* 배경 색을 RGB(2D2D2D)로 설정 */
	float: left; /* 왼쪽으로 나열되도록 설정 */
	line-height: 30px; /* 텍스트 한 줄의 높이를 30px로 설정 */
	vertical-align: middle; /* 세로 정렬을 가운데로 설정 */
	text-align: center; /* 텍스트를 가운데로 정렬 */
	position: relative; /* 해당 li 태그 내부의 top/left 포지션 초기화 */
}

.menuLink, .submenuLink { /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
	text-decoration: none; /* a 태그의 꾸밈 효과 제거 */
	display: block; /* a 태그의 클릭 범위를 넓힘 */
	width: 150px; /* 기본 넓이를 150px로 설정 */
	font-size: 12px; /* 폰트 사이즈를 12px로 설정 */
	font-weight: bold; /* 폰트를 굵게 설정 */
	font-family: "Trebuchet MS", Dotum; /* 기본 폰트를 영어/한글 순서대로 설정 */
}

.menuLink { /* 상위 메뉴의 글씨색을 흰색으로 설정 */
	color: white;
}

.topMenuLi:hover .menuLink { /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
	color: red; /* 글씨 색 빨간색 */
	background-color: #4d4d4d; /* 배경색을 밝은 회색으로 설정 */
}

.submenuLink { /* 하위 메뉴의 a 태그 스타일 설정 */
	color: #2d2d2d; /* 글씨 색을 RGB(2D2D2D)로 설정 */
	background-color: white; /* 배경색을 흰색으로 설정 */
	border: solid 1px black; /* 테두리를 설정 */
	margin-top: -1px; /* 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */
}

.longLink { /* 좀 더 긴 메뉴 스타일 설정 */
	width: 190px; /* 넓이는 190px로 설정 */
}

.submenu { /* 하위 메뉴 스타일 설정 */
	position: absolute; /* html의 flow에 영향을 미치지 않게 absolute 설정 */
	height: 0px; /* 초기 높이는 0px로 설정 */
	overflow: hidden; /* 실 내용이 높이보다 커지면 해당 내용 감춤 */
	transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */
	-webkit-transition: height .2s;
	/* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */
	-moz-transition: height .2s;
	/* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */
	-o-transition: height .2s;
	/* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */
}

.topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
	height: 93px; /* 높이를 93px로 설정 */
}

.submenuLink:hover { /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */
	color: red; /* 글씨색을 빨간색으로 설정 */
	background-color: #dddddd; /* 배경을 RGB(DDDDDD)로 설정 */
}

* {
	margin: 0 auto;
}

ul {
	z-index: 5;
}

#topMenu {
	width: 100%;
}

a img {
	height: 50px;
}

.dropdown-menu {
	width: 300px;
}
</style>

</Style>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<header
				style='border-bottom: 1px solid #ccc; padding: 15px 0; text-align: left'>
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"><img
								src="img/hanul.logo.png" class="img-responsive center-block" /></a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">메인화면 <span
										class="sr-only">(current)</span></a></li>
								<li><a href="#">회사소개</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false">메인메뉴1<span
										class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">서브메뉴1</a></li>
										<li><a href="#">서브메뉴2</a></li>
										<li><a href="#">서브메뉴3</a></li>

									</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false">메인메뉴2
										<span class="caret"></span>
								</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">서브메뉴1</a></li>
										<li><a href="#">서브메뉴2</a></li>
										<li><a href="#">서브메뉴3</a></li>

									</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false">교육<span
										class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="libraryList.ed">도서관정보</a></li>
										<li><a href="#">서브메뉴2</a></li>
										<li><a href="#">서브메뉴3</a></li>

									</ul></li>
							</ul>

							<ul class="nav navbar-nav navbar-right">
								<li><a href="#">Link</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false">로그인
										<span class="caret"></span>
								</a>
									<!-- <ul class="dropdown-menu" role="menu">
										<li><a href="#">자체로그인</a></li>
										<li><a href="#"><img src="img/naver_login.PNG"
												class="img-responsive" alt="Responsive image"></a></li>
										<li><a href="#"><img src="img/kakao_login.png"
												class="img-responsive" alt="Responsive image"></a></li>

									</ul> --></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</header>
		</div>
	</div>
</div>


<Script>

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