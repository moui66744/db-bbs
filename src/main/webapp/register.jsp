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
    <title>注册</title>
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
        width: 160px;
    }
    .bg_pic {
        background-image: url("https://atts.w3cschool.cn/map.jpg");
    }
    .region {
        background: rgba(256,256,256,0.7)!important;
    }
</style>
<style ></style>
<body class="bg_pic">
<div class="w3-top" >
    <div class="w3-bar w3-black w3-card">
        <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        <a href="GetAllTopicServlet.do" class="w3-bar-item w3-button w3-padding-large">话题广场</a>
        <a href="PostServlet.do?userId=${user.userId}" class="w3-bar-item w3-button w3-padding-large w3-hide-small">我的贴子</a>
        <a href="GetAllFavPostByUserIdServlet.do?userId=${user.userId}" class="w3-bar-item w3-button w3-padding-large w3-hide-small">我的收藏</a>
        <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small" style="display: none">个人中心</a>
        <div class="w3-dropdown-hover w3-hide-small">
            <div class="w3-padding-large w3-button" title="More">更多 <i class="fa fa-caret-down"></i></div>
            <div class="w3-dropdown-content w3-bar-block w3-card-4">
                <a href="changePsw.jsp" class="w3-bar-item w3-button">修改密码</a>
                <a href="changeEma.jsp" class="w3-bar-item w3-button">修改邮箱</a>
            </div>
        </div>
        <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
    </div>
</div>
<div >
    <div class="w3-container w3-content w3-center w3-padding-64" >
        <p></p>
    </div>
    <div class="region w3-container w3-content w3-center w3-padding-64 w3-card w3-white " style="max-width:800px;height:auto;margin-top: 40px;flex-direction: column;display: flex;align-items:center">
        <h1 class="w3-wide" style="height: 100px;opacity: unset">注 册</h1>

        <form id="registerForm" name="registerForm" action="RegisterServlet.do" method="post" style="max-width:800px;width:400px;display:flex;align-items:center; flex-direction:column">
            <p class="w3-opacity" style="align-self: flex-start">用户名</p>
            <input class="w3-input" name="userName" style="max-width: 400px" type="text" placeholder="用户名"/>
            <p class="w3-opacity" style="align-self: flex-start">性别</p>
            <div style="display: flex;width:400px;;align-items:center;justify-content: space-around;flex-direction: row;" class="w3-content">
                <div class="w3-opacity">男: <input type="radio" value="male" name="sex"/></div>
                <div class="w3-opacity">女: <input type="radio" value="female" name="sex"/></div>
                <div class="w3-opacity">保密: <input type="radio" value="unknown" name="sex"/></div>
                <div class="w3-opacity">不在五行中: <input type="radio" value="outOfRange" name="sex"/></div>
            </div>
            <p class="w3-opacity" style="align-self: flex-start">昵称</p>
            <input class="w3-input" name="nickName" style="max-width: 400px" type="text" placeholder="昵称"/>
            <p class="w3-opacity" style="align-self: flex-start">密码</p>
            <input class="w3-input" name="userPwd" style="max-width: 400px" type="password" placeholder="密码" />
            <p class="w3-opacity" style="align-self: flex-start">邮箱</p>
            <input class="w3-input" name="email" style="max-width: 400px" type="text" placeholder="邮箱"/>
            <p class="w3-opacity" style="align-self: flex-start">电话号码</p>
            <input class="w3-input" name="phone" style="max-width: 400px" type="text" placeholder="电话号码"/>
            <p class="w3-opacity" style="align-self: flex-start">地址</p>
            <input class="w3-input" name="position" style="max-width: 400px" type="text" placeholder="详细地址"/>


        </form>
        <div class="buttonItems" style="width: 500px;margin-top: 50px;opacity: unset">
            <button class="w3-button w3-black za-button" onclick="javascript:location.href='login.jsp'">已有帐号，登录</button>
            <button class="w3-button w3-black za-button" onclick=registerInfo()>确认注册</button>
        </div>
    </div>

    </div>
    <script>
        function registerInfo(){
            //let registerForm = document.getElementsByName("registerForm");
            if (registerForm.userName.value === "")
                alert("请输入用户名");
            else if (registerForm.sex.value === "")
                alert("请选择性别");
            else if (registerForm.userPwd.value === "")
                alert("请输入密码");
            else if (registerForm.nickName.value === "")
                alert("请输入昵称");
            else if (registerForm.phone.value === "")
                alert("请输入电话号码");
            else if (registerForm.userName.value === "admin")
                location.href = "UserServlet.do";
            else
                document.getElementById("registerForm").submit();
        }
    </script>

</div>
<div class="w3-container w3-content w3-center w3-padding-64" >
    <p></p>
</div>
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
    <p class="w3-medium">来自 <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
</body>
</html>
