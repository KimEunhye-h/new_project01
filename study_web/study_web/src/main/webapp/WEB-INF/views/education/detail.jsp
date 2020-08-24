<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/aside.css">
<link rel="stylesheet" type="text/css" href="css/list.css">
<style>
table td a:hover{ font-weight: bold;}

.btnSet{margin-top: 20px;}
.btnSet a:not(:first-child) {margin-left: 3px;}
a:hover{cursor:pointer;}

.left {text-align: left;}
.right{text-align: right;}
.font-img{cursor: pointer; }

#list-top ul {margin: 0; display: flex;}
#list-top ul li *{vertical-align: middle;}
ul{list-style: none; padding: 0; }
#list-top ul:last-child { float: right;}
#list-top div{width:100%; height: 32px;}
#list-top ul:first-child {float: left;}
#list-top ul li:not(:first-child) {margin-left:3px}

.library{
	width:100%;
	margin-top: 30px;
	border:none;
}
.library tbody tr {
	border: 1px solid #ddd;
}
.library tbody tr td:not(:first-child){
	text-align: left;
    padding: 0px 0 0 45px;
    height: 205px;
}
#book{
	position: fixed;
	width:400px;
	height:400px;
	left:50%; top:50%; transform:translate(-50%,-50%);
	display: none;
}
#book-background{
	position: fixed; left: 0; top:0;
	width:100%; height:100%;
	background-color: #000;
	opacity: 0.3;
	display: none;
}
.page_on, .page_off, .page_next, .page_last, .page_prev, .page_first {
	display: inline-block; line-height: 30px; margin: 0; 
}
.page_on, .page_off{
	min-width:22px;  padding: 0 5px 2px;
}
.page_next, .page_last, .page_prev, .page_first{
	text-indent: -9999999px;
	border:1px solid #d0d0d0; width:30px;
}
.page_on {
	border: 1px solid gray; background-color: gray; color:#fff; font-weight: bold; font-size: 25px;
}
.page_next{
	background: url('img/page_next.jpg') center no-repeat;
}
.page_last{
	background: url('img/page_last.jpg') center no-repeat;
}
.page_prev{
	background: url('img/page_prev.jpg') center no-repeat;
}
.page_first{
	background: url('img/page_first.jpg') center no-repeat;
}
.list-view,.grid-view{ font-size: 25px; color:#3367d6; padding-top:3px; }
#list-top ul.common li:not(:last-child){margin-right:10px}

#library-list ul.pharmacy li div:first-child{height:25px;}
#library-list ul.pharmacy li div:last-child{font-size: 14px;}
.sAsideMul li a:hover{color: #252525; font-weight: 600;}

#libtitle{font-weight: 600;font-size: 22px;}

.libspan{font-size: 22px;line-height: 15px; font-weight: 600}

.libcon{line-height: 30px; padding-bottom: 10px}
.libcon #libtitle{font-weight: 600;}
.libcon1 #libtitle{font-weight: 500; font-size: 15px; color : #6b6b6bbf;}
.libcon1 .libspan{font-weight: 500; font-size: 15px; color : #6b6b6bbf;}
.libcon2 #libtitle{font-weight: 500; font-size: 15px; color : #6b6b6bbf;}
.libcon2 .libspan{font-weight: 500; font-size: 15px; color : #6b6b6bbf;}
.libcon2 #libtitle{font-weight: 500; font-size: 15px; color : #6b6b6bbf;}
.libcon3 .libspan{font-weight: 500; font-size: 15px; color : #6b6b6bbf;}
.libcon3 #libtitle{font-weight: 500; font-size: 15px; color : #6b6b6bbf; }

.sAsideMul li a:hover{color: #252525; font-weight: 600;}

.top_table {position: relative; top: 31px; width: 1007px}
.top_table tr{display: table-row; vertical-align: inherit; border-color: inherit; border-bottom: 1px solid #000;  }
.top_table tr th{padding: 14px 0 10px 0; font-size: 15px; font-weight: normal; line-height: 20px; color: #222; border-bottom: 1px solid #767676; background-color: #f9f9f9; border-top: 2px solid #222; text-align: center;}
</style>
</head>
<body>
<div class="subContainer" id="contents">
      <div class="inner1220">
		<!-- 서브 왼쪽 메뉴부분 -->
		<aside class="sAsideMenu">
		    <div class="top">
		        <!-- <h5></h5> --><!-- 영문메뉴명 -->
		        <img src="img/sub_logo.png">
		        <h2>Education</h2>
		    </div>
		    <ul class="sAsideMul">
			        	<li class="active"><a href="javascript:location.href='libraryList.ed';" ">도서관정보</a></li>
			        	<li class=""><a href="javascript:location.href='studyVideo.ed';" onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">인기 교육영상</a></li>
		    </ul>
		</aside> <!-- sAsideMenu END -->
		<!-- 서브 오른쪽 컨텐츠부분 -->
           <section class="sSubConSection">
		<!-- 서브윗제목 -->
			<div class="subTitle">
			    <h2>도서관별 장서 대출 데이터 조회</h2>
			</div>
			
			<div id="list-top">
			</div>
			<table class="top_table">
				<tr>
					<th style="width: 23%">도서록록</th>
					<th>도서정보</th>
				</tr>
			</table>
			
			
			<div id="library-list" style="margin:20px 0 auto"></div>
			<div class="btnSet">
				<div class="page-list"></div>
			</div>
			<div id="book-background"></div>
			<div id="book"></div>
			
    	</section>
	</div>
</div>





<script>
var viewType='list';
library_detail(1);
function library_detail(page){
	$.ajax({
		url: 'education/library/detail',
		dataType:"json",
		data:{ pageNo:page, rows:10,libCode:${libCode}},
		success: function(data){
			var libs = data.libArray;
			for(var i = 0; i < libs.length; i++){
				console.log(libs[i].doc.bookname)
			}
 			if(viewType=='list') library_detail_data($(libs), 0, data.libNm);
// 			else				 pharmacy_grid_data($(data.item), 0);
 			makePage( data.count, page);
			
		},error: function(req,text){
			alert(text+":"+req.status);
		}

	});
	
}



function makePage( totalList, curPage){
	var page = pageInfo(totalList,curPage,pageList,blockPage);
	var tag = '';
	console.log(page+"하하");

	if( page.curBlock>1){
		tag += '<a class="page_first" data-page=1>처음</a>'+'<a class="page_prev" data-page='+(page.beginPage-blockPage)+'>이전</a>';
	}
	
	for(var no=page.beginPage; no<=page.endPage; no++){
		if(no == curPage){
			tag += '<span class="page_on">'+no+'</span>';
		}else{
			tag += '<a class="page_off" data-page='+ no +'>'+no+'</a>';
		}
	}
	if( page.curBlock<page.totalBlock){
		tag += '<a class="page_next" data-page='+(page.endPage+1)+'>다음</a>'+'<a class="page_last" data-page='+page.totalPage+'>마지막</a>';
	}
	$('.page-list').html(tag);
}

function pageInfo(totalList,curPage,pageList,blockPage){
	var page = new Object();
	page.totalPage = parseInt(totalList / pageList)+(totalList % pageList == 0 ? 0 : 1);
	page.totalBlock = parseInt(page.totalPage/blockPage)+(page.totalPage%blockPage == 0 ? 0 : 1);
	page.curBlock = parseInt(curPage/blockPage)+(curPage%blockPage == 0 ? 0 : 1);
	page.endPage = page.curBlock * blockPage;
	page.beginPage = page.endPage - (blockPage-1);
	if(page.endPage > page.totalPage ) page.endPage = page.totalPage;
	return page;
}


function library_detail_data(data,type, libNm){
 	var tag = '<table class="library">'
		+ '<tr>';
		 
	
	if( type==0){
		data.each(function(){
			if(this.doc.bookImageURL ==''){
				tag += '<td style="width:150px;height:160px;"><a class="book" ><img class="book_image" onclick="book_img(\'kk\');" style="width:100%; height:100%; background: url('+"img/nobook.png"+') center no-repeat" ></a></td>'
				+'<td><div class="libcon"><span id="libtitle">제목 : </span><span class="libspan">'+this.doc.bookname+'</span></div>'
				+'<div class="libcon1"><span id="libtitle">저자명 : </span><span class="libspan">'+this.doc.authors+'</span></div>'
				+'<div class="libcon2"><span id="libtitle">출판사 : </span><span class="libspan">'+this.doc.publisher+'</span><span id="libtitle"> 출판연도 : </span><span class="libspan">'+this.doc.publication_year+'</span></div>'
				+'<div class="libcon3"><span id="libtitle">소장권수 : </span><span class="libspan">'+this.doc.book_count+'</span><span id="libtitle"> 대출권수 : </span><span class="libspan">'+this.doc.loan_count+'</span></div></td>'
				+'</tr>'
			}else{
				tag += '<td style="width:150px;height:160px;"><a class="book" ><img onclick="book_img(\''+this.doc.bookImageURL+'\');" style="width:100%; height:100%;" src='+this.doc.bookImageURL+'></a></td>'
				+'<td><div class="libcon"><span id="libtitle">제목 : </span><span class="libspan">'+this.doc.bookname+'</span></div>'
				+'<div class="libcon1"><span id="libtitle">저자명 : </span><span class="libspan">'+this.doc.authors+'</span></div>'
				+'<div class="libcon2"><span id="libtitle">출판사 : </span><span class="libspan">'+this.doc.publisher+'</span><span id="libtitle"> 출판연도 : </span><span class="libspan">'+this.doc.publication_year+'</span></div>'
				+'<div class="libcon3"><span id="libtitle">소장권수 : </span><span class="libspan">'+this.doc.book_count+'</span><span id="libtitle"> 대출권수 : </span><span class="libspan">'+this.doc.loan_count+'</span></div></td>'
				+'</tr>'
			}
			
		});
	}
	tag+='</table>';
	$('#library-list').html(tag);	

}

$(document).on('click','.page-list a',function(){//약국정보 페이지클릭이벤트
	library_detail( $(this).data('page'));

}).on('click','.list-view',function(){//리스트뷰를누르면
	if(viewType=='grid'){
		viewType='list';
		pharmacy_list_data($('.grid li'),1);
	}
	
}).on('change','#pageList',function(){
	pageList=$(this).val();
	library_detail(1);
	
}).on('click','.grid-view',function(){//그리드뷰일때
	if(viewType=='list'){
		viewType='grid';
		pharmacy_grid_data($('.pharmacy tr'),1);
	}
	
})
var img
function book_img(kk){
	if(kk=="kk"){
		$('#book, #book-background').css('display','block');
		$('#book').css('background','url("img/nonobook.png") center no-repeat')
		
	}else{
		$('#book, #book-background').css('display','block');
		$('#book').css('background','url("'+kk+'") center no-repeat')
	}
	
// 	$('#book').css('background','url('+img+') center no-repeat')
}



$('#book-background').click(function(){
	$('#book, #book-background').css('display','none');
});

var pageList = 10, blockPage = 10;	//페이지당 보여질 목록수,블럭당 보여질 페이지 수

</script>

</body>
</html>