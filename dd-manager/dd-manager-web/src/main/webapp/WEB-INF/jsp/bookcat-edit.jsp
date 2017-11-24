<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="修改分类" data-options="fit:true">

    <form class="form" id="itemParamAddForm" name="itemParamAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">类别名称：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="name" name="name" value="${bname}"
                           data-options="required:true">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <button class="easyui-linkbutton" onclick="submitForm()" type="button" data-options="iconCls:'icon-ok'">保存</button>
                    <button class="easyui-linkbutton" onclick="clearForm()" type="button" data-options="iconCls:'icon-undo'">重置</button>
                </td>
            </tr>
        </table>
    </form>
</div>
<script>
    //保存
    function submitForm(){

        var ids=[];
        var val=$('#name').val();
        var val1=${bname};
        ids.push(val);
        ids.push(val1);
        alert(ids[0]);
        alert(ids[1]);
        var url = 'bookcateditname/';
        $.post(url, {paramData: ids},function(data){
            if(data>0){
                $.messager.alert('消息','修改成功', 'info');
                novel.closeTabs('编辑分类');
                novel.addTabs('查询分类', 'bookcat-list');
            }
        });
    }
</script>
