<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header2.jsp"/>
	<div class="subContainer" id="contents">
       <div class="inner1220">
			<!-- 서브 왼쪽 메뉴부분 -->
			<aside class="sAsideMenu">
			    <div class="top">
			        <!-- <h5></h5> --><!-- 영문메뉴명 -->
			        <h2>Education</h2>
			    </div>
			    <ul class="sAsideMul">
				        	<li class="active"><a href="javascript:;" onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">GB 토크</a></li>
				        	<li class=""><a href="javascript:;" onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">스튜디오탐방</a></li>
				        	<li class=""><a href="javascript:;" onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">국제큐레이터코스</a></li>
			    </ul>
			</aside> <!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
            <section class="sSubConSection">
			<!-- 서브윗제목 -->
				<div class="subTitle">
				    <h2>GB 토크</h2>
				</div>
	    	</section>
		</div>
	</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>