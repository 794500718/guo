<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>RAM | 预退订系统</title>
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
  	.media-item{
  		display: flex;
  		float: left;
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
      
      <ol class="breadcrumb">
        
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

     <div class="box">
        <div class="box-header with-border">
          <div class="input-group input-group-sm pull-left" style="width: 300px">
            <input type="text" class="form-control">
            <span class="input-group-btn">
              <button type="button" class="btn btn-info btn-flat">搜索</button>
            </span>
          </div>
          <a href="file-add.html" class="btn btn-info btn-flat pull-right">添加房间</a>
        </div>
        <div class="box-body">
          <div class="media-list">
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
            
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
            <div class="media-item">
              <img src="http://placehold.it/150x100">
              <strong>某某图</strong>
            </div>
          </div>

        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <ul class="pagination pagination-sm no-margin pull-right">
              <li><a href="#">«</a></li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">»</a></li>
            </ul>
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
