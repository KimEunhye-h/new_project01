<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/list_detail.css">
<link rel="stylesheet" type="text/css" href="css/post.css">
<style type="text/css">
#popup {
	width: 350px;
	height: 350px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	/* border: 3px solid gray; border-radius:50%; */
	z-index: 9999999;
	display: none;
}

#popup-background {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: #000;
	opacity: 0.3;
	display: none;
}

.popup {
	width: 100%;
	height: 100%;
}

#comment_regist span {
	width: 50%;
	float: left;
}

.btn-fill{
border: 1px solid #404040;
background: #f7f7f7;
color: #000;
padding:10px;
margin-top: 15px;
}

.btn-empty{
border: 1px solid #404040;
background: #f7f7f7;
color: #000;
padding: 10px;
margin-top: 15px;

}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>
<div id='detail-pop'>
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>보낸 쪽지 상세</h2>
					<table>
						<tr>
							 <th style="width: 85px;">받는 사람</th>
                  			   <td style="width: 119px;" colspan="3">${vo.targetid}</td>
                  			   <th style="width: 90px;"  class="w-px100">작성일자</th>
                  			   <td style="width: 85px;">${vo.senddate}</td>
						</tr>
						<tr>
							<th style="height: 200px">내용</th>
							<td colspan="5" class="left">${fn:replace(vo.message, crlf, '</br>') }</td>
						</tr>
					</table>
					<div class="btnSet" style="margin-top: 25px;">
<!-- 						<a class="btn-fill" onclick="window.open('new.me','message1','copyhistory=yes,width=400,height=450,status=no,scrollbars=auto'); self.close()">답장하기</a> -->
						<a class="btn-empty" onclick="self.close()" >닫기</a>
						<a class="btn-fill" onclick="if(confirm('정말 삭제하시겠습니까?')){ fn_delete() }">삭제</a>
						</div>
					<form action="list2.me" method="post">
						<input type="hidden" name="mid" value="${vo.mid }"> 
						<input type="hidden" name="curPage" value="${page.curPage }"> 
						<input type="hidden" name="search" value="${page.search }"> 
						<input type="hidden" name="keyword" value="${page.keyword }"> 
						<input type="hidden" name="viewType" value="${page.viewType }">
						<input type="hidden" name="pageList" value="${page.pageList }">
						<input type="hidden" id="receive" value="0">
					</form>
				</div>
			</section>
</div>
<div id='new-pop' style='display:none '>
	<div class="subContainer" id="contents">
		<div class="inner1220">
			<!-- 서브 왼쪽 메뉴부분 -->
			<aside class="sAsideMenu">
				<div class="top">
					<!-- <h5></h5> -->
					<!-- 영문메뉴명 -->
					<img src="img/sub_logo.png">
					<h2>내 정보</h2>
				</div>
				<ul class="sAsideMul">
					<li class=""><a href="javascript:location.href='list.no';"
						onclick="pf_moveMenu('/gb/education/gbtalks.do','SC_TFOVO')">회원정보 수정</a></li>
					<li class=""><a href="javascript:location.href='list.my';"
						onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">내가 쓴 글</a></li>
					<li class="active"><a href="javascript:location.href='list.me';"
						onclick="pf_moveMenu('/gb/education/curator.do','SC_EANHU')">쪽지함</a></li>
				</ul>
			</aside>
			<!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>쪽지보내기</h2>
					<!-- 파일첨부시 form 반드시 가지고 있어야 할 속성
						1. 반드시 method는 post이어야만 한다
						2. enctype을 지정한다: enctype='multipart/form-data' -->

					<form action="insert.me" method="post"
						enctype="multipart/form-data">
						<table>
							<tr>
								<th class="w-px100">작성자</th>
								<td><input type="hidden" value="${login_info.name}"
									name="sender">${login_info.name}</td>
								<th class="w-px100">받는 사람</th>
								<td><input type="text" name="targetid" class="chk" placeholder=""><a
									id="btn-id" style="margin-left: 5px;" class="btn-fill-s">수신
										아이디 확인</a>
										<div class="valid" style="color: gray;">아이디를 확인하세요</div>
										
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="3"><textarea name='message' class="need_content" style=" width: 800px; height: 341px" placeholder="내용을 입력해주세요."></textarea></td>
							</tr>


						</table>
					</form>
					<div class="btnSet" style="margin-top: 10px">
						<a class="btn-fill" onclick="go_check()">보내기</a> <a
							class="btn-empty" href="list.me">취소</a>
					</div>
				</div>
			</section>
		</div>
	</div>

</div>

<script type="text/javascript"
	src="js/my_check.js?v=<%=new java.util.Date().getTime()%>"></script>
<script type="text/javascript">

	//new ------------------------ 

	function go_check() {

		if($('[name=targetid]').hasClass('chked')){
		      //이미 사용중인 경우는 회원가입 불가
	         if($('[name=targetid]').siblings('div').hasClass('valid')){
	            alert('회원가입불가\n'+join.id.unusable.desc);
	            $('[name=targetid]').focus();
	            return;
	         }
	      }else{
	         //중복확인하지 않은 경우
	         if(!item_check($('[name=targetid]')))return;
	         else{
	            alert('회원가입불가\n'+join.id.valid.desc);
	            $('[name=targetid]').focus();
	            return;
	         }
	      }
		
		if ($('[name=message]').val() == '') {
			alert('내용을 입력하세요');
			$('[name=message]').focus();
			return false;
		}
		   $.ajax({
			      url : "insert.me",
			      data: $('form').serialize(),
			      success : function(){
			         opener.location.reload();
			         self.close();
			      },
			        error : function(xhr, status, error) {
			         console.log(status)
			        }
			   });

	}


	function item_check(item){
		var data = join.tag_status(item);
		if( data.code=='invalid' ) {
			alert('회원가입불가!\n' + data.desc);
			item.focus();
			return false;
		}else	return true;
	}

	

	$('#new-pop #btn-id').on('click', function() {
		id_check();
	});
	function id_check() {
		var $id = $('[name=targetid]');

		var data = $id
		$.ajax({
			type : 'post',
			url : 'name_check2',
			data : {
				name : $id.val()
			},
			success : function(data) {
				data = join.id_unusable(data);
				display_status($id.siblings('div'), data);
				$id.addClass('chked');
			},
			error : function(req, text) {
				alert(text + ':111 ' + req.status);
			}
		});

	}
	$('#new-pop .chk').on('keyup', function() {
		if ($(this).attr('name') == 'targetid') {
			if (event.keyCode == 13) {
				id_check();
			} else {
				$(this).removeClass('chked');
				
			}
		}
	});
	
	function display_status(div, data) {
		div.text(data.desc);
		div.removeClass();
		div.addClass(data.code);
	}
	//------------------------------


	//detail ------------------------ 

	/* 퀵메뉴 창닫기 기능 */ 
	function fn_delete(){
	   $.ajax({
	      url : "delete.me",
	      data: { 'mid': ${vo.mid } },
	      success : function(){
	         opener.location.reload();
	         self.close();
	      },
	        error : function(xhr, status, error) {
	         console.log(status)
	        }
	   });
//	     $('form').attr('action','delete.me');  $('form').submit(); setTimeout(function() {self.close();}, 500); 
	}
	//------------------------------

	</script>
</body>
</html>