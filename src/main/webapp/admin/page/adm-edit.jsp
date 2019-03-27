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
								<strong>提示!</strong> 修改成功--欢迎加入RAM
							</div>
						</c:if>
					</div>
					<div class="box-body">
						<div class="register-logo">
							<a href="/hotel/admin/index2.html"><b>修改管理员信息</b></a>
						</div>

						<div class="register-box-body">
							<p class="login-box-msg">modify a new adiministrator!</p>

							<form id="update_adm_form" action="/hotel/app/adm/update" method="post">
								<div class="form-group has-feedback">
									<input type="hidden" name="id" value="${adm.id }" />
									<label for="inputPassword3" class="col-sm-2 control-label">手机号</label>
									<input type="text" name="tel" class="form-control" id="tel" readonly value="${adm.tel }"
										placeholder="手机号"> <span
										class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>

								<div class="form-group has-feedback">
									<label for="inputPassword3" class="col-sm-2 control-label">邮箱</label>
									<input type="text" name="email" class="form-control"   value="${adm.email }" placeholder="邮箱"> 
										<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<label for="inputPassword3" class="col-sm-2 control-label" value="${adm.admName }">姓名</label>
									<input type="text" name="adm_name" class="form-control"
										placeholder="姓名">

								</div>
								<div class="form-group has-feedback">
									<label for="gender" class="col-sm-2 control-label">性别</label>

									<div class="col-sm-6">
										<div class="radio">
											<label> <input type="radio" name="gender" value="1" ${adm.gender == 1 ? "checked" : "" }>
											 男
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="gender" value="0" ${adm.gender == 0 ? "checked" : "" }>
												女
											</label>
										</div>
									</div>

								</div>
								<div class="row">
									
									<!-- /.col -->
									<div class="col-xs-4">
										<button type="button" id="update_adm_btn"
											class="btn btn-primary btn-block btn-flat">提交</button>
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
