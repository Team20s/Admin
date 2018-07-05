<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table th{
	text-align:center;
}
table td{
	text-align:center;
	line-height:20px;
}
</style>
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script></script>
</head>
<body>
<div id="main_center">
<div class="card mb-3">
     <div class="card-header">
        <i class="fa fa-table"></i><strong>USER LIST</strong></div>
        <div class="card-body">
          <div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
						<tr>
							<th>ID</th>
							<th>PWD</th>
							<th>NAME</th>
						</tr>
						</thead>
						<c:forEach var="ul" items="${userlist }">
							<tr>
								<td><a href="user.cacao?cmd=detail&id=${ul.id }">${ul.id }</a></td>
								<%-- EL은 어디에도 들어갈 수 있음 --%>
								<td>${ul.pwd }</td>
								<td>${ul.name }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>