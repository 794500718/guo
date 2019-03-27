$(function(){
	$("#add_client_btn").click(function(event){
		 event.preventDefault();//取消button默认整页提交行为
		 var telFormat = /^1[0-9]{10}$/;//正则表达式是js的原生对象
		 var emailFormat=/[_0-9a-zA-Z]{1,}@[_0-9a-zA-Z]{1,}\.((com)|(cn))/;
		 //取出电话号码
		 var tel = $("#add_client_form input[name='tel']").val().trim();
		 var email = $("#add_client_form input[name='email']").val().trim();
		 var pwd = $("#add_client_form input[name='pwd']").val().trim();
		 var repwd = $("#add_client_form input[name='repwd']").val().trim();
		 var clientName = $("#add_client_form input[name='client_name']").val().trim();
		 
		 var telExist = false;
		 if(!telFormat.test(tel)){
			 return alert("手机号格式不合法");
		 }
		 //TODO 验证手机号已经存在
		 $.ajax({
			 url:"/hotel/app/client/validTel",
			 data:{'tel':tel},
			 type:"post",
			 async:false,//同步请求
			 success:function(data){
				 var rs = JSON.parse(data);
				 if(rs.data.exist){
					 telExist = true;
					
				 }
			 },
			 error:function(data){
				 return alert("请求失败");
			 }
		 })
		 
		 if(telExist){
			 return alert("电话号码已经存在");
		 }
		 if(!emailFormat.test(email)){
			 return alert("邮箱格式不合法");
		 }
		 if(!pwd){
			 return alert("密码不能为空");
		 }
		 
		 if(pwd != repwd){
			 return alert("两次密码不一致");
		 }
		 
		 if(!clientName){
			 return alert("姓名不能为空!");
		 }
		 $("#add_client_form").submit();
	});
	
	//验证用户是否存在
	$("#tel").blur(function(){
		var tel = $("#add_client_form input[name='tel']").val().trim();
		$.get()
	})
});
//会确保整个html文档加载完成后在执行这里的代码