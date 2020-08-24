<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list.css">
<style>

.st_youtube{
	background-color: #eee;
    width: 35%;
    height: 242px;
    float: left;
    
}
.st_youtube_con{
	padding: 20px;
    width: 60%;
    height: 240px;
    float: left;
    border: 1px solid #ddd;
    text-align: left;
}
.video{
   width: 93%;
    height: 242px;
    margin-top: 30px;
    margin-right: 10px;
}
.titleh2{
	margin: 15px 0 30px 20px;
    font-size: 20px;
    text-align: left;
}

.span{
	margin: 30px 0 30px 20px;
    font-size: 14px;
    color: #8e8e8e;
    text-align: left;
}

.sAsideMul li a:hover{
	color: #252525;
    font-weight: 600;
}
</style>
</head>
<body>

<div class="subContainer" id="contents">
      <div class="inner1220">
		<!-- 서브 왼쪽 메뉴부분 -->
		<aside class="sAsideMenu">
		    <div class="top">
		    <img src="img/sub_logo.png">
		        <!-- <h5></h5> --><!-- 영문메뉴명 -->
		        <h2>Education</h2>
		    </div>
		    <ul class="sAsideMul">
			        	<li class=""><a href="javascript:location.href='libraryList.ed';" ">도서관정보</a></li>
			        	<li class="active"><a href="javascript:location.href='studyVideo.ed';" onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">인기 교육영상</a></li>
		    </ul>
		</aside> <!-- sAsideMenu END -->
		<!-- 서브 오른쪽 컨텐츠부분 -->
           <section class="sSubConSection">
		<!-- 서브윗제목 -->
			<div class="subTitle">
			    <h2>인기 공부영상</h2>
			</div>
			<div class="video1 video">
				<div class="st_youtube"><iframe width="100%" height="240px" src="https://www.youtube.com/embed/NrtOWcYMnT0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
				<div class="st_youtube_con">
					<h2 class="titleh2">따라만해도 토플 고득점 가능!효율적인 토플 공부비법 대공개</h2>
					<div class="span">토플 고득점 받고 싶은 토플러들은 필수시청★! <br/>260만의 해커스토플 스타쌤들이 공개하는 토플 최단기 졸업 핵.꿀.팁 지금 확인하자!<br/> 선생님들의 더 많은 꿀팁이 궁금하다면?
					</div>
				</div>
			</div>
			<div class="video2 video">
				<div class="st_youtube"><iframe width="100%" height="240px" src="https://www.youtube.com/embed/fMyHGqQd804" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
				<div class="st_youtube_con">
					<h2 class="titleh2">(2020년 version) 저는 이 공부법으로 의사가 되었습니다.</h2>
					<div class="span">안녕하세요~ 토리파입니다.<br/>1년만의 리뉴얼 입니다. 2020년도 토리파 유튜브 신입생 여러분들<br/>환영합니다^^<br/>2020년도 정말 좋은 결과 있으시면 좋겠습니다!<br/>▶️토리파 인스타 - instagram.com/torifamily<br/>▶️문의&공부법후기 - torifamily@naver.com
					</div>
				</div>
			</div>
			<div class="video3 video">
				<div class="st_youtube"><iframe width="100%" height="240px" src="https://www.youtube.com/embed/SD3os4riKPc?list=TLPQMTEwODIwMjAa3SzsaLbeSA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
				<div class="st_youtube_con">
					<h2 class="titleh2">전교 1등은 내신을 어떻게 준비할까? | 연고티비</h2>
					<div class="span">▶ 연고티비 구독하기 http://bit.ly/yonkotv<br/>자사고에서 내신 1.1을 유지한 제리!<br/>제리는 내신을 어떻게 공부했을까요?<br/>과목별로 싹 다! 알려드립니다<br/>#내신공부법 #공부법 #내신 #고등학생 #공부 #자사고 
					</div>
				
				</div>
			</div>
			<div class="video4 video">
				<div class="st_youtube"><iframe width="100%" height="240px" src="https://www.youtube.com/embed/bYqYW5_pysY?list=TLPQMTEwODIwMjAa3SzsaLbeSA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
				<div class="st_youtube_con">
					<h2 class="titleh2">8시간 공부법! 뽀모도로 50 : STUDY WITH ME Pomodoro 50 X 8 SET</h2>
					<div class="span">POMODORO 50 X 8SET<br/><br/>POMODORO 50+10<br/>50minutes Study / 10minutes Break , 8SET<br/>1~4 SET + 40minutes Break + 5~8 SET<br/>*The bell rings at the beinning of break time and at the end.
					</div>
				</div>
			</div>
			<div class="video5 video">
				<div class="st_youtube"><iframe width="100%" height="240px" src="https://www.youtube.com/embed/N4mVe-GjBEk?list=TLPQMTEwODIwMjAa3SzsaLbeSA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
				<div class="st_youtube_con">
					<h2 class="titleh2">[암기법] 150쪽 시험 범위를 도대체 어떻게 암기하나요? [내신 공부법]</h2>
					<div class="span">엄청난 암기량을 최상위권들은 어떻게 감당하는지 알게 됩니다. <br/> 내신 사회/과학 뿐만 아니라 모든 과목, 모든 시험에 대한 암기법을 알게 됩니다. <br/> 개인마다 다른 기술(Skill)이 아닌, 본질(CODE)을 알게 됩니다. <br/> 내신 공부법, 그리고 모든 시험을 위한 암기법에 대해 <br/> 가장 확실한 답변을 갖게 됩니다. <br/> 스터디코드 4.0 유료강의 https://www.STUDYCODE.com/
					</div>
				</div>
			</div>
			
			
			
    	</section>
	</div>
</div>
<script type="text/javascript">




</script>



</body>
</html>