<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
.gallerylist {
	max-width: 1200px;
	width: 100%;
	margin: 0 auto;
}

ul {
	font-size: 0;
}

ul>li {
	display: inline-block;
	vertical-align: top;
	width: 31%
}

ul>li>a {
	display: block;
	width: auto;
	text-decoration: none;
	margin: 5px;
}

ul>li>a .screen {
	position: relative;
	overflow: hidden;
}

ul>li>a .screen .top {
	position: absolute;
	bottom: 150%;
	left: 30px;
	z-index: 2;
	font-size: 26px;
	font-weight: 900;
}

ul>li>a .screen .bottom {
	position: absolute;
	top: 100%;
	left: 30px;
	z-index: 2;
	color: #666;
	font-size: 26px;
}

ul>li>a .screen img {
	width: 100%
}

ul>li>a h3 {
	font-size: 14px;
	text-align: center;
	padding: 20px;
	color: #666;
}

ul>li>a:hover .top {
	bottom: 52%;
}

ul>li>a:hover .bottom {
	bottom: 52%;
}
/* ul > li > a .screen .top{
	position: absolute;
	bottom: 150%;
	left: 30px;
	z-index: 2;
	color: #fff;
	font-size: 26px;
	font-weight: 900;
	transition : all .35s;
}

ul > li > a .screen .bottom{
	position: absolute;
	top : 150%;
	left: 30px;
	z-index: 2;
	color: #fff;
	font-size: 12px;
	transition : all .35s;
}  */
</style>

<title>������ ������� SOOM</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets0426/css/main.css" />
</head>
<body class="is-preload">
	<img src="images0426/soomlogo.png" height="80" width="80"
		style="position: absolute; margin-top: 40px; margin-left: 20px;"></img>
	<!-- Wrapper -->
	<div id="wrapper">
		<div id="main">

			<button style="float: right; margin-top: 60px; margin-right: 100px;"
				onclick="location.href='login.jsp'">�α���</button>



			<!-- Header -->
			<header id="header"
				style="margin-top: 20px; padding-bottom: 20px; padding-bottom: 100px; display: block; position: inherit;">
			</header>

			<div class="inner" style="padding-bottom: 30px; position: absolute;"></div>
			<!-- Section -->
			<section>
				<br> <br>
				<h3 style="text-align: center;">���� �ִ� �ð� ��ǥ,</h3>
				<img src="images0426/SOOM.PNG" height="150" width="400"
					style="display: block; margin: 0px auto;"></img> <br> <br>
				<br>
			</section>

			<!-- �ΰ� ���� -->
			<section>
				<br> <br> <br>
				<hr style="border: solid 1px gray;">

				<div class="gallerylist">
					<ul>
						<li><a href="">
								<div class="screen">
									<div class="top">��Ȯ��</div>
									<div class="bottom">ȸ�� �� ��ũ��Ʈ�� �ǽð����� ��ũ���꿡 �ؽ�Ʈ�� ��������ν�
										ȸ���� ��Ȯ���� �ŷڼ��� �ö󰡴� ȿ���� ���� �� �ִ�.</div>
									<img src="images0426/accuracy.PNG">
								</div>


						</a></li>

						<li><a href="">
								<div class="screen">
									<div class="top">�ð� ���༺</div>
									<div class="bottom">ȸ�� �� ��ũ��Ʈ�� �ǽð����� ��ũ���꿡 �ؽ�Ʈ�� ��������ν�
										ȸ���� ��Ȯ���� �ŷڼ��� �ö󰡴� ȿ���� ���� �� �ִ�.</div>
									<img src="images0426/fast.PNG">
								</div>


						</a></li>

						<li><a href="">
								<div class="screen">
									<div class="top">����</div>
									<div class="bottom">ȸ�� �� ��ũ��Ʈ�� �ǽð����� ��ũ���꿡 �ؽ�Ʈ�� ��������ν�
										ȸ���� ��Ȯ���� �ŷڼ��� �ö󰡴� ȿ���� ���� �� �ִ�.</div>
									<img src="images0426/comfort.PNG">
								</div>


						</a></li>
					</ul>
				</div>
			</section>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br>
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

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>