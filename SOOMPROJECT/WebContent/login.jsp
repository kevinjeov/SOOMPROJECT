<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
#test_btn1 {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	margin-right: -4px;
	width: 120px;
	margin-left: 46%;
}

#btn_group button {
	border: 1px solid pink;
	background-color: rgba(0, 0, 0, 0);
	color: pink;
	padding: 5px;
}

#btn_group button:hover {
	color: white;
	background-color: pink;
}
</style>
<title>막내여 숨쉬어라 SOOM</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets0426/css/main.css" />
</head>
<body class="is-preload">
	<%
	memberVO vo = (memberVO)session.getAttribute("vo");
	%>

	<h3 style="text-align: center; margin-top: 50px;">S O O M</h3>
	<!-- Wrapper -->
	<div id="wrapper">

		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header" style="margin-top: 50px; padding: 0;">
				</header>

				</header>

				<!-- Section -->
				<section>
					<form action="loginService.do" method = "POST">
						<div align="center">
							<h2 style="text-align: center;">로그인</h2>
							
							
							<br> <input type="text" id="loginemail" name="m_id"
								placeholder="아이디를 입력하세요" style="width: 700px; height: 50px"></input>
							<br> <br> <input type="password" id="password" name="m_pw"
								placeholder=" 비밀번호를 입력하세요" style="width: 700px"></input>
						</div>
						<br> <br>
						<div id="btn_group">
							<button id="test_btn1">
								로그인</button>
						</div>
						<br> <br>
						<div align="center">
							아이디가 없으세요?<a href="join.jsp"> 회원가입</a> 여기로 !!
						</div>

					</form>

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