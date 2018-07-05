<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <style>
	#title{
		margin-left:50px;
		font-size:55px;
		color:white;
		text-shadow:0px 3px #747474;
	}
	#w{
		margin-left:50px;
		width:500px;
		height:200px;
		color:white;
		margin-bottom:20px;
	}
	#date{
		margin-top:-30px;
		font-size:18px;
		text-shadow:0px 2px #747474;
	}
	#wea{
		line-height:35px;
		font-size:20px;
		text-shadow:0px 2px #747474;
	}
	#temp{
		font-size:50px;
		text-shadow:0px 2px #747474;
	}
	#total{
		margin-left:50px;
		width:1000px;
	}
	hr{
		position:relative;
		width:95%;
	}
	#f_area{
		position:relative;
		float:left;
		width:500px;
		height:700px;
		color:white;
		background-color:black;
		opacity:0.5;
	}
	#f{
		margin-top:10px;
		width:500px;
		height:650px;
		color:white;
	}
	#m_area{
		position:relative;
		float:left;
		margin-left:20px;
		width:400px;
		height:400px;
		color:white;
		background-color:black;
		opacity:0.5;
	}
	#m{
		margin-top:10px;
		margin:0 auto;
		width:300px;
		height:300px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maps.google.com/maps/api/js?sensor=false"></script>
<script>
	function wdisplay(data){
		var w = $(data).find('yweather\\:condition,condition'); //jQuery가 태그의 :을 특수문자로 인식하므로 \\을 통해서 이하를 잘라버림
		var result = '';
		var code = w.attr('code'); //attr()을 통해 속성값을 가져옴
		var date = w.attr('date');
		var temp = w.attr('temp');
		var text = w.attr('text');
		result += '<h3 id="date">' +date+ '</h3>';
		result += '<img width="30px" src="http://l.yimg.com/a/i/us/we/52/' + code + '.gif"/>';
		result += '<span id="wea">' +text+ '</span>';
		result += '<h1 id="temp">' +temp+ 'º</h1>';
		$('#w').html(result);
	};
	function fdisplay(data){	
		var f = $(data).find('yweather\\:forecast,forecast');
		var result = '';
		result += '<table width="100%">';
		$(f).each(function(index,item){
		var code = $(item).attr('code');
		var date = $(item).attr('date');
		var day = $(item).attr('day');
		var high = $(item).attr('high');
		var low = $(item).attr('low');
		var text = $(item).attr('text');
		result += '<tr><td><img src="http://l.yimg.com/a/i/us/we/52/' + code + '.gif"/></td>';
		result += '<td>' +date+ '</td>';
		result += '<td>' +day+ '</td>';
		result += '<td>' +high+ '</td>';
		result += '<td>' +low+ '</td>';
		result += '<td>' +text+ '</td>';
		});
		result += '</table>';
		$('#f').html(result);	
	};
	function mdisplay(data){
		var lat = $(data).find('geo\\:lat,lat');
		var lng = $(data).find('geo\\:long,long');
		
		var center = new google.maps.LatLng(lat.text(),lng.text());
		
		var div = document.querySelector('#m');
			var map = new google.maps.Map(div,{
				mapTypeId:google.maps.MapTypeId.ROADMAP,
				zoom:6,
				center:center
			});
				var marker = new google.maps.Marker({
					map:map,
					position:new google.maps.LatLng(
						lat.text(),lng.text()
					),
					animation:google.maps.Animation.DROP
				});
			
				//mouseover
				marker.addListener('mouseover',function(){
					//마우스 올리면 마커가 아래위로 움직임
					marker.setAnimation(
						google.maps.Animation.BOUNCE
					); 
				});
				//mouseout
				marker.addListener('mouseout',function(){
					marker.setAnimation(null);
				});
	
	};
	
	function getWeather(){
		//실시간 날씨 정보 url (yahoo openAPI)
		var wurl = 'https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22seoul%22)%20%20and%20u%3D%27c%27&format=xml&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys';
	
		$.ajax({
			url:wurl,
			success:function(data){
				wdisplay(data);
				fdisplay(data);
				mdisplay(data);
			},
			error:function(){
				alert('error');
			}
		});
	};
	
	$(document).ready(function(){
		getWeather();
	});
</script>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>
<body style="background-size:100%; background-image:url('img/korea.jpg');">
<h1 id="title">Seoul</h1>
<div id="w"></div>
<div id="total">
<div id="f_area"><h3 style="margin-left:10px;">Forecast</h3><hr><div id="f"></div></div>
<div id="m_area"><h3 style="margin-left:10px;">Map</h3><hr><div id="m"></div></div>
</div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>
