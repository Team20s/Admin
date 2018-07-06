<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!-- jquery 사용하기 위해 써줌 -->
<style>
	#main_center{
		width:600px;
		height:400px;
		margin:0 auto;
		background:white;
		text-align:center;
	}
</style>
<script>
	$(document).ready(function(){
		$('#userdelete_bt').click(function(){
			var c = confirm('삭제하시겠습니까?');
			if(c==true){
				location.href='user.cacao?cmd=delete&id=${detailuser.id }';
			}
		});
	});
</script>
</head>
<body>
<div id="main_center">
	<h1>User Detail</h1>
	<br>
	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		<tr>
			<td>ID</td>
			<td>${detailuser.id }</td>
		</tr>
		<tr>
			<td>PWD</td>
			<td>${detailuser.pwd }</td>
		</tr>
		<tr>
			<td>NAME</td>
			<td>${detailuser.name }</td>
		</tr>
	</table>
	<br>
	<button class="btn btn-default" id="userdelete_bt" href="#">DELETE</button>&nbsp;&nbsp;
	<button class="btn btn-default"><a href="user.cacao?cmd=update&id=${detailuser.id }"
	style="color:black;">UPDATE</a></button>
</div>
</body>
</html>