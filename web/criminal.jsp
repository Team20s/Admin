<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	.chart{
		float:left;
		width:40%;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
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
	<div class="chart" id="apartchart"></div>
	<div class="chart" id="pcchart"></div>
	<div class="chart" id="toiletchart"></div>
	<div class="chart" id="parkingchart"></div>
	<div class="chart" id="schoolchart"></div>
	<div class="chart" id="subwaychart"></div>
	<div class="chart" id="officechart"></div>
</body>
</html>