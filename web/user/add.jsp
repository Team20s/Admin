<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!-- jquery 사용하기 위해 써줌 -->
<style>
	#useradd_page{
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
<div id="useradd_page">
	<h1>User Add</h1>
	<div id="container">
	<form id="user_form" action="user.cacao?cmd=add" method="post">
	<table class="form-group">
		<tr>
		<td>ID</td>
		<td><input type="text" name="id"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
		<td>PWD</td>
		<td><input type="password" name="pwd"></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
		<td>NAME</td>
		<td><input type="text" name="name"></td>
		</tr>
	</table>
	<br>
	<button type="submit" class="btn btn-default">REGISTER</button>
	</form>
	</div>
</div>
</html>