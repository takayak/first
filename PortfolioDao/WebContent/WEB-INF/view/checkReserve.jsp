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
.inputform {
	border: 1px solid;
	padding: 0 10px;
	margin-right: 350px;
}
</style>

<script>

</script>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-sm-12">

				<p>※予約状況確認※</p>
				<p>メールアドレスを入力していて頂くと予約の確認が出来ます。</p>
				<div class="inputform">
					<form action="CheckReserve" method="post">
						<div class="form-group">
							<p>
								<label for="email">メールアドレス</label><input type="text"
									class="form-control" name="mail" placeholder="予約時メールアドレスを入力してください。">
							</p>
						</div>
						<p>
							<input type="submit" class="btn btn-lg btn-primary"
								value="予約情報確認">
						</p>
					</form>
				</div>




			</div>
		</div>
	</div>
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>