<%--
  Created by IntelliJ IDEA.
  User: zakia
  Date: 2021/10/6
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>
<head>
    <title>Topic</title>
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
</div>
<div>
    <div class="w3-container w3-content w3-center w3-padding-64w3-white"><p/></div>
    <div class="region w3-container w3-content w3-center w3-padding-64 w3-card w3-white " style="width:800px;height:auto;margin-top:40px;flex-direction: column;display: flex;align-items:center">
    <h2 class="w3-wide" style="margin-bottom: 40px"><b>Topic</b></h2>

        <c:forEach items="${allTopic}" var="Topic" varStatus="status">
        <div class="w3-card w3-light-grey w3-content w3-container w3-padding-32" style="width:700px;display: flex;flex-direction:column;align-items: baseline" id="${Topic.topicId}">
            <p class="w3-justify " style="font-size:larger;" ><b>${Topic.topicName}</b></p>
            <pre class="w3-justify">${Topic.detail}</pre>
            <div><p/></div>
            <button class="w3-button w3-black" id="${Topic.topicId}">Get in</button>
        </div>
        <div class="w3-content w3-container w3-padding-32" style="max-width:800px;" id="post1">
            <p/>
        </div>
    </c:forEach>
    </div>

    </div>


</div>
<div class="w3-container w3-content w3-center w3-padding-64" >
    <p></p>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    // function getReplyIdName(id){
    //     $.ajax({
    //         type:"POST",
    //         url:"getPostReply.do",
    //         data:{replyId:id},
    //         dataType:"json",
    //         success:function (data){
    //             $('#post'+'data.id').value = data.name;
    //         }
    //     });
    // }
    $("button").click(function (){
        // $.ajax({
        //     type:"POST",
        //     url:"GetAllPostByTopicIdServlet.do",
        //     data:{topicId:this.id},
        //     dataType:"json",
        //     success:function(res){
        //         console.log(res);
        //     }
        // })
        window.location.href='GetAllPostByTopicIdServlet.do?topicId='+this.id;
    })
</script>
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
