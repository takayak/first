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


.explain{
margin-top:25px;
}
.nav-bar nabar-default{
margin-bottom:0px;
}
</style>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />

	<div class="container">
		<div class="row">

			<div class="col-sm-6">
				<h1 class="title-top">管理者情報新規登録申請画面</h1>


				<form action="" method="post">

					<table class="table table-bordered table-hover">
						<tr>
							<th>id</th>
							<td><input type="text" name="loginId"></td>
						</tr>
						<tr>
							<th>pass</th>
							<td><input type="password" name="loginPass"></td>
						</tr>

					</table>
					<input type="submit" value="登録">


				</form>
			</div>
			<div class="col-sm-6">
			<div class="explain">
			<p>使用方法</p>
			<p>1,希望のIDとPASSを入力して管理者を作成することが出来ます。</p>
			</div>



			</div>
		</div>

	</div>
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>