<%--
  Created by IntelliJ IDEA.
  User: zakia
  Date: 2021/10/6
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册或登录</title>
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://7npmedia.w3cschool.cn/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {font-family: "Lato", sans-serif}
    .mySlides {display: none}
</style>
<style>
    .buttonItems {
        align-self: center;
        display: flex;
        position: relative;
        width: 400px;
        top:10px;
        justify-content:space-around;
        align-content: center;
    }
    .za-button {
        width: 180px;
    }
    .bg_pic {
        background-image: url("https://atts.w3cschool.cn/map.jpg");
    }
    .region {
        background: rgba(256,256,256,0.7)!important;
    }
</style>
<body class="bg_pic">
<div class="w3-top" >
    <div class="w3-bar w3-black w3-card">
        <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large">主页</a>
        <a href="#band" class="w3-bar-item w3-button w3-padding-large w3-hide-small">我的贴子</a>
        <a href="#tour" class="w3-bar-item w3-button w3-padding-large w3-hide-small">我的收藏</a>
        <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">个人中心</a>
        <div class="w3-dropdown-hover w3-hide-small">
            <button class="w3-padding-large w3-button" title="More">更多 <i class="fa fa-caret-down"></i></button>
            <div class="w3-dropdown-content w3-bar-block w3-card-4">
                <a href="#" class="w3-bar-item w3-button">修改密码</a>
                <a href="#" class="w3-bar-item w3-button">修改邮箱</a>
            </div>
        </div>
        <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
    </div>
</div>
<div >
    <div class="w3-container w3-content w3-center w3-padding-64" >
        <p></p>
        <p></p>
    </div>
    <div class="region w3-container w3-content w3-center w3-padding-64 w3-card w3-white " style="max-width:800px;height:500px;margin-top: 40px;flex-direction: row">
        <h1 class="w3-wide" style="height: 100px;margin-top:70px;opacity: unset">欢迎来到世界</h1>

        <p style="margin-top: 20px"></p>
        <div class="buttonItems" style="width: 800px;margin-top: 50px;opacity: unset">
            <button class="w3-button w3-black za-button" ><a href="UserServlet">注册</a></button>
            <button class="w3-button w3-black za-button" onclick="javascript:location.href='login.jsp'">登录</button>
        </div>
    </div>


</div>
</body>
</html>
