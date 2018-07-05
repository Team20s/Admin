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
		width:400px;
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
<div id="useradd_page">
	<h1>User Add</h1>
	<form id="user_form" action="user.cacao?cmd=add" method="post">
	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		<tr>
		<td>ID</td>
		<td><input type="text" name="id"></td>
		</tr>
		<tr>
		<td>PWD</td>
		<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
		<td>NAME</td>
		<td><input type="text" name="name"></td>
		</tr>
	</table>
	<input type="submit" name="REGISTER">
	</form>
</div>
</html>