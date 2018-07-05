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
		$('#productdelete_bt').click(function(){
			var c = confirm('삭제하시겠습니까?');
			if(c==true){
				location.href='product.cacao?cmd=delete&id=${productdetail.id }';
			}
		});
	});
</script>
</head>
<body>
<div id="main_center">
	<h1>Product Detail</h1><br>
	<h3><img width="250px" src="img/${productdetail.imgname }"></h3><br>
	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		<tr>
			<td>ID</td>
			<td>${productdetail.id }</td>
		</tr>
		<tr>
			<td>NAME</td>
			<td>${productdetail.name }</td>
		</tr>
		<tr>
			<td>PRICE</td>
			<td>${productdetail.price }</td>
		</tr>
		<tr>
			<td>REGDATE</td>
			<td>${productdetail.regdate }</td>
		</tr>
	</table>
	<br>
	<a id="productdelete_bt" href="#">DELETE</a>&nbsp;&nbsp;
	<a href="product.cacao?cmd=update&id=${productdetail.id }">UPDATE</a>
</div>
</body>
</html>