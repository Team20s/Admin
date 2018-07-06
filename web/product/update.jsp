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
@import url('https://fonts.googleapis.com/css?family=Bitter|Galada');
	#product_page{
		padding-top:2%;
		width:100%;
		height:650px;
		margin:5% auto;
		background-size:100%;
		background-image:url('img/pink_back.jpg');
		text-align:center;
	}
	h1{
		margin-bottom:2%;
		font-family:Galada;
	}
	table {
		margin:0 auto;
		font-family:Bitter;
	}
	#container{
		margin:0 auto;
		width:500px;
		height:400px;
		
	}
	.form-group{
		line-height: 40px;
	}

	.btn-default, .btn-default:hover, .btn-default:active, .btn-default:visited {
    	background-color: #FFA2A2;
    }
</style>
<script>

</script>
</head>
<body>
<div id="background">
	<div id="product_page">
		<h1>Product Update</h1>
		<div id="container">
		<!-- img파일을 선택하지 않으면 기존의 이미지 사용, 파일을 선택한다면 이미지가 바뀜 -->
		<form action="product.cacao?cmd=updateimpl" method="post" enctype="multipart/form-data">
		<table class="form-group">
			<tr>
			<td>ID</td>
			<td><input type="text" name="id" value="${productupdate.id }" placeholder="${productupdate.id }" class="form-control" readonly="readonly"></td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
			<td>NAME</td>
			<td><input type="text" name="name" value="${productupdate.name }" class="form-control"></td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
			<td>PRICE</td>
			<td><input type="number" name="price" value="${productupdate.price }" class="form-control"></td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
			<td>IMG</td>
			<td><input type="file" name="newimgname" class="form-control"></td>
			<td><input type="hidden" name="imgname" value="${productupdate.imgname }" class="form-control" ></td>
			</tr>
		</table>
		<br>
		<button type="submit" name="REGISTER" class="btn btn-default">REGISTER</button>
		</form>
	   </div>
	</div>
<div id="background">
</html>