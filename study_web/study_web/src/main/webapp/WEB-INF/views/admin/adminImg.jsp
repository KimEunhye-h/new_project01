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
    height: 270px;
    float: left;
}
.st_youtube_con{
	padding: 20px;
    width: 65%;
    height: 270px;
    float: left;
    border: 1px solid #ddd;
}
.video{
    width: 100%;
    height: 270px;
	margin-bottom: 10px;
}
.titleh2{
	margin-top: 0;
	margin-bottom: 20px;
}

.sAsideMul li a:hover{
	color: #252525;
    font-weight: 600;
}



#attach-file, #attach-file2,#attach-file3,#attach-file4,#attach-file5,
#attach-file6,#delete-file,#delete-file2,#delete-file3,#delete-file4,#delete-file5,#delete-file6 {
    display: none;
}

input {
    height: 22px;
    padding: 3px 5px;
    font-size: 15px;
}

.file-img {
    width: 18px;
    height: 18px;
    cursor: pointer;
    vertical-align: middle;
        margin: 11px;
}


.border {     width: 397px;
    border: 1px solid #222;
    padding: 0px 0 11px 0;
    margin: 0 auto;
    margin-bottom: 20px;
    }

.border p {background-color:#404040;     
	color: #fff;
    font-size: 24px;
    font-weight: 500;
    line-height: 45px;}

.slide_black{
    width: 70px;
    height: 30px;
    background: #222;
    color: #fff;
    border: 1px solid #000;

}

.slide_white{
    width: 70px;
    height: 30px;
    margin-right: 15px;
    background: #fff;
    border: 1px solid #000;
}



</style>
<script>
var no;


function stopSubmit(){
	no=0;
	if(no==0){
		no=1;
		submit();
	}else{
		alert("등록되어있습니다. 변경버튼을 이용하세요")
		return;
	}

	
}

</script>
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
	        	<li class=""><a href="javascript:location.href='admin_M_list.cu';" ">회원관리</a></li>
	        	<li class="active"><a href="javascript:location.href='adminImg.ed';">슬라이드변경</a></li>
	        	<li class=""><a href="javascript:location.href='popupImg.ed';">팝업광고변경</a></li>
		    </ul>
		</aside> <!-- sAsideMenu END -->
		<!-- 서브 오른쪽 컨텐츠부분 -->
           <section class="sSubConSection">
		<!-- 서브윗제목 -->
			<div class="subTitle">
			    <h2>메인 슬라이드 사진변경</h2>
			</div>
			<form action="file.ed" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="num" value="1">
			<input type="hidden" name="attach">
			<div class="border">
				<p style="font-size:20px;">1번 슬라이드 </p>
				<label>
					<input type="file" name="file" id="attach-file"/>
					<img src="img/select.png" class="file-img"/>
				</label>
				<span id="file-name"></span>
				<span id="delete-file" style="color:red; margin-left:15px;"><i class="fas fa-times font-img"></i></span></br>
				<button class="slide_white" onclick="stopSubmit();" style="width:70px;height:30px; margin-right:15px">등록</button>
				<button class="slide_black" onclick="if( necessary() ){ $('[name=attach]').val($('#file-name').text()); $('form').attr('action','imgUpdate.ed'); $('form').submit()}" style="width:70px;height:30px">변경</button>
			</div>
			
			</form>
			
			<form action="file.ed" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="num" value="2">
			<input type="hidden" name="attach2">
			<div class="border">
				<p style="font-size:20px;">2번 슬라이드 </p>
				<label>
					<input type="file" name="file" id="attach-file2"/>
					<img src="img/select.png" class="file-img"/>
				</label>
				<span id="file-name2"></span>
				<span id="delete-file2" style="color:red; margin-left:15px;"><i class="fas fa-times font-img"></i></span></br>
				<button class="slide_white" onclick="submit();" style="width:70px;height:30px; margin-right:15px">등록</button>
				<button class="slide_black" onclick="if( necessary() ){ $('[name=attach2]').val($('#file-name2').text()); $('form').attr('action','imgUpdate.ed'); $('form').submit()}" style="width:70px;height:30px">변경</button>
			</div>
			</form>
			
			<form action="file.ed" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="num" value="3">
			<input type="hidden" name="attach3">
			<div class="border">
				<p style="font-size:20px;">3번 슬라이드 </p>
				<label>
					<input type="file" name="file" id="attach-file3"/>
					<img src="img/select.png" class="file-img"/>
				</label>
				<span id="file-name3"></span>
				<span id="delete-file3" style="color:red; margin-left:15px;"><i class="fas fa-times font-img"></i></span></br>
				<button class="slide_white" onclick="submit();" style="width:70px;height:30px; margin-right:15px">등록</button>
				<button class="slide_black" onclick="if( necessary() ){ $('[name=attach3]').val($('#file-name3').text()); $('form').attr('action','imgUpdate.ed'); $('form').submit()}" style="width:70px;height:30px">변경</button>
			</div>
			</form>
			
			<form action="file.ed" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="num" value="4">
			<input type="hidden" name="attach4">
			<div class="border">
				<p style="font-size:20px;">4번 슬라이드 </p>
				<label>
					<input type="file" name="file" id="attach-file4"/>
					<img src="img/select.png" class="file-img"/>
				</label>
				<span id="file-name4"></span>
				<span id="delete-file4" style="color:red; margin-left:15px;"><i class="fas fa-times font-img"></i></span></br>
				<button class="slide_white" onclick="submit();" style="width:70px;height:30px; margin-right:15px">등록</button>
				<button class="slide_black" onclick="if( necessary() ){ $('[name=attach4]').val($('#file-name4').text()); $('form').attr('action','imgUpdate.ed'); $('form').submit()}" style="width:70px;height:30px">변경</button>
			</div>
			</form>
			
			<form action="file.ed" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="num" value="5">
			<input type="hidden" name="attach5">
			<div class="border">
				<p style="font-size:20px;">5번 슬라이드 </p>
				<label>
					<input type="file" name="file" id="attach-file5"/>
					<img src="img/select.png" class="file-img"/>
				</label>
				<span id="file-name5"></span>
				<span id="delete-file5" style="color:red; margin-left:15px;"><i class="fas fa-times font-img"></i></span></br>
				<button class="slide_white" onclick="submit();" style="width:70px;height:30px; margin-right:15px">등록</button>
				<button class="slide_black" onclick="if( necessary() ){ $('[name=attach5]').val($('#file-name5').text()); $('form').attr('action','imgUpdate.ed'); $('form').submit()}" style="width:70px;height:30px">변경</button>
			</div>
			</form>
    	</section>
	</div>
</div>
<script type="text/javascript">




</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/js/all.min.js"></script>
<script type="text/javascript" src="js/need_check.js"></script>
<script type="text/javascript" src="js/admin_file_attach.js"></script>
</body>
</html>