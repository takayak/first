<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOPページ</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	rel="stylesheet">
</head>
<body>
	<div class="container-fruid">
		<div class="col-sm-12">

			<div class="header">
				<nav class="navbar  navbar-default ">
					<div class="container">
						<ul class="nav  navbar-nav  navbar-hover">
							<li class=""><a href="index2.jsp">HOME</a></li>
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
									<li><a href="logout">管理者ログアウト</a></li>
								</ul></li>
						</ul>
					</div>
				</nav>
			</div>

			<div class="main-img">
				<p class="p1">Shop</p>
				<p class="p2">welcomewelcome</p>
				<div class="p3">
					<a href="map"><i class="fas fa-pen-nib"></i> &nbsp;時間帯予約はこちら</a><a
						href="CheckReserve"><i class="fas fa-history"></i>
						&nbsp;予約確認はこちらへ</a>
				</div>



			</div>
			<div class="inner">
				<h1>システム紹介</h1>

			</div>


			<section id="prifile">


				<div class="inner">
					<div class="inner-contents">
						<div class="intro0">
							<img src="images/profile.png" class="img1" alt="イラストや">
						</div>
						<div class="intro1">
							<h3>時間帯指定予約システム</h3>
							<p>ネットで予約をしていない店舗でネット予約を可能にするために作成しました。</p>
							<table class="table table-bordered table-hover table-striped">

								<tr class="info">
									<th>お客様機能</th>
									<th>機能内容</th>
								</tr>
								<tr>
									<th>時間来予約はこちら</th>
									<th>表の選択から予約ができます。</th>
								</tr>
								<tr>
									<th>予約確認はこちら</th>
									<th>予約時間を確認できます。</th>
								</tr>

								<tr class="info">
									<th>管理者機能</th>
									<th>機能内容</th>
								</tr>
								<tr>
									<th>予約名簿</th>
									<th>予約一覧を見ることができます。</th>
								</tr>
								<tr>
									<th>予約カレンダー</th>
									<th>直近からの予約日付表示ができます。</th>
								</tr>
								<tr>
									<th>管理者の追加</th>
									<th>管理者の追加ができます。</th>
								</tr>
								<tr>
									<th>ログイン/ログアウト</th>
									<th>[id admin pass adminpass]</th>
								</tr>
							</table>


						</div>


					</div>
				</div>
			</section>













		</div>
	</div>

	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>