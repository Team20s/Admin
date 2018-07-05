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
	line-height:100px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script></script>
</head>
<body>
<div id="main_center">
<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i><strong>PRODUCT LIST</strong></div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            			<thead>
						<tr>
							<th>ID</th>
							<th>IMAGE</th>
							<th>NAME</th>
							<th>PRICE</th>
							<th>REGDATE</th>
						</tr>
						</thead>
						<c:forEach var="pl" items="${productlist }">
							<tr>
								<td><a href="product.cacao?cmd=detail&id=${pl.id }">${pl.id }</a></td>
								<td><img width="100px" src="img/${pl.imgname }"></td>
								<td>${pl.name }</td>
								<td>${pl.price }</td>
								<td>${pl.regdate }</td>
							</tr>
						</c:forEach>
					</table>
			</div>
      </div>
    </div>
</div>
</body>
</html>