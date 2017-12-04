<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>纵横千峰小说_登录</title>
	<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/pact.css">
<link rel="shortcut icon" type="image/x-icon"
	href="https://qidian.gtimg.com/qd/favicon/qd_icon.0.2.ico">
<link rel="Bookmark" type="image/x-icon"
	href="https://qidian.gtimg.com/qd/favicon/qd_icon.0.2.ico">
	<style type="text/css">
		@font-face {
			font-family: 'iconfont';  /* project id 482297 */
			src: url('//at.alicdn.com/t/font_482297_l19xcg9uyd8wipb9.eot');
			src: url('//at.alicdn.com/t/font_482297_l19xcg9uyd8wipb9.eot?#iefix') format('embedded-opentype'),
			url('//at.alicdn.com/t/font_482297_l19xcg9uyd8wipb9.woff') format('woff'),
			url('//at.alicdn.com/t/font_482297_l19xcg9uyd8wipb9.ttf') format('truetype'),
			url('//at.alicdn.com/t/font_482297_l19xcg9uyd8wipb9.svg#iconfont') format('svg');
		}
		.iconfont{
			font-family:"iconfont" !important;
			font-size:20px;font-style:normal;
			-webkit-font-smoothing: antialiased;
			-webkit-text-stroke-width: 0.2px;
			-moz-osx-font-smoothing: grayscale;
		}
	</style>
</head>
<body>
	<div class="wrap">
		<!-- start 头部 -->
		<div class="header ">
			<div class="box-center">
				<div class="logo">
					<a href="#" ><img src="img/logo-qf.png"></a>
				</div>
			</div>
		</div>
		<!-- end 头部 -->

		<!-- start 整体居中 -->
		<div class="box-center">
			<!-- start 登录区块 -->
			<div class="login-area-wrap cf">
				<!-- start 运营图 -->
				<div class="login-op-img fl">
					<img src="img/login.jpg" alt="起点登录">
				</div>
				<!-- end 运营图 -->

				<!-- start 登录区 -->
				<div class="login-wrap type-10 fl">
					<!-- start 登录切换 -->
					<div class="login-tab cf" id="j_loginTab">
						<ul>

							<li class="lang act" tab="qidian">账号登录</li>
							<%--<li class="lang " tab="qq">QQ登录</li>
							<li class="lang " tab="weixin">微信登录</li>--%>
						</ul>
					</div>
					<!-- end 登录切换 -->


					<!-- start 登录切换容器 -->
					<div class="login-switch-wrap">
						<div class="login-tab-wrap" id="j_loginSwitchWrap">
							<!-- start 阅文通行证 -->
							<div class="login-box qd-login yw-login qidian-login ">
								<!-- start webPC登录容器 -->
								<div class="web-login-wrap">
									<!-- start 两种输入模式容器 -->
									<div class="login-input-mode" id="j-loginInputMode">
										<!-- start 输入登录模式 -->
										<div class="login-mode input-mode show" id="j-inputMode">
											<form id="myForm" method="post">
											<div class="error-tip hidden" id="error"></div>
											<dl>
												<dd>
													<input type="text" name="username" tabindex="1"
														placeholder="用户名" id="username">
												</dd>
												<dd>
													<input type="password"
														tabindex="2" placeholder="密码" id="password" name="password">
												</dd>

											</dl>
											<!-- start 登录操作 -->
											<div class="login-common-wrap">
												<div class="auto-login-box cf">
													<div class="link fr">
														<a href="${pageContext.request.contextPath}/register.jsp"
															target="_blank" id="forgetPsw">免费注册</a>
													</div>
													<input type="checkbox" id="autologin" tabindex="3"
														name="checkbox" checked="checked"> <label
														for="autologin" class="ui-checkbox"
														data-stat="qd_L04|勾选自动登录|2"
														data-off-stat="qd_L05|取消自动登录|2"></label><label
														for="autologin">自动登录</label>
												</div>
												<input class="red-btn go-login" style="cursor: pointer;"
													type="submit" value="登录"></input>
											</div>
											</form>
											<!-- end 登录操作 -->
										</div>


									</div>

								</div>

							</div>

						</div>
					</div>
				<!-- end 登录区 -->

				<script
					src="js/phoneAreaSortNew.js.下载"></script>
				<script src="js/rsa_encrypt.js.下载"></script>
				<script>

                    $(function(){

                        $("#myForm").submit(function(e){
                            var username = $('#username').val();
                            var password = $('#password').val();
                            var flag1 = false;
                            var flag2 = false;

                            if(username==null || username==''){
                                $('#error').show();
                                $('#error').html("用户名不能为空");
                                return false;
							}else{
                                $('#error').hide();
                                flag1=true;
							}


							if(password==null || password==''){
                                $('#error').show();
                                $('#error').html("密码不能为空");
                                return false;
							}else {
                                $('#error').hide();
                                flag2=true;

							}
                            e.preventDefault();

							if(flag1 && flag2){
							    $.post(
									"user/login",
									{"username":username,"password":password},
									function(data){

									    if(data.success){
                                            var token = data.data;
                                            $.post(
                                                "user/token1/"+token+"",
                                                function (mess) {
                                                    var reader = mess.data.username;
                                                location.href = "http://localhost:8081/novelwork/"+reader+"";

                                                }
                                            );
										}else{
                                            $('#error').show();
                                            $('#error').html(data.message);
										}
									}

								);
							}



                        });
					});

				</script>

			</div>
			<!-- end 登录区块 -->
		</div>
		<!-- end 整体居中 -->

		<!-- start 页脚 -->
		<div class="footer">
			<div class="link">
				<a href="https://www.qidian.com/about/intro" target="_blank">关于起点</a>
				<a href="https://www.qidian.com/about/contact" target="_blank">联系我们</a>
				<a href="http://join.book.qq.com/index.html" target="_blank">加入我们</a>
				<a href="http://kf.qidian.com/Default.aspx" target="_blank">客服中心</a>
				<a href="http://bbs.qidian.com/list/53" target="_blank">提交建议</a> <a
					href="http://wwwploy.qidian.com/help/about_link.aspx"
					target="_blank">合作伙伴</a> <a
					href="http://www.qidian.com/helpcenter/default.aspx"
					target="_blank">使用指南</a> <a href="http://bbs.qidian.com/"
					target="_blank">起点论坛</a> <a
					href="http://shop.qidian.com/Index.aspx" target="_blank">起点商城</a>
			</div>
			<p>Copyright (C) 2002-2016 www.qidian.com All Right Reserved版权所有
				上海玄霆娱乐信息科技有限公司</p>
			<p>上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2012]0068-008
				新出网证（沪）字010 沪ICP备08017520号-1</p>
			<p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！客服电话：010-59357051</p>
			<p>本站所收录作品、社区话题、书库评论及本站所做之广告均属个人行为，与本站立场无关</p>

		<!-- end 页脚 -->
	</div>
	<script src="js/report.js.下载"></script>
	<script src="js/stat.js.下载"></script>
	<script>
		/*$(function() {
			Stat.init();
		});*/
	</script>

	<iframe id="LgStat" style="display: none"
		src="css/unifyreport.html"></iframe>
</body>
</html>