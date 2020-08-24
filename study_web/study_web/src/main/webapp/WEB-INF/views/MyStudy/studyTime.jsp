<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/list.css">
<link rel="stylesheet" type="text/css" href="css/aside.css">
<style type="text/css">
.zc-body { background:#ecf2f6; }

.chart--container {
  height: 100%;
  width: 100%;
  min-height: 530px;
}

.zc-ref {
  display: none;
}



.maintitle {
 font-weight: 600;
 font-size: 18px;
 margin-bottom: 20px;
     position: absolute;
    top: 120px;
    left: 283px;
    z-index: 1;
}

.subtitle{
	font-weight: 400;
	font-size: 14px;
	color: #767676;
	position: absolute;
    top: 185px;
    left: 365px;
    z-index: 1;

}

.sSubConSection {
position: relative;
}
</style>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
$(function(){


	
});


  google.charts.load("current", {packages:["corechart"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
	var mon = "${timeList.get(0).getTotal()}".substring(0,2);
	mon=mon*60;
	var monTime ="${timeList.get(0).getTotal()}".substring(3,5)*1;
	mon= mon + (monTime);
	
	var tue = "${timeList.get(1).getTotal()}".substring(0,2);
	tue=tue*60;
	var tueTime ="${timeList.get(1).getTotal()}".substring(3,5)*1;
	tue = tue+tueTime;

	var wed = "${timeList.get(2).getTotal()}".substring(0,2);
	wed=wed*60;
	var wedTime ="${timeList.get(2).getTotal()}".substring(3,5)*1;
	wed = wed+wedTime;

	var thu = "${timeList.get(3).getTotal()}".substring(0,2);
	thu=thu*60;
	var thuTime ="${timeList.get(3).getTotal()}".substring(3,5)*1;
	thu = thu+thuTime;

	var fri = "${timeList.get(4).getTotal()}".substring(0,2);
	fri=fri*60;
	var friTime ="${timeList.get(4).getTotal()}".substring(3,5)*1;
	fri = fri+friTime;

	var sat = "${timeList.get(5).getTotal()}".substring(0,2);
	sat=sat*60;
	var satTime ="${timeList.get(5).getTotal()}".substring(3,5)*1;
	sat = sat+satTime;

	var sun = "${timeList.get(6).getTotal()}".substring(0,2);
	sun=sun*60;
	var sunTime ="${timeList.get(6).getTotal()}".substring(3,5)*1;
	sun = sun+sunTime;
	
	  var data = google.visualization.arrayToDataTable([
	        ['Year', '분 단위 ', { role: 'style' } ],
	        ['월요일', mon, 'color: #ccc'],
	        ['화요일', tue, 'color: #ccc'],
	        ['수요일', wed, 'color: #ccc'],
	        ['목요일', thu, 'color: #ccc'],
	        ['금요일', fri, 'color: #ccc'],
	        ['토요일', sat, 'color: #ccc'],
	        ['일요일', sun, 'color: #ccc']
	      ]);


     

    var options = {
      title: '',
      legend: { position: 'none' },
    };

    var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
</script>



</head>
<body>
<div class="subContainer" id="contents">
       <div class="inner1220">
			<!-- 서브 왼쪽 메뉴부분 -->
			<aside class="sAsideMenu">
			    <div class="top">
					<!-- <h5></h5> -->
					<!-- 영문메뉴명 -->
					<img src="img/sub_logo.png">
			        <h2>Contents</h2>
			    </div>
			    <ul class="sAsideMul">
				        <li class="active"><a href="javascript:location.href='studyTime.ti';">요일별 공부 시간</a></li>
				        <li class=""><a href="javascript:location.href='list.ch';">오픈 채팅</a></li>
			    </ul>
			</aside> <!-- sAsideMenu END -->
			<!-- 서브 오른쪽 컨텐츠부분 -->
            <section class="sSubConSection">
			<!-- 서브윗제목 -->
				<div class="subTitle">
					<h2>나의 공부시간</h2>
				</div>
				<div class="maintitle">
             		현 그래프는 Study Partner와 <br/> 연동되어 있으며  자신의 요일별 공부시간을 확인할 수 있습니다.
             	</div>
             	<div class="subtitle">
             		※ Study Partner와 Good Partner에 <br/> 자신의 아이디가 연동되어야 확인이 가능합니다.
             	</div>
             <div id="chart_div" style="width: 1050px; height: 500px;">
             	
             </div>
         </div>
       </section>
   </div>
</div>
</body>
<script type="text/javascript"></script>
</html>