<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />
	<h1>ログアウト</h1>
	<p>ログアウトしました。</p>
	<p>
		<a href="login">ログイン画面に戻る</a>
	</p>
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>