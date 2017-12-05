<%--
  User: Administrator
  Date: 2017/12/5
  Time: 11:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <form id="zhuceForm" method="post" action="${pageContext.request.contextPath}/xiugaiusername">
        <div>
            新名称：<input type="text" id="txtyanzheng" placeholder="请输入新名称" name="username"/><span id="codeError"></span>
            <br/>
            <input type="submit" value="确认"  >
        </div>
    </form>
</body>
<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
<script type="text/javascript">
    var codeFlag=false;
    $("#zhuceForm").submit(function(){
        var name=$("#txtyanzheng").val();

        if(!codeFlag){
            $("#txtyanzheng").value="";
            $("#txtyanzheng").focus();
            return false;
        }
        if(name==""){
            alert("请输入新名称");
            $("#txtyanzheng").focus();
            return false;
        }
        return true;
    });
    $(function(){
        $("#txtyanzheng").blur(function(){//验证码失去焦点的时候去校验
            var  code=$("#txtyanzheng").val();
            //获取验证码
            $.ajax({
                url:"${pageContext.request.contextPath}/checkusername",
                data:{"code":code},
                dataType:"json",
                type:"post",
                cache:"false",
                success:function(data){
                    if(data=='1'){//对
                        //改变验证码的标志
                        codeFlag=true;
                        $("#codeError").html("名称ok！").css("color","green");

                    }else{//验证不对
                        codeFlag=false;//置为false

                        $("#codeError").html("名称重复！").css("color","red");
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
</html>
