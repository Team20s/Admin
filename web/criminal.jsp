<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	
	#demo{
		width:70%;
		margin-left:15%;
		margin-top:15%;
	}
	
.carousel-control-prev-icon {
 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='#5D5D5D' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E") !important;
}

.carousel-control-next-icon {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='#5D5D5D' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E") !important;
}	
</style>
<!-- chart script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<!-- slide script -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script>
function drawChart(mydata,title,div){
	Highcharts.chart(div, {
		  chart: {
		    type: 'pie',
		    options3d: {
		      enabled: true,
		      alpha: 45,
		      beta: 0
		    }
		  },
		  title: {
		    text: title
		  },
		  tooltip: {
		    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		  },
		  plotOptions: {
		    pie: {
		      allowPointSelect: true,
		      cursor: 'pointer',
		      depth: 35,
		      dataLabels: {
		        enabled: true,
		        format: '{point.name}'
		      }
		    }
		  },
		  series: mydata
		});
}
$(document).ready(function(){
	$.ajax({
		url:'climinal.cacao?cmd=apart',
		success:function(data){
			drawChart(data,'아파트 내 범죄 현황','apartchart');
		},
		error:function(){
			
		}
	});
	
	$.ajax({
		url:'climinal.cacao?cmd=pc',
		success:function(data){
			drawChart(data,'피씨방 내 범죄 현황','pcchart');
		},
		error:function(){
			
		}
	});
	
	$.ajax({
		url:'climinal.cacao?cmd=toilet',
		success:function(data){
			drawChart(data,'공중화장실 내 범죄 현황','toiletchart');
		},
		error:function(){
			
		}
	});
	$.ajax({
		url:'climinal.cacao?cmd=parking',
		success:function(data){
			drawChart(data,'주차장 내 범죄 현황','parkingchart');
		},
		error:function(){
			
		}
	});
	$.ajax({
		url:'climinal.cacao?cmd=school',
		success:function(data){
			drawChart(data,'학교 내 범죄 현황','schoolchart');
		},
		error:function(){
			
		}
	});
	$.ajax({
		url:'climinal.cacao?cmd=subway',
		success:function(data){
			drawChart(data,'지하철 내 범죄 현황','subwaychart');
		},
		error:function(){
			
		}
	});
	$.ajax({
		url:'climinal.cacao?cmd=office',
		success:function(data){
			drawChart(data,'사무실 내 범죄 현황','officechart');
		},
		error:function(){
			
		}
	});
});
</script>
</head>
<body>
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
    <li data-target="#demo" data-slide-to="5"></li>
    <li data-target="#demo" data-slide-to="6"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="chart" id="apartchart"></div>
    </div>
    <div class="carousel-item">
    	<div class="chart" id="pcchart"></div>
    </div>
    <div class="carousel-item">
    	<div class="chart" id="toiletchart"></div>
    </div>
    <div class="carousel-item">
    	<div class="chart" id="parkingchart"></div>
    </div>
    <div class="carousel-item">
    	<div class="chart" id="schoolchart"></div>
    </div>
    <div class="carousel-item">
    	<div class="chart" id="subwaychart"></div>
    </div>
    <div class="carousel-item">
    	<div class="chart" id="officechart"></div>
    </div>    
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</body>
</html>