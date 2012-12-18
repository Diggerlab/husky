$(function(){
	$('body').click(function(){
		$('.mask').remove();
	})

	$('body').mousemove(function(evt){
		evt = evt || window.event;
		var middleX = 650, middleY = 350; //中心坐标
	  x = evt.clientX, y = evt.clientY; 
	  xP = (x-500)/500;
	  yP = (y-250)/250;   
	  $("#cloud1").css('left', 10+xP*20);     // lay1的左右移动区间是正负20像素
	  $("#cloud1").css('top', (100+yP*15));   // lay1的上下移动区间是正负15像素
	  $("#cloud2").css('left', (1000+xP*30)); // lay2的左右移动区间是正负430像素
	  $("#cloud2").css('top', (130+yP*15));   // lay2的上下移动区间是正负15像素
	})

	// 跑马灯
	var speed = 10; //数字越大速度越慢
	var tab = document.getElementById("demo");
	var tab1 = document.getElementById("demo1");
	var tab2 = document.getElementById("demo2");
	tab2.innerHTML=tab1.innerHTML;
	function Marquee(){
		if(tab2.offsetWidth-tab.scrollLeft<=0)
			tab.scrollLeft-=tab1.offsetWidth;
		else{
			tab.scrollLeft++;
		}
	}
	var MyMar=setInterval(Marquee,speed);

})