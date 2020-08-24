<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" />
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list.css">
<style>
html, body {
	width: 100%;
	max-width: 1280px;
	margin: 0 auto;
}

@media screen and (max-width: 950px) {
	html, body {
		max-width: 950px;
	}
	.category {
		margin-left: 0 !important;
	}
}

.form-field {
	margin: 0 auto;
	position: relative;
	display: block;
	width: 100%;
}

.form-field .signin_wrap {
	float: left;
	width: 65%;
	margin: 0 0 15px 0;
}

.form-field .but_wrap {
	float: right;
	width: 30%;
	display: block;
	font-size: 15px;
}

.but_wrap .submit_btn {
	width: 100%;
	display: block;
	background-color: #444;
	color: #fff;
	font-size: 16px;
	border: 0px;
	padding: 30px 0;
	margin: 0 auto;
	text-align: center;
	
}

.field {
	width: 100%;
	margin-bottom: 10px;
}

.field #userpw::placeholder {
	letter-spacing: 0px;
}

.field #userpw {
	letter-spacing: 7px;
}

input[type='text'], input[type='password'] {
	width: 95%;
	display: inline-block;
	padding: 5px 0 5px 10px;
	margin: 0;
	max-width: 250px;
}

.form_but_wrap {
	width: 100%;
	display: inline-block;
}

.form_but_wrap a {
	color: #000;
}

.form_but_wrap span:first-child {
	float: left;
}

.form_but_wrap span:last-child {
	float: right;
}

.subContainer .inner1220 .subTitle h2 {
	width: 100%;
	text-align: left;
	padding: 50px 0 33px 22px;
    border-bottom: 1px solid #ddd;
    margin-bottom: 33px;
    margin-left: 33px;
}

.subContainer .inner1220 .subTitle .smalltitle {
	font-size: 13px;
    color: #777;
    margin: 0 0 20px 0;
    text-align: left;
	padding-left: 40px;
}

.subContainer .inner1220 .subTitle .signMain {
	width: 93%;
	height: 100%;
	padding: 55px 0;
	border-top: 1px solid #252525;
	border-bottom: 1px solid #252525;
	overflow: hidden
}

.subContainer .inner1220 .subTitle .signMain .lineVertical {
	position: absolute;
    top: 10px;
    left: 470px;
    height: 175px;
    width: 1px;
    background-color: #bbb;
    
}

.subContainer .inner1220 .subTitle .signMain .signupsub_1 {
	float: left;
	width: 42%;
	height: 100%;
	margin-top: 5px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_1 .naver a {
	float: left;
	border: 1px solid #444;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_1 .bnt_wrap .submit_btn{
	float: right;
    width: 25%;
    background-color: #444;
    color: #fff;
    font-size: 16px;
    height: 85px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_1 .find {
	width: 381px;
	font-weight: 500;
    font-size: 12px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_1 .find .find_id {
	width: 450px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_1 .find .find_id h5 {
	margin-top: 13px;
    margin-left: 71px;
	
}


.subContainer .inner1220 .subTitle .signMain .signupsub_1 .find .find_id h5 {
	padding: 3px 10px 2px 0px;
    margin: 0 0 5px 0;
    display: inline-block;
    border-bottom: 1px solid #252525;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_1 .signin_wrap .field {
	font-size: 12px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_2 {
	float: right;
	width: 45%;
	height: 100%;
	padding-top: 20px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_2 h3 {
	font-size: 22px;
	font-weight: 500;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_2 p {
	font-size: 15px;
    color: #777;
    margin-bottom: 7px;
}
.subContainer .inner1220 .subTitle .signMain .signupsub_2 .small_signup {
	margin: 0;
    padding: 0;
    letter-spacing: -0.05em;
}
.subContainer .inner1220 .subTitle .signMain .signupsub_2 .small_signup h4 {
	font-size: 22px;
    font-weight: 500;
    margin: 0;
    margin-top: 19px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_2 .small_signup h4 a {
	font-weight: 500;
    font-size: 12px;
}

.subContainer .inner1220 .subTitle .signMain .signupsub_2 .small_signup p {
	font-size: 11px;
    color: #999;
    text-align: left;
}
</style>
</head>
<body>
	<!-- 사이드 메뉴 -->
	<div class="subContainer" id="contents">
		<div class="inner1220">
			<!-- 서브 왼쪽 메뉴부분 -->
			<aside class="sAsideMenu">
				<div class="top">
				<img src="img/sub_logo.png">
					<!-- <h5></h5> -->
					<!-- 영문메뉴명 -->
					<h2>회원</h2>
				</div>
				<ul class="sAsideMul">
					<li class="active"><a href="javascript:location.href='login';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">로그인</a></li>
					<li class=""><a href="javascript:location.href='member';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">회원가입</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>로그인</h2>
					<div>
						
						<!-- 로그인 상단의 설명 화면 -->
						<div>
							<br />
							<div class="smalltitle">
								* 홈페이지 게시내용의 책임성 확보를 위하여 실명제로 운영되고 있는바, 이의 효율적인 운영을 위해 회원가입 및
								로그인을 하셔야 합니다.
								</p>
								* ID가 없으신 분은 회원가입을 해주시기 바랍니다.
								</p>
							</div>
						</div>
						
						<!-- 로그인 입력 화면 -->
						<div class="signMain">
							<form action="login" method="post" class="form-field">
								<p style="margin: 0 10px 0 0; text-align: left; color: #e22931; font-size: 12px; font-weight: 500;">*로그인을 하시면 보다 편리하게 서비스를 받으실 수 있습니다.</p>
								<!-- signupsub_1 -->
								<div class="signupsub_1">
									<div class="signin_wrap">
										<div class="field">
											<input type="text" placeholder="아이디를 입력하세요" name="userid" id="userid">
										</div>
										<div class="field">
											<input type="password" onkeypress="if( event.keyCode==13 ){go_login()}" id="userpw" placeholder="비밀번호를 입력하세요" />
										</div>
									</div>
									<div class="but_wrap">
										<botton onclick="go_login()" type="submit" name="submit" id="submit" class="submit_btn">로그인</botton>
									</div>
									


									<p class="smallchar" style="margin: 0 10px 0 0; text-align: left; color: #e22931; font-size: 12px; font-weight: 500;"></p>										
									<!-- 아이디 비밀번호 찾기 -->
									<div class="find" style="text-align: left;">
										<% String clientId = "j9cNnmca6qG6mdZLb8k5";//애플리케이션 클라이언트 아이디값";
										String redirectURI = URLEncoder.encode("http://localhost/ateam/", "UTF-8");
										SecureRandom random = new SecureRandom();
										String state = new BigInteger(130, random).toString();
										String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
										apiURL += "&client_id=" + clientId;
										apiURL += "&redirect_uri=" + redirectURI;
										apiURL += "&state=" + state;
										session.setAttribute("state", state);%>
										
									<!-- 네이버 로그인 로고 -->
										<div class="naver">
											<a href="<%=apiURL%>"><img style="padding: 0 5px 0 5px; width: 200px; background-color: black;" height="50" src="img/naver_logogo.png" /></a>
										</div>		
										<div class="find_id">
											<h5 style="margin-top: 11px; margin-left: 69px;"><a href="" style=" text-underline-position: under; ">아이디 비밀번호 찾기</a></h5>
												<p style="margin-left: 255px;">아이디, 비밀번호를 잊어버리셨나요?</p>
										</div>	
									</div>
								</div>
								
								<div class="lineVertical"></div>
								
								<%-- <a href="${url }"><img height="50" src="img/naverlogin.PNG" /></a> --%>
								<!-- <table class="w-pct60" style="margin: 0 auto;">
								<tr>
									<td><input type="text" id="userid" placeholder="아이디를 입력하세요" /></td>
									<td><a onclick="go_login()">로그인</a></td>
								</tr>
								<tr>
									<td><input type="password" id="userpw" placeholder="비밀번호를 입력하세요" /></td>
								</tr>
								</table> -->

								<!-- signupsub_2 -->
								<div class="signupsub_2" style="text-align: left;">
									<h3>신규회원가입</h3>
									<p style="margin-top: 10px;">홈페이지회원으로 가입하시면 다양한 서비스를 제공받으실 수 있습니다.</p>
									<div class="small_signup">
										<h4>	
											<a href="member" style="text-underline-position: under;">회원가입</a>
										</h4>
										<p>아직 회원이 아니신가요?</p>
									</div>
								</div>
								<!-- signupsub_2 -->
							</form>
						</div>
						<!-- 로그인 입력 화면 -->
					</div>
				</div>
				<!-- 서브윗제목 -->
			</section>
		</div>
	</div>


</body>
<script type="text/javascript">

$('.sAsideMul li').click(function(){
	//이미 선택된 버튼에 대해서는 적용하지않으려면
	if($(this).hasClass('')){
		$('.sAsideMul li').removeClass();
		$(this).addClass('active');
// 		var idx = $(this).index();
// 		$('.sAsideMul li:not(:eq('+idx+'))').addClass('btn-empty');
// 		if(idx==0) pharmacy_list(1);
// 		else		animal_list();

	}
});

	function go_login() {
		if ($('#userid').val() == '') {
			alert('아이디를 입력하세요!');
			$('#userid').focus();
			return;
		} else if ($('#userpw').val() == '') {
			alert('비밀번호를 입력하세요!');
			$('#userpw').focus();
			return;
		}

		$.ajax({
			type : 'post',
			url : 'login_go',
			data : {
				id : $('#userid').val(),
				pw : $('#userpw').val()
			},
			success : function(data) {
// 				alert(data);
				console.log('1');
				if (data == 'true') {
					location.href="/study";
				} else {
					alert('아이디나 비밀번호가 일치하지 않습니다!');
					$('#userid').focus();
				}

			},
			error : function(req, text) {
				alert(text + ': ' + req.status);
			}
		});
	}
</script>
</html>