<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>账务中心_个人中心_起点中文网</title>
    <meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学">
    <meta name="description" content="小说阅读,精彩小说尽在起点中文网. 起点中文网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
	<link rel="icon" type="image/x-icon" href="//qidian.gtimg.com/qdp/img/favicon.0.1.ico">
	<link rel="stylesheet" data-ignore="true" href="css/index.0.11.css" />
    <style type="text/css">
		@font-face {
  font-family: 'iconfont';  /* project id 482297 */
  src: url('//at.alicdn.com/t/font_482297_6qvf4zplselsdcxr.eot');
  src: url('//at.alicdn.com/t/font_482297_6qvf4zplselsdcxr.eot?#iefix') format('embedded-opentype'),
  url('//at.alicdn.com/t/font_482297_6qvf4zplselsdcxr.woff') format('woff'),
  url('//at.alicdn.com/t/font_482297_6qvf4zplselsdcxr.ttf') format('truetype'),
  url('//at.alicdn.com/t/font_482297_6qvf4zplselsdcxr.svg#iconfont') format('svg');
}
        .iconfont{
            font-family:"iconfont" !important;
            font-size:14px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
		</style>
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" href="css/common.css">
    <script src="js/jquery-easyui-1.5/jquery.min.js"></script>
    <script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
    <script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
    <%--引入日期处理库--%>
    <script src="js/moment/moment-with-locales.js"></script>
</head>
<body class="homepage">
            <div class="personal-header" data-l1="1">
                <div class="header-wrapper">
                    <div class="header-logo">
                        <a href="/"><img src="img/logo-qf1.png" style="width: 150px;height: 70px;"></a>
                    </div>
                    <ul class="header-nav">
                        <li class="header-nav-li">
                            <a href="/" class="header-nav-a active" accesskey="1" data-eid="qd_M01"><i class="iconfont">&#xe615;</i>我的首页</a>
                        </li>
                        <li class="header-nav-li" id="headerNav">
                            <a href="/bookcase" class="header-nav-a " accesskey="2" data-eid="qd_M02"><i class="iconfont">&#xe673;</i>我的书架</a>
                        </li>
                        <li class="header-nav-li">
                            <a href="/message/sys" class="header-nav-a " accesskey="3" data-eid="qd_M03"><i class="iconfont">&#xe62c;</i><i class="qdp-unread elUnread dn">未读</i>消息中心</a>
                        </li>
                    </ul>
                    <a href="/" id="headerLog" class="header-log" data-eid="qd_M06">
                        ${minecenterReader.username}
                    </a>
                    <div class="header-goHome">
                        <a href="http://localhost:8081/novelwork/${minecenterReader.username}" target="_blank" accesskey="5" data-eid="qd_M05">起点首页</a>
                    </div>
                </div>
            </div>
                
               
                
        <!-- 功能列 -->        
        <div class="qdp-wrapper">
               <div class="personal-sideBar" data-l1="2">
                    <ul class="sideBar-group">
                        <li class="">
                        <a href="${pageContext.request.contextPath}/minecenter?username=${minecenterReader.username}" class="sideBar-list-a"><i class="iconfont">&#xe615;</i>首页</a>
                        </li>
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/webmoney?id=${minecenterReader.id}" class="sideBar-list-a" data-eid="qd_M12"><i class="iconfont">&#xe6c8;</i>账务中心</a>
                        </li>
                        <li class="">
                            <a href="/ticketbox" class="sideBar-list-a" data-eid="qd_M13"><i class="iconfont">&#xe61c;</i>我的票夹</a>
                        </li>
                        <li class="">
                            <a href="/redpack" class="sideBar-list-a" data-eid="qd_M14"><i class="iconfont">&#xe7d5;</i>我的红包</a>
                        </li>
                        <li class="">
                            <a href="${pageContext.request.contextPath}/webreplay?id=${minecenterReader.id}" class="sideBar-list-a" data-eid="qd_M15"><i class="iconfont">&#xe62e;</i>我的书评</a>
                        </li>
                    </ul>
                    <ul class="sideBar-group">
                        <li class="">
                            <a href="/level" class="sideBar-list-a" data-eid="qd_M16"><i class="iconfont">&#xe609;</i>经验值等级</a>
                        </li>
                        <li class="">
                            <a href="/mission" class="sideBar-list-a" data-eid="qd_M17"><i class="iconfont">&#xe707;</i>任务</a>
                        </li>
                        <li class="">
                            <a href="/honor/badge" class="sideBar-list-a" data-eid="qd_M18"><i class="iconfont">&#xe671;</i>徽章/称号/认证</a>
                        </li>
                    </ul>
                    <ul class="sideBar-group">
                        <li>
                            <a href="/vip" class="sideBar-list-a" target="_blank" data-eid="qd_M19"><i class="iconfont">&#xe607;</i>会员中心</a>
                        </li>
                        <li>
                            <a href="//aq.yuewen.com" class="sideBar-list-a" target="_blank" data-eid="qd_M20"><i class="iconfont">&#xe608;</i>安全中心</a>
                        </li>
                        <li>
                            <a href="//write.qq.com/" class="sideBar-list-a" target="_blank" data-eid="qd_M21"><i class="iconfont">&#xe755;</i>作家专区</a>
                        </li>
                    </ul>
                        
                </div>
    <div class="qdp-content" data-l1="3">
            <h2 class="qdp-title">我的资产</h2>
            
            <div class="finance-asset" data-l2="2">
                <h3 class="asset-title">账户余额（起点币）</h3>
                <div class="asset-count">
                    ${minecenterReader.balance}
                    <div class="asset-recharge-wrapper2" style="display: none">
                        <a href="#充值界面" class="recharge-button ui-button elPayBtn" data-eid="qd_M44" data-l3="6">充值</a>
                    </div>
                </div>
                <div class="asset-recharge-wrapper">
                    <a href="" class="asset-rebate blue" target="_blank" data-eid="qd_M43" data-l3="5"></a><a href="#充值界面" class="recharge-button ui-button elPayBtn1" target="_blank" data-eid="qd_M44" data-l3="6">充值</a>
                </div>
            </div>
            
            <h2 class="qdp-title">交易记录<span class="qdp-explain">交易记录可能存在延时，仅供参考，请以实际金额变化为准</span></h2>
            <div class="finance-record qdp-record" >
                <div id="tabView" class="ui-tab-tabs" data-l2="2">
                    <a href="javascript:;" class="checked" data-rel="tabTarget1" data-eid="qd_M45">交易记录</a>
                </div>
                <div class="ui-tab-contents" data-l2="2">
                    <div id="tabTarget1" class="ui-tab-content checked" style="width:774px ;height: 500px;">
                        <table id="webmoney"></table>
                        <%--<div id="tableTarget1" class="table-x piaojia-month-table">
                            <div class="table-size">
                                <textarea id="tplTotalMonth" class="dn"><tr>
                                    <th scope="col" width="350">使用起点币数量</th>
                                    <th scope="col">使用时间</th>
                                </tr></textarea>
                                <table class="ui-table">
                                    <thead>
                                      <tr>
                                        <th scope="col" width="120">交易金额</th>
                                        <th scope="col" width="130">交易时间</th>
                                        <th scope="col" width="60">状态</th>
                                        <th scope="col" width="230">描述</th>
                                        <th scope="col">&nbsp;</th>
                                      </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                                <div class="table-null-x dn">目前暂无消费记录</div>
                                <div class="ui-loading"><i class="ui-loading-icon"></i></div>
                             </div>
                             <div class="table-page-x elTablePage">
                                 <div class="table-page"></div>
                             </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
        </div>
            <div id="toolbar">
                <div style="padding: 5px; background-color: #fff;">
                    <label>消费内容：</label>
                    <input class="easyui-textbox" type="text" id="content">
                    <label>商品类型：</label>
                    <select id="status" class="easyui-combobox">
                        <option value="0">全部</option>
                        <option value="1">充值</option>
                        <option value="2">消费</option>
                    </select>
                    <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
                    <!--注意：要加上type="button",默认行为是submit-->
                    <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
                    <%--<a onclick="searchForm()" class="easyui-linkbutton">搜索</a>--%>
                </div>
            </div>
 <!-- 底部超链接 -->
            <div class="personal-footer">
                <div class="footer-sub">
                    <a href="//www.yuewen.com" target="_blank">阅文集团</a>旗下网站：
                    <a href="//www.qidian.com" target="_blank" class="mr8">起点中文网</a>
                    <a href="//www.qdmm.com" target="_blank" class="mr8">起点女生网</a>
                    <a href="http://chuangshi.qq.com" target="_blank" class="mr8">创世中文网</a>
                    <a href="http://yunqi.qq.com" target="_blank" class="mr8">云起书院</a>
                    <a href="//www.hongxiu.com" target="_blank" class="mr8">红袖添香</a>
                    <a href="//www.readnovel.com" target="_blank" class="mr8">小说阅读网</a>
                    <a href="//www.xs8.cn" target="_blank" class="mr8">言情小说吧</a>
                    <a href="//www.xxsy.net" target="_blank" class="mr8">潇湘书院</a>
                    <a href="http://www.tingbook.com" target="_blank" class="mr8">天方听书网</a>
                    <a href="http://www.lrts.me" target="_blank" class="mr8">懒人听书</a>
                    <a href="http://yuedu.yuewen.com" target="_blank" class="mr8">阅文悦读</a>
                    <a href="//www.yuewen.com/app.html" target="_blank" class="mr8">QQ阅读</a>
                    <a href="//www.yuewen.com/app.html#appqd" target="_blank" class="mr8">起点读书</a>
                    <a href="//www.yuewen.com/app.html#appzj" target="_blank" class="mr8">作家助手</a>
                    <a href="//www.webnovel.com" target="_blank" class="mr8">起点国际版</a>
                </div>
                <div class="footer-menu">
                    <a href="//www.qidian.com/about/intro" target="_blank">关于起点</a>
                    <a href="//www.qidian.com/about/contact" target="_blank">联系我们</a>
                    <a href="//join.book.qq.com/index.html" target="_blank">加入我们</a>
                    <a href="//www.qidian.com/help/index/2" target="_blank">帮助中心</a>
                    <a href="http://123.206.70.240/online/?cid=0&uid=10&code=0" class="commitAdvice" target="_blank">提交建议</a>
                    <!-- <a href="//wwwploy.qidian.com/help/about_link.aspx" target="_blank">合作伙伴</a> -->
                    <a href="//bbs.qidian.com" target="_blank">起点论坛</a>
                    <!-- <a href="//webgame.qidian.com/jiazhang.html" target="_blank">家长监护工程</a> -->
                </div>
                <div class="footer-copyright">
                    <p>Copyright (C) 2002-2017 www.qidian.com All Rights Reserved 版权所有 </p>
                    <p>上海玄霆娱乐信息科技有限公司 上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2017]0081-031 新出网证(沪)字010 沪ICP备08017520号-1</p>
                    <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                    <p>本站所收录作品、社区话题、书库评论及本站所做之广告均属其个人行为，与本站立场无关</p>
                </div>
            </div>
<script >
    function searchForm(){
        $('#webmoney').datagrid('load',{
            content:$('#content').val(),
            status:$('#status').combobox('getValue')
        });
    }
    $('#webmoney').datagrid({

        url:'weborders?id=${minecenterReader.id}',//显示所有账单
        toolbar: '#toolbar',
        striped: true,//斑马线效果
        pagination: true,//显示分页工具栏
        fit: true,//使得数据表格自适应填充父容器
        rownumbers: true,//显示行号
        multiSort:true,
        pageSize: 10,
        pageList: [10, 20, 50],
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'price', title: '交易金额', width: 100},
            {field: 'created', title: '交易时间', formatter: function (value) {
                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');
            }},
            {field: 'status', title: '状态', width: 100, formatter: function (value, row, index) {
                switch (value) {
                    case 1 :
                        return "充值";
                        break;
                    case 2:
                        return "消费";
                        break;
                    case 3:
                        return "删除";
                        break;
                    default:
                        return "未知";
                        break;
                }

            }
            },
            {field: 'content', title: '描述', width: 100}
        ]]
    });
</script>
        
</body>
</html>