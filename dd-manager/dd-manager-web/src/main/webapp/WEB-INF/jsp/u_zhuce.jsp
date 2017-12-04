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
            <div class="logo cf"><a href="#" ><img src="img/logo-qf.png"></a><span class="lang">用户注册</span></div>
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
                <form method="post" id="zhuceForm" action="${pageContext.request.contextPath}/readerZhuce">
                    <div class="reg-form-list form-list">
                        <dl>
                            <dd class="top" id="phone"><em>手机号</em>
               
                                <input class="mid" type="text" placeholder="输入手机号码" id="phonenumber" name="phone">
                                <input class="get-code stat" type="button" value="获取验证码" id="validate" onclick="settime(this)">

                            </dd>
                            <dd id="yanzheng1"> <em>输入框</em><input type="text" id="phoneyanzheng" placeholder="请输入手机验证码">
                            
                            <dd id="phonepwd"><em>密码</em><input type="password" id="txtphonepwd" placeholder="6-18位大小写字母、符号或数字" name="password">
                 
                            </dd>
                            <dd id="password2"><em>确认密码</em><input type="password" id="txtphonepwd2" placeholder="再次输入密码"></dd>
                            <dd id="yanzheng2"> <em>输入框</em><input type="text" id="txtyanzheng" placeholder="请输入验证码"><span id="codeError"></span></dd>
                            <dd><img 校验成语图 src="${pageContext.request.contextPath}/checkImage" width="180" height="30" class="textinput" style="height:30px;" id="img" />&nbsp;&nbsp;
								<a href="javascript:void(0);" onclick="changeImage();">看不清换一张</a> </dd>
                        </dl>
                        <div class="deal">
                            <input type="checkbox" id="deal" name="checkbox" checked disabled="disabled">
                            <label for="deal" class="ui-checkbox" ></label><label for="deal">我已阅读并同意</label><a href="https://passport.yuewen.com/pact.html?mobile=0" target="_blank">《用户服务协议》</a>
                        </div>
                        <input type="submit" value="立即注册" class="red-btn go-reg">
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
        var codeFlag=false;//表示验证不对
        var phonecheck="";
        function settime(obj) {
            var uphone=$("#phonenumber").val();
            var regexTel=/^[1][34578]\d{9}$/;
            if(uphone!=""&&regexTel.test(uphone))
            {
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
            }
            else
            {
                alert("号码有问题，请重新输入！");
                $("#phonenumber").val("").focus();
            }
        }


        $("#zhuceForm").submit(function(){
                var uphone=$("#phonenumber").val();
                var uyanzheng=$("#phoneyanzheng").val();
                var upwd=$("#txtphonepwd").val();
                var reupwd=$("#txtphonepwd2").val();

                /*var regexEmail=/^\w+@\w+\.\w+$/;*/
                var regexpwd=/^\w{6,}$/;
                var regexTel=/^[1][34578]\d{9}$/;

                if(!codeFlag){
                    changeImage();
                    $("#txtyanzheng").focus();
                    return false;
                }

                if(uphone==""){
                alert("请输入手机号");
                $("#phonenumber").focus();
                return false;

                 }
                 if(!regexTel.test(uphone)){
                     alert("请输入正确的手机号");
                    $("#phonenumber").focus();
                    return false;

                }
            if (uyanzheng==""){

                alert("请输入手机验证码");
                $("#phoneyanzheng").focus();
                return false;
            }
                if (uyanzheng!=phonecheck){

                    alert("请输入正确手机验证码");
                    $("#phoneyanzheng").focus();
                    return false;
                }
                if(!regexpwd.test(upwd)){
                    alert("请输入正确的密码格式");
                    $("#txtphonepwd").focus();
                    return false;

                }
                if(reupwd!=upwd){
                    alert("两次输入的密码不一样");
                    $("#txtphonepwd2").focus();
                    return false;

                }


                return true;
        });
        $(function(){

            //发送消息
            $('#validate').click(function () {
                var phone =  $('#phonenumber').val();
                var url =  "sendMess?phone="+phone+"";
                $.post(
                   url,
                    function (data) {
                        phonecheck=data;
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
                            codeFlag=true;
                            $("#codeError").html("验证码ok！").css("color","green");

                        }else{//验证不对
                            codeFlag=false;//置为false

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