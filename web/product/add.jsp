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
		width:500px;
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
	<h1>Product ADD</h1>
	<form action="product.cacao?cmd=add" method="post" enctype="multipart/form-data">
	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		<tr>
		<td>NAME</td>
		<td><input type="text" name="name"></td>
		</tr>
		<tr>
		<td>PRICE</td>
		<td><input type="number" name="price"></td>
		</tr>
		<tr>
		<td>IMG</td>
		<td><input type="file" name="imgname"></td>
		</tr>
	</table>
	<input type="submit" name="REGISTER">
	</form>
</div>
</html>