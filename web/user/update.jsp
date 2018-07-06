<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!-- jquery 사용하기 위해 써줌 -->
<style>
	#main_center{
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
<div id="background">
	<div id="main_center">
		<h1>User Update</h1>
		<div id="container">
		<form action="user.cacao?cmd=updateimpl" method="post">
		<table class="form-group">
			<tr>
				<td>ID</td>
				<td><input class="form-control" type="text" placeholder=${updateuser.id } name="id" value="${updateuser.id }" readonly="readonly"></td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>PWD</td>
				<td><input class="form-control" type="password" name="pwd" value="${updateuser.pwd }"></td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>NAME</td>
				<td><input class="form-control" type="text" name="name" value="${updateuser.name }"></td>
			</tr>
		</table>
		<br>
		<button type="submit" class="btn btn-default">UPDATE</button>
		</form>
		</div>
	</div>
</div>
</body>
</html>