<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>RAM | 主页</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="/hotel/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/hotel/admin/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="/hotel/admin/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/hotel/admin/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="/hotel/admin/dist/css/skins/_all-skins.min.css">
<link rel="stylesheet" href="/hotel/admin/plugins/iCheck/square/blue.css">

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

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<div class="box">
					<div class="box-header with-border">
						<c:if test="${!empty info }">
							<div class="alert alert-success alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<strong>提示!</strong> 注册成功--欢迎加入RAM
							</div>
							
							<script type="text/javascript">
								setTimeout(function(){
									location.href="/hotel/admin/page/adm-add.jsp";
								},2000);
							</script>
						</c:if>
					</div>
					<div class="box-body">
						<div class="register-logo">
							<a href="/hotel/admin/index2.html"><b>添加管理员</b></a>
						</div>

						<div class="register-box-body">
							<p class="login-box-msg">Register a new adiministrator!</p>

							<form id="add_adm_form" action="/hotel/app/adm/add" method="post">
								<div class="form-group has-feedback">
									<label for="inputPassword3" class="col-sm-2 control-label">手机号</label>
									<input type="text" name="tel" class="form-control" id="tel"
										placeholder="手机号"> <span
										class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>

								<div class="form-group has-feedback">
									<label for="inputPassword3" class="col-sm-2 control-label">邮箱</label>
									<input type="text" name="email" class="form-control"
										placeholder="邮箱"> <span
										class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>


								<div class="form-group has-feedback">
									<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
									<input type="password" name="pwd" class="form-control"
										placeholder="密码"> <span
										class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label for="inputPassword3" class="col-sm-2 control-label">再次输入</label>
									<input type="password" name="repwd" class="form-control"
										placeholder="请再输一遍密码"> <span
										class="glyphicon glyphicon-log-in form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
									<input type="text" name="adm_name" class="form-control"
										placeholder="姓名">

								</div>
								<div class="form-group has-feedback">
									<label for="gender" class="col-sm-2 control-label">性别</label>

									<div class="col-sm-6">
										<div class="radio">
											<label> <input type="radio" name="gender" value="1"
												checked> 男
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="gender" value="0">
												女
											</label>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-xs-8">
										<div class="checkbox icheck">
											<label> <input type="checkbox"> 我已同意此协议 <a
												href="#"></a>
											</label>
										</div>
									</div>
									<!-- /.col -->
									<div class="col-xs-4">
										<button type="button" id="add_adm_btn"
											class="btn btn-primary btn-block btn-flat">注册</button>
									</div>
									<!-- /.col -->
								</div>
							</form>

							
						</div>

					</div>
					<!-- /.box-body -->

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
	<script
		src="/hotel/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="/hotel/admin/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="/hotel/admin/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	
	<script src="/hotel/admin/plugins/iCheck/icheck.min.js"></script>
	
	<script src="/hotel/admin/dist/js/adm.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('.sidebar-menu').tree()
		})
	</script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' /* optional */
			});
		});
	</script>
</body>
</html>
