<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Hyperspace by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<style>

#wrapper {
	color: pink;
}

.slider-button {
	font-size: 30px;
	font-weight: bold;
	color: white;
}
</style>

<style>
.mySlides {
	display: none;
}
</style>
<link rel="stylesheet" href="assets/css/main.css" />

<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<body class="is-preload" style="background: bisque;">
	<div id="wrapper" align="left">

		<h2
			style=" margin-top: 30px; margin-left: 30px; border-inline: inherit; color: black">
			S O O M</h2>  
	</div>
	<div>		
			<a href="#" class="button"
				style="font-size: small; margin-right: 70px; background: tan; float: right"
				action="#">·Î±×ÀÎ</a>
			</div>
			
			
			<div class="w3-content w3-section" style="width: 800px ; height:800px;margin-top:300px; margin-left:500px">
				<img class="mySlides" src="1.jpg" style="width: 100%"> 
				<img class="mySlides" src="2.jpg" style="width: 100%"> 
				<img class="mySlides" src="3.jpg" style="width: 100%">
			</div>
			

			<script>
				var myIndex = 0;
				carousel();

				function carousel() {
					var i;
					var x = document.getElementsByClassName("mySlides");
					for (i = 0; i < x.length; i++) {
						x[i].style.display = "none";
					}
					myIndex++;
					if (myIndex > x.length) {
						myIndex = 1
					}
					x[myIndex - 1].style.display = "block";
					setTimeout(carousel, 2000); // Change image every 2 seconds
				}
			</script>


		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</head>
</html>