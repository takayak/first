<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style>
.top-bar {
	display: inline-flex;
	float:left;
}

.top-contents {
margin-right:450px
}
</style>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-sm-12">

				<h1>会員一覧</h1>
				<div class="top-bar">

					<form action="SearchName" method="post" class="top-contents">

						名前検索：<input type="text" name="name" value=""><input
							type="submit" value="検索">

					</form>

					<form action="SearchByDate" method="post" class="top-contents2">
						月度検索： <select name="date">
							<option value="2019-09">2019-09</option>
							<option value="2019-10">2019-10</option>
							<option value="2019-11">2019-11</option>
							<option value="2019-12">2019-12</option>

						</select> <input type="submit" value="送信">
					</form>
				</div>

				<table class="table table-borderd table-hover table-striped">
					<tr>
						<th>ID</th>
						<th>名前</th>
						<th>年齢</th>
						<th>住所</th>
						<th>メールアドレス</th>
						<th>予約日時</th>
						<th>削除</th>
						<th>編集</th>

					</tr>
					<c:forEach items="${reserveList}" var="reserve">
						<tr>
							<td><c:out value="${reserve.id}" /></td>
							<td><a
								href="NameList?name=<c:out value="${reserve.name}" />"><c:out
										value="${reserve.name}" /></a></td>
							<td><c:out value="${reserve.address}" /></td>
							<td><c:out value="${reserve.tel}" /></td>
							<td><c:out value="${reserve.mail}" /></td>
							<td><c:out value="${reserve.date}" /></td>
							<td><a class="btn btn-danger"
								href="DeleteReserve?id=<c:out value="${reserve.id}" />">削除</a></td>
							<td><a class="btn btn-danger"
								href="EditServlet?id=<c:out value="${reserve.id}" />">編集</a></td>
						</tr>
					</c:forEach>


				</table>
				<p>
					<a href="addReserve" class="btn btn-primary">〇予約追加〇</a>
				</p>
				<p>
					<a href="map" class="btn btn-primary">日別予約画面</a>
				</p>
			</div>
		</div>
	</div>
</body>

<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>