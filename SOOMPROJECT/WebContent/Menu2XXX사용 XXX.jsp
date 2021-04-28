<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<style>
body {
	margin: 0;
	padding: 0;
	background: #1a94b7;
}

a {
	text-decoration: none;
}

.search-box {
	position: absolute;
	top: 5%;
	left: 30%;
	transform: translate(-50%, -50%);
	background-color: #2f3640;
	width: 500px;
	height: 40px;
	border-radius: 40px;
	padding: 10px;
	background-color: beige;
	margin-left: 200px;
}

.search-btn {
	color: #d9d9d9;
	float: right;
	top: 0%;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background: #1e1e1e;
	display: flex;
	justify-content: center;
	align-items: center;
	transition: 0.4s;
}

.search-txt {
	border: none;
	font-weight: bold;
	background: none;
	outline: none;
	float: left;
	padding: 0;
	color: white;
	font-size: 16px;
	transition: 0.4s;
	line-height: 40px;
	width: 0px;
	color: white;
}

.table {
	width: 1200px;
	margin-bottom: 100px;
}

.top-link {
	font-color: white;
}
</style>

<head>
<title>Prologue by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assetsP/css/main.css" />
</head>
<body class="is-preload">

	<!-- Header -->
	<div id="header" style="width: 16%;">

		<div class="top" style="background-color: #ffaf40;">

			<!-- Logo -->
			<div id="logo">
				<a href="#soommain" id="title" style="font-size: xx-large;"> S O
					O M </a>

			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="#top" id="top-link"><span
							class="icon solid fa-home"> + 새회의실 만들기</span></a></li>
					<li><a href="#portfolio" id="portfolio-link"><span
							class="icon solid fa-th">회의하기 (참가)</span></a></li>
					<li><a href="#about" id="about-link"><span
							class="icon solid fa-user">회의록 보관함</span></a></li>
					<li><a href="#contact" id="contact-link"><span
							class="icon solid fa-envelope">그룹별 이슈</span></a></li>
					<li><a href="#QnA" id="contact-link"><span
							class="icon solid fa-envelope"> 문의하기</span></a></li>
				</ul>
			</nav>

		</div>

		<div class="bottom">

			<!-- Social Icons -->
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">Github</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>

		</div>

	</div>

	<!-- Main -->

	<div id="main" style="width: 84%">

		<!-- Intro -->
		<section id="soommain" class="title">
			<div class="search-box">
							<input type="text" class="search-txt" name=""
								placeholder="검색어를 입력하세요"> <a class="search-btn" href="#">
								<i class="fas fa-search"></i>
							</a>
						</div>
			<div class="container">
				<div class="row">
					<div class="col-4 col-12-mobile">
						

						<table class="table" style="background-color: white;">

							<thead>
								<tr
									style="height: 5px; font-size: smaller; background-color: gray;">
									<th>회의번호</th>
									<th>제목</th>
									<th>일자</th>
									<th>참석자</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>쉼표 사람들 회의</td>
									<td>2021-04-21</td>
									<td>쉼표</td>
								</tr>

								<tr>
									<td>1</td>
									<td>쉼표 사람들 회의</td>
									<td>2021-04-21</td>
									<td>쉼표</td>
								</tr>

								<tr>
									<td>1</td>
									<td>쉼표 사람들 회의</td>
									<td>2021-04-21</td>
									<td>쉼표</td>
								</tr>
								<tr>
									<td>1</td>
									<td>쉼표 사람들 회의</td>
									<td>2021-04-21</td>
									<td>쉼표</td>
								</tr>
								<tr>
									<td>1</td>
									<td>쉼표 사람들 회의</td>
									<td>2021-04-21</td>
									<td>쉼표</td>
								</tr>
								<tr>
									<td>1</td>
									<td>쉼표 사람들 회의</td>
									<td>2021-04-21</td>
									<td>쉼표</td>
								</tr>

								<tr>
									<td>1</td>
									<td>쉼표 사람들 회의</td>
									<td>2021-04-21</td>
									<td>쉼표</td>
								</tr>
							</tbody>

						</table>
					</div>



				</div>
		</section>


		<!-- Intro -->
		<section id="top" class="one dark cover">
			<div class="container">

				<header>
					<h2 class="alt">
						Hi! I'm <strong>Prologue</strong>, a <a
							href="http://html5up.net/license">free</a> responsive<br /> site
						template designed by <a href="http://html5up.net">HTML5 UP</a>.
					</h2>
					<p>
						Ligula scelerisque justo sem accumsan diam quis<br /> vitae
						natoque dictum sollicitudin elementum.
					</p>
				</header>

				<footer>
					<a href="#portfolio" class="button scrolly">Magna Aliquam</a>
				</footer>

			</div>
		</section>


		<!-- Portfolio -->
		<section id="portfolio" class="two">
			<div class="container">

				<header>
					<h2>Portfolio</h2>
				</header>

				<p>Vitae natoque dictum etiam semper magnis enim feugiat
					convallis convallis egestas rhoncus ridiculus in quis risus amet
					curabitur tempor orci penatibus. Tellus erat mauris ipsum fermentum
					etiam vivamus eget. Nunc nibh morbi quis fusce hendrerit lacus
					ridiculus.</p>

				<div class="row">
					<div class="col-4 col-12-mobile">
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic02.jpg"
								alt="" /></a>
							<header>
								<h3>Ipsum Feugiat</h3>
							</header>
						</article>
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic03.jpg"
								alt="" /></a>
							<header>
								<h3>Rhoncus Semper</h3>
							</header>
						</article>
					</div>
					<div class="col-4 col-12-mobile">
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic04.jpg"
								alt="" /></a>
							<header>
								<h3>Magna Nullam</h3>
							</header>
						</article>
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic05.jpg"
								alt="" /></a>
							<header>
								<h3>Natoque Vitae</h3>
							</header>
						</article>
					</div>
					<div class="col-4 col-12-mobile">
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic06.jpg"
								alt="" /></a>
							<header>
								<h3>Dolor Penatibus</h3>
							</header>
						</article>
						<article class="item">
							<a href="#" class="image fit"><img src="images/pic07.jpg"
								alt="" /></a>
							<header>
								<h3>Orci Convallis</h3>
							</header>
						</article>
					</div>
				</div>

			</div>
		</section>

		<!-- About Me -->
		<section id="about" class="three">
			<div class="container">

				<header>
					<h2>About Me</h2>
				</header>

				<a href="#" class="image featured"><img src="images/pic08.jpg"
					alt="" /></a>

				<p>Tincidunt eu elit diam magnis pretium accumsan etiam id urna.
					Ridiculus ultricies curae quis et rhoncus velit. Lobortis elementum
					aliquet nec vitae laoreet eget cubilia quam non etiam odio
					tincidunt montes. Elementum sem parturient nulla quam placerat
					viverra mauris non cum elit tempus ullamcorper dolor. Libero rutrum
					ut lacinia donec curae mus vel quisque sociis nec ornare iaculis.</p>

			</div>
		</section>

		<!-- Contact -->
		<section id="contact" class="four">
			<div class="container">

				<header>
					<h2>Contact</h2>
				</header>

				<p>Elementum sem parturient nulla quam placerat viverra mauris
					non cum elit tempus ullamcorper dolor. Libero rutrum ut lacinia
					donec curae mus. Eleifend id porttitor ac ultricies lobortis sem
					nunc orci ridiculus faucibus a consectetur. Porttitor curae mauris
					urna mi dolor.</p>

				<form method="post" action="#">
					<div class="row">
						<div class="col-6 col-12-mobile">
							<input type="text" name="name" placeholder="Name" />
						</div>
						<div class="col-6 col-12-mobile">
							<input type="text" name="email" placeholder="Email" />
						</div>
						<div class="col-12">
							<textarea name="message" placeholder="Message"></textarea>
						</div>
						<div class="col-12">
							<input type="submit" value="Send Message" />
						</div>
					</div>
				</form>

			</div>
		</section>

		<!-- 문의하기 -->
		<section id="QnA" class="five">
			<div class="container">

				<header>
					<h2>About Me</h2>
				</header>

				<a href="#" class="image featured"><img src="images/pic08.jpg"
					alt="" /></a>

				<p>Tincidunt eu elit diam magnis pretium accumsan etiam id urna.
					Ridiculus ultricies curae quis et rhoncus velit. Lobortis elementum
					aliquet nec vitae laoreet eget cubilia quam non etiam odio
					tincidunt montes. Elementum sem parturient nulla quam placerat
					viverra mauris non cum elit tempus ullamcorper dolor. Libero rutrum
					ut lacinia donec curae mus vel quisque sociis nec ornare iaculis.</p>

			</div>
		</section>

	</div>


	<!-- Footer -->
	<div id="footer">

		<!-- Copyright -->
		<ul class="copyright">
			<li>&copy; Untitled. All rights reserved.</li>
			<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
		</ul>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>