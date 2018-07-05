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
		width:600px;
		height:400px;
		margin:0 auto;
		background:white;
		text-align:center;
	}
	label{
		text-color:red;
	}
	table{
		margin:0 auto;
	}
</style>
<script>

</script>
</head>
<body>
<div id="main_center">
	<h1>User Update</h1>
	<form action="user.cacao?cmd=updateimpl" method="post">
	<table>
		<tr>
			<td>ID: ${updateuser.id }</td>
			<td><input type="hidden" name="id" value="${updateuser.id }" readonly="readonly"></td>
		</tr>
		<tr>
			<td>PWD</td>
			<td><input type="password" name="pwd" value="${updateuser.pwd }"></td>
		</tr>
		<tr>
			<td>NAME</td>
			<td><input type="text" name="name" value="${updateuser.name }"></td>
		</tr>
	</table>
	<input type="submit" value="UPDATE" >
	</form>
</div>
</body>
</html>