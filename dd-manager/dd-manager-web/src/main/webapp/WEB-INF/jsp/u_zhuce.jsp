<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>账号注册_千峰小说阅读网</title>
        <link rel="stylesheet" type="text/css" href="css/pact.css"/>
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
            <div class="logo cf"><a href="#" ><img src="img/log.png"></a><span class="lang">用户注册</span></div>
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
                <span class="lang act">填写注册信息</span>
                <%--<span class="lang"><em class="iconfont">&#xe64b;</em>注册成功</span>--%>
            </div>
            <div class="reg-form-wrap">
                <form action="">
                    <div class="reg-form-list form-list">
                        <dl>
                            <dd class="top" id="phone"><em>手机号</em>
               
                                <input class="mid" type="text" placeholder="输入手机号码" id="phonenumber">
                                <input class="get-code stat" type="button" value="获取验证码" id="validate" onclick="settime(this)">

                            </dd>
                            <dd id="yanzheng1"> <em>输入框</em><input type="text" id="phoneyanzheng" placeholder="请输入手机验证码">
                            
                            <dd id="phonepwd"><em>密码</em><input type="password" id="txtphonepwd" placeholder="6-18位大小写字母、符号或数字">
                 
                            </dd>
                            <dd id="password2"><em>确认密码</em><input type="password" id="txtphonepwd2" placeholder="再次输入密码"></dd>
                            <dd id="yanzheng2"> <em>输入框</em><input type="text" id="txtyanzheng" placeholder="请输入验证码"><span id="codeError"></span></dd>
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

    </div></div>
	<script type="text/javascript">
        var countdown=60;
        function settime(obj) {

            if (countdown == 0) {
                obj.removeAttribute("disabled");
                obj.value="获取验证码";
                countdown = 60;
                return;
            } else {
                obj.setAttribute("disabled", true);
                obj.value="重新发送(" + countdown + ")";
                countdown--;
            }
            setTimeout(function() {
                    settime(obj) }
                ,1000)

            /*$.post(
                "sendMes",
                {paramData: jsonStr},
                function(data) {
                    if(data>0){
                        $.messager.alert('温馨提示', '参数规格添加成功', 'info');
                        ddshop.closeTabs('新增商品规格模板');
                        ddshop.addTabs("规格参数", "item-param-list");
                    }


                });*/
        }
        $(function(){

            $('#validate').click(function () {
                var phone =  $('#phonenumber').val();
                var url =  "sendMess?phone="+phone+"";
                $.post(
                   url,
                    function (data) {
                        alert(data);
                    }

                );
            });




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