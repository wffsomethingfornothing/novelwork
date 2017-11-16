<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>账号注册_起点中文网_阅文集团旗下网站</title>
        <link rel="stylesheet" type="text/css" href="css/pact.css"/>
		<link rel="shortcut icon" type="image/x-icon" href="//qidian.gtimg.com/qd/favicon/qd_icon.0.2.ico">
		<link rel="Bookmark" type="image/x-icon" href="//qidian.gtimg.com/qd/favicon/qd_icon.0.2.ico">
    	<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
	<script type="text/javascript">
	function changeImage() {

		document.getElementById("img").src = "${pageContext.request.contextPath}/checkImage?time="+new Date().getTime()+"";
	};
	
</script>
    </head>
    <body>
    	<div class="wrap">
    <!-- start 头部 -->
    <div class="header reg-header qidian">
        <div class="box-center">
            <div class="logo cf"><a href="http://www.qidian.com" ></a><em></em><span class="lang">用户注册</span></div>
        </div>
    </div>
    <!-- end 头部 -->
    <!-- start 整体居中 -->
    <div class="box-center">
        <!-- start 注册模块 -->
        <div class="reg-wrap">
            <!-- start 注册进度 -->
            <div class="reg-step">
                <!-- 步进到哪一步，就给当前span上class：act -->
                <span class="lang act"><i>1</i>填写注册信息</span>
                <span class="lang"><em class="iconfont">&#xe64b;</em>注册成功</span>
            </div>
            <div class="reg-form-wrap">
                <form action="">
                    <div class="reg-form-list form-list">
                        <dl>
                            <dd class="top" id="phone"><em>手机号</em>
               
                                <input class="mid" type="text" placeholder="输入手机号码" id="txtphonenumber">
                            </dd>
                            
                            
                            <dd id="phonepwd"><em>密码</em><input type="password" id="txtphonepwd" placeholder="6-18位大小写字母、符号或数字">
                 
                            </dd>
                            <dd id="password2"><em>确认密码</em><input type="password" id="txtphonepwd2" placeholder="再次输入密码"></dd>
                            <dd id="yanzheng"> <em>输入框</em><input type="text" id="txtyanzheng" placeholder="请输入验证码"><span id="codeError"></span></dd>
                            <dd><img 校验成语图 src="${pageContext.request.contextPath}/checkImage" width="180" height="30" class="textinput" style="height:30px;" id="img" />&nbsp;&nbsp;
								<a href="javascript:void(0);" onclick="changeImage();">看不清换一张</a> </dd>
                        </dl>
                        <div class="deal">
                            <input type="checkbox" id="deal" name="checkbox" checked >
                            <label for="deal" class="ui-checkbox" ></label><label for="deal">我已阅读并同意</label><a href="https://passport.yuewen.com/pact.html?mobile=0" target="_blank">《用户服务协议》</a>
                        </div>
                        <a class="red-btn go-reg" href="javascript:" id="btnPhoneRegister">立即注册</a>
                    </div>
                </form>
            </div>
            <!-- end 注册进度 -->
        </div>
        <!-- end 注册模块 -->
    </div>
    <div class="footer">
    <div class="link">
        <a href="#" target="_blank">关于起点</a>
        <a href="#" target="_blank">联系我们</a>
        <a href="#" target="_blank">加入我们</a>
        <a href="#" target="_blank">客服中心</a>
        <a href="#" target="_blank">提交建议</a>
        <a href="#" target="_blank">合作伙伴</a>
        <a href="#" target="_blank">使用指南</a>
        <a href="#" target="_blank">起点论坛</a>
        <a href="#" target="_blank">起点商城</a>
    </div>
    <p>Copyright (C) 2002-2016 www.qidian.com All Right Reserved版权所有 上海玄霆娱乐信息科技有限公司</p>
    <p>上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2012]0068-008 新出网证（沪）字010 沪ICP备08017520号-1</p>
    <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！客服电话：010-59357051</p>
    <p>本站所收录作品、社区话题、书库评论及本站所做之广告均属个人行为，与本站立场无关</p>
</div></div>
	<script type="text/javascript">
    	$(function(){
    		$("#txtyanzheng").blur(function(){//验证码失去焦点的时候去校验
			var  code=$("#txtyanzheng").val();

			//获取验证码
			$.ajax({
				url:"${pageContext.request.contextPath}/checkcode",
				data:{"code":code},
				dataType:"json",
				type:"post",
				cache:"false",
				success:function(data){
					if(data=='1'){//对
						//改变验证码的标志
						//codeFlag=true;
						$("#codeError").html("验证码ok！").css("color","green");
						
					}else{//验证不对
						//codeFlag=false;//置为false
						
						$("#codeError").html("验证码错误！").css("color","red");
						//获取焦点
						$(this).focus();
						
					}
					
				},
				error:function(){
					alert("服务器异常~~");
					
					
				}	
		
	});
});
    	});
	</script>
 	</body>
</html>