<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<title>主页</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://7npmedia.w3cschool.cn/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {font-family: "Lato", sans-serif}
    .mySlides {display: none}
</style>
<body>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<!-- Navbar -->
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
                <a href="#" class="w3-bar-item w3-button">修改密码</a>
                <a href="#" class="w3-bar-item w3-button">修改邮箱</a>
            </div>
        </div>
        <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
    </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) --><!--
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:0px">
    <a href="#band" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">乐队</a>
    <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">巡回演出</a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">联系</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">商品</a>
</div>-->
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px">
    <h2 class="w3-wide">我的帖子</h2>
</div>
<div style="background: image('https://atts.w3cschool.cn/map.jpg')">

</div>
<div class="w3-card  w3-content w3-container" style="max-width: 800px">
    <p>user:${user.userName}</p>
    <p>phone:${user.phone}</p>
</div>
<div >
    <p></p>
</div>
<!-- Page content -->
<div class="w3-card w3-white w3-content w3-container w3-padding-32" style="max-width:800px;z-index:2">
    <p class="w3-justify " style="font-size:larger;"><b>我们喜欢音乐</b></p>
    <p class="w3-opacity" ><i>2021/10/6</i></p>
    <p class="w3-justify">5、如果试过在宁静的夜里沉思，倾听这个世界在转了-天之后究竟想说些什么，那么你该会同
        意,其实真正的寂静,并非是全然无声的。夜晚的寂静，是由一-种如泡沫般细腻、 如薄纱般绵密的声响
        所编织成的。它随着空气存在，无色无味，比醇酒更迷人，比鲜花更芳香.</p>
    <button class="w3-button w3-black">Read More</button>
</div>

<div class="w3-card w3-white w3-content w3-container w3-padding-32" style="max-width:800px;z-index:2">
    <p class="w3-justify " style="font-size:larger;"><b>我们喜欢音乐</b></p>
    <p class="w3-opacity" ><i>2021/10/6</i></p>
    <p class="w3-justify">5、如果试过在宁静的夜里沉思，倾听这个世界在转了-天之后究竟想说些什么，那么你该会同
        意,其实真正的寂静,并非是全然无声的。夜晚的寂静，是由一-种如泡沫般细腻、 如薄纱般绵密的声响
        所编织成的。它随着空气存在，无色无味，比醇酒更迷人，比鲜花更芳香.</p>
    <button class="w3-button w3-black">Read More</button>
</div>

</div>


<!-- End Page Content -->


<!-- Image of location/map -->
<!--<img src="https://atts.w3cschool.cn/map.jpg" class="w3-image" style="width:100%;margin-top: -1000px;z-index:1" >-->

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge" style="margin-top: 20px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
    <p class="w3-medium">来自 <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
<script>

    function showMsg(id){
        var msg = document.getElementById("#"+id);
        alert(id,msg);
    }
</script>
<script>
    // Automatic Slideshow - change image every 4 seconds
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel, 4000);
    }

    // Used to toggle the menu on small screens when clicking on the menu button
    function myFunction() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }

    // When the user clicks anywhere outside of the modal, close it
    var modal = document.getElementById('ticketModal');
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</body>
</html>