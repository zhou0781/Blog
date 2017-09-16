<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="basepath.jsp" %>
<!doctype html>
<html>
<head>
  <base href="<%=basePath %>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>LOG-IN | Amaze UI Examples</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>

  <link rel="icon" type="image/png" href="assets/i/favicon.png">

  <!-- Add to homescreen for Chrome on Android -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">

  <!-- Add to homescreen for Safari on iOS -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">

  <!-- Tile icon for Win8 (144x144 + tile color) -->
  <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
  <meta name="msapplication-TileColor" content="#0e90d2">

  
  <link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
  <script src="assets/js/jquery-1.11.1.min.js"></script>
</head>
<body>
<header>
  <div class="log-header">
      <h1><a href="/">Amaze UI</a> </h1>
  </div>    
  <div class="log-re">
    <button type="button" onclick="location.href='lw-re.jsp'" class="am-btn am-btn-default am-radius log-button">注册</button>
  </div> 
</header>

<div class="log"> 
  <div class="am-g">
  <div class="am-u-lg-3 am-u-md-6 am-u-sm-8 am-u-sm-centered log-content">
    <h1 class="log-title am-animation-slide-top">AmazeUI</h1>
    <h2 class="log-title am-animation-slide-top">${msg}</h2>
    <br>
    <form action="/blog/login" class="am-form" id="log-form">
   	<div hidden="hidden">
	    <input type="text" hidden="hidden" value="user" name="flag">
   	</div>
      <div class="am-input-group am-radius am-animation-slide-left">       
        <input type="email" name="email" id="doc-vld-email-2-1" class="am-radius" data-validation-message="请输入正确邮箱地址" placeholder="邮箱" required/>
        <span class="am-input-group-label log-icon am-radius"><i class="am-icon-user am-icon-sm am-icon-fw"></i></span>
      </div>      
      <br>
      <div class="am-input-group am-animation-slide-left log-animation-delay">       
        <input type="text" name="password" class="am-form-field am-radius log-input" placeholder="密码" minlength="6" required>
        <span class="am-input-group-label log-icon am-radius"><i class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
      </div>      
      <br>
      <button type="submit" class="am-btn am-btn-primary am-btn-block am-btn-lg am-radius am-animation-slide-bottom log-animation-delay">登 录</button>
            <p class="am-animation-slide-bottom log-animation-delay"><a href="#">忘记密码?</a></p>
      <div class="am-btn-group  am-animation-slide-bottom log-animation-delay-b">
      <p>使用第三方登录</p>
      <a href="#" class="am-btn am-btn-secondary am-btn-sm"><i class="am-icon-github am-icon-sm"></i> Github</a>
      <a href="#" class="am-btn am-btn-success am-btn-sm"><i class="am-icon-google-plus-square am-icon-sm"></i> Google+</a>
      <a href="#" class="am-btn am-btn-primary am-btn-sm"><i class="am-icon-stack-overflow am-icon-sm"></i> stackOverflow</a>
      </div>
    </form>
  </div>
  </div>
  <footer class="log-footer">   
    © 2014 AllMobilize, Inc. Licensed under MIT license.
  </footer>
</div>




<script src="assets/js/jquery.min.js"></script>

<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>

</body>
</html>