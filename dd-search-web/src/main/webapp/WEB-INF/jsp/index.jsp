<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>全部作品_千锋纵横小说网</title>
    <meta name="description" content="小说阅读,精彩小说尽在千锋中文网. 千锋中文网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
    <meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学">
    <meta name="robots" content="all">
    <meta name="googlebot" content="all">
    <meta name="baiduspider" content="all">
    <meta http-equiv="mobile-agent" content="format=wml; url=https://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.qidian.com">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://h5.qidian.com/bookstore.html">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <script src="js/stats.js" name="MTAH5" sid="500451537"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
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



    <link rel="stylesheet" data-ignore="true" href="css/Button.css">


    <link charset="utf-8" rel="stylesheet" href="css/Autocomplete.css"><link charset="utf-8" rel="stylesheet" href="css/Dropdown.css"><link charset="utf-8" rel="stylesheet" href="css/Popup.css"></head>
<body style="/*background-color:pink;*/">
<div class="share-img">
    <img src="img/share.png" width="300" height="300">
</div>

<div class="wrap">
    <div class="top-nav" data-l1="1">
        <div class="box-center cf">
            <div class="login-box fr">
                <div class="sign-in hidden">
                    <span>你好，</span><a class="black" id="user-name" href="https://me.qidian.com/" target="_blank" data-eid="qd_A08"></a><em>|</em><a class="black" id="msg-btn" href="https://me.qidian.com/msg/systems.aspx?page=1" target="_blank" data-eid="qd_A09">消息<cite id="msg-box">(<i></i>)</cite></a><em>|</em><a id="exit-btn" href="javascript:" data-eid="qd_A10">退出</a>
                </div>
                <div class="sign-out">
                    <a id="login-btn" class="black" href="javascript:" data-eid="qd_A06">登录</a><em>|</em><a id="reg-btn" href="https://passport.qidian.com/reg.html?appid=10&amp;areaid=1&amp;target=iframe&amp;ticket=1&amp;auto=1&amp;autotime=30&amp;returnUrl=https%3A%2F%2Fwww.qidian.com" target="_blank" data-eid="qd_A07">注册</a>
                </div>
            </div>
            <div class="nav-link fl">
                <a class="act" href="https://www.qidian.com/" data-eid="qd_A01">千锋中文网</a>
                <a href="https://www.qdmm.com/" target="_blank" data-eid="qd_A02">千锋女生网</a><em>|</em>
                <a href="http://chuangshi.qq.com/" target="_blank" data-eid="qd_A03">创世中文网</a><em>|</em>
                <a href="http://yunqi.qq.com/" target="_blank" data-eid="qd_A04">云起书院</a><em>|</em>

                <a href="javascript:" id="switchEl" data-eid="qd_A182">繁体版</a>
                <!--<em>|</em>
                <a class="black" id="back-old" href="javascript:" data-eid="qd_A05">返回旧版</a>-->
            </div>
        </div>
    </div>

    <div class="top-op-box" id="j-topOpBox"><!-- start 顶部随机广告 -->

        <div class="top-game-op" id="topGameOp" data-l1="34" style="display: block;">
            <div class="game-wrap">
                <a class="close" id="closeTopGame" href="javascript:" data-eid="qd_A184"><em class="iconfont"></em></a>
                <a href="http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/mxsj/way/1?qd_game_key=mxsj1200x60&amp;qd_dd_p1=1833" target="_blank" data-eid="qd_B83" data-qd_dd_p1="1"><img src="img/0_005.jpg"><span class="op-tag"></span></a>
            </div>
        </div>

        <!-- end 顶部随机广告 --></div>

    <div class="logo-wrap box-center" data-l1="2">
        <div class="box-center cf">
            <div class="book-shelf fr">
                <a href="https://me.qidian.com/bookCase/bookCase.aspx?caseId=-2" target="_blank" data-eid="qd_A14"><em class="iconfont shelf"></em><i>我的书架</i>
                </a>
            </div>
            <div class="logo fl">
                <a href="${pageContext.request.contextPath}/" >
                    <img src="img/logo-qf.png">
                </a>
            </div>
            <div class="search-wrap fl">
                <form id="formUrl" action="" method="get" target="_blank">
                    <p>
                        <c:if test="${query!='*:*'}">
                            <input value="${query}" class="search-box" onkeydown="javascript:if(event.keyCode==13) submit;"
                                   id="s-box" name="keyword" placeholder="异世界的美食家" autocomplete="off" type="text">

                        </c:if>
                        <c:if test="${query=='*:*'}">
                            <input value="" class="search-box" onkeydown="javascript:if(event.keyCode==13) submit;"
                                   id="s-box" name="keyword" placeholder="异世界的美食家" autocomplete="off" type="text">

                        </c:if></p>
                    <input class="submit-input" id="searchSubmit" data-eid="qd_A13" type="submit">
                    <label id="search-btn" class="search-btn" for="searchSubmit"><em class="iconfont" data-eid="qd_A13">
                        </em></label>
                </form>
            </div>
        </div>
    </div>



    <div class="main-nav-wrap" data-l1="3">
        <div class="main-nav box-center cf" id="type-hover">
            <div class="classify-list fl so-awesome" id="classify-list" data-l1="3" style="display: none;">
                <dl>
                    <dd>
                        <a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_A71">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>玄幻</i>
                                        <b>611188</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd>
                        <a href="https://www.qidian.com/qihuan" target="_blank" data-eid="qd_A72">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>奇幻
                                        </i>
                                        <b>131648</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd class="even">
                        <a href="https://www.qidian.com/wuxia" target="_blank" data-eid="qd_A73">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>武侠</i>
                                        <b>36145</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd class="even">
                        <a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_A74">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>仙侠</i>
                                        <b>208661</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd>
                        <a href="https://www.qidian.com/dushi" target="_blank" data-eid="qd_A75">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>都市</i>
                                        <b>331751</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd>
                        <a href="https://www.qidian.com/xianshi" target="_blank" data-eid="qd_A76">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>现实</i>
                                        <b>14540</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd class="even">
                        <a href="https://www.qidian.com/junshi" target="_blank" data-eid="qd_A77">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>军事</i>
                                        <b>18387</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd class="even">
                        <a href="https://www.qidian.com/lishi" target="_blank" data-eid="qd_A78">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>历史</i>
                                        <b>70544</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd>
                        <a href="https://www.qidian.com/youxi" target="_blank" data-eid="qd_A79">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>游戏</i>
                                        <b>94758</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd>
                        <a href="https://www.qidian.com/tiyu" target="_blank" data-eid="qd_A80">
                            <cite>
                                <em class="iconfont tiyu"></em>
                                <span class="info">
                                        <i>体育</i>
                                        <b>9107</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd class="even">
                        <a href="https://www.qidian.com/kehuan" target="_blank" data-eid="qd_A81">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>科幻</i>
                                        <b>130166</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd class="even">
                        <a href="https://www.qidian.com/lingyi" target="_blank" data-eid="qd_A82">
                            <cite>
                                <em class="iconfont lingyi"></em>
                                <span class="info">
                                        <i>灵异</i>
                                        <b>52561</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd>
                        <a href="https://www.qdmm.com/" target="_blank" data-eid="qd_A83">
                            <cite>
                                <em class="iconfont"></em>
                                <span class="info">
                                        <i>女生网</i>
                                        <b>619726</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                    <dd>
                        <a href="https://www.qidian.com/2cy" target="_blank" data-eid="qd_A84">
                            <cite>
                                <em class="iconfont erciyuan"></em>
                                <span class="info">
                                        <i>二次元</i>
                                        <b>88657</b>
                                    </span>
                            </cite>
                        </a>
                    </dd>
                </dl>
            </div>

            <ul>
                <li class="first"><b><strong></strong></b><span><em>
                <i></i>
                <i></i>
                <i></i>
            </em>作品分类</span>
                </li>
                <li class="nav-li"><a href="?page=1" data-eid="qd_A15" class="act">全部作品</a></li>
                <li class="nav-li"><a href="https://www.qidian.com/rank" data-eid="qd_A16">排行</a></li>
                <li class="nav-li"><a href="https://www.qidian.com/finish" data-eid="qd_A17">完本</a></li>
                <li class="nav-li"><a href="https://www.qidian.com/free" data-eid="qd_A18">免费</a></li>
                <li class="nav-li"><a href="https://write.qq.com/public/login.html" target="_blank" data-eid="qd_A19">作家专区</a>
                </li>
                <li class="nav-li"><a href="https://www.yuewen.com/app.html#appqd" target="_blank" data-eid="qd_A20"><b class="iconfont client"></b>客户端</a>
                </li>
                <li class="game phone" id="game-phone">
                    <a class="phone-game" href="http://sy.qidian.com/" target="_blank" data-eid="qd_A22"><b class="iconfont webgame">
                        </b>手游</a>
                    <div class="game-dropdown hidden" id="phone-dropdown">
                        <cite></cite>
                        <dl class="phone-list">

                            <dd>
                                <h3>

                                    <a href="" data-eid="qd_A39" target="_blank">三国如龙传</a><i>回合破局 幻想三国</i></h3>
                                <p><a href="http://collect.game.qidian.com/Home/Stat/Index?gourl=aHR0cDovL3N5LnFpZGlhbi5jb20vSG9tZS9QYy9JbmRleC9kZXRhaWwvZ2FtZWlkLzIwMDY4OQ==&amp;code=5733ed85f2cd0" target="_blank" data-eid="qd_A39"><img src="img/0_010.jpg"><i class="op-tag"></i></a></p>
                            </dd>

                            <dd>
                                <h3>

                                    <a href="" data-eid="qd_A40" target="_blank">武娘外传</a><i>萌妹与你携手闯天涯</i></h3>
                                <p><a href="http://collect.game.qidian.com/Home/Stat/Index?gourl=aHR0cDovL3N5LnFpZGlhbi5jb20vSG9tZS9QYy9JbmRleC9kZXRhaWwvZ2FtZWlkLzIwMDY4NA==&amp;code=5733edc4a3435" target="_blank" data-eid="qd_A40"><img src="img/0_011.jpg"><i class="op-tag"></i></a></p>
                            </dd>

                            <dd>
                                <h3>

                                    <a href="" data-eid="qd_A41" target="_blank">三国群将传</a><i>天下名将 尽在掌控</i></h3>
                                <p><a href="http://collect.game.qidian.com/Home/Stat/Index?gourl=aHR0cDovL3N5LnFpZGlhbi5jb20vSG9tZS9QYy9JbmRleC9kZXRhaWwvZ2FtZWlkLzIwMDY4Ng==&amp;code=5769f94031529" target="_blank" data-eid="qd_A41"><img src="img/0_008.jpg"><i class="op-tag"></i></a></p>
                            </dd>

                        </dl>
                        <div class="bottom">
                            <h4>新游上线|猎场</h4>
                            <p><a href="http://sy.qidian.com/Home/Pc/Index/detail/gameid/200685?qd_game_key=192x86&amp;qd_dd_p1=3416" data-eid="qd_A42" target="_blank"><img src="img/0_003.jpg" alt=""><i class="op-tag"></i></a></p>
                        </div>
                    </div>
                </li>
                <li class="game web" id="game-web">
                    <a class="web-game" href="http://game.qidian.com/" target="_blank" data-eid="qd_A21"><b class="iconfont">
                        </b>页游</a>
                    <div class="game-dropdown hidden" id="web-dropdown">
                        <cite></cite>
                        <div class="web-game-list">
                            <dl class="lately" id="lately">
                                <dt>最近玩过</dt>
                                <dd data-rid="1"><a class="name" href="javascript:" target="_blank" data-eid="qd_A29"></a><strong></strong><a class="link" href="javascript:" target="_blank" data-eid="qd_A29">GO<i>&gt;</i></a></dd>
                                <dd data-rid="2"><a class="name" href="javascript:" target="_blank" data-eid="qd_A30"></a><strong></strong><a class="link" href="javascript:" target="_blank" data-eid="qd_A30">GO<i>&gt;</i></a></dd>
                            </dl>
                            <dl class="web-list" id="log-web-list">
                                <dt>今日开服</dt>
                                <dd class="act" data-rid="1">
                                    <h3>

                                        <span></span>

                                        <i>11-23</i><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=mxsj" data-eid="qd_A31" target="_blank">冒险世界</a><strong>9区</strong></h3>
                                    <p><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=mxsj" data-eid="qd_A31" target="_blank"><img src="img/0_009.jpg"><i class="op-tag"></i></a></p>
                                </dd>

                                <dd data-rid="2">
                                    <h3>

                                        <span></span>

                                        <i>11-23</i><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=gs" data-eid="qd_A32" target="_blank">攻沙</a><strong>31区</strong></h3>
                                    <p><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=gs" data-eid="qd_A32" target="_blank"><img src="img/0_012.jpg"><i class="op-tag"></i></a></p>
                                </dd>

                                <dd data-rid="3">
                                    <h3>

                                        <span></span>

                                        <i>11-23</i><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sgqxz" data-eid="qd_A33" target="_blank">三国群雄传</a><strong>34区</strong></h3>
                                    <p><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sgqxz" data-eid="qd_A33" target="_blank"><img src="/0_006.jpg"><i class="op-tag"></i></a></p>
                                </dd>

                                <dd data-rid="4">
                                    <h3>

                                        <span></span>

                                        <i>11-23</i><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=jyyx" data-eid="qd_A34" target="_blank">锦衣夜行</a><strong>38区</strong></h3>
                                    <p><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=jyyx" data-eid="qd_A34" target="_blank"><img src="img/0_002.jpg"><i class="op-tag"></i></a></p>
                                </dd>

                                <dd data-rid="5">
                                    <h3>

                                        <span></span>

                                        <i>11-22</i><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sdyxz" data-eid="qd_A35" target="_blank">射雕英雄传</a><strong>15区</strong></h3>
                                    <p><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=sdyxz" data-eid="qd_A35" target="_blank"><img src="img/0_004.jpg"><i class="op-tag"></i></a></p>
                                </dd>

                                <dd data-rid="6">
                                    <h3>

                                        <span></span>

                                        <i>11-22</i><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=my" data-eid="qd_A36" target="_blank">千锋魔域永恒</a><strong>7区</strong></h3>
                                    <p><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=my" data-eid="qd_A36" target="_blank"><img src="img/0_007.jpg"><i class="op-tag"></i></a></p>
                                </dd>

                                <dd data-rid="7">
                                    <h3>

                                        <span></span>

                                        <i>11-22</i><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=rxsg3" data-eid="qd_A37" target="_blank">热血三国3</a><strong>61区</strong></h3>
                                    <p><a href="http://cpgame.qd.game.qidian.com/Home/GameServer/lists?name=rxsg3" data-eid="qd_A37" target="_blank"><img src="img/0.jpg"><i class="op-tag"></i></a></p>
                                </dd>

                            </dl>
                            <div class="bottom">
                                <h4>悬赏</h4>
                                <p><a href="http://xs.game.qidian.com/?qd_game_key=xs192x86&amp;qd_dd_p1=124" data-eid="qd_A38" target="_blank"><img src="img/0.gif"><span class="op-tag"></span></a></p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="all-pro-wrap box-center cf">
        <div class="range-sidebar fl" data-l1="4">
            <div class="site" data-l2="1">
                <a class="act" data-eid="qd_B84" href="javascript:">男生</a><a href="https://www.qidian.com/mm/all" target="_blank" data-eid="qd_B15">女生</a>

                <a href="https://www.qidian.com/all_pub" data-eid="qd_B85">出版</a>

            </div>
            <div class="selected" data-l2="2">
                <p><span>已选</span>


                    <a class="all" href="javascript:" type="all">全部</a>

                </p></div>

            <div class="select-list">
                <div class="work-filter type-filter" data-l2="3">
                    <h3>分类</h3>
                    <ul class="row-1" type="category">

                        <li data-id="-1" class="act arrow"><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B17">全部</a></li>

                        <li data-id="21" class=""><a href="https://www.qidian.com/all?chanId=21&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B18">玄幻<cite><i></i></cite></a></li>

                        <li data-id="1" class=""><a href="https://www.qidian.com/all?chanId=1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B19">奇幻<cite><i></i></cite></a></li>

                        <li data-id="2" class=""><a href="https://www.qidian.com/all?chanId=2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B20">武侠<cite><i></i></cite></a></li>

                        <li data-id="22" class=""><a href="https://www.qidian.com/all?chanId=22&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B21">仙侠<cite><i></i></cite></a></li>

                    </ul>

                    <div class="sub-type"><dl class="hidden">

                        <dd data-subtype="8" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">东方玄幻</a></dd>

                        <dd data-subtype="73" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=73&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">异世大陆</a></dd>

                        <dd data-subtype="58" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=58&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">王朝争霸</a></dd>

                        <dd data-subtype="78" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=78&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">高武世界</a></dd>

                    </dl>

                        <dl class="">

                            <dd data-subtype="38" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=38&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">现代魔法</a></dd>

                            <dd data-subtype="62" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=62&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">剑与魔法</a></dd>

                            <dd data-subtype="201" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=201&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">史诗奇幻</a></dd>

                            <dd data-subtype="202" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=202&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">黑暗幻想</a></dd>

                            <dd data-subtype="20092" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=20092&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">历史神话</a></dd>

                            <dd data-subtype="20093" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=20093&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">另类幻想</a></dd>

                        </dl>

                        <dl class="hidden">

                            <dd data-subtype="5" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">传统武侠</a></dd>

                            <dd data-subtype="30" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=30&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">武侠幻想</a></dd>

                            <dd data-subtype="206" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=206&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">国术无双</a></dd>

                            <dd data-subtype="20099" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=20099&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">古武未来</a></dd>

                            <dd data-subtype="20100" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=20100&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">武侠同人</a></dd>

                        </dl>

                        <dl class="hidden">

                            <dd data-subtype="18" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=18&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">修真文明</a></dd>

                            <dd data-subtype="44" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=44&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">幻想修仙</a></dd>

                            <dd data-subtype="64" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=64&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">现代修真</a></dd>

                            <dd data-subtype="207" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=207&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">神话修真</a></dd>

                            <dd data-subtype="20101" class=""><a href="//www.qidian.com/all?chanId=1&amp;subCateId=20101&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">古典仙侠</a></dd>

                        </dl></div>

                    <ul class="row-2" type="category">

                        <li data-id="4" class=""><a href="https://www.qidian.com/all?chanId=4&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B22">都市<cite><i></i></cite></a></li>

                        <li data-id="15" class=""><a href="https://www.qidian.com/all?chanId=15&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B23">现实<cite><i></i></cite></a></li>

                        <li data-id="6" class=""><a href="https://www.qidian.com/all?chanId=6&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B24">军事<cite><i></i></cite></a></li>

                        <li data-id="5" class=""><a href="https://www.qidian.com/all?chanId=5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B25">历史<cite><i></i></cite></a></li>

                        <li data-id="7" class=""><a href="https://www.qidian.com/all?chanId=7&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B26">游戏<cite><i></i></cite></a></li>

                    </ul>

                    <ul class="row-3" type="category">

                        <li data-id="8" class=""><a href="https://www.qidian.com/all?chanId=8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B27">体育<cite><i></i></cite></a></li>

                        <li data-id="9" class=""><a href="https://www.qidian.com/all?chanId=9&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B28">科幻<cite><i></i></cite></a></li>

                        <li data-id="10" class=""><a href="https://www.qidian.com/all?chanId=10&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B29">灵异<cite><i></i></cite></a></li>

                        <li data-id="12" class=""><a href="https://www.qidian.com/all?chanId=12&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B30">二次元<cite><i></i></cite></a></li>

                        <li data-id="20076" class=""><a href="https://www.qidian.com/all?chanId=20076&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B70">短篇<cite><i></i></cite></a></li>

                    </ul>

                </div>

                <div class="work-filter action-filter" data-l2="4">

                    <h3>状态</h3>
                    <ul type="action">

                        <li data-id="-1" class="act"><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B31">全部</a></li>

                        <li data-id="0" class=""><a href="https://www.qidian.com/all?action=0&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B32">连载</a></li>

                        <li data-id="1" class=""><a href="https://www.qidian.com/all?action=1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B33">完本</a></li>

                    </ul>
                </div>



                <div class="work-filter vip-filter" data-l2="5">
                    <h3>属性</h3>
                    <ul type="vip">

                        <li data-id="-1" class="act"><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B34">全部</a></li>

                        <li data-id="0" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;vip=0&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B35">免费</a></li>

                        <li data-id="1" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;vip=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B36">VIP</a></li>

                    </ul>
                </div>

                <div class="work-filter" data-l2="6">

                    <h3>字数</h3>
                    <ul type="size">

                        <li data-id="-1" class="act"><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B37">全部</a></li>

                        <li data-id="1" class=""><a href="https://www.qidian.com/all?size=1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B38">30万字以下</a></li>

                        <li data-id="2" class=""><a href="https://www.qidian.com/all?size=2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B39">30-50万字</a></li>

                        <li data-id="3" class=""><a href="https://www.qidian.com/all?size=3&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B40">50-100万字</a></li>

                        <li data-id="4" class=""><a href="https://www.qidian.com/all?size=4&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B41">100-200万字</a></li>

                        <li data-id="5" class=""><a href="https://www.qidian.com/all?size=5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B42">200万字以上</a></li>

                    </ul>
                </div>
                <div class="work-filter" data-l2="7">

                    <h3>品质</h3>
                    <ul type="sign">

                        <li data-id="-1" class="act"><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B43">全部</a></li>

                        <li data-id="1" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;sign=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B44">签约作品</a></li>

                        <li data-id="2" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;sign=2&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B45">精品小说</a></li>

                    </ul>
                </div>
                <div class="work-filter" data-l2="9">

                    <h3>更新时间</h3>
                    <ul type="update">

                        <li data-id="-1" class="act"><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B71">全部</a></li>

                        <li data-id="1" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;update=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B72">三日内</a></li>

                        <li data-id="2" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;update=2&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B73">七日内</a></li>

                        <li data-id="3" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;update=3&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B74">半月内</a></li>

                        <li data-id="4" class=""><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;update=4&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B75">一月内</a></li>

                    </ul>
                </div>
                <div class="work-filter tag" data-l2="8">
                    <h3>标签</h3>

                    <ul type="tag">

                        <li data-eid="qd_B46" class="act"><a href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">全部</a></li>

                        <li data-eid="qd_B47" data-tid="豪门"><a href="https://www.qidian.com/all?tag=%E8%B1%AA%E9%97%A8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">豪门</a></li>

                        <li data-eid="qd_B47" data-tid="孤儿"><a href="https://www.qidian.com/all?tag=%E5%AD%A4%E5%84%BF&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">孤儿</a></li>

                        <li data-eid="qd_B47" data-tid="盗贼"><a href="https://www.qidian.com/all?tag=%E7%9B%97%E8%B4%BC&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">盗贼</a></li>

                        <li data-eid="qd_B47" data-tid="特工"><a href="https://www.qidian.com/all?tag=%E7%89%B9%E5%B7%A5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">特工</a></li>

                        <li data-eid="qd_B47" data-tid="黑客"><a href="https://www.qidian.com/all?tag=%E9%BB%91%E5%AE%A2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">黑客</a></li>

                        <li data-eid="qd_B47" data-tid="明星"><a href="https://www.qidian.com/all?tag=%E6%98%8E%E6%98%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">明星</a></li>

                        <li data-eid="qd_B47" data-tid="特种兵"><a href="https://www.qidian.com/all?tag=%E7%89%B9%E7%A7%8D%E5%85%B5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">特种兵</a></li>

                        <li data-eid="qd_B47" data-tid="杀手"><a href="https://www.qidian.com/all?tag=%E6%9D%80%E6%89%8B&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">杀手</a></li>

                        <li data-eid="qd_B47" data-tid="老师"><a href="https://www.qidian.com/all?tag=%E8%80%81%E5%B8%88&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">老师</a></li>

                        <li data-eid="qd_B47" data-tid="学生"><a href="https://www.qidian.com/all?tag=%E5%AD%A6%E7%94%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">学生</a></li>


                        <li class="more" id="unfold"><a href="javascript:" data-eid="qd_B48">展开<span><i></i></span></a></li>

                        <li data-eid="qd_B47" data-tid="胖子" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%83%96%E5%AD%90&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">胖子</a></li>

                        <li data-eid="qd_B47" data-tid="宠物" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%AE%A0%E7%89%A9&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">宠物</a></li>

                        <li data-eid="qd_B47" data-tid="蜀山" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%9C%80%E5%B1%B1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">蜀山</a></li>

                        <li data-eid="qd_B47" data-tid="魔王附体" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%AD%94%E7%8E%8B%E9%99%84%E4%BD%93&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">魔王附体</a></li>

                        <li data-eid="qd_B47" data-tid="LOL" class="hidden"><a href="https://www.qidian.com/all?tag=LOL&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">LOL</a></li>

                        <li data-eid="qd_B47" data-tid="废材流" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%BA%9F%E6%9D%90%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">废材流</a></li>

                        <li data-eid="qd_B47" data-tid="护短" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%8A%A4%E7%9F%AD&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">护短</a></li>

                        <li data-eid="qd_B47" data-tid="卡片" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%8D%A1%E7%89%87&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">卡片</a></li>

                        <li data-eid="qd_B47" data-tid="手游" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%89%8B%E6%B8%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">手游</a></li>

                        <li data-eid="qd_B47" data-tid="法师" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%B3%95%E5%B8%88&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">法师</a></li>

                        <li data-eid="qd_B47" data-tid="医生" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%8C%BB%E7%94%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">医生</a></li>

                        <li data-eid="qd_B47" data-tid="感情" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%84%9F%E6%83%85&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">感情</a></li>

                        <li data-eid="qd_B47" data-tid="鉴宝" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%89%B4%E5%AE%9D&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">鉴宝</a></li>

                        <li data-eid="qd_B47" data-tid="亡灵" class="hidden"><a href="https://www.qidian.com/all?tag=%E4%BA%A1%E7%81%B5&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">亡灵</a></li>

                        <li data-eid="qd_B47" data-tid="职场" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%81%8C%E5%9C%BA&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">职场</a></li>

                        <li data-eid="qd_B47" data-tid="吸血鬼" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%90%B8%E8%A1%80%E9%AC%BC&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">吸血鬼</a></li>

                        <li data-eid="qd_B47" data-tid="龙" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%BE%99&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">龙</a></li>

                        <li data-eid="qd_B47" data-tid="西游" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%A5%BF%E6%B8%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">西游</a></li>

                        <li data-eid="qd_B47" data-tid="鬼怪" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%AC%BC%E6%80%AA&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">鬼怪</a></li>

                        <li data-eid="qd_B47" data-tid="阵法" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%98%B5%E6%B3%95&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">阵法</a></li>

                        <li data-eid="qd_B47" data-tid="魔兽" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%AD%94%E5%85%BD&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">魔兽</a></li>

                        <li data-eid="qd_B47" data-tid="勇猛" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%8B%87%E7%8C%9B&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">勇猛</a></li>

                        <li data-eid="qd_B47" data-tid="玄学" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%8E%84%E5%AD%A6&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">玄学</a></li>

                        <li data-eid="qd_B47" data-tid="群穿" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%BE%A4%E7%A9%BF&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">群穿</a></li>

                        <li data-eid="qd_B47" data-tid="丹药" class="hidden"><a href="https://www.qidian.com/all?tag=%E4%B8%B9%E8%8D%AF&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">丹药</a></li>

                        <li data-eid="qd_B47" data-tid="练功流" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%BB%83%E5%8A%9F%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">练功流</a></li>

                        <li data-eid="qd_B47" data-tid="召唤流" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%8F%AC%E5%94%A4%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">召唤流</a></li>

                        <li data-eid="qd_B47" data-tid="恶搞" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%81%B6%E6%90%9E&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">恶搞</a></li>

                        <li data-eid="qd_B47" data-tid="爆笑" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%88%86%E7%AC%91&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">爆笑</a></li>

                        <li data-eid="qd_B47" data-tid="轻松" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%BD%BB%E6%9D%BE&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">轻松</a></li>

                        <li data-eid="qd_B47" data-tid="冷酷" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%86%B7%E9%85%B7&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">冷酷</a></li>

                        <li data-eid="qd_B47" data-tid="腹黑" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%85%B9%E9%BB%91&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">腹黑</a></li>

                        <li data-eid="qd_B47" data-tid="阳光" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%98%B3%E5%85%89&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">阳光</a></li>

                        <li data-eid="qd_B47" data-tid="狡猾" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%8B%A1%E7%8C%BE&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">狡猾</a></li>

                        <li data-eid="qd_B47" data-tid="机智" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%9C%BA%E6%99%BA&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">机智</a></li>

                        <li data-eid="qd_B47" data-tid="猥琐" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%8C%A5%E7%90%90&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">猥琐</a></li>

                        <li data-eid="qd_B47" data-tid="嚣张" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%9A%A3%E5%BC%A0&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">嚣张</a></li>

                        <li data-eid="qd_B47" data-tid="淡定" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%B7%A1%E5%AE%9A&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">淡定</a></li>

                        <li data-eid="qd_B47" data-tid="僵尸" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%83%B5%E5%B0%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">僵尸</a></li>

                        <li data-eid="qd_B47" data-tid="丧尸" class="hidden"><a href="https://www.qidian.com/all?tag=%E4%B8%A7%E5%B0%B8&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">丧尸</a></li>

                        <li data-eid="qd_B47" data-tid="盗墓" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%9B%97%E5%A2%93&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">盗墓</a></li>

                        <li data-eid="qd_B47" data-tid="随身流" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%9A%8F%E8%BA%AB%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">随身流</a></li>

                        <li data-eid="qd_B47" data-tid="软饭流" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%BD%AF%E9%A5%AD%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">软饭流</a></li>

                        <li data-eid="qd_B47" data-tid="无敌文" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%97%A0%E6%95%8C%E6%96%87&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">无敌文</a></li>

                        <li data-eid="qd_B47" data-tid="异兽流" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%BC%82%E5%85%BD%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">异兽流</a></li>

                        <li data-eid="qd_B47" data-tid="系统流" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%B3%BB%E7%BB%9F%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">系统流</a></li>

                        <li data-eid="qd_B47" data-tid="洪荒流" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%B4%AA%E8%8D%92%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">洪荒流</a></li>

                        <li data-eid="qd_B47" data-tid="学院流" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%AD%A6%E9%99%A2%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">学院流</a></li>

                        <li data-eid="qd_B47" data-tid="位面" class="hidden"><a href="https://www.qidian.com/all?tag=%E4%BD%8D%E9%9D%A2&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">位面</a></li>

                        <li data-eid="qd_B47" data-tid="铁血" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%93%81%E8%A1%80&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">铁血</a></li>

                        <li data-eid="qd_B47" data-tid="励志" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%8A%B1%E5%BF%97&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">励志</a></li>

                        <li data-eid="qd_B47" data-tid="坚毅" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%9D%9A%E6%AF%85&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">坚毅</a></li>

                        <li data-eid="qd_B47" data-tid="变身" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%8F%98%E8%BA%AB&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">变身</a></li>

                        <li data-eid="qd_B47" data-tid="强者回归" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%BC%BA%E8%80%85%E5%9B%9E%E5%BD%92&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">强者回归</a></li>

                        <li data-eid="qd_B47" data-tid="赚钱" class="hidden"><a href="https://www.qidian.com/all?tag=%E8%B5%9A%E9%92%B1&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">赚钱</a></li>

                        <li data-eid="qd_B47" data-tid="争霸流" class="hidden"><a href="https://www.qidian.com/all?tag=%E4%BA%89%E9%9C%B8%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">争霸流</a></li>

                        <li data-eid="qd_B47" data-tid="种田文" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%A7%8D%E7%94%B0%E6%96%87&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">种田文</a></li>

                        <li data-eid="qd_B47" data-tid="宅男" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%AE%85%E7%94%B7&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">宅男</a></li>

                        <li data-eid="qd_B47" data-tid="无限流" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%97%A0%E9%99%90%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">无限流</a></li>

                        <li data-eid="qd_B47" data-tid="技术流" class="hidden"><a href="https://www.qidian.com/all?tag=%E6%8A%80%E6%9C%AF%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">技术流</a></li>

                        <li data-eid="qd_B47" data-tid="凡人流" class="hidden"><a href="https://www.qidian.com/all?tag=%E5%87%A1%E4%BA%BA%E6%B5%81&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">凡人流</a></li>

                        <li data-eid="qd_B47" data-tid="热血" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%83%AD%E8%A1%80&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">热血</a></li>

                        <li data-eid="qd_B47" data-tid="重生" class="hidden"><a href="https://www.qidian.com/all?tag=%E9%87%8D%E7%94%9F&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">重生</a></li>

                        <li data-eid="qd_B47" data-tid="穿越" class="hidden"><a href="https://www.qidian.com/all?tag=%E7%A9%BF%E8%B6%8A&amp;orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0">穿越</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="main-content-wrap fl" data-l1="5">

            <div class="tool-bar cf">
                <div class="view-mode" id="view-mode">
                    <a id="img-text" class="iconfont act" href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B54"></a><em>|</em><a id="only-text" class="iconfont  " href="https://www.qidian.com/all?orderId=&amp;page=1&amp;style=2&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B55"></a>
                </div>
                <div class="select-wrap">

                    <a data-id="" class="act" href="https://www.qidian.com/all?page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B62">人气排序<cite class="iconfont"></cite></a>
                    <a data-id="5" href="https://www.qidian.com/all?orderId=5&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B49">更新时间</a>
                    <a data-id="11" href="https://www.qidian.com/all?orderId=11&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B80">总收藏</a>
                    <a data-id="3" href="https://www.qidian.com/all?orderId=3&amp;page=1&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0" data-eid="qd_B52">总字数</a>
                    <div id="#vipClicks" class="lbf-combobox vipClicks"><a href="javascript:;" class="lbf-button lbf-combobox-label " data-value="0" hidefocus="true"><span class="lbf-combobox-caption">会员点击</span><span class="lbf-icon lbf-icon-down lbf-combobox-icon"></span></a></div>

                    <div id="#recomm" class="lbf-combobox recomm"><a href="javascript:;" class="lbf-button lbf-combobox-label " data-value="0" hidefocus="true"><span class="lbf-combobox-caption">推荐票</span><span class="lbf-icon lbf-icon-down lbf-combobox-icon"></span></a></div>
                    <em>|</em>
                    <span class="lbf-checkbox get-new-book" data-eid="qd_B53">
                                    <input id="only" style="position: absolute; opacity: 0;" type="checkbox">
                                <ins class="lbf-checkbox-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></span>
                    <label for="only" data-eid="qd_B53">只看3个月内新书</label>
                    <div class="sort-count count-info" id="sort-count">
                        <div class="count-text">共<span>${recourdCount}</span>本相关作品
                        </div>
                        <div class="yiwen" id="yiwen">
                            <div class="iconfont"></div>
                        </div>
                        <i>|</i>
                    </div>
                </div>
            </div>


            <div class="all-book-list">

                <div class="book-img-text">
                    <ul class="all-img-list cf">
                        <%-- <c:forEach items="${itemList }" var="item">
                             <li>
                                 <div class="l-wrap">
                                     <div class="pic">
                                         <a class="trackref"
                                            href="http://localhost:8086/item/${item.id}.html" title=""
                                            target="_blank"> <img src="${item.image }"
                                                                  style="display: inline" />
                                         </a>
                                     </div>
                                     <div class="price">
                                             <span><span class="p-now">￥<strong><fmt:formatNumber
                                                     groupingUsed="false" maxFractionDigits="2"
                                                     minFractionDigits="2" value="${item.price / 100 }" /></strong></span><span
                                                     class="p-nor"></span><span class="active" style="">直降</span></span>
                                     </div>
                                     <div class="title-a">
                                         <a class="trackref presaleSign_225865"
                                            href="http://localhost:8086/item/${item.id}.html"
                                            target="_blank">${item.title }</a>
                                     </div>
                                     <div class="title-b" style="">
                                         <a class="trackref"
                                            href="http://localhost:8086/item/${item.id}.html"
                                            target="_blank">${sell_point }</a>
                                     </div>
                                     <div class="comment">
                                         <div class="owner_shop_list">自营</div>
                                     </div>
                                 </div>
                             </li>
                         </c:forEach>--%>
                        <c:forEach items="${bookList }" var="book" >
                            <li data-rid="1">
                                <div class="book-img-box">
                                    <a href="http://localhost:8081/novelwork/oneBook?id=${book.id}" data-bid="1010468795" data-eid="qd_B57" target="_blank"><img src="${book.image}"></a>
                                </div>
                                <div class="book-mid-info">
                                    <h4><a href="http://localhost:8081/novelwork/oneBook?id=${book.id}" target="_blank" data-eid="qd_B58" data-bid="1010468795">${book.title}</a></h4>
                                    <p class="author">
                                        <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362096" data-eid="qd_B59" target="_blank">${book.authorName}</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">${book.catParentName}</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="20101" href="javascript:" data-eid="qd_B61">${book.catName}</a><em>|</em><span>
                                <c:if test="${book.status==1}">
                                    连载中
                                </c:if>
                                <c:if test="${book.status==2}">
                                    已完结
                                </c:if>
                            </span>
                                        <em>|</em><span>
                                <c:if test="${book.attribute==1}">
                                    免费
                                </c:if>
                                <c:if test="${book.attribute==2}">
                                    会员
                                </c:if>
                            </span>
                                    </p>
                                    <p class="intro">
                                            ${book.readPoint}
                                    </p>
                                    <p class="update"><span>${book.count/10000}万字</span>

                                    </p>
                                </div>
                            </li>
                        </c:forEach>

                        <%--  <li data-rid="5">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010468795" data-bid="1010468795" data-eid="qd_B57" target="_blank"><img src="img/150_005.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010468795" target="_blank" data-eid="qd_B58" data-bid="1010468795">飞剑问道</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362096" data-eid="qd_B59" target="_blank">我吃西红柿</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="20101" href="javascript:" data-eid="qd_B61">古典仙侠</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  在这个世界，有狐仙、河神、水怪、大妖，也有求长生的修行者。修行者们，开法眼，可看妖魔鬼怪。炼一口飞剑，可千里杀敌。千里眼、顺风耳，更可探查四方。
                              </p>
                              <p class="update"><span>34.62万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="2">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1004608738" data-bid="1004608738" data-eid="qd_B57" target="_blank"><img src="img/150_019.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1004608738" target="_blank" data-eid="qd_B58" data-bid="1004608738">圣墟</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362453" data-eid="qd_B59" target="_blank">辰东</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="javascript:" data-eid="qd_B61">东方玄幻</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……
                              </p>
                              <p class="update"><span>281.82万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="3">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1009265821" data-bid="1009265821" data-eid="qd_B57" target="_blank"><img src="img/150_018.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1009265821" target="_blank" data-eid="qd_B58" data-bid="1009265821">无疆</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362291" data-eid="qd_B59" target="_blank">小刀锋利</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="44" href="javascript:" data-eid="qd_B61">幻想修仙</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  鹰击长空，鱼跃龙门，熊咆虎啸，万物皆有灵。末法之极，磁极轮转，世界变迁。曾经那个熟悉的世界，已经变得面目全非。当神话变成现实，当传说不再神秘，世界无疆，热血永恒。
                              </p>
                              <p class="update"><span>120.64万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="4">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1003694333" data-bid="1003694333" data-eid="qd_B57" target="_blank"><img src="img/150_020.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1003694333" target="_blank" data-eid="qd_B58" data-bid="1003694333">斗战狂潮</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362443" data-eid="qd_B59" target="_blank">骷髅精灵</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="18" href="javascript:" data-eid="qd_B61">修真文明</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  双月当空，无限可能的英魂世界孤寂黑暗，神秘古怪的嬉命小丑百城联邦，三大帝国，异族横行，魂兽霸幽这是一个英雄辈出的年代，人类卧薪尝胆重掌地球主权，孕育着进军
                              </p>
                              <p class="update"><span>213.54万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="5">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1005238666" data-bid="1005238666" data-eid="qd_B57" target="_blank"><img src="img/150_009.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1005238666" target="_blank" data-eid="qd_B58" data-bid="1005238666">万界天尊</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362118" data-eid="qd_B59" target="_blank">血红</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="javascript:" data-eid="qd_B61">东方玄幻</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  天为何物？高高在上，威严莫测，是法则，是戒律，是无情，是冷酷。天意，何也？俯瞰众生，操持风云，褫夺赏罚，随性而为。故，天意不可测，苍天不可近。顺之应之，未必得其
                              </p>
                              <p class="update"><span>202.77万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="6">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1003723851" data-bid="1003723851" data-eid="qd_B57" target="_blank"><img src="img/150_008.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1003723851" target="_blank" data-eid="qd_B58" data-bid="1003723851">天影</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/66" data-eid="qd_B59" target="_blank">萧鼎</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="44" href="javascript:" data-eid="qd_B61">幻想修仙</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  阴阳分天地，五行定乾坤。天穹之下岁月沧桑的中土神州，正是仙道昌盛的时代，亿万生灵欣欣向荣。纵横千万里间，总有人间一幕幕悲欢离合，在恢弘长生的仙道中上演着。有光便
                              </p>
                              <p class="update"><span>153.46万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="7">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010734492" data-bid="1010734492" data-eid="qd_B57" target="_blank"><img src="img/150_013.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010734492" target="_blank" data-eid="qd_B58" data-bid="1010734492">凡人修仙之仙界篇</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362771" data-eid="qd_B59" target="_blank">忘语</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="207" href="javascript:" data-eid="qd_B61">神话修真</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  凡人修仙，风云再起时空穿梭，轮回逆转金仙太乙，大罗道祖三千大道，法则至尊《凡人修仙传》仙界篇，一个韩立叱咤仙界的故事，一个凡人小子修仙的不灭传说。
                              </p>
                              <p class="update"><span>6.36万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="8">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010734486" data-bid="1010734486" data-eid="qd_B57" target="_blank"><img src="img/150_012.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010734486" target="_blank" data-eid="qd_B58" data-bid="1010734486">六迹之梦魇宫</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362771" data-eid="qd_B59" target="_blank">忘语</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="207" href="javascript:" data-eid="qd_B61">神话修真</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  忘语中短篇出品，六迹系列第二部，梦魇宫！神山破碎，神石携三十六宗族飞升，自称为仙界。仙族为破获神石秘密，使得宗族弟子下凡尘散布传承，称为三十六仙族。岁月变迁，三十六家仙族统治世界，神秘
                              </p>
                              <p class="update"><span>15.32万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="9">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1003354631" data-bid="1003354631" data-eid="qd_B57" target="_blank"><img src="img/150_003.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1003354631" target="_blank" data-eid="qd_B58" data-bid="1003354631">一念永恒</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362120" data-eid="qd_B59" target="_blank">耳根</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="44" href="javascript:" data-eid="qd_B61">幻想修仙</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  一念成沧海，一念化桑田。一念斩千魔，一念诛万仙。唯我念……永恒这是耳根继《仙逆》《求魔》《我欲封天》后，创作的第四部长篇小说《一念永恒》
                              </p>
                              <p class="update"><span>329.75万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="10">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1009704712" data-bid="1009704712" data-eid="qd_B57" target="_blank"><img src="img/150_007.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1009704712" target="_blank" data-eid="qd_B58" data-bid="1009704712">牧神记</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362125" data-eid="qd_B59" target="_blank">宅猪</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="javascript:" data-eid="qd_B61">东方玄幻</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！
                              </p>
                              <p class="update"><span>103.34万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="11">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1005986994" data-bid="1005986994" data-eid="qd_B57" target="_blank"><img src="img/150_010.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1005986994" target="_blank" data-eid="qd_B58" data-bid="1005986994">我是至尊</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362475" data-eid="qd_B59" target="_blank">风凌天下</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="javascript:" data-eid="qd_B61">东方玄幻</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；
                              </p>
                              <p class="update"><span>126.82万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="12">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010566688" data-bid="1010566688" data-eid="qd_B57" target="_blank"><img src="img/150_014.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010566688" target="_blank" data-eid="qd_B58" data-bid="1010566688">苍穹之上</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362150" data-eid="qd_B59" target="_blank">石三</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="207" href="javascript:" data-eid="qd_B61">神话修真</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  苍穹之下的千年苦修，只为有朝一日立身于苍穹之上！位于洪武天朝和妖族七杀部咽喉要地的天断峡谷中，忽有天降神异之物，裹挟着一众修兵，滚入了浩荡的历史洪流当中……宋征只是其中不那么起
                              </p>
                              <p class="update"><span>15.24万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="13">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1004595892" data-bid="1004595892" data-eid="qd_B57" target="_blank"><img src="img/150_006.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1004595892" target="_blank" data-eid="qd_B58" data-bid="1004595892">滇娇传之天悦东方</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362120" data-eid="qd_B59" target="_blank">耳根</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="20101" href="javascript:" data-eid="qd_B61">古典仙侠</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  这是一部短篇小说，讲述的是一代滇国女王的成长史，我若为王，定要四海臣服！
                              </p>
                              <p class="update"><span>11.24万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="14">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010136878" data-bid="1010136878" data-eid="qd_B57" target="_blank"><img src="img/150_015.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010136878" target="_blank" data-eid="qd_B58" data-bid="1010136878">汉乡</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362112" data-eid="qd_B59" target="_blank">孑与2</a><em>|</em><a href="https://www.qidian.com/lishi" target="_blank" data-eid="qd_B60">历史</a><i>·</i><a class="go-sub-type" data-typeid="5" data-subtypeid="22" href="javascript:" data-eid="qd_B61">架空历史</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  我们接受了祖先的遗产，这让中华辉煌了数千年，我们是如此的心安理得，从未想过要回归那个在刀耕火种中苦苦寻找出路的时代。反哺我们苦难的祖先，并从中找到故乡的真正意义，将是本书要讲的故事。
                              </p>
                              <p class="update"><span>70.94万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="15">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1003578885" data-bid="1003578885" data-eid="qd_B57" target="_blank"><img src="img/150_002.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1003578885" target="_blank" data-eid="qd_B58" data-bid="1003578885">超凡传</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/549" data-eid="qd_B59" target="_blank">萧潜</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="javascript:" data-eid="qd_B61">东方玄幻</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  万千星球，无尽修真。道衍之争，万载不息。衍修小师傅米小经，遭受灭门，由此投身到浩浩荡荡的命运河流之中。身怀衍修至宝，又得道家老怪帮助，一路修行，修真世界的图卷徐徐展开。
                              </p>
                              <p class="update"><span>201.73万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="16">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1003307568" data-bid="1003307568" data-eid="qd_B57" target="_blank"><img src="img/150_011.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1003307568" target="_blank" data-eid="qd_B58" data-bid="1003307568">不朽凡人</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/2342811" data-eid="qd_B59" target="_blank">鹅是老五</a><em>|</em><a href="https://www.qidian.com/xianxia" target="_blank" data-eid="qd_B60">仙侠</a><i>·</i><a class="go-sub-type" data-typeid="22" data-subtypeid="44" href="javascript:" data-eid="qd_B61">幻想修仙</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  在这里，拥有灵根才能修仙，所有凡根注定只是凡人。莫无忌，只有凡根，一介凡人！
                              </p>
                              <p class="update"><span>351.2万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="17">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010298084" data-bid="1010298084" data-eid="qd_B57" target="_blank"><img src="img/150_004.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010298084" target="_blank" data-eid="qd_B58" data-bid="1010298084">尘骨</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/400710530" data-eid="qd_B59" target="_blank">林如渊</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="73" href="javascript:" data-eid="qd_B61">异世大陆</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  所谓天命，不过是莫须有的束缚。若要踏破星河，立志前行，从来不晚。——————————书友QQ群号：415568005（尘世傲骨~尘骨书友群）等你来！
                              </p>
                              <p class="update"><span>47.31万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="18">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1004142144" data-bid="1004142144" data-eid="qd_B57" target="_blank"><img src="img/150_016.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1004142144" target="_blank" data-eid="qd_B58" data-bid="1004142144">武道宗师</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362088" data-eid="qd_B59" target="_blank">爱潜水的乌贼</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="73" href="javascript:" data-eid="qd_B61">异世大陆</a><em>|</em><span>连载中</span>

                                  <em>|</em><a class="name" href="https://www.qidian.com/2cy" target="_blank">二次元</a>

                              </p>
                              <p class="intro">
                                  在这里，武道不再是虚无缥缈的传说，而是切切实实的传承，经过与科技的对抗后，彻底融入了社会，有了各种各样的武道比赛，文无第一，武无第二！楼成得到武道一大流派断绝的传承后，向着最初的梦想，
                              </p>
                              <p class="update"><span>251.39万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="19">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010191960" data-bid="1010191960" data-eid="qd_B57" target="_blank"><img src="img/150_017.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010191960" target="_blank" data-eid="qd_B58" data-bid="1010191960">大王饶命</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/5175790" data-eid="qd_B59" target="_blank">会说话的肘子</a><em>|</em><a href="https://www.qidian.com/dushi" target="_blank" data-eid="qd_B60">都市</a><i>·</i><a class="go-sub-type" data-typeid="4" data-subtypeid="12" href="javascript:" data-eid="qd_B61">都市生活</a><em>|</em><span>连载中</span>

                                  <em>|</em><a class="name" href="https://www.qidian.com/2cy" target="_blank">二次元</a>

                              </p>
                              <p class="intro">
                                  灵气复苏的时代，寂静生活碎掉了，仿佛雷霆贯穿长空，电光直射天心，雨沙沙地落下。凡逆我们的终将死去，这就是法则。……这是一个吕树依靠毒鸡汤成为大魔王的故事。
                              </p>
                              <p class="update"><span>65.65万字</span>

                              </p>
                          </div>
                          </li>

                          <li data-rid="20">
                          <div class="book-img-box">
                              <a href="https://book.qidian.com/info/1010496369" data-bid="1010496369" data-eid="qd_B57" target="_blank"><img src="img/150.jpg"></a>
                          </div>
                          <div class="book-mid-info">
                              <h4><a href="https://book.qidian.com/info/1010496369" target="_blank" data-eid="qd_B58" data-bid="1010496369">大道朝天</a></h4>
                              <p class="author">
                                  <img src="img/user.png"><a class="name" href="https://my.qidian.com/author/4362908" data-eid="qd_B59" target="_blank">猫腻</a><em>|</em><a href="https://www.qidian.com/xuanhuan" target="_blank" data-eid="qd_B60">玄幻</a><i>·</i><a class="go-sub-type" data-typeid="21" data-subtypeid="8" href="javascript:" data-eid="qd_B61">东方玄幻</a><em>|</em><span>连载中</span>

                              </p>
                              <p class="intro">
                                  千里杀一人，十步不愿行。（大道朝天官方一群，群号码：311875513，已满，请加大道朝天官方二群，群号码：220593959，欢迎加入）
                              </p>
                              <p class="update"><span>17.27万字</span>

                              </p>
                          </div>
                          </li>--%>

                    </ul>
                </div>


            </div>
            <div class="page-box cf">
                <div class="pagination fr" data-eid="qd_C44" id="page-container" data-pagemax="38195" data-page="1">




                    <div class="lbf-pagination">
                        <ul class="lbf-pagination-item-list">
                            <c:if test="${page!=1}">
                                <li class="lbf-pagination-item"><a href="?page=${page-1}&&keyword=${query}" class="lbf-pagination-next ">&lt;</a></li>
                            </c:if>
                            <c:if test="${page==1}">
                                <li class="lbf-pagination-item"><a href="javascript:return false;" class="lbf-pagination-prev lbf-pagination-disabled">&lt;</a></li>
                            </c:if>

                            <li class="lbf-pagination-item"><a data-page="1" href="https://www.qidian.com/all?orderId=&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0&amp;page=1" class="lbf-pagination-page  lbf-pagination-current">${page}</a></li>



                            <%--<li class="lbf-pagination-item"><a data-page="2" href="https://www.qidian.com/all?orderId=&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0&amp;page=2" class="lbf-pagination-page  ">2</a></li>

                            <li class="lbf-pagination-item"><a data-page="3" href="https://www.qidian.com/all?orderId=&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0&amp;page=3" class="lbf-pagination-page  ">3</a></li>

                            <li class="lbf-pagination-item"><a data-page="4" href="https://www.qidian.com/all?orderId=&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0&amp;page=4" class="lbf-pagination-page  ">4</a></li>

                            <li class="lbf-pagination-item"><a data-page="5" href="https://www.qidian.com/all?orderId=&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0&amp;page=5" class="lbf-pagination-page  ">5</a></li>


                            <li class="lbf-pagination-item"><span class="lbf-pagination-ellipsis">...</span></li>


                            <li class="lbf-pagination-item"><a data-page="38195" href="https://www.qidian.com/all?orderId=&amp;style=1&amp;pageSize=20&amp;siteid=1&amp;pubflag=0&amp;hiddenField=0&amp;page=38195" class="lbf-pagination-page  ">38195</a>

                            </li>--%>
                            <%--
                                <li class="lbf-pagination-item"><a href="?page=${page+1}&&keyword=${query}" class="lbf-pagination-next ">&gt;</a></li>
                            --%>
                            <c:if test="${page!=totalPages}">
                                <li class="lbf-pagination-item"><a href="?page=${page+1}&&keyword=${query}" class="lbf-pagination-next ">&gt;</a></li>
                            </c:if>
                            <c:if test="${page==totalPages}">
                                <li class="lbf-pagination-item"><a href="javascript:return false;" class="lbf-pagination-prev lbf-pagination-disabled">&gt;</a></li>
                            </c:if>
                        </ul>
                        <script>
                            function PAGINATION_goInput(){function
                            setParam(param,paramVal,url){if(!url){url="javascript:;";return url}var
                                theAnchor=null;var newAdditionalURL="";var tempArray=url.split("?");var
                                baseURL=tempArray[0];var additionalURL=tempArray[1];var
                                temp="";if(additionalURL){var tmpAnchor=additionalURL.split("#");var
                                TheParams=tmpAnchor[0];theAnchor=tmpAnchor[1];if(theAnchor)additionalURL=TheParams;tempArray=additionalURL.split("&");for(o=0;o<tempArray.length;o++){if(tempArray[o].split("=")[0]!=param){newAdditionalURL+=temp+tempArray[o];temp="&"}}}else{var
                                tmpAnchor=baseURL.split("#");var
                                TheParams=tmpAnchor[0];theAnchor=tmpAnchor[1];if(TheParams)baseURL=TheParams}if(theAnchor)paramVal+="#"+theAnchor;var
                                rowsTxt=temp+""+param+"="+paramVal;return
                                "//www.qidian.com/all"+"?"+newAdditionalURL+rowsTxt};location.href=setParam("page",document.getElementById("PAGINATION-INPUT").value,location.href)}
                        </script>

                        <div class="lbf-pagination-jump">
                            <form id="pageForm" action="">
                                <input id="ww" name="page" class="lbf-pagination-input" value="${page}" type="text">
                                <input type="hidden" value="${query}" name="keyword">
                                <button href="" id="PAGINATION-BUTTON"
                                        onclick="submit()"
                                        class="lbf-pagination-go">GO</button>
                        </div>
                        </form>

                        <script type="text/javascript">
                            ${"#ww"}
                        </script>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="footer">
        <div class="box-center cf">
            <div class="friend-link">
                <em><a class="yuewen" href="https://www.yuewen.com/" target="_blank">阅文集团</a><cite>旗下网站：</cite></em>
                <a href="https://www.qidian.com/">千锋中文网</a>
                <a href="https://www.qdmm.com/" target="_blank">千锋女生网</a>
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
                <a href="https://www.yuewen.com/app.html#appqd" target="_blank">千锋读书</a>
                <a href="https://www.yuewen.com/app.html#appzj" target="_blank">作家助手</a>
                <a href="https://www.webnovel.com/" target="_blank" title="Qidian International">千锋国际版</a>
            </div>
            <div class="footer-menu dib-wrap">
                <a href="https://www.qidian.com/about/intro" target="_blank">关于千锋</a>
                <a href="https://www.qidian.com/about/contact" target="_blank">联系我们</a>
                <a href="https://join.yuewen.com/" target="_blank">加入我们</a>
                <a href="https://www.qidian.com/help/index/2" target="_blank">帮助中心</a>
                <a href="http://123.206.70.240/online/?cid=0&amp;uid=10&amp;code=0" class="advice" target="_blank">提交建议</a>
                <a href="http://bbs.qidian.com/" target="_blank">千锋论坛</a>
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
    // 全局的通用数据都放g_data变量里
    var g_data = {};
    g_data.adBanner = {

        adTop:{"title":"","adImgUrl":"//qidian.qpic.cn/qidian_common/349573
        /112bf88a5026fc7defe189e77bebf6b6/0","adCategoryName":"广
        告","colorType":0,"type":1,"isAdv":1,"adJumpUrl":"http://cpgame.qd.game.qidian.com/Home/Index/directLogin/name/mxsj/way/1?qd_game_key=mxsj1200x60&qd_dd_p1=1833","hasAd":1},

    };
    if (g_data.adBanner.adTop) {
        g_data.adBanner.adTop.eid = 'qd_B83'
    }
    // 环境变量，会按照环境选择性打log
    g_data.envType = 'pro';
    // 用作统计PV
    g_data.pageId = 'qd_P_all';
    //当前查询的参数
    var params = {};
    params.typeId = '-1';
    params.subTypeId =  '-1';
    params.actionId =  '-1';
    params.vipId =  '-1';
    params.sizeId = '-1';
    params.signId =  '-1';
    params.tagName =  '-1';
    params.orderId =  '&#34;&#34;';
    params.newIn3Month = '-1';
    params.showId = '1';
    params.updateId = '-1';
    g_data.params = params;
    //当前页面路由
    g_data.url = '//www.qidian.com/all';
    // 域名环境变量
    g_data.domainSearch = 'www.qidian.com/search';
    //环境域名
    g_data.domainPreFix = '';
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
        'qd/js/all_finish_free/common.dedfa.js' ], function (SpeedReport, Login,
                                                             Index) {
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
                    f3 = 10; // page ID
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

<script>
    var _mtac = {};
    (function() {
        var mta = document.createElement("script");
        mta.src = "//pingjs.qq.com/h5/stats.js?v2.0.2";
        mta.setAttribute("name", "MTAH5");
        mta.setAttribute("sid", "500451537");
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(mta, s);
    })();
</script>



<div class="lbf-autocomplete-suggestions" style="position: absolute; display: none; max-height: 384px; z-index: 9999;"></div><div class="lbf-popup lbf-dropdown vipClicks lbf-combobox-panel" style="width: 0px; min-width: 82px; height: auto;"><ul class="lbf-combobox-options"><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="1">会员周点击</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="7">会员月点击</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="8">会员总点击</a></li></ul></div><div class="lbf-popup lbf-dropdown recomm lbf-combobox-panel" style="width: 0px; min-width: 70px; height: auto;"><ul class="lbf-combobox-options"><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="9">周推荐票</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="10">月推荐票</a></li><li class="lbf-combobox-option"><a class="lbf-combobox-item" href="javascript:;" data-value="2">总推荐票</a></li></ul></div></body>

</html>





