<%@page import="com.fasterxml.jackson.databind.ext.Java7Handlers"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/list_detail.css">
<link rel="stylesheet" type="text/css" href="css/post.css">
</head>
<body>
	<div class="subContainer" id="contents">
			<section class="sSubConSection">
				<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>쪽지보내기</h2>
					<!-- 파일첨부시 form 반드시 가지고 있어야 할 속성
						1. 반드시 method는 post이어야만 한다
						2. enctype을 지정한다: enctype='multipart/form-data' -->

					<form action="insert.me" method="post"
						enctype="multipart/form-data">
						<table style="margin: 15px;">
							<tr style="width: 400px;">
								<th style="width: 100px;" class="w-px100">작성자</th>
								<td style="width: 261px;"><input type="hidden" value="${login_info.name}"
									name="sender">${login_info.name}</td>
							</tr>
							<tr>	
								<th class="w-px100">받는 사람</th>
								<td style="padding: 10px;"><input style="width: 122px; float: left; margin-right: 11px; height: 17px;" type="text" name="targetid" class="chk" placeholder=""><a
									id="btn-id" style="margin-left: 5px;" class="btn-fill-s"></a>
										<p style="margin: -2px; float: left; margin-right: 18px; border: 1px solid #000; padding: 3px;">수신자 확인</p>
										<div class="valid" style="color: gray; float: left; width: 132px; margin: 1px;">아이디를 확인하세요</div>
										
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="3"><textarea name='message' class="need_content" style=" width:240px; height: 285px" placeholder="내용을 입력해주세요."></textarea></td>
							</tr>


						</table>
					</form>
					<div class="btnSet" style="margin-top: 25px;">
						<a class="btn-fill" onclick="go_check()">보내기</a> 
						<a class="btn-empty" onclick="self.close()" >닫기</a>
					</div>
				</div>
			</section>
		</div>

</body>
<script type="text/javascript"
	src="js/my_check.js?v=<%=new java.util.Date().getTime()%>"></script>
<script type="text/javascript">


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
// 			         parent.parent.location.reload();
// console.log( opener )
/* console.log( 1,opener.location )
console.log( 2,opener.opener.location )
console.log( 3,opener.opener.opener.location ) */
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

	

	$('#btn-id').on('click', function() {
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
	$('.chk').on('keyup', function() {
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
</script>
</html>