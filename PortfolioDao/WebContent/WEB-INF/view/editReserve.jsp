<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-sm-5">

				<h1>編集画面</h1>

				<%--
<c:forEach items="${reserveList}" var="reserve">
				<c:out value="${day}" />--%>
				<form action="" method="post">

					<table class="table table-borderd table-hover table-striped">
						<tr>
							<th></th>
							<td><input type="hidden" name="id"
								value="<c:out value="${reserve.id}"/>" /></td>
						</tr>
						<tr>
							<th>名前</th>
							<td>
								<div class="form group">
									<input type="text" name="name" class="form-control"
										value="<c:out value="${reserve.name}"/>" />
								</div>
							</td>
						</tr>
						<tr>
							<th>住所</th>

							<td>
								<div class="form group">
									<input type="text" class="form-control" name="address"
										value="<c:out value="${reserve.address}" />" />
								</div>
							</td>


						</tr>
						<tr>
							<th>電話番号</th>
							<td><div class="form group">
									<input type="text" class="form-control" name="tel"
										value="<c:out value="${reserve.tel}" />" />
								</div></td>
						</tr>
						<tr>
							<th>メールアドレス</th>
							<td><div class="form group">
									<input type="text" class="form-control" name="mail"
										value="<c:out value="${reserve.mail}"/>" />
								</div></td>
						</tr>
						<tr>
							<th>予約日情報</th>
							<td><div class="form group">
									<input type="text" class="form-control" name="date"
										value="<fmt:formatDate value="${reserve.date}" pattern="yyyy/MM/dd HH:mm:ss" />" />
								</div></td>
					</table>

					<p>
						<input type="submit" class="btn btn-primary" value="編集確定" />
					</p>

				</form>
			</div>
		</div>
	</div>

	<%-- </c:forEach>--%>
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>