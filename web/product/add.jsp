<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!-- jquery 사용하기 위해 써줌 -->
<style>
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
</style>
<script>

</script>
</head>
<body>
<div id="product_page">
	<h1>Product ADD</h1>
	<div id="container">
	<form action="product.cacao?cmd=add" method="post" enctype="multipart/form-data">
	<table class="form-group">
		<tr>
		<td>NAME</td>
		<td><input class="form-control" type="text" name="name"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
		<td>PRICE</td>
		<td><input class="form-control" type="number" name="price"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
		<td>IMG</td>
		<td><input class="form-control" type="file" name="imgname"></td>
		</tr>
	</table>
	<br>
	<button  type="submit" class="btn btn-default">REGISTER</button>
	</form>
	</div>
</div>
</html>