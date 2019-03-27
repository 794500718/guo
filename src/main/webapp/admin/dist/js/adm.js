$(function(){
	$("#add_adm_btn").click(function(event){
		 event.preventDefault();//取消button默认整页提交行为
		 var telFormat = /^1[0-9]{10}$/;//正则表达式是js的原生对象
		 var emailFormat=/[_0-9a-zA-Z]{1,}@[_0-9a-zA-Z]{1,}\.((com)|(cn))/;
		 //取出电话号码
		 var tel = $("#add_adm_form input[name='tel']").val().trim();
		 var email = $("#add_adm_form input[name='email']").val().trim();
		 var password = $("#add_adm_form input[name='pwd']").val().trim();
		 var repwd = $("#add_adm_form input[name='repwd']").val().trim();
		 var admName = $("#add_adm_form input[name='adm_name']").val().trim();
		 
		 var telExist = false;
		 if(!telFormat.test(tel)){
			 return alert("手机号格式不合法");
		 }
		 //TODO 验证手机号已经存在
		 $.ajax({
			 url:"/hotel/app/adm/validTel",
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
		 if(!password){
			 return alert("密码不能为空");
		 }
		 
		 if(password != repwd){
			 return alert("两次密码不一致");
		 }
		 
		 if(!admName){
			 return alert("姓名不能为空!");
		 }
		 $("#add_adm_form").submit();
	});
	//验证用户是否存在
	$("#update_adm_btn").click(function(){
		var email = $("#update_adm_form input[name='email']").val().trim();
		var admName = $("#update_adm_form input[name='adm_name']").val().trim();
		if(!email){
			return alert("邮箱不能为空");
		}
		if(!email){
			return alert("姓名不能为空");
		}
		var url = $("#update_adm_form").attr("action");
		var postData = $("#update_adm_form").serialize();
		console.info(postData)
		$.post(url,postData,function(data){
			var rs = JSON.parse(data);
			if(rs.code == 200){
				alert("修改成功");
//				location.href = "/hotel/app/adm/list";
			}else{
				alert("修改失败");
			}
		})
	})
	 
})
