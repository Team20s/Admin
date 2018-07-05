<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script>
function drawChart(mydata){
	Highcharts.chart('container', {
		  chart: {
		    type: 'pie',
		    options3d: {
		      enabled: true,
		      alpha: 45,
		      beta: 0
		    }
		  },
		  title: {
		    text: '아파트 내 범죄 현황'
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
		url:'climinal.cacao',
		success:function(data){
			drawChart(data);
		},
		error:function(){
			
		}
	});
});
</script>
</head>
<body>
	<div id="container" style="height: 400px"></div>
</body>
</html>