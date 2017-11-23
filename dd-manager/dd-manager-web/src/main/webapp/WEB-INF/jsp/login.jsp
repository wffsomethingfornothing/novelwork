<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<meta charset="utf-8">
	<title>Fullscreen Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- CSS -->
	<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/supersized.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script language="javascript" type="text/javascript">
        <!--
        //获得当前时间,刻度为一千分一秒
        var initializationTime=(new Date()).getTime();
        function showLeftTime()
        {
            var now=new Date();
            var year=now.getFullYear();
            var month=now.getMonth()+1;
            var day=now.getDate();
            var hours=now.getHours();
            var minutes=now.getMinutes();
            var seconds=now.getSeconds();
            document.all.show.innerHTML=""+year+"年"+month+"月"+day+"日 "+hours+":"+minutes+":"+seconds+"";
//一秒刷新一次显示时间
            var timeID=setTimeout(showLeftTime,1000);
        }
        //-->
	</script>
</head>

<body onload="showLeftTime()">
<label id="show" style="padding-left: 800px;font-size: 20px;">显示时间的位置</label>
<div class="page-container">
	<h1 style="font-size: 40px;color: black;font-family: 华文行楷">千峰小说后台管理</h1>

	<form action="" method="post">
		<input type="text" name="username" class="username" placeholder="Username">
		<input type="password" name="password" class="password" placeholder="Password">
		<button type="submit">登　录</button>
		<div class="error"><span>+</span></div>
	</form>

</div>
<!-- Javascript -->
<script src="${pageContext.request.contextPath }/js/jquery-1.8.2.min.js"></script>
<script src="${pageContext.request.contextPath }/js/supersized.3.2.7.min.js"></script>
<script src="${pageContext.request.contextPath }/js/supersized-init.js"></script>
<script src="${pageContext.request.contextPath }/js/scripts.js"></script>

</body>

</html>
