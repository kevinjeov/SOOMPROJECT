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
   margin-left: 88%;
   margin-top: 1.8%;
   color: #f56a6a !important;
   box-shadow: 0 0 0 2px rgba(245, 107, 107, 0.1);
   border: solid;
   
}

button:hover {
   background-color: rgba(245, 107, 107, 0.3);
   cursor: pointer;
}

#vid{

    width: 1700px;
    margin-right: 20%;
    height: 600px;
    margin-top: 10px;
}
</style>

<title>막내여 숨쉬어라 SOOM</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="./slider2.css">


</head>
<body>
   <header id="header">
   <hr style="border: solid 2px rgba(248,162,160,1); background: rgba(248,162,160,1);">
      <button onclick="location.href='login.jsp'">로그인</button>
   </header>

   <div class="inner" style="padding-bottom: 30px; position: absolute;"></div>
   <!-- Section -->
   <section>
      
      <br> <br>
      <img src="images0426/mainlogo2.png" height="70" width="200"
         style="display: block; margin: 0px auto;margin-bottom: -3%; margin-top: -1.5%;"></img>

   </section>

   <!-- 로고 다음 -->
   <section>
      <br> <br> <br>
      <hr style="border: solid 2px rgba(248,162,160,1); background: rgba(248,162,160,1);">

   </section>
   

   <div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <input type="radio" name="slide" id="slide5">
    
    <ul id="imgholder" class="imgs">
        <li><video id="vid" autoplay="autoplay" loop="loop" muted="muted">
         <source src="./images0426/1st(4).mp4" type="video/mp4"></video></li>
         
        <li><video id="vid" autoplay="autoplay" loop="loop" muted="muted">
         <source src="./images0426/2ed(3).mp4" type="video/mp4"></video></li>
         
         <li><video id="vid" autoplay="autoplay" loop="loop" muted="muted">
         <source src="./images0426/3rd(3).mp4" type="video/mp4"></video></li>
         
        <li><video id="vid" autoplay="autoplay" loop="loop" muted="muted">
         <source src="./images0426/4th(3).mp4" type="video/mp4"></video></li>
         
         <li><video id="vid" autoplay="autoplay" loop="loop" muted="muted">
         <source src="./images0426/5th(3).mp4" type="video/mp4"></video></li>
    </ul>
    


    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
        <label for="slide4">&nbsp;</label>
        <label for="slide5">&nbsp;</label>
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