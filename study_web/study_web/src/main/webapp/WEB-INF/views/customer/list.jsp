<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객목록화면</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list.css">
<style type="text/css">
table tr th { padding: 14px 0 10px 0; font-size: 15px; font-weight: normal; line-height: 20px; color: #222; border-bottom: 1px solid #767676; background-color: #f9f9f9; border-top: 2px solid #222; text-align: center; }
table tr td {padding: 20px; font-size: 14px; line-height: 18px; border-top: 1px solid #ddd; background-color: #fff; }
table tr:last-child {border-bottom: 3px double #767676;  }



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
		        <h2>관리자</h2>
		    </div>
		    <ul class="sAsideMul">
	        	<li class="active"><a href="javascript:location.href='admin_M_list.cu';" ">회원관리</a></li>
	        	<li class=""><a href="javascript:location.href='adminImg.ed';">슬라이드변경</a></li>
	        	<li class=""><a href="javascript:location.href='popupImg.ed';">팝업광고변경</a></li>
		    </ul>
		</aside> <!-- sAsideMenu END -->
		<!-- 서브 오른쪽 컨텐츠부분 -->
           <section class="sSubConSection">
		<!-- 서브윗제목 -->
			<div class="subTitle">
			    <h2>회원관리</h2>
			</div>
				<!-- <form method="post" action="list.cu" id="list"> -->
				<input type="hidden" name="curPage" value="1" />
				<div id='list-top'>
				
				</div>
				<table class="w-pct80" style="margin: 0 auto;">
				<tr><th class="w-px180">EMail</th>
					<th class="w-px120">이름</th>
					<th class="w-px100">직업</th>
					<th class="w-px180">회원가입일자</th>
					<c:if test="${login_info.admin eq 'y' }">
					<th class="w-px120" >회원삭제</th>
					</c:if> 
				</tr>
				
				<c:forEach items="${list }" var="vo">
				<tr><td>${vo.email }</td>
					<td>${vo.name }</td>
					<td>${vo.job }</td>
					<td>${vo.join_date }</td>
				 <c:if test="${login_info.admin eq 'y' }">
					<td><a class="btn-empty" style="background-color: #fff; color: #000;" onclick="if(confirm('정말 삭제하시겠습니까?')) {href='admin_M_delete.cu?email=${vo.email}'}">회원삭제</a></td>
				</c:if> 
				</tr>
				</c:forEach>
				
				</table>
			
    	</section>
	</div>
</div>


<!-- </form> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/js/all.min.js"></script>
<script type="text/javascript" src="js/need_check.js"></script>
<script type="text/javascript" src="js/admin_file_attach.js"></script>
</body>
</html>