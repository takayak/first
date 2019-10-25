<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>予約入力</title>
<style>
</style>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />
	<div class="container">
		<div class="row">

			<div class="col-sm-6">


				<h1>予約確認</h1>
				<c:out value="${day}" />
				<form action="" method="post">
					<table class="table table-borderd table-hover table-striped">
						<tr>
							<th>名前</th>
							<td><c:if test="${not empty nameError}">
									<p>
										<c:out value="※${nameError}" />
									</p>
								</c:if>
								<div class="form group">
									<input type="text" name="name" class="form-control"
										value="<c:out value="${name}"/>" />
								</div></td>
						</tr>
						<tr>
							<th>住所</th>

							<td>
								<div class="form group">
									<input type="text" class="form-control" name="address" />
								</div>
							</td>


						</tr>
						<tr>
							<th>電話番号</th>
							<td><div class="form group">
									<input type="text" class="form-control" name="tel" />
								</div></td>
						</tr>
						<tr>
							<th>メールアドレス</th>
							<td><div class="form group">
									<input type="text" class="form-control" name="mail" />
								</div></td>
						</tr>
						<tr>
							<th>予約日情報</th>
							<td><div class="form group">
									<input type="text" class="form-control" name="date"
										value="<c:out value="${date}" />" />
								</div></td>
					</table>

					<p>
						<input type="submit" class="btn btn-primary" value="予約確定" />
					</p>

				</form>
			</div>

			<div class="col-md-6">
				<img src="images/reserve.jpg" width="400" height="350"
					style="border-radius: 30px; padding-top: 5px;">
			</div>

		</div>
	</div>
</body>
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</html>