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
<style>
a:hover {
color:whtie;
}


</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
		<div class="row">
			<div class="col-sm-12">

	<%--ここからnavbar --%>
	<header>
		<nav class="navbar  navbar-default ">
			<div class="container">
				<ul class="nav  navbar-nav  navbar-hover">
					<li class="active">
					    <a href="index2.jsp">HOME</a></li>
					<li><a href="map">時間別予約</a></li>
					<li><a href="CheckReserve">予約確認</a></li>
					<li><a href="#">アクセス</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">管理者メニュー<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="listReserve">予約名簿</a></li>
							<li><a href="map3">予約カレンダー</a></li>
							<li><a href="AddAdminServlet">管理者追加</a></li>
							<li><a href="map">時間別予約</a></li>
							<li class="divider"></li>

							<li class="divider"></li>
							<li><a href="logout">管理者ログアウト</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<%--おわりnavbar --%>
	</div></div></div>


</body>
</html>