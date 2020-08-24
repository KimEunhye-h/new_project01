<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"	href="resources/js/datatables.min.css"/>
<link rel="stylesheet" type="text/css"	href="resources/js/jquery.dataTables.min.css" />
<link rel="stylesheet" type="text/css" href="css/list.css">
<link rel="stylesheet" type="text/css" href="css/aside.css">
<script type="text/javascript"	src="resources/js/jquery.dataTables.js"></script>
<style>
/* #foo-table{
width:100%;
}
 tbody tr td:nth-child(4){ 
 	height:39px; 
 	overflow: hidden;  
 	display: -webkit-box; 
 	-webkit-line-clamp:2; 
 	-webkit-box-orient:vertical;/* 말줄임표시*/ 
 } 
 tbody tr td:nth-child(1),tbody tr td:nth-child(2){ 
  	padding:1em; 
 } 
 #foo-table_wrapper{
    width: 93%;
    margin-right: 27px;
}
#foo-table_filter{
	margin-bottom: 6px;
}


.sAsideMul li a:hover{
	color: #252525;
    font-weight: 600;
} */

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
				        	<li class="active"><a href="javascript:location.href='libraryList.ed';" ">도서관정보</a></li>
				        	<li class=""><a href="javascript:location.href='studyVideo.ed';" onclick="pf_moveMenu('/gb/education/studio.do','SC_TFOVO')">인기 교육영상</a></li>
			    </ul>
			</aside> <!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
            <section class="sSubConSection">
			<!-- 서브윗제목 -->
				<div class="subTitle">
				    <h2>도서관정보</h2>
				</div>
				<div>
					<table id="foo-table" class="table table-bordered">
						<thead>
							<tr><th class="w-px180">도서관명</th><th class="w-px300">주소</th><th class="w-px160">운영시간</th><th>휴관일</th></tr>
						</thead>
					</table>
					
				</div>
	    	</section>
		</div>
	</div>




<script>

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



        $(function(){
            var myDatatable = $("#foo-table").DataTable({
            ajax: {
        		
            	'url':'education/library',
		        "dataType": "json"
			    ,"dataSrc": function(json){
				    
				    return json.data;
				    }
		     }
		     , columns: [
	        	{ data: "libName" },
	        	{ data: "address" },
	        	{ data: "operatingTime" },
	        	{ data: "closed" }
               ],
               dom : 'Bfrtip',
	   	        scrollCollapse: true,
	   	        pageLength: 10,
                lengthMenu : [ [ 3, 5, 10, -1 ], [ 3, 5, 10, "All" ] ],
                ServerSide: true,
                "order": [[ 1, "desc" ]],
                searching: true
        });
            
        $(document).on('mouseenter', '#foo-table tbody tr', function() {
            var outlayId = myDatatable.row( this ).data().operatingTime;
            var outclosed = myDatatable.row( this ).data().closed;
            $('#foo-table tbody tr td:nth-child(3)').attr("title",""+outlayId+"");
            $('#foo-table tbody tr td:nth-child(4)').attr("title",""+outclosed+"");
        }).on('mouseenter', '#foo-table tbody tr td:nth-child(1)', function() {
            var outlibName = myDatatable.row( this ).data().libName;
            var outlibCode = myDatatable.row( this ).data().libCode;
            $(this).html("<a class='libdetail' href='detail.ed?libCode="+outlibCode+"'>"+outlibName+"</a>");
     	}).on('click', '#foo-table tbody tr td:nth-child(1) a', function() {
            var outlibCode = myDatatable.row( this ).data().libCode;
       		javascript:location.href='detail.ed?libCode='+outlibCode+'';
     	}).on('mouseenter', '#foo-table tbody tr td:nth-child(2)', function() {
            var outaddress = myDatatable.row( this ).data().address;
            var outhomepage = myDatatable.row( this ).data().homepage;
            $(this).html("<a class='libdetail' href='"+outhomepage+"' target=_blank>"+outaddress+"</a>");
     	});
		


        
   });
            
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsrerDHJrp9Wu09Ij7MUELxCTPiYfxfBI"></script>
</body>
</html>