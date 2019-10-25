<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者を追加しました</title>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />
	管理者を追加しました。

	<p>
		<a href="listReserve">管理者用予約一覧へ戻る</a>
	</p>
	<p>
		<a href="map">予約時間画面へ戻る</a>
	</p>
</body>
</html>
