<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
body {
	background-color: #efefef;
}

.profile-pic {
	max-width: 200px;
	max-height: 200px;
	display: block;
}

.file-upload {
	margin-top: 263px;
	margin-right: 3000px;
	position: absolute;
}

.circle {
	border-radius: 1000px !important;
	overflow: hidden;
	width: 128px;
	height: 128px;
	border: 8px solid rgba(255, 255, 255, 0.7);
	position: absolute;
	top: 72px;
	background-color: wheat;
	margin-left: 0px;
	margin-top: 200px;
}

img {
	max-width: 100%;
	height: auto;
}

.p-image {
	position: absolute;
	top: 167px;
	right: 30px;
	color: #666666;
	transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}

.p-image:hover {
	transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}

.upload-button {
	font-size: 1.2em;
}

.upload-button:hover {
	transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
	color: #999;
}

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
				<header id="header" style="margin-top: 50px; padding: 0;">
				</header>

				<!-- Form -->
				<h2>회원가입</h2>
				<br>
				<div class="row">
					<div class="small-12 medium-2 large-2 columns">
						<div class="circle">
							<!-- User Profile Image -->

							<!-- Default Image -->
							<!-- <i class="fa fa-user fa-5x"></i> -->
						</div>
						<div class="p-image" id="image_container"
							style="position: absolute;">
							<i class="fa fa-camera upload-button"></i>

							<div>
								<input class="file-upload" type="file" accept="image/*"
									onchange="setThumbnail(event);"
									style="margin-right: 1300px; position: relative; margin-bottom: 700px;" />

								<script>
									function setThumbnail(event) {
										var reader = new FileReader();
										reader.onload = function(event)

										{
											var img = document
													.createElement("img");
											img.setAttribute("src",
													event.target.result);
											document
													.querySelector("div.circle")
													.appendChild(img);
										};
										reader
												.readAsDataURL(event.target.files[0]);
									}
								</script>
							</div>
						</div>
					</div>
				</div>
				<form method="post" action="JoinService">
					<!-- //DAO파일에 아이디확인 하는 조인 서비스 만들면 될거같아요 -->
					<div style="margin-left: 5px">
						<input type="text" name="name" id="name" value=""
							placeholder="이름을 입력하세요" style="width: 40%; margin-left: 150px;" /><br>
						<div style="display: block;">
							<input type="email" name="useremail" id="useremail" value=""
								placeholder="이메일을 입력하세요" style="width: 40%; margin-left: 150px;" /><br>

							<!--					<th>이메일</th>
        
            <input type='text' name="email" placeholder="이메일을 입력하세요"style="width: 40%; margin-left: 150px;">@
              <select name="emailaddr" style="width: 40%; margin-left: 150px;">
                 <option value="">직접입력</option>
                 <option value="daum.net">daum.net</option>
                 <option value="empal.com">empal.com</option>
                 <option value="gmail.com">gmail.com</option>
                 <option value="hanmail.net">hanmail.net</option>
                 <option value="msn.com">msn.com</option>
                 <option value="naver.com">naver.com</option>
                 <option value="nate.com">nate.com</option>
					</select> -->
						</div>
					</div>
					<br>

					<!-- 아이디 -->
					<div>
						<input type="text" id="id" required="required" name="id"
							placeholder="아이디를 입력하세요" style="display: inline; width: 53%;">
						<input type="button" value="중복확인" onclick="ajaxCall()"
							style="margin-left: 3%;">
						<p id="p1"></p>

					</div>


					<div>

						<input type="password" name="pw" id="pw" minlength="6"
							maxlength="12" placeholder="비밀번호를 입력하세요" onchange="check_pw()"
							style="display: inline; width: 53%;">&nbsp; <span
							style="color: #5f8ea0; margin-left: 1%;">보안성 </span>
						<progress id="pw_pro" value="0" max="3" style="margin-left: 1%;"></progress>
						&nbsp;<span id="pw_pro_label"></span> <br> <br> <input
							type="password" name="pw2" id="pw2" placeholder="비밀번호 확인"
							onchange="check_pw()" style="width: 53%; display: inline;"><br>
						<span id="check"></span> <br> <input type="text" name="tel"
							required="required" pattern="[0-1]{3}-[0-9]{4}-[0-9]{4}"
							title="###-####-#### 형식을 지켜주세요" placeholder="전화번호를 입력해주세요"
							style="width: 53%;"> <br> <br>



						<h3>성별</h3>
						<input type="radio" id="gender-male" name="gender" checked>
						<label for="gender-male" style="margin-bottom: 3%;">남</label> <input
							type="radio" id="gender-female" name="gender-male"> <label
							for="gender-female">여</label> <br> <br>
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
							const nameElem = document.querySelector('#name');
							var userName = nameElem.value;
							window.alert('\uD83D\uDE00' + userName
									+ '님 회원가입 성공');

						}
					</script>
				</form>



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