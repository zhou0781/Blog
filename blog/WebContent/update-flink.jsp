<%@page import="com.softeem.dto.Manager"%>
<%@page import="java.util.Date"%>
<%@page import="com.softeem.dto.Link"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>修改友情链接 - SOFTEEM博客管理系统</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="images/icon/icon.png">
<link rel="shortcut icon" href="images/icon/favicon.ico">
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/genLoadPage.js"></script> 
</head>

<body class="user-select">
<section class="container-fluid">
  <header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="/">SOFTEEMCMS</a> </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="">消息 <span class="badge">1</span></a></li>
            <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${manager.username} <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left">
                <li><a title="查看或修改个人信息" data-toggle="modal" data-target="#seeUserInfo">个人信息</a></li>
                <li><a title="查看您的登录记录" data-toggle="modal" data-target="#seeUserLoginlog">登录记录</a></li>
              </ul>
            </li>
            <li><a href="login.jsp" onClick="if(!confirm('是否确认退出？'))return false;">退出登录</a></li>
            <li><a data-toggle="modal" data-target="#WeChat">帮助</a></li>
          </ul>
          <form action="" method="post" class="navbar-form navbar-right" role="search">
            <div class="input-group">
              <input type="text" class="form-control" autocomplete="off" placeholder="键入关键字搜索" maxlength="15">
              <span class="input-group-btn">
              <button class="btn btn-default" type="submit">搜索</button>
              </span> </div>
          </form>
        </div>
      </div>
    </nav>
  </header>
  <div class="row">
    <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
      <ul class="nav nav-sidebar">
        <li><a href="index.jsp">报告</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="article.jsp">文章</a></li>
        <li><a href="notice.jsp">公告</a></li>
        <li><a href="comment.jsp">评论</a></li>
        <li><a data-toggle="tooltip" data-placement="top" title="网站暂无留言功能">留言</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="category.jsp">栏目</a></li>
        <li class="active"><a class="dropdown-toggle" id="otherMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">其他</a>
          <ul class="dropdown-menu" aria-labelledby="otherMenu">
            <li><a href="flink.jsp">友情链接</a></li>
            <li><a href="loginlog.jsp">访问记录</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a class="dropdown-toggle" id="userMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">用户</a>
          <ul class="dropdown-menu" aria-labelledby="userMenu">
            <li><a href="manage-user.jsp">管理用户</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="loginlog.jsp">管理登录日志</a></li>
          </ul>
        </li>
        <li><a class="dropdown-toggle" id="settingMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">设置</a>
          <ul class="dropdown-menu" aria-labelledby="settingMenu">
            <li><a href="setting.jsp">基本设置</a></li>
            <li><a href="readset.jsp">用户设置</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">安全配置</a></li>
            <li role="separator" class="divider"></li>
            <li class="disabled"><a>扩展菜单</a></li>
          </ul>
        </li>
      </ul>
    </aside>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
      <div class="row">
        <form action="doUpdate?flag=flink&id=${link.id }" method="post" class="add-flink-form" autocomplete="off" draggable="false">
          <div class="col-md-9">
            <h1 class="page-header">修改友情链接</h1>
            <div class="add-article-box">
              <h2 class="add-article-box-title"><span>名称</span></h2>
              <div class="add-article-box-content">
                <input type="text" id="flink-name" name="name" class="form-control" value="${link.name}" placeholder="在此处输入名称" required autofocus autocomplete="off">
                <span class="prompt-text">例如：SOFTEEM技术博客</span> </div>
            </div>
            <div class="add-article-box">
              <h2 class="add-article-box-title"><span>WEB地址</span></h2>
              <div class="add-article-box-content">
                <input type="text" id="flink-url" name="url" class="form-control" value="${link.url }" placeholder="在此处输入URL地址" required autocomplete="off">
                <span class="prompt-text">例子：<code>http://www.ylsat.com/</code>——不要忘了<code>http://</code></span> </div>
            </div>
            <div class="add-article-box">
              <h2 class="add-article-box-title"><span>图像地址</span></h2>
              <div class="add-article-box-content">
                <input type="text" id="flink-imgurl" name="imgurl" class="form-control" value="${link.linkimgSrc }" placeholder="在此处输入图像地址" required autocomplete="off">
                <span class="prompt-text">图像地址是可选的，可以为网站LOGO地址等</span> </div>
            </div>
            <div class="add-article-box">
              <h2 class="add-article-box-title"><span>描述</span></h2>
              <div class="add-article-box-content">
                <textarea class="form-control" name="describe" autocomplete="off">${link.information }</textarea>
                <span class="prompt-text">描述是可选的手工创建的内容总结</span> </div>
            </div>
          </div>
          <div class="col-md-3">
            <h1 class="page-header">操作</h1>
            <div class="add-article-box">
              <h2 class="add-article-box-title"><span>保存</span></h2>
              <div class="add-article-box-content">
                <p>
                  <label>状态：</label>
                  <span class="article-status-display">已增加</span></p>
                <p id="target"><label>target：</label><input type="radio" name="target" value="0" />_blank&nbsp;&nbsp;<input type="radio" name="target" value="1" />_self&nbsp;&nbsp;<input type="radio" name="target" value="2" />_top</p>
                <p id="rel"><label>rel：</label><input type="radio" name="rel" value="0" />nofollow&nbsp;&nbsp;<input type="radio" name="rel" value="1"/>none</p>
                <p>
                  <label>修改于：</label>
                  <span class="article-time-display">
                  <%
					Date now = new Date();	
					pageContext.setAttribute("now", now);
			 	  %>
			 	  <fmt:formatDate value="${now}" var="nowTime" scope="page" pattern="yyyy-MM-dd HH:mm:ss"/>
                  <input style="border: none;" type="datetime" name="time" value="${nowTime }" />
                  </span></p>
              </div>
              <div class="add-article-box-footer">
                <button class="btn btn-primary" type="submit" name="submit">更新</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>
<!--个人信息模态框-->
<div class="modal fade" id="seeUserInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form action="doUpdate?flag=manager" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >个人信息</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr>
              <th><div style="margin-left:10px;color:#f00;text-align: center;font-size:1.5em">${msg}</div> </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td width="20%">姓名:</td>
                <td width="80%"><input type="text" value="${manager.username }" class="form-control" name="truename" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td width="20%">用户名:</td>
                <td width="80%"><input type="text" value="${manager.username }" class="form-control" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td width="20%">电话:</td>
                <td width="80%"><input type="text" value="${manager.phone }" class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
              <tr>
                <td width="20%">旧密码:</td>
                <td width="80%"><input type="password" class="form-control" name="old_password" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td width="20%">新密码:</td>
                <td width="80%"><input type="password" class="form-control" name="password" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td width="20%">确认密码:</td>
                <td width="80%"><input type="password" class="form-control" name="new_password" maxlength="18" autocomplete="off" /></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!--个人登录记录模态框-->
<div class="modal fade" id="seeUserLoginlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" >登录记录</h4>
      </div>
      <div class="modal-body">
        <table class="table" style="margin-bottom:0px;">
          <thead>
            <tr>
              <th>登录IP</th>
              <th>登录时间</th>
              <th>状态</th>
            </tr>
          </thead>
          <tbody id="loadInfo">
            <tr>
              <td>::1:55570</td>
              <td>2016-01-08 15:50:28</td>
              <td>成功</td>
            </tr>
            <tr>
              <td>::1:64377</td>
              <td>2016-01-08 10:27:44</td>
              <td>成功</td>
            </tr>
            <tr>
              <td>::1:64027</td>
              <td>2016-01-08 10:19:25</td>
              <td>成功</td>
            </tr>
            <tr>
              <td>::1:57081</td>
              <td>2016-01-06 10:35:12</td>
              <td>成功</td>
            </tr>
          </tbody>
        </table>
        <footer class="message_footer" id="loadInfopaging" style="text-align:center">
           
       	</footer>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">朕已阅</button>
      </div>
    </div>
  </div>
</div>
<!--微信二维码模态框-->
<div class="modal fade user-select" id="WeChat" tabindex="-1" role="dialog" aria-labelledby="WeChatModalLabel">
  <div class="modal-dialog" role="document" style="margin-top:120px;max-width:280px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="WeChatModalLabel" style="cursor:default;">微信扫一扫</h4>
      </div>
      <div class="modal-body" style="text-align:center"> <img src="images/weixin.jpg" alt="" style="cursor:pointer"/> </div>
    </div>
  </div>
</div>
<!--提示模态框-->
<div class="modal fade user-select" id="areDeveloping" tabindex="-1" role="dialog" aria-labelledby="areDevelopingModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="areDevelopingModalLabel" style="cursor:default;">该功能正在日以继夜的开发中…</h4>
      </div>
      <div class="modal-body"> <img src="images/baoman/baoman_01.gif" alt="深思熟虑" />
        <p style="padding:15px 15px 15px 100px; position:absolute; top:15px; cursor:default;">很抱歉，程序猿正在日以继夜的开发此功能，本程序将会在以后的版本中持续完善！</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">朕已阅</button>
      </div>
    </div>
  </div>
</div>
<!--右键菜单列表-->
<div id="rightClickMenu">
  <ul class="list-group rightClickMenuList">
    <li class="list-group-item disabled">欢迎访问SOFTEEM博客</li>
    <li class="list-group-item"><span>IP：</span>172.16.10.129</li>
    <li class="list-group-item"><span>地址：</span>河南省郑州市</li>
    <li class="list-group-item"><span>系统：</span>Windows10 </li>
    <li class="list-group-item"><span>浏览器：</span>Chrome47</li>
  </ul>
</div>
<script src="js/bootstrap.min.js"></script> 
<script src="js/admin-scripts.js"></script>
<script>
goPageLoginInfo(1,'<%=((Manager)session.getAttribute("manager")).getId()%>');
$(function(){
	var target = <%=((Link)request.getAttribute("link")).getTarget()%>
	var rel = <%=((Link)request.getAttribute("link")).getRel()%>
	var radio = $('#target :radio');
	for(var i = 0 ; i < radio.length ; i++){
		if(radio.eq(i).attr('value') == target){
			radio.eq(i).prop('checked','true');
		}
	}
	radio = $('#rel :radio');
	for(var i = 0 ; i < radio.length ; i++){
		if(radio.eq(i).attr('value') == rel){
			radio.eq(i).prop('checked','true');
		}
	}
})
</script>
</body>
</html>
