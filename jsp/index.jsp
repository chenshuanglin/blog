<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>博客首页|个人</title>
<script language="javascript" src="resources/js/myDate.js"></script>
<script language="javascript" src="resources/js/jquery.js"></script>

<script language="javascript">
window.onload=function (){
	showDate();
}	



function deal_getInfo(blog,blogid){
	$("#"+blog).load("getComments");
	var el = document.getElementById(blog);
	if(el.style.display != "block"){
		
		el.style.display = "block";
		$("#"+blog).load("getComments?blogid="+blogid);
	}else{
		el.style.display = "none";
	}
}

function openComment(obj){
	var el = document.getElementById(obj);
	if(el.style.display != "block"){
		el.style.display = "block";
	}else{
		el.style.display = "none";
	}
}

function getuserName(obj,text){
	var el = document.getElementById(obj);
	var al = document.getElementById(text);
	al.innerHTML = "回应"+el.innerHTML+":";
	al.focus();
}
</script>
<style type="text/css">

/*一些基本操作*/
body {font:12px Tahoma;margin:0px;text-align:center;background:#FFF; Verdana,Arial,"宋体";background-color:#09C;}

ul,li{list-style-type:none; text-align:left;}

a:link,a:visited { font-size:12px; text-decoration:none;}

a:hover{ color:#F00; }

a{ color:#000; cursor:pointer;}

/*页面容器基本布局*/
#container {margin:0x auto;}

/*页面头部*/
#header {margin: 0 auto; height:90px; text-align:left; color:#000; background-color:#FFF;
-webkit-box-shadow:0px 0px 10px #292929;
-moz-box-shadow:0px 0px 10px #292929;
box-shadow:0px 0px 10px #292929; }
/*页面主体部分设置*/
#bodyContent{width:900px; margin: 0 auto; overflow:hidden; min-height:525px;}

#leftBody,#rightBody{margin-bottom:-10000px;padding-bottom:10000px;}

/*页面主体左边部分的设置*/
#leftBody{width:650px; float:left; background-color:#F0F0F0;}
#rightBody{ width:250px; float:right;background-color:#DDE1E5;}
#footer{ height:30px; margin:0 auto; padding-top:10px; margin-top:10px; background-color:#FFF; 
-webkit-box-shadow:0px 0px 10px #292929; 
-moz-box-shadow:0px 0px 10px #292929;
box-shadow:0px 0px 10px #292929;}

/*博客的块设置*/

.userPic{float:left; width:60px;text-align:left; padding:2px 2px 2px 2px;word-wrap:break-word;}
.photo{ width:60px; height:60px; overflow:hidden;}
.blogClass{ width:600px; margin:0 auto; background:#FFF;margin-top:20px; padding:10px 10px 10px 10px; background:#F0EDE8;
}
/*每个博客正文块的设置*/
.blogMatter{
	width:500px; float:left; background-color:#FFF; margin-left:0px; padding:5px 5px 5px 5px;
	/*设置阴影*/
-webkit-box-shadow:1px 1px 3px #292929;
-moz-box-shadow:1px 1px 3px #292929;
box-shadow:1px 1px 3px #292929;
}
/*博客块中的一些设置*/
.matter{}
.commentBar{ height:40px;}
div a:hover div{ border:1px solid #C60;}
.sdiv{width:60px; height:20px; float:left; margin-top:5px; margin-bottom:5px; padding:5px 5px 5px 5px;
-webkit-box-shadow:0px 0px 10px #999;
-moz-box-shadow:0px 0px 10px #999;
box-shadow:0px 0px 10px #999;}
.praise{ margin-left:10px;}
.comment{ margin-left:250px;}
.share{margin-left: 20px;}


/*右边模块的设置*/
#loginDiv,#registerDiv{ background-color:#FFF; height:15px; width:60px; padding: 10px 10px 10px 10px; cursor:pointer; margin-top:50px;
-webkit-box-shadow:0px 0px 10px #292929;
-moz-box-shadow:0px 0px 10px #292929;
box-shadow:0px 0px 10px #292929;}

#loginDiv{ float:left; margin-left:20px;}
#registerDiv{ margin-right:20px; float:right;}

/*日历控件的一些设置*/
#blogDate{width:auto; margin-top:130px; margin-left:10px; margin-right:10px; height:150px; background-color:#FFF;
-webkit-box-shadow:1px 1px 3px #292929;
-moz-box-shadow:1px 1px 3px #292929;
box-shadow:1px 1px 3px #292929;
}
#idCalendarPre { cursor:pointer; float:left; padding-right:5px;}
#idCalendarNext {cursor:pointer; float:right; padding-right:5px;}
td{ width:22px; height:10px; background:#fff}


/*点击评论之后弹出DIV的设置*/
.commentDiv{ float:right; width:510px; margin-right:3px;background:#FFF; display:none;
-webkit-box-shadow:1px 1px 3px #292929;
-moz-box-shadow:1px 1px 3px #292929;
box-shadow:1px 1px 3px #292929;
}
.commentSubmitDiv{ height:50px; margin:0 auto;}
.submitbutton{ width:60px; float:right; margin-right:20px; margin-top:9px; height:25px; text-align:center; padding-top:8px; -webkit-box-shadow:0px 0px 10px #292929;
-moz-box-shadow:0px 0px 10px #292929;
box-shadow:0px 0px 10px #292929;}
.textarea{width:400px; height:25px; float:left; margin:9px 0 9px 10px;}
.upDiv{ text-align:right; background:#DDE0E2;}
.solidline{ border:1px #CCC solid;}
.everyComment{ text-align:left;}
.smallimage{ float:left; width:20px; height:20px;}
.spantext{ width:450px; float:left;display:block;}
.reply{ float:right; text-align:right; margin-right:10px; margin-left:8px;}


/*回顶部按钮的设置*/
#returntop{
	border:1px #ccc solid;
	background:#6FC;
	width:80px;
	height:30px;
	position:fixed;
	_position:absolute;
	line-height:30px;
	text-align:center;
	top:0px;
	left:0px;
	display:none;
	cursor:pointer;
}
</style>
</head>
<body>
	<div id="container"> 
		 <div id="header"><b style="font-size:40px; margin-left:200px;">Person blog</b><img  src="resources/images/bird.gif" style="width:60px; height:60px; margin-top:10px;"/>
 		 </div>
        <div id="bodyContent">
        	<div id="leftBody">
            	<s:action name="getIndexblog" executeResult="true" ignoreContextParams="true">     				
            	</s:action>
            </div>
            <div id="rightBody">
            		<a><div id="loginDiv">登&nbsp;录</div></a>
                	<a><div id="registerDiv">注&nbsp;&nbsp;册</div></a>
               		 <div id="blogDate">
            			<div style="background:#666; padding:2px; color:#fff; height:20px;">
            				<div id="idCalendarPre"><<</div>
                    		<div id="idCalendarNext">>></div>
   							<span id="idCalendarYear"></span>
                		</div>
                		<table cellpadding="0" cellspacing="2" class="reli" align="center">
						<thead>
							<tr>
								<td>日</td>
								<td>一</td>
								<td>二</td>
								<td>三</td>
								<td>四</td>
								<td>五</td>
								<td>六</td>
                      	 </tr>
						</thead>
						<tbody id="idCalendar"></tbody>
						</table>
          	  		</div>
           	</div>
           </div>
           <div style="clear:both;"></div>
           <div id="footer">版权所有：西安邮电大学软件工程10级 陈双麟  个人博客网站</div>
           <div id="returntop">回顶部</div>
           <script type="text/javascript">
var getDiv=document.getElementById('returntop');
getDiv.onclick=function(){
	window.scrollTo(0,0);
}
window.onscroll=function(){
	if(document.documentElement.scrollTop){
		getDiv.style.display="block";
	}else if(document.body.scrollTop){
		getDiv.style.display="block";
	}else{
		getDiv.style.display="none";	
	}
}
function getWinSize(){
	var winHeight=window.innerHeight,winWidth=window.innerWidth;
	if(document.documentElement.clientHeight){
		winHeight=document.documentElement.clientHeight;
		winWidth=document.documentElement.clientWidth;
	}else{
		winHeight=document.body.clientHeight;
		winWidth=document.body.clientWidth;
	}
    var height=winHeight-50;
	var width=winWidth-100;
	getDiv.style.top=height+"px";
	getDiv.style.left=width+"px";
}
getWinSize();
window.onresize=getWinSize;
</script>
    </div>
 
</body>
</html>
