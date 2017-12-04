<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>账务中心_个人中心_起点中文网</title>
    <%--<style type="text/css">
        .XYTipsWindow .boxLoading { position: absolute; display: block; width: 90px; height: 30px; line-height: 30px; margin-left: -45px; margin-top: -15px; left: 50%; top: 50%; color: #f00; }
        .XYTipsWindow .boxLoading { width:28px; margin-left: -14px; background:url("img/loading.gif") no-repeat; text-indent: -999em; text-align: center; }
        .XYTipsWindow .boxTitle, .XYTipsWindow .boxTitle span, .XYTipsWindow .boxTitle span.hover, .XYTipsWindow .loadinglayer, .XYTipsWindow .tipslayer, .XYTipsWindow .arrowLeft, .XYTipsWindow .colseBtn, .XYTipsWindow .boxError em, .XYTipsWindow .dialogBtn, .XYTipsWindow .dialogBtn.hover { background-image: url("img/ico.png"); background-repeat: no-repeat; }
        .XYTipsWindow .boxTitle { position: relative; border: 1px solid #A6C9E1; border-bottom: none; background-position: 0 0; background-repeat: repeat-x; height: 30px; line-height: 30px; }
        .XYTipsWindow .boxTitle h3 { float: left; font-weight: normal; color: #666; font-size: 14px; margin: 0; text-indent: 10px; }
        .XYTipsWindow .boxTitle span { position: absolute; width: 10px; background-position: -80px -40px; text-indent: -10em; right: 10px; top: 10px; height: 16px; overflow: hidden; cursor: pointer; }
        .XYTipsWindow .boxTitle span.hover { background-position: -90px -40px; }
        .XYTipsWindow .loadinglayer { line-height: 40px; background-position: 0 -100px!important; }
        .XYTipsWindow .tipslayer { line-height: 20px; text-align: left; }
        .XYTipsWindow .arrowLeft { position: absolute; width: 8px; height: 16px; background-position: -20px -170px; text-indent: -9999em; z-index: 20591; overflow: hidden; }
        .XYTipsWindow .colseBtn { position: absolute; top: 5px; right: 5px; width: 8px; height: 8px; background-position: -55px -170px; text-indent: -9999em; cursor: pointer; z-index: 20591; overflow: hidden; }
        .XYTipsWindow .boxError { position: absolute; left: 50%; top: 50%; margin-left: -60px; margin-top: -15px; width: 120px; height: 30px; line-height: 30px; color: #f00; }
        .XYTipsWindow .boxError em { float: left; width:30px; height: 30px; background-position: -35px -140px; }
        .XYTipsWindow .dialogBtn { margin: 5px 5px 0 0; width:80px; height:35px; background-position: 0 -30px; border:none; color:#333; }
        .XYTipsWindow .dialogBtn.hover { background-position: 0 -65px; }
        .XYTipsWindow .shadow { box-shadow:2px 2px 5px #C0BBB5; -moz-box-shadow: 2px 2px 5px #C0BBB5; -webkit-box-shadow:2px 2px 5px #C0BBB5; }
    </style>--%>
    <meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学">
    <meta name="description" content="小说阅读,精彩小说尽在起点中文网. 起点中文网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
	<link rel="icon" type="image/x-icon" href="//qidian.gtimg.com/qdp/img/favicon.0.1.ico">
	<link rel="stylesheet" data-ignore="true" href="css/index.0.11.css" />
    <script>document.domain ='qidian.com';</script>
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
                        <li class="">
                            <a href="${pageContext.request.contextPath}/webmoney?id=${minecenterReader.id}" class="sideBar-list-a" data-eid="qd_M12"><i class="iconfont">&#xe6c8;</i>账务中心</a>
                        </li>
                        <li class="">
                            <a href="/ticketbox" class="sideBar-list-a" data-eid="qd_M13"><i class="iconfont">&#xe61c;</i>我的票夹</a>
                        </li>
                        <li class="">
                            <a href="/redpack" class="sideBar-list-a" data-eid="qd_M14"><i class="iconfont">&#xe7d5;</i>我的红包</a>
                        </li>
                        <li class="active">
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
            <h2 class="qdp-title">我的书评</h2>
            <div class="review-record qdp-record" data-l2="5">
                <div id="tabView" class="ui-tab-tabs">
                    <a href="javascript:;" class="checked" data-rel="tabTarget1" data-eid="qd_M72">发表的书评</a>
                </div>
                <div class="ui-tab-contents">
                    <div id="tabTarget1" class="ui-tab-content checked" style="width:774px ;height: 500px;">
                        <table id="webreplay"></table>
                    </div>
                </div>
            </div>
        </div>
        </div>
            <div id="toolbar">
                <div>
                    <label style="font-size: 15px;">&nbsp&nbsp;操作：</label>
                    <button id="huifu" class="easyui-linkbutton">查看回复</button>
                    <div style="height: 10px;"></div>
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
            <script type="text/javascript" src="js/jquery.XYTipsWindow.2.8.js"></script>
            <script >
                $(document).ready(function() {
                    $("#huifu").click(function(){
                        var selections = $('#webreplay').datagrid('getSelections');
                        if (selections.length == 0) {
                            //客户没有选择记录
                            $.messager.alert('提示', '请至少选中一条记录！');
                            return;
                        }
                        else if (selections.length > 1) {
                            //客户没有选择记录
                            $.messager.alert('提示', '只能选中一条记录！');
                            return;
                        }
                        else if(selections.length == 1){
//                            $.XYTipsWindow({
//                                ___title:"登录",
//                                ___content:"iframe:u_zhuce.jsp",
//                                ___width:"400",
//                                ___height:"410",
//                                ___showbg:true,
//                                ___drag:"___boxTitle"
//
//                            });
                        }
                    });
                    $('#webreplay').datagrid({

                        url:'webcomments?id=${minecenterReader.id}',//显示所有账单
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
                            {field: 'id', title: '评论编号', width: 120},
                            {field: 'novel', title: '小说名', width: 100},
                            {field: 'title', title: '评论标题', width: 100},
                            {field: 'content', title: '评论内容', width: 100},
                            {field: 'status', title: '状态', width: 100, formatter: function (value, row, index) {
                                switch (value) {
                                    case 1 :
                                        return "精华";
                                        break;
                                    case 2:
                                        return "删除";
                                        break;
                                    default:
                                        return "未知";
                                        break;
                                }

                            }
                            },
                            {field: 'created', title: '发布时间', formatter: function (value) {
                                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');
                            }}
                        ]]
                    });
                });

            </script>
</body>
</html>