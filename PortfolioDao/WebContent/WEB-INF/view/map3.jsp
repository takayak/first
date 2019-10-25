<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date, java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">

<title>予約空き時間一覧表</title>
<style>
th, td {
	font-size: 15px;
	text-align: center;
}

img {
	width: 30px;
	height: 30px;
}

div.daimei {
	font-size: 30pt;
}



</style>
</head>
<body>
	<c:import url="/COMMONHEADER1.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-md-12">



				<div class=daimei>予約空き時間一覧表</div>

				<img src="images/batsu.png">：予約不可 <img src="images/ok1.png">:予約可能
				｜<a href="AddAdminServlet">管理者を新規に追加する｜</a><a href="logout">ログアウト</a>


				<table class="table table-bordered table-hover table-striped ">
					<tr>
						<td>日付</td>

						<%
							SimpleDateFormat sdf = new SimpleDateFormat("M/d (E)");
						%>
						<%
							Date now = new Date();
							Calendar cal = Calendar.getInstance();
						%>

						<%
							cal.setTime(now);
							for (int i = 0; i < 10; i++) {
						%>
						<td><%=sdf.format(cal.getTime())%></td>
						<%
							cal.add(Calendar.DAY_OF_MONTH, 1);
						%>
						<%
							}
						%>
					</tr>

					<%-- <c:forEach var="hour" begin="9" end="20" step="1">--%>
					<%
						for (int j = 0; j < 12; j++) {
							cal.setTime(now);
							cal.clear(Calendar.HOUR);
							cal.clear(Calendar.HOUR_OF_DAY);
							cal.clear(Calendar.AM_PM);
							cal.add(Calendar.HOUR, 9);
							cal.add(Calendar.HOUR, j);
							Date dt = cal.getTime();
							pageContext.setAttribute("dt", dt);
					%>
					<tr>
						<th><fmt:formatDate value="${dt}" pattern="H" />時</th>
						<%
							for (int i = 0; i < 10; i++) {
									cal.setTime(now);
									cal.add(Calendar.DAY_OF_MONTH, i);
									cal.clear(Calendar.HOUR);
									cal.clear(Calendar.HOUR_OF_DAY);
									cal.clear(Calendar.AM_PM);
									cal.add(Calendar.HOUR, 9);
									cal.add(Calendar.HOUR, j);

									dt = cal.getTime();
									pageContext.setAttribute("dt", dt);
									SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:00:00.0");
									String dt2 = formatter.format(dt);
									pageContext.setAttribute("dt2", dt2);
						%>
						<td>
							<%
								int a1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date eq dt2}">
										∮<a href="NameList?name=<c:out value="${reserve.name}" />"><c:out
												value="${reserve.name}" /></a>

										<%
											a1 = 7;
										%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a1 == 0) {
 %> <a
							href="addReserve?day=<c:out value="${dt2}" />&date=<fmt:formatDate value="${dt}" pattern="yyyy/MM/dd HH:00:00.0" />">-</a>
							<%
								}
							%>
						</td>
						<%
							}
						%>

					</tr>
					<%
						}
					%>
					<%-- </c:forEach>--%>


				</table>
				<a href="listReserve" class="btn btn-primary">予約管理者画面</a>
			</div>
		</div>
	</div>



	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>



</body>
</html>