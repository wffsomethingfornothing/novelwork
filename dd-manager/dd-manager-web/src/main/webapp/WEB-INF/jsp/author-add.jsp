<%--
  User: Administrator
  Date: 2017/11/16
  Time: 8:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="easyui-panel" title="新增作者" data-options="fit:true">
    <form class="itemForm" id="itemAddForm" name="itemAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">作者昵称：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="r_name" name="authorname"
                           data-options="required:true">
                </td>
            </tr>
            <tr>
                <td class="label">作者密码：</td>
                <td>
                    <input class="easyui-passwordbox" prompt="Password" id="r_pwd" name="password"
                            data-options="required:true,validType:'length[6,20]'">
                </td>
            </tr>
            <tr>
                <td class="label">确认密码：</td>
                <td>
                    <input class="easyui-passwordbox" prompt="Password" id="r_rpwd" name="r_rpwd"
                           required="required" validType="equals['#r_pwd']">
                </td>
            </tr>
            <tr>
                <td class="label">作者性别：</td>
                <td>
                    <select id="xb" class="easyui-combobox" name="sex" style="width:175px;">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>


                </td>
            </tr>
            <tr>
                <td class="label">作者手机：</td>
                <td>
                    <input id="r_phone" name="phone" class="easyui-validatebox" data-options="required:true,validType:'mobile'" />
                </td>
            </tr>
            <tr>
                <td class="label">作者邮箱：</td>
                <td>
                    <input id="r_email" name="email" class="easyui-validatebox" data-options="required:true,validType:'email'" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">保存
                    </button>
                    <button onclick="clearForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-undo'">重置
                    </button>
                </td>
            </tr>
        </table>
        <input name="paramData" id="paramData" style="display:none;">
    </form>
</div>
<script>
    function submitForm(){
        $('#itemAddForm').form('submit', {
            //提交表单动作的URL地址
            url: 'author',
            //在提交之前触发，返回false可以终止提交
            onSubmit: function(){
                return $(this).form('validate');
            },
            //在表单提交成功以后触发
            success:function(data){
                console.log('success');
                if(data > 0){
                    $.messager.alert('消息','保存成功', 'info');
                    novel.closeTabs('新增作者');
                    novel.addTabs('查询作者', 'author-list');
                }
            }
        });
    }
    $.extend($.fn.validatebox.defaults.rules, {
        equals: {
            validator: function(value,param){
                return value == $(param[0]).val();
            },
            message: '密码不一致'
        },
        mobile: {//value值为文本框中的值
            validator: function (value) {
                var reg = /^1[3|4|5|7|8|9]\d{9}$/;
                return reg.test(value);
            },
            message: '号码格式不正确'
        }
    });
</script>
