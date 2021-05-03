<%@page import="com.VO.conferenceVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.conferenceDAO"%>
<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<style type="text/css">
#title {
   margin-left: 5.5%;
   font-size: 18px;
}
</style>
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
                     style="width: 120px; position: absolute; text-align: center; display: block; margin-left: 85%; margin-top: -1%;" />
               </form>
               <span style="margin-left: 43%;"><%=vom.getM_name()%> 님
                  환영합니다.</span>

            </header>

         </div>
      </div>

      <div id="sidebar">
         <div class="inner">

            <!-- Search -->
            <section id="search" class="alt" style="padding: 0.3em;">
               <a href="main0426.jsp" target="_blank"><img
                  src="images0426/mainlogo4 (1).png" height="150" width="400"
                  style="display: block; margin: 0px auto; margin-bottom: -3%; margin-top: -1.5%; width: 100%; cursor: pointer;"></img><a>
            </section>

            <!-- Menu -->
            <nav id="menu">
               <header class="major">
                  <h3 style="margin-left: 6%; margin-bottom: 1%;">메뉴</h3>
               </header>
               <ul>
                  <li><a href="new.jsp" id="top-link"><span
                        class="icon solid fa-home"> &nbsp; + 새회의실 만들기</span></a></li>
                  <li><a href="meetingjoin.jsp" id="portfolio-link"><span
                        class="icon solid fa-th"> &nbsp; 회의 참가하기</span></a></li>
                  <li><a href="storage.jsp" id="about-link"><span
                        class="icon solid fa-user"> &nbsp; 회의록 보관함</span></a></li>
                  <li><a href="issue.jsp" id="contact-link"><span
                        class="icon solid fa-envelope"> &nbsp; 그룹별 이슈</span></a></li>
                  <li><a href="QnA.jsp" id="contact-link"><span
                        class="icon solid fa-envelope"> &nbsp; 문의하기</span></a></li>
               </ul>
            </nav>

            <!-- Section -->
            <section>
               <ul class="contact">
                  <li class="icon solid fa-envelope"><a href="#">S00M@smhrd.com</a></li>
                  <li class="icon solid fa-phone">010-3421-5698</li>
                  <ul class="icons">
                     <li><a href="#" class="icon brands fa-twitter"><span
                           class="label">Twitter</span></a></li>
                     <li><a href="#" class="icon brands fa-facebook-f"><span
                           class="label">Facebook</span></a></li>
                     <li><a href="#" class="icon brands fa-snapchat-ghost"><span
                           class="label">Snapchat</span></a></li>
                     <li><a href="#" class="icon brands fa-instagram"><span
                           class="label">Instagram</span></a></li>


                  </ul>
               </ul>
            </section>
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