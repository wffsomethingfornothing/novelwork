<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的书架_个人中心_纵横千峰小说</title>
    <link rel="icon" type="image/x-icon" href="https://qidian.gtimg.com/qdp/img/favicon.0.1.ico">
    <link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath}/css/index.0.11.css">
    <script src="js/stats.js.下载" name="MTAH5" sid="500445303" cid="500446496"></script><script>document.domain ='qidian.com';</script>
    <script>var speedTimer = [], speedZero = new Date().getTime();</script>
</head>
<body class="shelf" style="zoom: 1;">
            <div class="personal-header" data-l1="1">
                <div class="header-wrapper">
                    <div class="header-logo">
                        <a href="https://my.qidian.com/">个人中心</a>
                    </div>
                    <ul class="header-nav">
                        <li class="header-nav-li">
                            <a href="https://my.qidian.com/" class="header-nav-a " accesskey="1" data-eid="qd_M01"><i class="iconfont icon-home"></i>我的首页</a>
                        </li>
                        <li class="header-nav-li" id="headerNav">
                            <a href="https://my.qidian.com/bookcase" class="header-nav-a active" accesskey="2" data-eid="qd_M02"><i class="iconfont icon-book"></i>我的书架</a>
                        </li>
                        <li class="header-nav-li">
                            <a href="https://my.qidian.com/message/sys" class="header-nav-a " accesskey="3" data-eid="qd_M03"><i class="iconfont icon-msg"></i><i class="qdp-unread elUnread dn">未读</i>消息中心</a>
                        </li>
                        <li class="header-nav-li">
                            <a href="http://game.qidian.com/" class="header-nav-a" target="_blank" accesskey="4" data-eid="qd_M04"><i class="iconfont icon-game"></i>游戏</a>
                        </li>
                    </ul>
                    <a href="https://my.qidian.com/" id="headerLog" class="header-log" data-eid="qd_M06" data-target="headerDropList">
                        
                        书友20171108214447264
                        
                    </a>
                    <div class="header-goHome">
                        <a href="https://www.qidian.com/" target="_blank" accesskey="5" data-eid="qd_M05">起点首页</a>
                    </div>
                </div>
                <ul id="headerDropList" class="header-drop" data-align="3-2" style="position: absolute; display: none; left: 1157px; top: 70px;">
                    <li>
                        <a href="https://pay.yuewen.com/pc/index?appId=10&amp;areaId=1&amp;userGuid=1264189544&amp;returnUrl=https%3A%2F%2Fmy.qidian.com/bookcase" target="_blank" data-guid="1264189544" class="elNewToPay" data-eid="qd_M07">充值</a>
                    </li>
                    <li>
                        <a href="https://my.qidian.com/setting" data-eid="qd_M08">个人设置</a>
                    </li>
                    <li>
                        <a href="https://my.qidian.com/user/310446029" data-eid="qd_M09">我的主页</a>
                    </li>
                    <li>
                        <a href="https://www.qidian.com/help/kf" target="_blank" data-eid="qd_M10">客服中心</a>
                    </li>
                    <li>
                        <a href="javascript:;" id="elLoginOut" data-eid="qd_M11">退出</a>
                    </li>
                </ul>
            </div>
        <div class="qdp-wrapper">
		<div class="personal-sideBar" data-l1="2">
			<ul class="sideBar-group">
				<li class="">
					<a href="https://my.qidian.com/bookcase/recent" class="sideBar-list-a" data-eid="qd_M185">最近阅读</a>
				</li>
			</ul>
			<ul class="sideBar-group" id="tabView">
				<li id="elIndex" class="active">
					<a href="https://my.qidian.com/bookcase" class="sideBar-list-a" title="默认分组" data-eid="qd_M186">默认分组</a>
					<a href="javascript:;" id="btnNewGroup" class="icon icon-add ui-tips" data-eid="qd_M189" data-title="新建分组">新建分组</a>
				</li>
				
			</ul>
			<ul class="sideBar-group">
				<li class="">
					<a href="https://my.qidian.com/bookcase/auto" class="sideBar-list-a" title="自动订阅" data-eid="qd_M188">自动订阅</a>
				</li>
			</ul>
		</div>
    <div class="qdp-content" data-l1="3">
        <form id="shelfSearchForm" class="shelf-search qdp-border" action="https://my.qidian.com/bookcase/search" target="_blank">
            <input type="text" name="kw" class="shelf-search-input" placeholder="输入作品名或作家名">
            <input type="submit" id="shelfSearch" class="clip" data-eid="qd_M192">
            <label for="shelfSearch" class="shelf-search-submit ui-button" data-eid="qd_M192">搜书架</label>
        </form>
        
        <div class="shelf-content" id="addToShelfForm" data-l2="2">
            <div id="tabView" class="ui-tab-tabs">
                <a href="javascript:" class="checked" id="elEditTab" data-rel="tabTarget1">编辑推荐</a>
            </div>
            <label class="recmd-add blue unloading" data-l3="1"><a class="ibookclose" id="closeRecBook" data-eid="qd_M193" href="javascript:"><i class="iconfont icon-close"></i></a></label>
            <div class="ui-tab-contents shelf-content-wrapper">
                <div id="tabTarget1" class="ui-tab-content checked">
                    <ul class="recmd-list" id="elRecList1" data-l3="1" style="height: 169px;">
                        
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1010739099" checked="">
                                    <a href="https://book.qidian.com/info/1010739099" target="_blank" class="recmd-list-a" data-eid="qd_M194" data-bid="1010739099">
                                        <div class="recmd-commet">原来西游记中的花果山、高老庄、流沙河，现实中真实存在，从唐朝流传至今</div>
                                        <img src="img/180" alt="西游地图封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1010739099">西游地图</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1010696572" checked="">
                                    <a href="https://book.qidian.com/info/1010696572" target="_blank" class="recmd-list-a" data-eid="qd_M194" data-bid="1010696572">
                                        <div class="recmd-commet">获得了超凡之力，开启了自己追逐巅峰的超凡旅程。</div>
                                        <img src="img/180(1)" alt="超凡世界封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1010696572">超凡世界</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1010815544" checked="">
                                    <a href="https://book.qidian.com/info/1010815544" target="_blank" class="recmd-list-a" data-eid="qd_M194" data-bid="1010815544">
                                        <div class="recmd-commet">带着萌萌小萝莉在异界开餐厅，用美食入侵异世界！</div>
                                        <img src="img/180(2)" alt="奶爸的异界餐厅封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1010815544">奶爸的异界餐厅</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1010735084" checked="">
                                    <a href="https://book.qidian.com/info/1010735084" target="_blank" class="recmd-list-a" data-eid="qd_M194" data-bid="1010735084">
                                        <div class="recmd-commet">魂穿二郎神杨戬，拜师玉鼎，洪荒肉身成圣，顺便养一只叫三圣母的小萝莉！</div>
                                        <img src="img/180(3)" alt="洪荒二郎传封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1010735084">洪荒二郎传</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1010795768" checked="">
                                    <a href="https://book.qidian.com/info/1010795768" target="_blank" class="recmd-list-a" data-eid="qd_M194" data-bid="1010795768">
                                        <div class="recmd-commet">这是一个倒霉孩子，无意中拥有德鲁伊和猎人异能后，欢乐逗比的爆笑故事</div>
                                        <img src="img/180(4)" alt="德猎封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1010795768">德猎</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1010500344" checked="">
                                    <a href="https://book.qidian.com/info/1010500344" target="_blank" class="recmd-list-a" data-eid="qd_M194" data-bid="1010500344">
                                        <div class="recmd-commet">启动戒指，穿越一个陌生的世界中，开始大冒险</div>
                                        <img src="img/180(5)" alt="我有一个异世界封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1010500344">我有一个异世界</div>
                                    </a>
                                </li>
                            
                        
                    </ul>
                </div>
                <div id="tabTarget2" class="ui-tab-content">
                    <ul class="recmd-list ui-loading" id="elRecList2" data-l3="1" style="height: 169px;">
                    </ul>
                </div>
            </div>
        </div>
        
            <div class="qdp-border table-x shelf-default shelf-table" data-l2="3">
                <div class="table-msg" data-l3="2">
                    <h2 class="shelf-title" id="shelfTitle" data-gid="-100">默认分组</h2>共<strong class="dark ml5 mr5" id="elMoTotal">1</strong><span id="shelfAmount">本书籍</span>
                    
                    <form id="shelfFilterForm" class="table-filter shelf-filter">
                        <select name="time" style="width: 120px; display: none;">
                            <option value="0" data-eid="qd_M196" data-rid="1" selected="">更新时间</option>
                            <option value="2" data-eid="qd_M197" data-rid="2">阅读时间</option>
                        </select><div class=" ui-select" style="width: 120px;"><a href="javascript:" class="ui-select-button _" data-target="sel_024133673164528302"><span class="ui-select-text">更新时间</span><i class="ui-select-icon"></i></a><div id="sel_024133673164528302" class="ui-select-datalist"><a href="javascript:" class="ui-select-datalist-li  selected" data-index="0">更新时间</a><a href="javascript:" class="ui-select-datalist-li " data-index="1">阅读时间</a></div></div>
                        <input type="hidden" name="c" value="" class="elInputC">
                    </form>
                    
                </div>
                <div class="table-size" data-l3="2">
                    <table id="shelfTable" class="ui-table table-checkbox" data-count="1">
                        <thead>
                          <tr>
                            <th scope="col"><input type="checkbox" id="chkBookNameAll" name="bookname" value="all"><label class="ui-checkbox" for="chkBookNameAll"></label></th>
                            <th scope="col">书名/最近更新章节</th>
                            <th scope="col" width="70">更新时间</th>
                            <th scope="col" width="90">作者</th>
                            <th scope="col" width="60">阅读进度</th>
                            <th scope="col" width="20">&nbsp;</th>
                          </tr>
                        </thead>
                        <tbody>
                            
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName0" name="bookname" value="1010562911"><label class="ui-checkbox" for="chkBookName0"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="https://qihuan.qidian.com/" data-eid="qd_M219" target="_blank" class="fen-category">「奇幻」</a>
                                            
                                            <a href="https://book.qidian.com/info/1010562911" target="_blank" title="我能打印传送门" data-bid="1010562911" data-eid="qd_M198">我能打印传送门</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="https://read.qidian.com/chapter/RDt8DDXsMCqdL1xidHTgxA2/H0U__XnvTtzgn4SMoDUcDQ2" data-eid="qd_M218" data-cid="391720498" class="shelf-table-chapter blue" target="_blank" title="第六十八章 赐你荣耀之名">第六十八章 赐你荣耀之名</a>
                                        
                                        
                                    </span>
                                    
                                    </td>
                                    <td class="col3 font12">7小时前</td>
                                    <td class="col4">
                                        
                                        <a href="https://my.qidian.com/author/4376495" target="_blank" title="一剑霜" class="shelf-table-author font12" data-eid="qd_M200">一剑霜</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="https://read.qidian.com/chapter/RDt8DDXsMCqdL1xidHTgxA2/OigIyjUj_-_M5j8_3RRvhw2" class="spTips font12 yesReadStatus" target="_blank" title="读至第一章 这里是沙漠？" data-eid="qd_M201" data-cid="386002486">有更新</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu" data-target="forList0" data-eid="qd_M203"></a>
                                            <div id="forList0" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1010562911" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1010562911" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1010562911" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1010562911" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                            
                        </tbody>
                    </table>
                    
                    <div class="ui-loading" style="display:none;"><i class="ui-loading-icon"></i></div>
                    <div class="style" style="height:51px;">
                        <div id="tableFixedFoot" class="shelf-foot">
                            <div class="shelf-foot-wrapper">
                                <table class="ui-table table-checkbox">
                                    <thead>
                                      <tr>
                                        <th scope="col" style="line-height:50px;"><input type="checkbox" id="chkBookNameAll2" name="bookname" value="all"><label class="ui-checkbox" for="chkBookNameAll2"></label></th>
                                        <th scope="col" style="line-height:50px;">
                                            <label for="chkBookNameAll2" class="mr12">全选</label><a href="javascript:;" class="ml12 mr12" id="elToTop" role="button" data-eid="qd_M208">置顶</a><a href="javascript:;" class="ml12 mr12" id="elMoveTo" role="button" data-eid="qd_M209">移动至</a><a href="javascript:;" class="ml12 mr12" id="elDelete" role="button" data-eid="qd_M210">删除</a>
                                        </th>
                                      </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
    </div>
    

    <script id="tplGroupName" type="text/ejs-template">
    <div class="shelf-dialog-name">
        <h3><label for="iptNameEdit">分组名</label></h3>
        <form action="/ajax/BookShelf/AddGroup" method="post" class="qdp-form">
            <div class="ui-input-x" style="width:400px;">
                <input id="iptNameEdit" maxlength="20" required name="gname">
                <input type="hidden" id="elBids" name="bids">
                <input type="hidden" id="elType" name="type">
                <input type="hidden" name="_csrfToken" value="" id="elCsrfto" >
                <div class="ui-input"></div>
            </div>
            <div class="qdp-form-button">
                <input type="submit" id="groupNameSubmit" class="clip">
            </div>
        </form>
    </div>
    </script>
    <script id="tplEditGroupName" type="text/ejs-template">
    <div class="shelf-dialog-name">
        <h3><label for="iptNameEdit">分组名</label></h3>
        <form action="/ajax/BookShelf/UpdateGroup" method="post" class="qdp-form">
            <input type="hidden" id="iptGroupId" name="gid" value="">
            <input type="hidden" name="_csrfToken" value="" id="elCsrftoken" >
            <div class="ui-input-x" style="width:400px;">
                <input id="iptNameEdit" maxlength="20" required name="gname">
                <div class="ui-input"></div>
            </div>
            <div class="qdp-form-button">
                <input type="submit" id="groupNameSubmit" class="clip">
            </div>
        </form>
    </div>
    </script>
            
            <div class="tucao">
                <div class="tucao-wrap">
                    <a href="https://support.qq.com/embed/app/14308?data=6ce8873dee032a6d70a7c37c5e9dfd5a863f8de0c3c02d52f9a2dbb4782628cbdad607fe9bbe722aab3f037b3a356ea9da1a921f740a09d62eeac0849482af5b683354d3bd658e951dd7d3f079e5d24b21b9857266d1164cff855ffc8a428ef05e447f405dba397b6252a8c9907eec59ce656246b651b656601dde89b22c533ff65de93ca54cb1536ffca0c3970a2d4e7879758e5dc67bb51f527ca515ceddd8b72ca89eebd018463eb5405f5b4e42e24cf9e76a73fbe76e4a1a33729870eb2c" class="icon-tucao tTips" target="_blank" title="反馈建议"><i class="iconfont icon-comment"></i></a>
                </div>
            </div>
            
            <div class="go-top dn">
                <div class="go-top-wrap">
                    <a href="https://my.qidian.com/bookcase#" class="icon-go-top bTips" title="返回顶部"><i class="iconfont icon-backtop"></i></a>
                </div>
            </div>
        </div>
            <div class="personal-footer">
                <div class="footer-sub">
                    <a href="https://www.yuewen.com/" target="_blank">阅文集团</a>旗下网站：
                    <a href="https://www.qidian.com/" target="_blank" class="mr8">起点中文网</a>
                    <a href="https://www.qdmm.com/" target="_blank" class="mr8">起点女生网</a>
                    <a href="http://chuangshi.qq.com/" target="_blank" class="mr8">创世中文网</a>
                    <a href="http://yunqi.qq.com/" target="_blank" class="mr8">云起书院</a>
                    <a href="https://www.hongxiu.com/" target="_blank" class="mr8">红袖添香</a>
                    <a href="https://www.readnovel.com/" target="_blank" class="mr8">小说阅读网</a>
                    <a href="https://www.xs8.cn/" target="_blank" class="mr8">言情小说吧</a>
                    <a href="https://www.xxsy.net/" target="_blank" class="mr8">潇湘书院</a>
                    <a href="http://www.tingbook.com/" target="_blank" class="mr8">天方听书网</a>
                    <a href="http://www.lrts.me/" target="_blank" class="mr8">懒人听书</a>
                    <a href="http://yuedu.yuewen.com/" target="_blank" class="mr8">阅文悦读</a>
                    <a href="https://www.yuewen.com/app.html" target="_blank" class="mr8">QQ阅读</a>
                    <a href="https://www.yuewen.com/app.html#appqd" target="_blank" class="mr8">起点读书</a>
                    <a href="https://www.yuewen.com/app.html#appzj" target="_blank" class="mr8">作家助手</a>
                    <a href="https://www.webnovel.com/" target="_blank" class="mr8">起点国际版</a>
                </div>
                <div class="footer-menu">
                    <a href="https://www.qidian.com/about/intro" target="_blank">关于起点</a>
                    <a href="https://www.qidian.com/about/contact" target="_blank">联系我们</a>
                    <a href="https://join.book.qq.com/index.html" target="_blank">加入我们</a>
                    <a href="https://www.qidian.com/help/index/2" target="_blank">帮助中心</a>
                    <a href="http://123.206.70.240/online/?cid=0&amp;uid=10&amp;code=QbvvdpcAZCbabf7Ye4tu4g==" class="commitAdvice" target="_blank">提交建议</a>
                    <!-- <a href="//wwwploy.qidian.com/help/about_link.aspx" target="_blank">合作伙伴</a> -->
                    <a href="https://bbs.qidian.com/" target="_blank">起点论坛</a>
                    <!-- <a href="//webgame.qidian.com/jiazhang.html" target="_blank">家长监护工程</a> -->
                </div>
                <div class="footer-copyright">
                    <p>Copyright (C) 2002-2017 www.qidian.com All Rights Reserved 版权所有 </p>
                    <p>上海玄霆娱乐信息科技有限公司 上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2017]0081-031 新出网证(沪)字010 沪ICP备08017520号-1</p>
                    <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                    <p>本站所收录作品、社区话题、书库评论及本站所做之广告均属其个人行为，与本站立场无关</p>
                </div>
            </div>
        <script>
            // 全局的通用数据都放g_data变量里
            var g_data = {};
            // 环境变量，会按照环境选择性打log
            g_data.envType = 'pro' === 'pro' ? '' : 'pro';
            // 调试模式
            g_data.debug = 'false';
            g_data.static = '//qidian.gtimg.com';
            // 域名
            g_data.domains = {"my":"//my.qidian.com","static":"//qidian.gtimg.com","cover":"//qidian.qpic.cn","pay":"//pay.yuewen.com","security":"//aq.yuewen.com","pc":"//www.qidian.com","hiijack":"//book.qidian.com","activity":"//activity.qidian.com","help":"//www.qidian.com"};
            // 用户
            g_data.user = {"isLogin":true,"avatar":"//qidian.gtimg.com/qd/images/ico/default_user.0.2.png","nickName":"书友20171108214447264","userType":0,"userId":310446029,"guid":"1264189544","tucaoUrl":"https://support.qq.com/embed/app/14308?data=6ce8873dee032a6d70a7c37c5e9dfd5a863f8de0c3c02d52f9a2dbb4782628cbdad607fe9bbe722aab3f037b3a356ea9da1a921f740a09d62eeac0849482af5b683354d3bd658e951dd7d3f079e5d24b21b9857266d1164cff855ffc8a428ef05e447f405dba397b6252a8c9907eec59ce656246b651b656601dde89b22c533ff65de93ca54cb1536ffca0c3970a2d4e7879758e5dc67bb51f527ca515ceddd8b72ca89eebd018463eb5405f5b4e42e24cf9e76a73fbe76e4a1a33729870eb2c"};
            // 用作统计PV
            g_data.pageId = 'qd_P_my_bookshelf';
            // 用作判断用户是否登录
            g_data.isLogin = true;
        </script>
        <script data-ignore="true" src="js/LBF.js.下载"></script>
        <script>
            // LBF 配置
            LBF.config({
                paths: {
                    qdp: '//qidian.gtimg.com/qdp',
                    common: '//qidian.gtimg.com/common/1.0.0'
                },
                vars: {
                    theme: '//qidian.gtimg.com/qdp/css',
                },
                combo: true,
                debug: false
            });
            //设置页面常用的一些插件
                LBF.use(['lib.jQuery', 'monitor.SpeedReport', 'qdp/js/common/page/index.0.70.js', 'qdp/js/shelf/index.0.54.js'], function ($, SpeedReport, pageCommon, page) {
                    pageCommon.init();
                    page.init();
                $(window).on('load.speedReport', function () {
                    // speedTimer[onload]
                    speedTimer.push(new Date().getTime());
                    var f1 = 7718; // china reading limited's ID
                    var f2 = 251; // site ID
                    var f3 = 0; // page ID
                    // chrome & IE9 Performance API
                    SpeedReport.reportPerformance({
                        flag1: f1,
                        flag2: f2,
                        flag3IE: f3,
                        flag3Chrome: f3,
                        rate: 0.1
                    });
                    // common speedTimer:['dom ready', 'onload']
                    var speedReport = SpeedReport.create({
                        flag1: f1,
                        flag2: f2,
                        flag3: f3,
                        start: speedZero,
                        rate: 0.1
                    });
                    // chrome & IE9 Performance API range 1~19, common speedTimer use 20+
                    for (var i = 0; i < speedTimer.length; i++) {
                        speedReport.add(speedTimer[i], i + 20);
                    }
                    // http://isdspeed.qq.com/cgi-bin/r.cgi?flag1=7718&flag2=224&flag3=1&1=38&2=38&…
                    speedReport.send();
                });
            });
            // speedTimer[dom ready], put it before </body>
            speedTimer.push(new Date().getTime());
        </script>
        
           <script>
                var _mtac = {"senseQuery":1};
                (function() {
                    var mta = document.createElement("script");
                    mta.src = "js/stats.js?v2.0.4";
                    mta.setAttribute("name", "MTAH5");
                    mta.setAttribute("sid", "500445303");
                    mta.setAttribute("cid", "500446496");
                    var s = document.getElementsByTagName("script")[0];
                    s.parentNode.insertBefore(mta, s);
                })();
            </script>
        


</body>
</html>