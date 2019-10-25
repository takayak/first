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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>予約管理システムログイン</title>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />
	<div class="container">
		<div class="row">


			<h1>予約管理システムログイン</h1>

			<c:if test="${not empty error}">
				<p>ログインIDかパスワードが正しくありません</p>
			</c:if>
			<div class="col-sm-3">
				<form action="" method="post">
					<div class="form-group">
						<p>
							<input type="text" name="loginId" placeholder="ログインID"
								class="form-control" />
						</p>
					</div>
					<div class="form-group">
						<p>
							<input type="password" name="loginPass" placeholder="パスワード"
								class="form-control" />
						</p>
					</div>

					<p>
						<input type="submit" value="ログイン" class="btn btn-primary" />
					</p>
				</form>
			</div>
		</div>
	</div>

	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>