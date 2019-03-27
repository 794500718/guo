<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>RAM | 主页</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/hotel/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/hotel/admin/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/hotel/admin/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/hotel/admin/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/hotel/admin/dist/css/skins/_all-skins.min.css">
  <style>
        * {
            margin:0;
            padding:0;
        }
        a{
            text-decoration: none;
        }
        .container {
            position: relative;
            width: 600px;
            height: 400px;
            margin:100px auto 0 auto;
            box-shadow: 0 0 5px green;
            overflow: hidden;
        }
        .container .wrap {
            position: absolute;
            width: 4200px;
            height: 400px;
            z-index: 1;
        }
        .container .wrap img {
            float: left;
            width: 600px;
            height: 400px;
        }
        .container .buttons {
            position: absolute;
            right: 5px;
            bottom:40px;
            width: 150px;
            height: 10px;
            z-index: 2;
        }
        .container .buttons span {
            margin-left: 5px;
            display: inline-block;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background-color: green;
            text-align: center;
            color:white;
            cursor: pointer;
        }
        .container .buttons span.on{
            background-color: red;
        }
        .container .arrow {
            position: absolute;
            top: 35%;
            color: green;
            padding:0px 14px;
            border-radius: 50%;
            font-size: 50px;
            z-index: 2;
            display: none;
        }
        .container .arrow_left {
            left: 10px;
        }
        .container .arrow_right {
            right: 10px;
        }
        .container:hover .arrow {
            display: block;
        }
        .container .arrow:hover {
            background-color: rgba(0,0,0,0.2);
        }
        .box{
        	background-image: url("/hotel/admin/img/hotel6.jpg");
        	background-size: auto 523px;
        }
    </style>
<

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
	<%@ include file="../fragment/header.jspf"%>


  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        欢迎进入RAM酒店管理系统&nbsp;&nbsp;&nbsp;
        <small>Welcome to RAM Hotel Management System</small>
      </h1>
      <ol class="breadcrumb">
        
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        
        <div class="box-body">
			<div class="container">
        <div class="wrap" style="left: -600px;">
            <img src="/hotel/admin/img/hotel5.jpg" alt="">
            <img src="/hotel/admin/img/hotel1.jpg" alt="">
            <img src="/hotel/admin/img/hotel2.jpeg" alt="">
            <img src="/hotel/admin/img/hotel3.jpg" alt="">
            <img src="/hotel/admin/img/hotel4.jpg" alt="">
            <img src="/hotel/admin/img/hotel5.jpg" alt="">
            <img src="/hotel/admin/img/hotel1.jpg" alt="">
        </div>
        <!-- <div class="buttons">
            <span class="on">1</span>
            <span>2</span>
            <span>3</span>
            <span>4</span>
            <span>5</span>
        </div> -->
        <a href="javascript:;" class="arrow arrow_left">&lt;</a>
        <a href="javascript:;" class="arrow arrow_right">&gt;</a>
    </div>
    <script>
        var wrap = document.querySelector(".wrap");
        var next = document.querySelector(".arrow_right");
        var prev = document.querySelector(".arrow_left");
        next.onclick = function () {
            next_pic();
        }
        prev.onclick = function () {
            prev_pic();
        }
        function next_pic () {
            index++;
            if(index > 4){
                index = 0;
            }
            showCurrentDot();
            var newLeft;
            if(wrap.style.left === "-3600px"){
                newLeft = -1200;
            }else{
                newLeft = parseInt(wrap.style.left)-600;
            }
            wrap.style.left = newLeft + "px";
        }
        function prev_pic () {
            index--;
            if(index < 0){
                index = 4;
            }
            showCurrentDot();
            var newLeft;
            if(wrap.style.left === "0px"){
                newLeft = -2400;
            }else{
                newLeft = parseInt(wrap.style.left)+600;
            }
            wrap.style.left = newLeft + "px";
        }
        var timer = null;
        function autoPlay () {
            timer = setInterval(function () {
                next_pic();
            },2000);
        }
        autoPlay();

        var container = document.querySelector(".container");
        container.onmouseenter = function () {
            clearInterval(timer);
        }
        container.onmouseleave = function () {
            autoPlay();    
        }

        var index = 0;
        var dots = document.getElementsByTagName("span");
        function showCurrentDot () {
            for(var i = 0, len = dots.length; i < len; i++){
                dots[i].className = "";
            }
            dots[index].className = "on";
        }

        for (var i = 0, len = dots.length; i < len; i++){
            (function(i){
                dots[i].onclick = function () {
                    var dis = index - i;
                    if(index == 4 && parseInt(wrap.style.left)!==-3000){
                        dis = dis - 5;     
                    }
                    //和使用prev和next相同，在最开始的照片5和最终的照片1在使用时会出现问题，导致符号和位数的出错，做相应地处理即可
                    if(index == 0 && parseInt(wrap.style.left)!== -600){
                        dis = 5 + dis;
                    }
                    wrap.style.left = (parseInt(wrap.style.left) +  dis * 600)+"px";
                    index = i;
                    showCurrentDot();
                }
            })(i);            
        }
    </script>
		
			
		</div>
        <!-- /.box-body -->
       
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	<%@ include file="../fragment/footer.jspf"%>
	
  
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="/hotel/admin/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/hotel/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/hotel/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/hotel/admin/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/hotel/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/hotel/admin/dist/js/demo.js"></script>

<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>
</body>
</html>
