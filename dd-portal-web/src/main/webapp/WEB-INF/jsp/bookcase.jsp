<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的书架_个人中心_纵横千峰小说</title>
    <link rel="icon" type="image/x-icon" href="https://qidian.gtimg.com/qdp/img/favicon.0.1.ico">
    <link rel="stylesheet" data-ignore="true" href="${pageContext.request.contextPath}/css/index.0.11.css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/stats.js.下载" name="MTAH5" sid="500445303" cid="500446496"></script>
    <script>document.domain ='qidian.com';</script>
    <script>var speedTimer = [], speedZero = new Date().getTime();</script>
</head>
<body class="shelf" style="zoom: 1;">
            <div class="personal-header" data-l1="1">
                <div class="header-wrapper">

                    <a href="#" id="headerLog" class="header-log" data-eid="qd_M06" data-target="headerDropList">
                        
                        书友${username}
                        
                    </a>
                    <div class="header-goHome">
                        <a href="http://localhost:8081/novelwork/${username}" target="_blank" accesskey="5" data-eid="qd_M05">起点首页</a>
                    </div>
                </div>
            </div>
        <div class="qdp-wrapper">
		<div class="personal-sideBar" data-l1="2">

			<ul class="sideBar-group" id="tabView">
				<li id="elIndex" class="active">
					<a href="#" class="sideBar-list-a" title="默认分组" data-eid="qd_M186">千峰书架</a>
				</li>

			</ul>
		</div>
    <div class="qdp-content" data-l1="3">
        <form id="shelfSearchForm" class="shelf-search qdp-border" action="${pageContext.request.contextPath}/searchBook" method="post" target="_blank">
            <input type="text" name="bookName" class="shelf-search-input" value="${bookCase.bookName}" placeholder="输入作品名或作家名">
            <input type="submit" id="shelfSearch" class="clip" data-eid="qd_M192">
            <input type="hidden" name="username" value="${username}">
            <label for="shelfSearch" class="shelf-search-submit ui-button" data-eid="qd_M192">搜书架</label>
        </form>

        
            <div class="qdp-border table-x shelf-default shelf-table" data-l2="3">
                <div class="table-msg" data-l3="2">
                    <h2 class="shelf-title" id="shelfTitle" data-gid="-100">${username}的书架</h2>共<strong class="dark ml5 mr5" id="elMoTotal">${page.totalCount}</strong><span id="shelfAmount">本书籍</span>

                    
                </div>
                <div class="table-size" data-l3="2">
                    <table id="shelfTable" class="ui-table" data-count="1">
                        <thead>
                          <tr>
                            <%--<th scope="col"><input type="checkbox" id="chkBookNameAll" name="bookname" value="all"><label class="ui-checkbox" for="chkBookNameAll"></label></th>--%>
                            <th scope="col" width="70" style="font-size: 17px">书名</th>
                            <th scope="col" width="70" style="font-size: 17px">类别</th>
                            <th scope="col" width="90" style="font-size: 17px">作者</th>
                            <th scope="col" width="60" style="font-size: 17px">操作</th>
                          </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach items="${page.list}" var="node">
                                 <tr>

                                    <%--<td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName0" name="bookname" value="1010562911"><label class="ui-checkbox" for="chkBookName0"></label></td>--%>
                                    <td class="col2">
                                    ${node.bookName}
                                    </td>
                                    <td class="col3 font12">${node.catName}</td>
                                    <td class="col4">
                                        ${node.author}
                                    </td>
                                     <td><input type="button" class="ui-button" value="删除" onclick="removeBook(${node.id})"></td>

                                </tr>
                            </c:forEach>
                            
                            
                        </tbody>
                    </table>
                    <div style="text-align: center">
                        <c:if test="${page.totalPage>1 }">
                            <c:if test="${page.currentPage==1 }">
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}?currentPage=${page.currentPage+1}'" value="下一页"/>
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}?currentPage=${page.totalPage}'" value="尾页"/>
                            </c:if>
                            <c:if test="${page.currentPage==page.totalPage }">
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}'" value="首页" class="input-button"/>
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}?currentPage=${page.currentPage-1}'" value="上一页"/>
                            </c:if>
                            <!-- 中间页   -->
                            <c:if test="${page.currentPage>1 && page.currentPage<page.totalPage }">
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}'" value="首页" class="input-button"/>
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}?currentPage=${page.currentPage-1}'" value="上一页"/>
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}?currentPage=${page.currentPage+1}'" value="下一页"/>
                                <input type="button" id="button1" class="ui-button" onclick="window.location='${pageContext.request.contextPath}/bookCase/${username}?currentPage=${page.totalPage}'" value="尾页"/>
                            </c:if>
                            <span style="font-size: 17px">当前页${page.currentPage }/${page.totalPage }总页数&nbsp</span>
                        </c:if>
                        <c:if test="${page.totalPage==1 }">
                            <span style="font-size: 17px">当前页${page.currentPage }/${page.totalPage }总页数&nbsp</span>
                        </c:if>

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
        <script data-ignore="true" src="${pageContext.request.contextPath}/js/LBF.js.下载"></script>

        <script type="text/javascript">

            function removeBook(id) {

                if(confirm("确定要删除您书架的这本书吗?")){
                    $.post(
                        "${pageContext.request.contextPath}/removeBook/"+id+"",
                        function (data) {
                            if(data>0){
                               location.reload();
                            }
                        }

                    );
                }




            }

        </script>

        


</body>
</html>