<%@page import="com.VO.conferenceVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.conferenceDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">
textarea.autosize {
   min-height: 50px;
   width: 80%;
}

button {
   width: 100px;
   height: 50px;
   position: absolute;
   margin-left: 30%;
}
</style>
<title>>막내여 숨쉬어라 SOOM</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets0426/css/main.css" />
</head>
<body class="is-preload">
   <!--아라라라라랄  -->
   <!-- Wrapper -->
   <div id="wrapper">

      <!-- Main -->
      <div id="main">
         <div class="inner">
            <header id="header">
               </header>
            <!-- Section -->
            <form>
               <section id="minutes">
                  <header class="major">
                     <br>
                     <h3>회의록</h3>
                  </header>
                  <h4>1. 회의 개요</h4>

                  <table id="table11">
                     <tr>
                        <th>일시</th>
                        <td><input type="text" id="minutes_date"
                           style="width: 700px; height: 40px;"></input></td>
                     </tr>
                     <tr>
                        <th>작성자</th>
                        <td><input type="text" id="minutes_wri"
                           placeholder="작성자를 입력하세요" style="width: 700px; height: 40px;"></input></td>
                     </tr>
                     <tr>
                        <th>참석자</th>
                        <td><input type="text" id="minutes_att"
                           placeholder="참석자를 입력하세요" style="width: 700px; height: 40px;"></input></td>
                     </tr>
                     <tr>
                        <th>주제</th>
                        <td><input type="text" id="minutes_title"
                           placeholder="회의 주제를 입력하세요" style="width: 700px; height: 40px;"></input></td>
                     </tr>
                  </table>

                  <h4>2. 회의 내용</h4>
                  <h5>회의 내용</h5>
                  <textarea class="autosize" onkeydown="resize(this)"
                     onkeyup="resize(this)"></textarea>

                  <script>
                     function resize(obj) {
                        obj.style.height = "1px";
                        obj.style.height = (12 + obj.scrollHeight)
                              + "px";
                     }
                  </script>

                  <br>
                  <h5>요약된 회의 내용</h5>
                  <textarea class="autosize" onkeydown="resize(this)"
                     onkeyup="resize(this)"></textarea>
                  <br>

                  <h5>결정 사항</h5>
                  <textarea class="autosize" onkeydown="resize(this)"
                     onkeyup="resize(this)"></textarea>
                  <br>
                  <h5>향후 일정</h5>
                  <textarea class="autosize" onkeydown="resize(this)"
                     onkeyup="resize(this)"></textarea>
                  <br>
                  <h5>특이 사항</h5>
                  <textarea class="autosize" onkeydown="resize(this)"
                     onkeyup="resize(this)"></textarea>

                  <div>
                     <input type='submit' value="수정하기 "
                        style="height: 50px; width: 100px; padding: 0 0; display: inline; position: absolute; margin-left: 20%; margin-top: 1.55%;">

                  </div>
               </section>
            </form>
            <button class="favorite styled" type="button" onclick="">
               출력하기</button>

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
                  <h3 style="margin-left: 6%;">메뉴</h3>
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
                  <!-- Header -->
                  
                  <li class="icon solid fa-envelope"><a href="#">S00M@smhrd.com</a></li>
                  <li class="icon solid fa-phone">010-3421-5698</li>
                  
                     <ul class="icons" style="margin-right: 20%;">
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