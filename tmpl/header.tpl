<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>{$settings.site_name} - Profit with us</title>
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/style.css"/>
	<link href='https://fonts.googleapis.com/css?family=PT+Serif:400,700' rel='stylesheet' type='text/css'>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
	<script type="text/javascript" src="js/calculator.js"></script>
	<script type="text/javascript" src="js/clock2.js"></script>
	<script type="text/javascript" src="js/jQueryRotate.2.2.js"></script>
	
	{literal}<script type="text/jscript">
		function setActive() {
			aObj = document.getElementById('nav').getElementsByTagName('a');
			for(i=0;i<aObj.length;i++) { 
				if(document.location.href.indexOf(aObj[i].href)>=0) {
				aObj[i].className='active';
				}
			}
			aObj = document.getElementById('nav_foot').getElementsByTagName('a');
			for(i=0;i<aObj.length;i++) { 
				if(document.location.href.indexOf(aObj[i].href)>=0) {
				aObj[i].className='active';
				}
			}
		}
		window.onload = setActive;
	</script>{/literal}
	
</head>

<body>
	<div class="header">
		<div class="header_wrap">
			<div class="header_top">
				<ul class="contacts clearfix">
					<li class="phone">+44 8448 845447</li>
					<li class="fb"><a href="https://www.facebook.com/" target=_blank>Facebook</a></li>
					<li class="livechat">
						
					</li>
				</ul>
						{if $userinfo.logged != 1}		<ul class="member_login clearfix">
					<form method=post name=loginform onsubmit="return checklogin()">
					<input type=hidden name=a value='do_login'>
					<input type=hidden name=follow value=''>
						<li><input type="text" name="username" value="Username" onfocus="if {literal}(this.value=='Username') this.value='';" onblur="if (this.value==''){this.value='Username'}{/literal}"></li>
						<li><input type="password" name="password"  value="Password" onfocus="if {literal}(this.value=='Password') this.value='';" onblur="if (this.value==''){this.value='Password'}{/literal}"></li>
						<li><input type="submit" value="Login"></li>
					</form>
				</ul>
				<ul class="signup clearfix">
					<li><a href="?a=signup">Get Started</a></li>
				</ul>{else}								<ul class="member_logout clearfix">
					<li><span>Hello {$userinfo.username}</span></li>
					<li><a href="?a=logout">Logout</a></li>
				</ul>{/if}
							</div>
			<ul class="main_menu clearfix" id="nav">
				<li><a href="?a=home">Home</a></li>
				<li><a href="?a=faq">Faq</a></li>
				<li><a href="?a=rules">Rules</a></li>
				<li><a href="?a=news">News</a></li>
				<li><a href="?a=rateus">Rate Us</a></li>
				<li><a href="?a=cust&page=about">About Us</a></li>
				<li><a href="?a=support">Support</a></li>
			</ul>
			<div class="logo"><a href="?a=home"><img src="img/logo.png"></a></div>
			<div class="head_clock">
				<div id="analog-clock"><div class="bg"></div></div>
			</div>
		</div>
	</div>
	<div class="wrapper">
		<div class="content clearfix">
			<div class="main_content clearfix">
<div class="left">