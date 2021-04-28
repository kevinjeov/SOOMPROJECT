<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	<h3 style="text-align: center; margin-top: 50px;">S O O M</h3>
	<!-- Wrapper -->
	<div id="wrapper">
		
		<div id="main">
			<div class="inner">
			
				<!-- Header -->
				<header id="header" style="margin-top: 50px; padding: 0;"> </header>

				<!-- Form -->
				<section style="margin-left: 35%; ">
					<h2>회원가입</h2>
					<form method="post" action="JoinService">
						<!-- //DAO파일에 아이디확인 하는 조인 서비스 만들면 될거같아요 -->

						<div style="display: block;">
							<input type="text" name="name" id="name" value=""
								placeholder="이름을 입력하세요" style="width: 45%" /><br>

						</div>
						<!-- 아이디 -->
						<div>
							<input type="text" id="id" required="required" name="id"
								placeholder="아이디를 입력하세요" style="display: inline; width: 45%;">
							<input type="button" value="중복확인" onclick="ajaxCall()"
								style="margin-left: 3%;">
							<p id="p1"></p>

						</div>


						<div>

							<td><input type="password" name="pw" id="pw" minlength="6"
								maxlength="12" placeholder="비밀번호를 입력하세요" onchange="check_pw()"
								style="display: inline; width: 45%">&nbsp;
								
								<span style="color: #5f8ea0; margin-left: 1%;">보안성 </span> 
								<progress
									id="pw_pro" value="0" max="3" style="margin-left: 1%;"></progress>&nbsp;<span
								id="pw_pro_label"></span></td> <br>
								<br>
							<td><input type="password" name="pw2" id="pw2"
								placeholder="비밀번호 확인" onchange="check_pw()"
								style="width: 45%; display: inline;"><br> <span
								id="check"></span></td> <br> <input type="text" name="tel"
								required="required" pattern="[0-1]{3}-[0-9]{4}-[0-9]{4}"
								title="###-####-#### 형식을 지켜주세요" placeholder="전화번호를 입력해주세요"
								style="width: 45%"> <br> <br>

							<h3>성별</h3>
							<input type="radio" id="gender-male" name="gender" checked>
							<label for="gender-male" style="margin-bottom: 3%;">남</label> <input
								type="radio" id="gender-female" name="gender-male"> <label
								for="gender-female">여</label>
							
							<br><br>
							<h3>생년월일</h3>
							<td><input type="date" id="birth" name="birth"
								style="margin-bottom: 3%;"></td>
						</div>



						<div>
							<ul class="actions">

								<li><input type="submit" onclick="test()" value="가입하기"
									class="primary"
									style="position: relative; margin-top: 30%; margin-left: 150%;" /></li>

							</ul>
						</div>


						<script>
							function test() {
								const nameElem = document
										.querySelector('#name');
								var userName = nameElem.value;
								window.alert('\uD83D\uDE00' + userName
										+ '님 회원가입 성공');

							}
						</script>


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