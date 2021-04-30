<%@page import="com.VO.conferenceVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.conferenceDAO"%>
<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>>막내여 숨쉬어라 SOOM</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets0426/css/main.css" />
</head>
<body class="is-preload">
	<%
	memberVO vom = (memberVO) session.getAttribute("vom");
	%>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
				<form method="post" action="logoutService.do">
				<input type="submit" onclick="test()" value="로그아웃"
								class="primary"
								style="width: 120px; position: absolute; text-align: center; 
								margin-left: 1020px; margin-bottom: 50px" />
				</form>
								
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-snapchat-ghost"><span
								class="label">Snapchat</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-medium-m"><span
								class="label">Medium</span></a></li>
						<li><span><%=vom.getM_name()%> 님 환영합니다.</span></li>
					</ul>
				</header>

				<!-- Banner -->
				<section id="soommain">
					<div class="content">
						<header class="major">
							<h3>회의 목록</h3>
						</header>
						<table class="table" style="background-color: white;">

							<thead>
								<tr
									style="height: 5px; font-size: smaller; background-color: gray;">
									<th>회의번호</th>
									<th>제목</th>
									<th>일자</th>
									<th>참석자</th>

								</tr>

								<%
								conferenceDAO dao = new conferenceDAO();

								ArrayList<conferenceVO> arr = new ArrayList<conferenceVO>();
																
								arr = dao.select();
								
								int k = arr.size();

								for (int i = 0; i < arr.size(); i++) {
									out.print("<tr class='tbl_line'>");
									out.print("<td>" + (k--) + "</td>");
									out.print("<td><a href='회의확인페이지.jsp?num=" + arr.get(i).getC_code() + "'>" + arr.get(i).getC_title() + "</a></td>");
									out.print("<td>" + arr.get(i).getC_date() + "</td>");
									out.print("<td>" + arr.get(i).getC_guest() + "</td>");
									
									/* out.print("<td><a href ='DeleteService.do?num=" + arr.get(i).getEmail()+ "'> 삭제  </a></td>"); */
									//QueryString : 전송하는 방식이 get방식일때 URL을 통해서 값을 보내는 방식
									out.print("</tr>");
									//out.print(email + "\t" + tel + "\t" + address + "<br>");
								}
								%>

								<%
								

								if (vom != null) {
								%>
								<tr>
									<td align="right" colspan="5"><button class="btn_wr"
											type="button" onclick="location.href='tip_write.jsp'">글쓰기</button></td>
								</tr>
								<%
								}
								%>

							</thead>

						</table>
					</div>
				</section>


			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section id="search" class="alt">
					<form method="post" action="#">
						<input type="text" name="query" id="query" placeholder="Search" />
					</form>
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<a href="soommain.jsp" id="title"> 메뉴</a>
					</header>
					<ul>
						<li><a href="new.jsp" id="top-link"><span
								class="icon solid fa-home"> + 새회의실 만들기</span></a></li>
						<li><a href="meetingjoin.jsp" id="portfolio-link"><span
								class="icon solid fa-th">회의 참가하기</span></a></li>
						<li><a href="storage.jsp" id="about-link"><span
								class="icon solid fa-user">회의록 보관함</span></a></li>
						<li><a href="issue.jsp" id="contact-link"><span
								class="icon solid fa-envelope">그룹별 이슈</span></a></li>
						<li><a href="QnA.jsp" id="contact-link"><span
								class="icon solid fa-envelope"> 문의하기</span></a></li>
					</ul>
				</nav>




				<!-- Section -->
				<section>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
						<li class="icon solid fa-phone">(000) 000-0000</li>
						<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
							Nashville, TN 00000-0000
						</li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>

			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>