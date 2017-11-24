<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="新增根分类" data-options="fit:true">

    <form class="form" id="itemParamAddForm" name="itemParamAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">类别名称：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="bookcatname" name="bookcatname"
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
<script type="text/javascript">
    //保存
    function submitForm(){
        var val=$('#bookcatname').val();
        var url = 'bookcatAdd1/';
        $.post(url, {paramData: val},function(data){
            if(data>0){
                $.messager.alert('消息','保存成功', 'info');
                novel.closeTabs('新增根分类');
                novel.addTabs('查询分类', 'bookcat-list');
            }
        });
    }

</script>