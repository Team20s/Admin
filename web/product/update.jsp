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
	#product_page{
		width:600px;
		height:400px;
		margin:0 auto;
		background:white;
		text-align:center;
	}
	table {
		margin:0 auto;
	}
</style>
<script>

</script>
</head>
<body>
<div id="product_page">
	<h1>Product Update</h1>
	<!-- img파일을 선택하지 않으면 기존의 이미지 사용, 파일을 선택한다면 이미지가 바뀜 -->
	<form action="product.cacao?cmd=updateimpl" method="post" enctype="multipart/form-data">
	<table>
		<tr>
		<td>ID</td>
		<td><input type="hidden" name="id" value="${productupdate.id }"></td>
		</tr>
		<tr>
		<td>NAME</td>
		<td><input type="text" name="name" value="${productupdate.name }"></td>
		</tr>
		<tr>
		<td>PRICE</td>
		<td><input type="number" name="price" value="${productupdate.price }"></td>
		</tr>
		<tr>
		<td>IMG</td>
		<td><input type="file" name="newimgname" ></td>
		<td><input type="hidden" name="imgname" value="${productupdate.imgname }" ></td>
		</tr>
	</table>
	<input type="submit" name="REGISTER">
	</form>
</div>
</html>