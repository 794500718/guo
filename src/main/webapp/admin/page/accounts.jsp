<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>RAM | 退房结账系统</title>
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
  
  <style>
  	.client-list {
				margin: 0 auto;
				width: 800px;
				border-collapse: collapse;
			}
			.client-list td,.client-list th{
				border: 1px solid #808080;
				text-align: center;
			}
			.client-list td .number {
				width: 3em;
				text-align: center;
			}
  </style>

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
	<%@ include  file="../fragment/header.jspf" %>
 

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        会员列表
        <small></small>
      </h1>
      <input type="text" class="mlistsearch" value="关键字搜索" />
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
         
        </div>
        <div class="box-body">
			<table  class="client-list">
				<thead>
					<tr>
						<th>房间类型：</th>
						<th>价格：</th>
						<th>房间号：</th>
						<th>入住者：</th>
						<th>手机号：</th>
						<th>身份证：</th>
						<th>是否退房</th>
						<th>提醒清理</th>
					</tr>
				</thead>
				<tbody>
					<th>单人间</th>
					<th>128元</th>
						<th>001</th>
						<th>小郭</th>
						<th>15735183470</th>
						<th>1422261995110421X</th>
						<th><button class="btn btn-primary btn-block btn-flat" type="submit">退房</button></th>
						<th><button class="btn btn-primary btn-block btn-flat" type="submit">提醒清理</button></th>
				</tbody>
			</table>
		</div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
        <!-- /.box-footer-->
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
<script type="text/javascript" src="js/mlist.js" ></script>
</body>
</html>
