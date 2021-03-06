<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>

		<div class="login-boxtitle">
			<a href="home/demo.html"><img alt="" src="../images/logobig.png" /></a>
		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img src="../images/big.jpg" /></div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">邮箱注册</a></li>
								<li><a href="">手机号注册</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-active">
									<form method="post">
										
							   <div class="user-email">
										<label for="email"><i class="am-icon-envelope-o"></i></label>
										<input type="email" name="" id="username" placeholder="请输入账号">
               				  </div>										
				                 <div class="user-pass">
												    <label for="password"><i class="am-icon-lock"></i></label>
												    <input type="password" name="" id="password" placeholder="设置密码">
				                 </div>										
				                 <div class="user-pass">
												    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
												    <input type="password" name="" id="confirm" placeholder="确认密码">
				                 </div>	
				                 
				                     <div class="am-form-group">
					                        <input type="text" class="tpl-form-input" id="code" placeholder="请输入验证码">
					                    </div>
					                  
					                  	<img alt="验证码" id="scode" src="/picture.do"  onclick="javascript:flushCode();">看不清?</a>
                 
                			 </form>
                 
								 <div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
							  	</div>
										<div class="am-cf">
											<input type="button" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl" onclick="register();">
										</div>

								</div>

							</div>
						</div>

				</div>
			</div>
			
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">恒望科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">关于恒望</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有</em>
							</p>
						</div>
					</div>
	</body>
	
	  <script src="/js/jquery.js"></script>
	 <script type="text/javascript">
	 
	 var UUID='${UUID}';
	 
	 function flushCode() {
		    // 每次刷新的时候获取当前时间，防止浏览器缓存刷新失败
		    var time = new Date();
		    $('#scode').attr('src','/picture.do?'+new Date().getTime());
		}
	 
	 function register(){
		 var param={
					username:$('#username').val(),
					password:$('#password').val(),
					confirm:$('#confirm').val(),
					code:$('#code').val(),
					uuID:UUID
				};
			 $.post('/user/register.do',param,callback);
	 }
	 
	 function callback(ajaxDAO,status){
		  if(ajaxDAO.success){
			  window.location.href="/Page/toLogin.do";
		  }
		  else{
			  alert(ajaxDAO.message);
		  }
	  }
	 
	 </script>
	  

</html>