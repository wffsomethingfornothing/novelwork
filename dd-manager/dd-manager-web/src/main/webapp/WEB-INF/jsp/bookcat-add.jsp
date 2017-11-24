<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="新增分类" data-options="fit:true">

    <form class="form" id="itemParamAddForm" name="itemParamAddForm" method="post">
        <table style="width:100%;">
            <%--<tr id="old" style="display: none">
                <td class="label">类别名称：</td>
                <td>
                    <input class="easyui-textbox" style="width:175px;" type="text" id="bookcatname" name="bookcatname"
                           data-options="required:true">
                </td>
            </tr>--%>
            <tr>
                <td class="label">已有根节点：</td>
                <td>
                    <input id="hadfather" name="hadfather" style="width:200px;">
                </td>

            </tr>

            <tr>
                <td class="label">子节点：</td>
                <td>
                    <button id="father" class="easyui-linkbutton" onclick="addGroup()" type="button" data-options="iconCls:'icon-add'">添加子节点</button>
                    <ul id="item-param-group">

                    </ul>
                    <ul id="item-param-group-template" style="display:none;">
                        <li>
                            <input name="group">
                            <button title="删除子节点" class="easyui-linkbutton" onclick="delGroup(this)" type="button" data-options="iconCls:'icon-cancel'"></button>

                        </li>
                    </ul>
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
    $('#hadfather').combotree({
        url: 'bookcats1?parentId=0',
        required: true,
        onBeforeExpand: function (node) {
            //获取当前被点击的tree
            var $currentTree = $('#hadfather').combotree('tree');
            //调用easyui tree组件的options方法
            var option = $currentTree.tree('options');
            //修改option的url属性
        }
    });
    function addGroup(){

        var $templateLi = $('#item-param-group-template li').eq(0).clone();
        $('#item-param-group').append($templateLi);
        $('#father').attr("disabled","disabled");

    }
    function delGroup(ele){
        $(ele).parent().remove();
        $('#father').attr("disabled",false);
    }
    //保存
    function submitForm(){


        var val=null;
        //遍历分组
        var $groups = $('#item-param-group [name=group]');
        $groups.each(function(index, ele){
            val = $(ele).val();
        });

        //得到规格参数模板json串
        console.log(val);

        var cid = $('#hadfather').combotree('getValue');
        console.log(cid);

        var url = 'bookcatAdd/' + cid;
        $.post(url, {paramData: val},function(data){
            if(data>0){
                $.messager.alert('消息','保存成功', 'info');
                novel.closeTabs('新增子分类');
                novel.addTabs('查询分类', 'bookcat-list');
            }
        });
    }
    /*function clickfather() {
        var $templateLi = $('#old td').eq(0).clone();
        var $templateLi1 = $('#old td').eq(1).clone();
        $('#new').append($templateLi);
        $('#new').append($templateLi1);
        $('#father').attr("disabled","disabled");
        $('#sun').attr("disabled","disabled");
    }
    function clicksun() {
        alert(1);
        $('#sun').attr("disabled","disabled");
        $('#father').attr("disabled","disabled");
    }*/
</script>