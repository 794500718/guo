function Lunbor(){
	this.images = [
		"./img/bimg1.jpg",
		"./img/bimg2.jpg",
		"./img/bimg3.jpg",
		"./img/bimg4.jpg"
	];//数组
	this.index = 0;//index代表下标
}
Lunbor.prototype.next = function(){
	if(this.index < (this.images.length - 1)) {
		this.index++;
	} else {
		this.index = 0;
	}
}
Lunbor.prototype.up = function(){
	if(this.index > 0) {
		this.index--;
	} else {
		this.index = this.images.length - 1;
	}
}
Lunbor.prototype.getCurImg = function(){
	return this.images[this.index];
}

Lunbor.prototype.getIndex = function(){
	return this.index;
}

var lunbor = new Lunbor();

function showImg(){
	//显示图片
	var imgUrl = lunbor.getCurImg();
	$(".container .img-area").css("background",'url(' + imgUrl + ') no-repeat');
	//更改当前激活页面
	var items = $(".img-list .img-item");
	//删除所有active类
	for(let i = 0; i < items.length; i++){
		$(items[i]).removeClass("active");
	}
	//index
	var index = lunbor.getIndex();
	$(items[index]).addClass("active");
}

//页面操作
$(".left-arrow").click(function(){
	lunbor.up();
	showImg();
});

$(".right-arrow").click(function(){
	lunbor.next();
	//显示图片
	showImg();

});


var interval = null;

function addInterval(){
	interval = setInterval(function(){
		$(".right-arrow").click();
	},1000);
}

addInterval();
//var ele = document.getElementById("avds");
//ele -- DOM原生对象
//$(ele)-- JQuery 对象

$(".container .img-area").mouseover(function(){
	clearInterval(interval);
})

$(".container .img-area").mouseout(function(){
	addInterval();
})
