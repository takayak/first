<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style>
.table2 {
	margin-bottom: px;
}
</style>
</head>
<body>

	<c:import url="/COMMONHEADER1.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-sm-12">

				<h1>予約履歴一覧</h1>

				<table class="table table-bordered table-hover ">
					<tr>
						<th>予約番号</th>
						<th>名前</th>
						<th>年齢</th>
						<th>住所</th>
						<th>メールアドレス</th>
						<th>予約日時</th>


					</tr>
					<c:forEach items="${reserveList}" var="reserve">
						<tr>
							<td><c:out value="${reserve.id}" /></td>
							<td><c:out value="${reserve.name}" /></td>
							<td><c:out value="${reserve.address}" /></td>
							<td><c:out value="${reserve.tel}" /></td>
							<td><c:out value="${reserve.mail}" /></td>
							<td><fmt:formatDate value="${reserve.date}"
									pattern="yyyy/MM/dd HH:00" /></td>

						</tr>
					</c:forEach>


				</table>
				<p>
					<a href="map" class="btn btn-primary">日別予約画面へ</a>
				</p>
			</div>
		</div>
	</div>

</body>

<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>