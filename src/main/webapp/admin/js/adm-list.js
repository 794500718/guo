var adms = [
	{id:01,name:"小郭",gender:1,tel:"15735183470",password:"123",email:"794500718@qq.com",client_desc:"干净卫生"},
	{id:02,name:"小白",gender:1,tel:"15735183471",password:"123",email:"794500718@qq.com",client_desc:"干净卫生"},
	{id:03,name:"小李",gender:1,tel:"15735183472",password:"123",email:"794500718@qq.com",client_desc:"干净卫生"},
	{id:04,name:"小王",gender:1,tel:"15735183473",password:"123",email:"794500718@qq.com",client_desc:"干净卫生"},
]
/*function init_shop(prods){
	var htmlStr = "";
	//商品行
	for(let i = 0; i < prods.length; i++) {
		var prod = prods[i];
		htmlStr += "<tr>";
		htmlStr += '<td><input type="checkbox" checked="checked" />'+ prod.id +'</td>';
		htmlStr += '<td>'+ prod.name +'</td>';
		htmlStr += '<td>'+ prod.price +'</td>';
		//第三列
		htmlStr += '<td><input class="num_opt plus" type="button" value="+" />';
		htmlStr += '<input class="num_opt number"  type="text" value="'+ prod.num +'" />';
		htmlStr += '<input class="num_opt minus"  type="button" value="-" />';
		htmlStr += '</td>';
		htmlStr += "</tr>";
	}
	//总计行
	htmlStr += '<tr><td colspan="3"></td><td>总价：<label>'+ 100 +'</label> 元</td>	</tr>';
//	document.getElementById("my_shop_car")
	var body = document.querySelector("#my_shop_car tbody");
	body.innerHTML = htmlStr;
}
init_shop(products);*/
function init_adm(adms){
	var htmlStr = "";
	for(let i = 0 ; i < adms.length; i++){
		var adm = adms[i];
		htmlStr += "<tr>";
		htmlStr += '<td>'+ client.id +'</td>';
		htmlStr += '<td>'+ client.name +'</td>';
		htmlStr += '<td>'+ client.gender +'</td>';
		htmlStr += '<td>'+ client.tel +'</td>';
		htmlStr += '<td>'+ client.pasword +'</td>';
		htmlStr += '<td>'+ client.email +'</td>';
		htmlStr += "</tr>"
	}
	var body = document.querySelector(".adm-list tbody");
	body.innerHTML = htmlStr;
}
init_adm();