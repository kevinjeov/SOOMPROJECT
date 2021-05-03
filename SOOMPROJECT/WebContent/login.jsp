<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
button {
   width: 120px;
   height: 40px;
   background-color: white;
   font-size: 16px;
   font-weight: bold;
   border-radius: 0.375em;
   border-color: #f56a6a;
   position: absolute;
   margin-left: 45%;
   color: #f56a6a !important;
   box-shadow: 0 0 0 2px rgba(245, 107, 107, 0.1);
   border: solid;
   
}

button:hover {
   background-color: rgba(245, 107, 107, 0.3);
   cursor: pointer;
}
</style>

<title>막내여 숨쉬어라 SOOM</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" />


</head>
<body>
   <%
      memberVO vom = (memberVO) session.getAttribute("vom");
      String name = (String) session.getAttribute("name");
   %>


   <div class="inner" style="padding-bottom: 30px; position: absolute;"></div>
   <!-- Section -->
   <section>
      <hr style="border: solid 2px rgba(248,162,160,1); background: rgba(248,162,160,1);">
      <br> <br> <img src="images0426/mainlogo.PNG" height="70" width="200"
         style="display: block; margin: 0px auto; margin-bottom: -3%; margin-top: -1.5%;"></img>

   </section>

   <section>
      <br> <br> <br>
      <hr
         style="border: solid 2px rgba(248, 162, 160, 1); background: rgba(248, 162, 160, 1);">

   </section>
   <br>
   <br>
   <br>
   <section>
      <form action="loginService.do" method="POST" style="display: inline;">
         <div align="center">
            <h2 style="text-align: center; font-size: 250%;">
               S<span style="color: rgba(248, 162, 160, 1)">OO</span>M 로그인
            </h2>
            <br> <input type="text" id="loginemail" name="m_id"
               placeholder="아이디를 입력하세요"
               style="width: 700px; height: 40px; border: solid; border-color: #666;"></input>
            <br> <br> <br> <input type="password" id="password"
               name="m_pw" placeholder=" 비밀번호를 입력하세요"
               style="width: 700px; height: 40px; border: solid; border-color: #666;"></input>

            <br>
            <br>

         </div>
         <br> <br>
         <button >로그인</button>
         <br> <br> 
         <br> <br> 
         
         <div align="center" style="margin-right: 3%;">
            아이디가 없으세요?<a href="join.jsp"> 회원가입</a> 여기로 !!!
         </div>

      </form>

   </section>



   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

</body>
</html>