<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/4
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="loaded"><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>幻雨新书《厨道仙途》_公告频道_起点中文网</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="robots" content="all">
    <meta name="googlebot" content="all">
    <meta name="baiduspider" content="all">
    <meta http-equiv="mobile-agent" content="format=wml; url=https://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://h5.qidian.com/bookstore.html">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <script>
        document.domain = 'qidian.com';
    </script>
    <script>
        var speedTimer = [],
            speedZero = new Date().getTime();
    </script>
    <script>
        //遇到cookie tf=1的话留在本站，否则跳转移动站
        if (getCookie('tf') != 1) {
            //判断是以下设备后跳转到m站
            if (navigator.userAgent.match(/(iPhone|iPod|Android)/i)) {
                location.href = "//m.qidian.com"
            }
        }else {
            // M站设置了一年，这里fixed
            setCookie('tf', 1, 'qidian.com', '/', 0);
        }
        // start 防劫持
        //设置cookie
        function setCookie(name, value, domain, path, expires) {
            if(expires){
                expires = new Date(+new Date() + expires);
            }
            var tempcookie = name + '=' + escape(value) +
                ((expires) ? '; expires=' + expires.toGMTString() : '') +
                ((path) ? '; path=' + path : '') +
                ((domain) ? '; domain=' + domain : '');
            //Ensure the cookie's size is under the limitation
            if(tempcookie.length < 4096) {
                document.cookie = tempcookie;
            }
        }
        //获取cookie
        function getCookie(name) {
            var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
            if (arr = document.cookie.match(reg))
                return (arr[2]);
            else
                return null;
        }
        //创建并发送请求
        function createSender(url){
            var img = new Image();
            img.onload = img.onerror = function(){
                img = null;
            };
            img.src = url;
        };
    </script>

    <link data-ignore="true" rel="shortcut icon" type="image/x-icon" href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">
    <link data-ignore="true" rel="Bookmark" type="image/x-icon" href="https://qidian.gtimg.com/qd/favicon/qd_icon.fb0b7.ico">



    <link rel="stylesheet" data-ignore="true" href="css/footer.css">

    <link charset="utf-8" rel="stylesheet" href="css/Dropdown.css"><link charset="utf-8" rel="stylesheet" href="css/Popup.css"></head>
<body data-dynamic="true">
<div class="share-img">
    <img src="img/share.png" width="300" height="300">
</div>

<div class="wrap">

    <div id="pin-nav" class="pin-nav-wrap need-search" data-l1="40">
        <div class="box-center cf">
            <div class="nav-list site-nav fl">
                <ul>
                    <li class="site"><a class="pin-logo" href="https://www.qidian.com/" data-eid="qd_A43"><span></span></a>
                        <div class="dropdown">
                            <a href="https://www.qdmm.com/" target="" data-eid="qd_A44">起点女生网</a>
                            <a href="http://chuangshi.qq.com/" target="" data-eid="qd_A45">创世中文网</a>
                            <a href="http://yunqi.qq.com/" target="" data-eid="qd_A46">云起书院</a>
                        </div>
                    </li>
                    <li><a href="https://www.qidian.com/xuanhuan" target="" data-eid="qd_A47">玄幻</a></li>
                    <li class=""><a href="https://www.qidian.com/dushi" target="" data-eid="qd_A48">都市</a></li>
                    <li class=""><a href="https://www.qidian.com/xianxia" target="" data-eid="qd_A49">仙侠</a></li>
                    <li class=""><a href="https://www.qidian.com/kehuan" target="" data-eid="qd_A50">科幻</a></li>
                    <li class=""><a href="https://www.qidian.com/youxi" target="" data-eid="qd_A56">游戏</a></li>
                    <li><a href="https://www.qidian.com/lishi" target="" data-eid="qd_A52">历史</a></li>
                    <li><a href="https://www.qidian.com/rank" target="_blank" data-eid="qd_A53">排行</a></li>
                    <li class="more"><a href="javascript:" id="top-nav-more" target="" data-eid="qd_A54">更多<span></span></a>
                        <div class="dropdown">
                            <a href="https://www.qidian.com/all" target="_blank" data-eid="qd_A169">全部作品</a>
                            <a href="https://www.qidian.com/2cy" target="" data-eid="qd_A55">二次元</a>
                            <a href="https://www.qidian.com/qihuan" target="" data-eid="qd_A51">奇幻</a>
                            <a href="https://www.qidian.com/wuxia" target="" data-eid="qd_A57">武侠</a>
                            <a href="https://www.qidian.com/lingyi" target="" data-eid="qd_A58">灵异</a>
                            <a href="https://www.qidian.com/junshi" target="" data-eid="qd_A59">军事</a>
                            <a href="https://www.qidian.com/xianshi" target="" data-eid="qd_A60">现实</a>
                            <a href="https://www.qidian.com/tiyu" target="" data-eid="qd_A61">体育</a>
                            <a href="https://www.qidian.com/duanpian" target="" data-eid="qd_A196">短篇</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="nav-list min-user fr">
                <ul>
                    <li id="min-search">
                        <form id="formUrl" action="//www.qidian.com/search" method="get" target="_blank">
                            <label id="pin-search" for="topSearchSubmit" data-eid="qd_A62"><em class="iconfont"></em>
                            </label>
                            <input id="pin-input" class="pin-input hide" name="kw" placeholder="大道朝天" type="text">
                            <input class="submit-input" id="topSearchSubmit" data-eid="qd_A62" type="submit">
                        </form>
                    </li>
                    <li class="line"></li>
                    <li class="sign-out">
                        <a id="pin-login" href="javascript:" data-eid="qd_A64">登录</a>
                        <a class="reg" href="https://passport.qidian.com/reg.html?appid=10&amp;areaid=1&amp;target=iframe&amp;ticket=1&amp;auto=1&amp;autotime=30&amp;returnUrl=https%3A%2F%2Fwww.qidian.com" target="_blank">注册</a>
                    </li>
                    <li class="sign-in hidden">
                        <a href="https://me.qidian.com/Index.aspx" target="_blank" data-eid="qd_A65"><i id="nav-user-name"></i><span></span></a>
                        <div class="dropdown">
                            <a href="https://me.qidian.com/msg/lists.aspx?page=1" target="_blank" data-eid="qd_A66">消息(<i id="top-msg">0</i>)</a>
                            <a href="https://www.qidian.com/charge/meRedirect" target="_blank" data-eid="qd_A67">充值</a>
                            <a href="https://me.qidian.com/Index.aspx" target="_blank" data-eid="qd_A68">个人中心</a>
                            <a href="https://www.qidian.com/help/kf" target="_blank" data-eid="qd_A69">客服中心</a>
                            <a id="exit" href="javascript:" data-eid="qd_A70">退出</a>
                        </div>
                    </li>
                    <li class="line"></li>
                    <li class="book-shelf" id="top-book-shelf">
                        <a href="https://me.qidian.com/bookCase/bookCase.aspx" target="_blank" data-eid="qd_A63"><em class="iconfont"></em><i>我的书架
                        </i></a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="box-center news detail">
        <div class="bread">
            <span><a href="http:localhost:8081/novelwork/" target="_blank">首页</a></span> &gt; <span><a href="http://localhost:8082/novelwork/newslist" target="_blank">新闻频道</a></span> &gt; <span>新闻详情</span>
        </div>
        <div class="news-cot cf">
            <div class="lc fl">
                <div class="detail-box">
                    <h1>${news.title}</h1>
                    <div class="time"><em class="iconfont"></em>${format.format(news.created)}</div>
                    <div class="content">
                        <p><strong>内容详情</strong></p>
                        ${news.context}
                    </div>
                </div>
            </div>
            <div class="rc fr">
                <div class="hot">
                    <h3 class="wrap-title lang">相关动态<span><a class="blue" target="_blank" href="https://www.qidian.com/news/index">更多动态&gt;</a></span></h3>
                    <ul>

                        <li>
                            <a href="http://www.qidian.com/news/detail/724367304" target="_blank"><i>「</i>资讯<i>」</i>陈风笑新书火热来袭！</a>
                        </li>

                        <li>
                            <a href="http://www.qidian.com/news/detail/306988302" target="_blank"><i>「</i>公告<i>」</i>书评打赏补偿公告</a>
                        </li>

                        <li>
                            <a href="http://www.qidian.com/news/detail/515346276" target="_blank"><i>「</i>公告<i>」</i>双倍月票嗨翻黄金周</a>
                        </li>

                        <li>
                            <a href="http://www.qidian.com/news/detail/301050280" target="_blank"><i>「</i>公告<i>」</i>10月7日 情缘难舍</a>
                        </li>

                        <li>
                            <a href="http://www.qidian.com/news/detail/818874293" target="_blank"><i>「</i>资讯<i>」</i>25日国民老公来袭</a>
                        </li>

                    </ul>
                </div>
                <div class="other-rec-wrap cot">
                    <h3 class="wrap-title lang">本周强推</h3>
                    <ul>

                        <li>
                            <div class="img-box">
                                <a href="https://book.qidian.com/info/1010361147" target="_blank"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/180_004.jpg"></a>
                            </div>
                            <div class="book-info">
                                <h4><a href="https://book.qidian.com/info/1010361147" target="_blank">墨唐</a></h4>
                                <p class="author"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/user.png"><a href="https://me.qidian.com/authorIndex.aspx?id=3444673" target="_blank">将臣一怒</a></p>
                                <p class="intro">一个当代宅男穿越到初唐一个墨家子弟身上，就像</p>
                            </div>
                        </li>

                        <li>
                            <div class="img-box">
                                <a href="https://book.qidian.com/info/1010739099" target="_blank"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/180_003.jpg"></a>
                            </div>
                            <div class="book-info">
                                <h4><a href="https://book.qidian.com/info/1010739099" target="_blank">西游地图</a></h4>
                                <p class="author"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/user.png"><a href="https://me.qidian.com/authorIndex.aspx?id=4005250" target="_blank">小城古道</a></p>
                                <p class="intro">某日，大二学生陈玄，意外下载了一个名为“西游</p>
                            </div>
                        </li>

                        <li>
                            <div class="img-box">
                                <a href="https://book.qidian.com/info/1010587404" target="_blank"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/180_002.jpg"></a>
                            </div>
                            <div class="book-info">
                                <h4><a href="https://book.qidian.com/info/1010587404" target="_blank">霸武神王</a></h4>
                                <p class="author"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/user.png"><a href="https://me.qidian.com/authorIndex.aspx?id=4362615" target="_blank">乌山云雨</a></p>
                                <p class="intro">快递小哥穿越异世，开启神秘镖局系统。板砖扬威</p>
                            </div>
                        </li>

                        <li>
                            <div class="img-box">
                                <a href="https://book.qidian.com/info/1004952551" target="_blank"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/180_005.jpg"></a>
                            </div>
                            <div class="book-info">
                                <h4><a href="https://book.qidian.com/info/1004952551" target="_blank">邪恶后裔</a></h4>
                                <p class="author"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/user.png"><a href="https://me.qidian.com/authorIndex.aspx?id=9073846" target="_blank">点灯的瞎子</a></p>
                                <p class="intro">重生成恶魔，游走于万千位面，随手播下邪恶的种</p>
                            </div>
                        </li>

                        <li>
                            <div class="img-box">
                                <a href="https://book.qidian.com/info/1010702296" target="_blank"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/180_006.jpg"></a>
                            </div>
                            <div class="book-info">
                                <h4><a href="https://book.qidian.com/info/1010702296" target="_blank">僵尸的女仆</a></h4>
                                <p class="author"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/user.png"><a href="https://me.qidian.com/authorIndex.aspx?id=3870898" target="_blank">陶良辰</a></p>
                                <p class="intro">颠覆传统僵尸形象的都市魔幻新作，关于僵尸，其</p>
                            </div>
                        </li>

                        <li>
                            <div class="img-box">
                                <a href="https://book.qidian.com/info/1010695687" target="_blank"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/180.jpg"></a>
                            </div>
                            <div class="book-info">
                                <h4><a href="https://book.qidian.com/info/1010695687" target="_blank">超级神掠夺</a></h4>
                                <p class="author"><img src="%E5%B9%BB%E9%9B%A8%E6%96%B0%E4%B9%A6%E3%80%8A%E5%8E%A8%E9%81%93%E4%BB%99%E9%80%94%E3%80%8B_%E5%85%AC%E5%91%8A%E9%A2%91%E9%81%93_%E8%B5%B7%E7%82%B9%E4%B8%AD%E6%96%87%E7%BD%91_files/user.png"><a href="https://me.qidian.com/authorIndex.aspx?id=11846145" target="_blank">奇燃</a></p>
                                <p class="intro">大掠夺系统启动成功：“叮~宿主对天玄道宗圣女</p>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="box-center cf">
            <div class="friend-link">
                <em><a class="yuewen" href="https://www.yuewen.com/" target="_blank">阅文集团</a><cite>旗下网站：</cite></em>
                <a href="https://www.qidian.com/">起点中文网</a>
                <a href="https://www.qdmm.com/" target="_blank">起点女生网</a>
                <a href="http://chuangshi.qq.com/" target="_blank">创世中文网</a>
                <a href="http://yunqi.qq.com/" target="_blank">云起书院</a>
                <!--<a href="http://www.rongshuxia.com" target="_blank">榕树下</a>-->
                <a href="https://www.hongxiu.com/" target="_blank">红袖添香</a>
                <a href="https://www.readnovel.com/" target="_blank">小说阅读网</a>
                <a href="https://www.xs8.cn/" target="_blank">言情小说吧</a>
                <a href="http://www.xxsy.net/" target="_blank">潇湘书院</a>
                <a href="http://www.tingbook.com/" target="_blank">天方听书网</a>
                <a href="http://www.lrts.me/" target="_blank">懒人听书</a>
                <a href="http://yuedu.yuewen.com/" target="_blank">阅文悦读</a>
                <a href="https://www.yuewen.com/app.html#appqq" target="_blank">QQ阅读</a>
                <a href="https://www.yuewen.com/app.html#appqd" target="_blank">起点读书</a>
                <a href="https://www.yuewen.com/app.html#appzj" target="_blank">作家助手</a>
                <a href="https://www.webnovel.com/" target="_blank" title="Qidian International">起点国际版</a>
            </div>
            <div class="footer-menu dib-wrap">
                <a href="https://www.qidian.com/about/intro" target="_blank">关于起点</a>
                <a href="https://www.qidian.com/about/contact" target="_blank">联系我们</a>
                <a href="https://join.yuewen.com/" target="_blank">加入我们</a>
                <a href="https://www.qidian.com/help/index/2" target="_blank">帮助中心</a>
                <a href="http://123.206.70.240/online/?cid=0&amp;uid=10&amp;code=0" class="advice" target="_blank">提交建议</a>
                <!--<a href="http://bbs.qidian.com" target="_blank">起点论坛</a>-->
                <a href="http://comic.qidian.com/" target="_blank">动漫频道</a>
                <a href="https://jubao.yuewen.com/" target="_blank">举报中心</a>
            </div>
            <div class="copy-right">
                <p><span>Copyright © 2002-2017 www.qidian.com All Rights Reserved</span>版权所有 上海玄霆娱乐信息科技有限公司</p>
                <p>上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2015]0081-031 新出网证（沪）字010 沪ICP备08017520号-1</p>
                <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！举报电话：010-59357051</p>
                <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
                <p>联系方式 总机 021-61870500 地址：中国（上海）自由贸易试验区碧波路690号6号楼101、201室</p>
            </div>

        </div>
    </div>

</div>
<script>
    // 全局的通用数据都放g_data变量里h
    var g_data = {};
    // 环境变量，会按照环境选择性打log
    g_data.envType = 'pro';
    // 用作统计PV
    g_data.pageId = 'qd_P_news';
    // 当前页面路由
    g_data.domain = '//news.qidian.com';
    // 查询环境变量
    g_data.domainSearch = 'www.qidian.com/search';
</script>
<script data-ignore="true" src="js/LBF.js"></script>
<script>
    // LBF 配置

    LBF.config({"paths":{"site":"//qidian.gtimg.com/qd/js","qd":"//qidian.gtimg.com/qd","common":"//qidian.gtimg.com/common/1.0.0"},"vars":{"theme":"//qidian.gtimg.com/qd/css"},"combo":true,"debug":false});

    LBF.use(['lib.jQuery'], function ($) {
        window.$ = $;
    });
</script>
<script>
    LBF.use(['monitor.SpeedReport', 'qd/js/component/login.a4de6.js',
        'qd/js/index/news.3997c.js' ], function (SpeedReport, Login, Index) {
        // 页面逻辑入口
        if(Login){
            Login.init().always(function(){
                Index && typeof Index === 'function' && new Index();
            })
        }
        if(219 && 219 != ''){
            $(window).on('load.speedReport', function () {
                // speedTimer[onload]
                speedTimer.push(new Date().getTime());
                var f1 = 7718, // china reading limited's ID
                    f2 = 219, // site ID
                    f3 = 31; // page ID
                // chrome & IE9 Performance API
                SpeedReport.reportPerformance({
                    flag1: f1,
                    flag2: f2,
                    flag3IE: f3,
                    flag3Chrome: f3,
                    rate:0.1,
                    url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
                });
                // common speedTimer:['dom ready', 'onload']
                var speedReport = SpeedReport.create({
                    flag1: f1,
                    flag2: f2,
                    flag3: f3,
                    start: speedZero,
                    rate:0.1,
                    url: '//isdspeed.qidian.com/cgi-bin/r.cgi'
                });
                // chrome & IE9 Performance API range 1~19, common
                speedTimer use 20+
                for (var i = 0; i < speedTimer.length; i++) {
                    speedReport.add(speedTimer[i], i + 20)
                }
                //
                http://isdspeed.qq.com/cgi-bin/r.cgi?flag1=7718&flag2=224&flag3=1&1=38&2=38&…

                    speedReport.send();
            })
        }
    });
    speedTimer.push(new Date().getTime());
</script>



</body></html>

</body>
</html>
