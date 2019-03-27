<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>RAM | 入住系统</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>
  	.content-header{
  		display: flex;
  	}
  	.sub-search{
  		display: flex;
  		float: left;
  	}
  	.sub-search span{
  		display: flex;
  		float: left;
  	}
  	#sub-search-right{
  		display: flex;
  		flex-end;
  	}
  </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <%@ include  file="../fragment/header.jspf" %>
 

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <div class="sub-search"><input type="text" class="form-control" placeholder="日期/房间号/姓名"></div>
				<div class="sub-search"><button type="submit" class="btn btn-primary btn-block btn-flat">搜索</button></div>
				<div class="sub-search" id="sub-search-right"><span><input type="text" class="form-control" placeholder="6">月<span></div>
				<div class="sub-search"><span><input type="text" class="form-control" placeholder="1">日<span></div>
      </h1>
      <ol class="breadcrumb">
        
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="table-sub">
			  <table class="table">
			    	<tr>
			    		<td>房間號</td>
			    		<td>姓名</td>
			    		<td>入住時間</td>
			    		<td>手機號</td>
			    		
			    	</tr>
			    	<tr>
			    		<td>001</td>
			    		<td>郭</td>
			    		<td>0601</td>
			    		<td>12345678912</td>
			    		
			    	</tr>
			    	
			  </table>
			</div>
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<%@ include  file="../fragment/footer.jspf" %>
  
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>
</body>
</html>
