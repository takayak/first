<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date, java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%
Date now = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("M/d");
String now1 =(sdf.format(now));

Calendar cal = Calendar.getInstance();
cal.setTime(now);
for(int i = 0;i<6;i++){
	cal.add(Calendar.DAY_OF_MONTH,1);
	out.println(sdf.format(cal.getTime()));
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">

<title>予約空き時間一覧表</title>
</head>
<body>
<c:import url="/COMMONHEADER1.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-sm-12">


				<h1>
					<img src="">予約空き時間一覧表
				</h1>

				<table class="table table-bordered table-hover table-striped">
					<tr >

						<td>日付</td>
						<c:forEach var="now1" begin="1" end="7" step="1">
						<td><%=now1 %></td>
						<%--<td>9/10</td>
						<td>9/11</td>
						<td>9/12</td>
						<td>9/13</td>
						<td>9/14</td>
						<td>9/15</td>--%>
						</c:forEach>
					</tr>
					<tr>
						<th>９時</th>

						<td>
							<%
								int a1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 09:00:00.0'}">
										<img src="images/batsu.png">
										<%
											a1 = 7;
										%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a1 == 0) {
 %> <a
							href="addReserve?day=2019年９月９日９時～&date=2019/09/09 09:00:00"><img src="images/ok1.png"></a>
							<%
								}
							%>
						</td>

						<td>
							<%
								int a2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 09:00:00.0'}">
							<img src="images/batsu.png"><%
										a2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a2 == 0) {
 %> <a href="addReserve?date=2019/09/10 09:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int a3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 09:00:00.0'}">
							<img src="images/batsu.png"><%
										a3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a3 == 0) {
 %> <a href="addReserve?date=2019/09/11 09:00:00"><img
								src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int a4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 09:00:00.0'}">
							<img src="images/batsu.png"><%
										a4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a4 == 0) {
 %> <a href="addReserve?date=2019/09/12 09:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int a5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 09:00:00.0'}">
							<img src="images/batsu.png"><%
										a5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a5 == 0) {
 %> <a href="addReserve?date=2019/09/13 09:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int a6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 09:00:00.0'}">
							<img src="images/batsu.png"><%
										a6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a6 == 0) {
 %> <a href="addReserve?date=2019/09/14 09:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int a7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 09:00:00.0'}">
							<img src="images/batsu.png"><%
										a7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (a7 == 0) {
 %> <a href="addReserve?date=2019/09/15 09:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>


					<tr>
						<th>10時</th>
						<td>
							<%
								int b1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 10:00:00.0'}">
							<img src="images/batsu.png"><%
										b1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (b1 == 0) {
 %> <a href="addReserve?date=2019/09/09 10:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int b2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 10:00:00.0'}">
							<img src="images/batsu.png"><%
										b2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (b2 == 0) {
 %> <a href="addReserve?date=2019/09/10 10:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int b3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 10:00:00.0'}">
							<img src="images/batsu.png"><%
										b3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (b3 == 0) {
 %> <a href="addReserve?date=2019/09/11 10:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int b4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 10:00:00.0'}">
							<img src="images/batsu.png"><%
										b4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (b4 == 0) {
 %> <a href="addReserve?date=2019/09/12 10:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int b5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 10:00:00.0'}">
							<img src="images/batsu.png"><%
										b5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (b5 == 0) {
 %> <a href="addReserve?date=2019/09/13 10:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int b6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 10:00:00.0'}">
							<img src="images/batsu.png"><%
										b6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (b6 == 0) {
 %> <a href="addReserve?date=2019/09/14 10:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int b7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 10:00:00.0'}">
							<img src="images/batsu.png"><%
										b7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (b7 == 0) {
 %> <a href="addReserve?date=2019/09/15 10:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>11時</th>
						<td>
							<%
								int c1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 11:00:00.0'}">
							<img src="images/batsu.png"><%
										c1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (c1 == 0) {
 %> <a href="addReserve?date=2019/09/09 11:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int c2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 11:00:00.0'}">
							<img src="images/batsu.png"><%
										c2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (c2 == 0) {
 %> <a href="addReserve?date=2019/09/10 11:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int c3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 11:00:00.0'}">
							<img src="images/batsu.png"><%
										c3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (c3 == 0) {
 %> <a href="addReserve?date=2019/09/11 11:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int c4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 11:00:00.0'}">
							<img src="images/batsu.png"><%
										c4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (c4 == 0) {
 %> <a href="addReserve?date=2019/09/12 11:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int c5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 11:00:00.0'}">
							<img src="images/batsu.png"><%
										c5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (c5 == 0) {
 %> <a href="addReserve?date=2019/09/13 11:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int c6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 11:00:00.0'}">
							<img src="images/batsu.png"><%
										c6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (c6 == 0) {
 %> <a href="addReserve?date=2019/09/14 11:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int c7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 10:00:00.0'}">
							<img src="images/batsu.png"><%
										c7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (c7 == 0) {
 %> <a href="addReserve?date=2019/09/15 11:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>12時</th>
						<td>
							<%
								int d1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 12:00:00.0'}">
							<img src="images/batsu.png"><%
										d1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (d1 == 0) {
 %> <a href="addReserve?date=2019/09/09 12:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int d2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 12:00:00.0'}">
							<img src="images/batsu.png"><%
										d2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (d2 == 0) {
 %> <a href="addReserve?date=2019/09/10 12:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int d3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 12:00:00.0'}">
							<img src="images/batsu.png"><%
										d3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (d3 == 0) {
 %> <a href="addReserve?date=2019/09/11 12:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int d4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 12:00:00.0'}">
							<img src="images/batsu.png"><%
										d4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (d4 == 0) {
 %> <a href="addReserve?date=2019/09/12 12:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int d5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 12:00:00.0'}">
							<img src="images/batsu.png"><%
										d5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (d5 == 0) {
 %> <a href="addReserve?date=2019/09/13 12:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int d6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 12:00:00.0'}">
							<img src="images/batsu.png"><%
										d6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (d6 == 0) {
 %> <a href="addReserve?date=2019/09/14 12:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int d7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 12:00:00.0'}">
							<img src="images/batsu.png"><%
										d7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (d7 == 0) {
 %> <a href="addReserve?date=2019/09/15 12:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>13時</th>
						<td>
							<%
								int e1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 13:00:00.0'}">
							<img src="images/batsu.png"><%
										e1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (e1 == 0) {
 %> <a href="addReserve?date=2019/09/09 13:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int e2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 13:00:00.0'}">
							<img src="images/batsu.png"><%
										e2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (e2 == 0) {
 %> <a href="addReserve?date=2019/09/10 13:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int e3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 13:00:00.0'}">
							<img src="images/batsu.png"><%
										e3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (e3 == 0) {
 %> <a href="addReserve?date=2019/09/11 13:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int e4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 13:00:00.0'}">
							<img src="images/batsu.png"><%
										e4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (e4 == 0) {
 %> <a href="addReserve?date=2019/09/12 13:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int e5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 13:00:00.0'}">
							<img src="images/batsu.png"><%
										e5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (e5 == 0) {
 %> <a href="addReserve?date=2019/09/13 13:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int e6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 13:00:00.0'}">
							<img src="images/batsu.png"><%
										e6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (e6 == 0) {
 %> <a href="addReserve?date=2019/09/14 13:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int e7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 13:00:00.0'}">
							<img src="images/batsu.png"><%
										e7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (e7 == 0) {
 %> <a href="addReserve?date=2019/09/15 13:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>14時</th>
						<td>
							<%
								int f1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 14:00:00.0'}">
							<img src="images/batsu.png"><%
										f1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (f1 == 0) {
 %> <a href="addReserve?date=2019/09/09 14:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int f2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 14:00:00.0'}">
							<img src="images/batsu.png"><%
										f2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (f2 == 0) {
 %> <a href="addReserve?date=2019/09/10 14:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int f3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 14:00:00.0'}">
							<img src="images/batsu.png"><%
										f3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (f3 == 0) {
 %> <a href="addReserve?date=2019/09/11 14:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int f4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 14:00:00.0'}">
							<img src="images/batsu.png"><%
										f4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (f4 == 0) {
 %> <a href="addReserve?date=2019/09/12 14:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int f5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 14:00:00.0'}">
							<img src="images/batsu.png"><%
										f5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (f5 == 0) {
 %> <a href="addReserve?date=2019/09/13 14:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int f6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 14:00:00.0'}">
							<img src="images/batsu.png"><%
										f6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (f6 == 0) {
 %> <a href="addReserve?date=2019/09/14 14:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int f7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 14:00:00.0'}">
							<img src="images/batsu.png"><%
										f7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (f7 == 0) {
 %> <a href="addReserve?date=2019/09/15 14:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>15時</th>
						<td>
							<%
								int g1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 15:00:00.0'}">
							<img src="images/batsu.png"><%
										g1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (g1 == 0) {
 %> <a href="addReserve?date=2019/09/09 15:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int g2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 15:00:00.0'}">
							<img src="images/batsu.png"><%
										g2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (g2 == 0) {
 %> <a href="addReserve?date=2019/09/10 15:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int g3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 15:00:00.0'}">
							<img src="images/batsu.png"><%
										g3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (g3 == 0) {
 %> <a href="addReserve?date=2019/09/11 15:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int g4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 15:00:00.0'}">
							<img src="images/batsu.png"><%
										g4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (g4 == 0) {
 %> <a href="addReserve?date=2019/09/12 15:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int g5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 15:00:00.0'}">
							<img src="images/batsu.png"><%
										g5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (g5 == 0) {
 %> <a href="addReserve?date=2019/09/13 15:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int g6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 15:00:00.0'}">
							<img src="images/batsu.png"><%
										g6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (g6 == 0) {
 %> <a href="addReserve?date=2019/09/14 15:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int g7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 15:00:00.0'}">
							<img src="images/batsu.png"><%
										g7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (g7 == 0) {
 %> <a href="addReserve?date=2019/09/15 15:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>16時</th>
						<td>
							<%
								int h1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 16:00:00.0'}">
							<img src="images/batsu.png"><%
										h1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (h1 == 0) {
 %> <a href="addReserve?date=2019/09/09 16:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int h2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 16:00:00.0'}">
							<img src="images/batsu.png"><%
										h2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (h2 == 0) {
 %> <a href="addReserve?date=2019/09/10 16:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int h3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 16:00:00.0'}">
							<img src="images/batsu.png"><%
										h3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (h3 == 0) {
 %> <a href="addReserve?date=2019/09/11 16:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int h4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 16:00:00.0'}">
							<img src="images/batsu.png"><%
										h4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (h4 == 0) {
 %> <a href="addReserve?date=2019/09/12 16:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int h5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 16:00:00.0'}">
							<img src="images/batsu.png"><%
										h5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (h5 == 0) {
 %> <a href="addReserve?date=2019/09/13 16:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int h6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 16:00:00.0'}">
							<img src="images/batsu.png"><%
										h6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (h6 == 0) {
 %> <a href="addReserve?date=2019/09/14 16:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int h7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 16:00:00.0'}">
							<img src="images/batsu.png"><%
										h7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (h7 == 0) {
 %> <a href="addReserve?date=2019/09/15 16:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>17時</th>

						<td>
							<%
								int i1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 17:00:00.0'}">
							<img src="images/batsu.png"><%
										i1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (i1 == 0) {
 %> <a href="addReserve?date=2019/09/09 17:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int i2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 17:00:00.0'}">
							<img src="images/batsu.png"><%
										i2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (i2 == 0) {
 %> <a href="addReserve?date=2019/09/10 17:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int i3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 17:00:00.0'}">
							<img src="images/batsu.png"><%
										i3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (i3 == 0) {
 %> <a href="addReserve?date=2019/09/11 17:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int i4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 17:00:00.0'}">
							<img src="images/batsu.png"><%
										i4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (i4 == 0) {
 %> <a href="addReserve?date=2019/09/12 17:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int i5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 17:00:00.0'}">
							<img src="images/batsu.png"><%
										i5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (i5 == 0) {
 %> <a href="addReserve?date=2019/09/13 17:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int i6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 17:00:00.0'}">
							<img src="images/batsu.png"><%
										i6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (i6 == 0) {
 %> <a href="addReserve?date=2019/09/14 17:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int i7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 17:00:00.0'}">
							<img src="images/batsu.png"><%
										i7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (i7 == 0) {
 %> <a href="addReserve?date=2019/09/15 17:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>18時</th>
						<td>
							<%
								int j1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 18:00:00.0'}">
							<img src="images/batsu.png"><%
										j1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (j1 == 0) {
 %> <a href="addReserve?date=2019/09/09 18:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int j2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 18:00:00.0'}">
							<img src="images/batsu.png"><%
										j2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (j2 == 0) {
 %> <a href="addReserve?date=2019/09/10 18:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int j3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 18:00:00.0'}">
							<img src="images/batsu.png"><%
										j3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (j3 == 0) {
 %> <a href="addReserve?date=2019/09/11 18:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int j4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 18:00:00.0'}">
							<img src="images/batsu.png"><%
										j4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (j4 == 0) {
 %> <a href="addReserve?date=2019/09/12 18:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int j5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 18:00:00.0'}">
							<img src="images/batsu.png"><%
										j5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (j5 == 0) {
 %> <a href="addReserve?date=2019/09/13 18:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int j6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 18:00:00.0'}">
							<img src="images/batsu.png"><%
										j6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (j6 == 0) {
 %> <a href="addReserve?date=2019/09/14 18:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int j7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 18:00:00.0'}">
							<img src="images/batsu.png"><%
										j7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (j7 == 0) {
 %> <a href="addReserve?date=2019/09/15 18:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>19時</th>
						<td>
							<%
								int k1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 19:00:00.0'}">
							<img src="images/batsu.png"><%
										k1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (k1 == 0) {
 %> <a href="addReserve?date=2019/09/09 19:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int k2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 19:00:00.0'}">
							<img src="images/batsu.png"><%
										k2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (k2 == 0) {
 %> <a href="addReserve?date=2019/09/10 19:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int k3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 19:00:00.0'}">
							<img src="images/batsu.png"><%
										k3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (k3 == 0) {
 %> <a href="addReserve?date=2019/09/11 19:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int k4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 19:00:00.0'}">
							<img src="images/batsu.png"><%
										k4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (k4 == 0) {
 %> <a href="addReserve?date=2019/09/12 19:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int k5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 19:00:00.0'}">
							<img src="images/batsu.png"><%
										k5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (k5 == 0) {
 %> <a href="addReserve?date=2019/09/13 19:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int k6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 19:00:00.0'}">
							<img src="images/batsu.png"><%
										k6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (k6 == 0) {
 %> <a href="addReserve?date=2019/09/14 19:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int k7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 19:00:00.0'}">
							<img src="images/batsu.png"><%
										k7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (k7 == 0) {
 %> <a href="addReserve?date=2019/09/15 19:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>
					<tr>
						<th>20時</th>
						<td>
							<%
								int l1 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-09 20:00:00.0'}">
							<img src="images/batsu.png"><%
										l1 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (l1 == 0) {
 %> <a href="addReserve?date=2019/09/09 20:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int l2 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-10 20:00:00.0'}">
							<img src="images/batsu.png"><%
										l2 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (l2 == 0) {
 %> <a href="addReserve?date=2019/09/10 20:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>


						<td>
							<%
								int l3 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-11 20:00:00.0'}">
							<img src="images/batsu.png"><%
										l3 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (l3 == 0) {
 %> <a href="addReserve?date=2019/09/11 20:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int l4 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-12 20:00:00.0'}">
							<img src="images/batsu.png"><%
										l4 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (l4 == 0) {
 %> <a href="addReserve?date=2019/09/12 20:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int l5 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-13 20:00:00.0'}">
							<img src="images/batsu.png"><%
										l5 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (l5 == 0) {
 %> <a href="addReserve?date=2019/09/13 20:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int l6 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-14 20:00:00.0'}">
							<img src="images/batsu.png"><%
										l6 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (l6 == 0) {
 %> <a href="addReserve?date=2019/09/14 20:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>

						<td>
							<%
								int l7 = 0;
							%> <c:forEach var="reserve" items="${reserveList}">
								<c:choose>
									<c:when test="${reserve.date == '2019-09-15 20:00:00.0'}">
							<img src="images/batsu.png"><%
										l7 = 7;
									%>
									</c:when>
								</c:choose>
							</c:forEach> <%
 	if (l7 == 0) {
 %> <a href="addReserve?date=2019/09/15 20:00:00"><img src="images/ok1.png"></a> <%
 	}
 %>
						</td>
					</tr>



				</table>
				<a href="listReserve" class="btn btn-primary">予約管理者画面</a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<c:forEach items="${reserveList}" var="reserve">
 <p><c:out value="${reserve.date}"/></p>
 </c:forEach>


	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>



</body>
</html>