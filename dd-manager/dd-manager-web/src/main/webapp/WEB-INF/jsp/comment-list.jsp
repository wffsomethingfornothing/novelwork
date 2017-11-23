<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>小说名称：</label>
        <input class="easyui-textbox" type="text" id="novelName" style="width: 100px;">
        <label>作者名称：</label>
        <input class="easyui-textbox" type="text" id="authorName" style="width: 100px;">
        <label>小说状态：</label>
        <select id="status" class="easyui-combobox" style="width: 60px;" >
            <option value="0">全部</option>
            <option value="1">连载</option>
            <option value="2">完结</option>
        </select>
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">查看评论</button>
        <%--<button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true"></button>
        <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>--%>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
    </div>
</div>

<table id="comment"></table>

<script>

    $('#comment').datagrid({

        url:'comments',//显示所有书籍
        striped: true,//斑马线效果
        pagination: true,//显示分页工具栏
        fit: true,//使得数据表格自适应填充父容器
        rownumbers: true,//显示行号
        pageSize: 20,
        pageList: [20, 50, 100],
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '评论编号', width: 120},
            {field: 'title', title: '标题', width: 100},
            {field: 'novel', title: '小说名', width: 100},
            {field: 'reader', title: '读者名', width: 100},
            {field: 'content', title: '评论内容', width: 200},
            {field: 'created', title: '创建时间', formatter: function (value) {
                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');

            }}

        ]]
    });
</script>




