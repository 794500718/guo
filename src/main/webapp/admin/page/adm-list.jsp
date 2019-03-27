<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>RAM | 会员列表</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<%=application.getContextPath() %>/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<%=application.getContextPath() %>/admin/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<%=application.getContextPath() %>/admin/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=application.getContextPath() %>/admin/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<%=application.getContextPath() %>/admin/dist/css/skins/_all-skins.min.css">
  
  <style>
  	.adm-list {
				margin: 0 auto;
				width: 800px;
				border-collapse: collapse;
			}
			.adm-list td,.adm-list th{
				border: 1px solid #808080;
				text-align: center;
			}
			.adm-list td .number {
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
  <%@ include file="../fragment/header.jspf"%>
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        管理员列表
        <small></small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <div class="input-group input-group-sm pull-left" style="width: 300px">
	            <input type="text" value="${keyword }" name="keyword" class="form-control">
	            <span class="input-group-btn">
	              <button type="submit" class="btn btn-info btn-flat">搜索</button>
	            </span>
          </div>
          <a href="/hotel/admin/page/adm-add.jsp" class="btn btn-info btn-flat pull-right">注册管理员</a>
        </div>
        <div class="box-body">
			<table  class="adm-list">
				<thead>
					
				</thead>
				<tbody>
					<tr>
						<th>管理员编号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>手机号</th>
						<th>邮箱</th>
						<th>注册时间</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${Adms.data }" var="adm">
					
					<tr>
						<td>${adm.id }</td>
						<td>${adm.admName }</td>
						<td>${adm.gender == 1 ? '男' : '女'}</td>
						<td>${adm.tel }</td>
						<td>${adm.email }</td>
						<td>${adm.createTime }</td>
						<td>
							<a href="/hotel/app/adm/edit?id=${adm.id }">编辑</a>
						</td>
						
						
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
        <!-- /.box-body -->
        <div class="box-footer">
          <ul class="pagination pagination-sm no-margin pull-right">
              <c:if test="${adms.curPage > 1 }">
              	<li><a href="<%=application.getContextPath() %>/app/adm/list?page=${adms.curPage - 1}&keyword=${keyword}">«</a></li>
              </c:if>
              <c:forEach begin="1" var="pageNum" end="${adms.totalPage }" step="1">
              <li><a href="<%=application.getContextPath() %>/app/adm/list?page=${pageNum }&keyword=${keyword}">${pageNum }</a></li>
              </c:forEach>
              <c:if test="${adms.curPage < adms.totalPage}">
              <li><a href="<%=application.getContextPath() %>/app/adm/list?page=${adms.curPage + 1}&keyword=${keyword}">»</a></li>
              </c:if>
            </ul>
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <%@include file="../fragment/footer.jspf" %>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<%=application.getContextPath() %>/admin/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<%=application.getContextPath() %>/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<%=application.getContextPath() %>/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<%=application.getContextPath() %>/admin/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<%=application.getContextPath() %>/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%=application.getContextPath() %>/admin/dist/js/demo.js"></script>
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>
<script type="text/javascript" src="js/mlist.js" ></script>
</body>
</html>
