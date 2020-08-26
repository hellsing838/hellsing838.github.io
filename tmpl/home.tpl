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
	<div class="wrapper">
		<div class="content clearfix">
			<div class="main_content clearfix">
<div class="inv_plans clearfix">
	<h3>Our Investment Plans</h3>
	<ul class="clearfix">
		<li class="plan_1">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">135%<span> </span></div>
					<div>After 1 Day</div>
				</div>
				<div class="info_plan">
					Minimum: $10<br>
					Maximum: $250000<br>
					Principal Included
				</div>
			</a>
		</li>
		
		<li class="plan_2">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">200%</div>
					<div>After 3 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $10<br>
					Maximum: $250000<br>
					Principal Included
				</div>
			</a>
		</li>
		
		<li class="plan_3">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">280%</div>
					<div>After 5 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $10<br>
					Maximum: $250000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_4">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">375%</div>
					<div>After 7 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $10<br>
					Maximum: $250000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_5">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">750%</div>
					<div>After 15 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $10<br>
					Maximum: $250000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_6">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">1600%</div>
					<div>After 30 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $10<br>
					Maximum: $250000<br>
					Principal Included
				</div>
			</a>
		</li>
		
		<li class="plan_7">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent"> VIP 3500%</div>
					<div>After 44 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $250<br>
					Maximum: $10000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_8">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">  6000%</div>
					<div>After 60 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $500<br>
					Maximum: $50000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_9">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">2.7%<span> Hourly</span></div>
					<div>For 50 Hours</div>
				</div>
				<div class="info_plan">
					Minimum: $500<br>
					Maximum: $25000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_10">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">1.8%<span> Hourly</span></div>
					<div>For 100 Hours</div>
				</div>
				<div class="info_plan">
					Minimum: $1000<br>
					Maximum: $25000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_11">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">1.9%<span> Hourly</span></div>
					<div>For 200 Hours</div>
				</div>
				<div class="info_plan">
					Minimum: $1000<br>
					Maximum: $25000<br>
					Principal Included
				</div>
			</a>
		</li>
		<li class="plan_12">
						<a href="?a=signup">
							<div class="icon"></div>
				<div class="name_plan">
					<div class="percent">  1000%</div>
					<div>After 5 Days</div>
				</div>
				<div class="info_plan">
					Minimum: $10000<br>
					Maximum: $100000<br>
					Principal Included
				</div>
			</a		
	</ul>
</div>
<div class="left">
	<div class="calculator">
		<h3>Calculator</h3>
		<ul class="clearfix">
			<li>
				<select id="percent">
					<option value="perc1">5,73% Hourly For 18 Hours</option>
					<option value="perc6">VIP 5.3% Hourly For 20 Hours</option>
					<option value="perc2">120% After 1 Day</option> 
					<option value="perc3">200% After 4 Days</option>
					<option value="perc4">500% After 10 Days</option>
					<option value="perc5">1400% After 25 Days</option>
					
					<option value="perc7">VIP 1000% After 10 Days</option>
					<option value="perc8">VIP 2000% After 20 Days</option>
				</select>
			</li>
			<li>
				<input id="deposit" type="text" value="Amount" onfocus="if {literal}(this.value=='Amount') this.value='';" onblur="if (this.value==''){this.value='Amount'}{/literal}">
			</li>
			<li>
				<div class="result" id="inpvar1">0%</div>
			<li>
			<li>
				<div class="result" id="inpvar2">$0</div>
			</li>
			<li>
				<input type="button" value="Start" onclick="calcthis(2);">
			</li>
		</ul>
	</div>
	<div class="about">
		<h3>About Company</h3>
		<p>
			Today the company {$settings.site_name} is a stable participant of currency market Forex. The beginning of activity of 
			the company {$settings.site_name} may be called 2007. The development of trading systems was begun exactly then. {$settings.site_name} 
			is one of the world's leading companies in the Forex, by share of profitable trades and the number 
			of successful traders. Company {$settings.site_name} offers investors the easiest and most affordable way to start 
			making money on the Forex market. We follow the principle of simplicity and accessibility for new 
			investors, and doing your first steps on your road to financial independence, you will feel the 
			comfort and convenience.
		</p>
			Now Forex market is one of the most liquid trading platforms, and which annual return is 
			around $4 trillion. Our company provides you by professional support (24/7) and offers you 
			several investment plans, among which you can choose more convenient for you. We guarantee that 
			your investment in Forex will bring you profit. <a href="?a=cust&page=about">Read More</a>
		</p>
	</div>
	<div class="latest_news">
		<h3>Latest News</h3>
		{section name=s loop=$news}
				<h2>{$news[s].title}</h2>
		<div class="date">{$news[s].d}</div>
		<p>
{$news[s].small_text}
			<a href="?a=news#{$news[s].id}" class="read_more">Read More</a>
		</p>{/section}
			</div>

				</div>
		{if $userinfo.logged != 1}		<div class="right">
										<div class="live_stat">
						<h3>Live Statistics</h3>
						<ul>
							<li>Started:<span>{$settings.site_start_month_str_generated} {$settings.site_start_day}, {$settings.site_start_year}</span></li>
							<li>Running days:<span>{$settings.site_days_online_generated}</span></li>
							<li>Total accounts:<span>{$settings.info_box_total_accounts_generated}</span></li>
							<li>Total deposited:<span>{$currency_sign} {$settings.info_box_deposit_funds_generated}</span></li>
							<li>Total withdraw:<span>{$currency_sign} {$settings.info_box_withdraw_funds_generated}</span></li>
							<li>Visitors online:<span>{$settings.info_box_visitor_online_generated}</span></li>
							
														<li>Last deposit:<span>{$currency_sign} {$stat_last_deposit.amount} ({$stat_last_deposit.username})


<!-- $ 10.00 -->
</span></li>
																					<li>Last withdraw:<span>{$currency_sign} {$stat_last_withdrawal.amount} ({$stat_last_withdrawal.username})</span></li>
													</ul>
						<div class="stat_button">
							<a href="?a=paidout">Paid Out</a>
							<a href="?a=last10">Investors Last</a>
							<a href="?a=top10">Investors Top</a>
							<a href="?a=refs10">Referrers Top</a>
						</div>
					</div>
					<div class="affiliate">
						<h3>Referral Commission</h3>
						<div class="percent"><span>Up to</span> 7%</div>
					</div>
									</div>{else}				<div class="right">
										<div class="navigation">
						<h3>Navigation</h3>
						<ul class="clearfix">
							<li><a href="?a=account">Your Account</a></li>
							<li><a href="?a=deposit">Make Deposit</a></li>
							<li><a href="?a=deposit_list">Your Deposits</a></li>
							<li><a href="?a=deposit_history">Deposits History</a></li>
							<li><a href="?a=earnings">Earnings History</a></li>
							<li><a href="?a=earnings&type=commissions">Referrals History</a></li>
							<li><a href="?a=withdraw" class="active">Withdraw</a></li>
							<li><a href="?a=withdraw_history">Withdrawals History</a></li>
							<li><a href="?a=referals">Your Referrals</a></li>
							<li><a href="?a=edit_account">Edit Account</a></li>
							<li><a href="?a=logout">Logout</a></li>
						</ul>
					</div>
									</div>{/if}
			</div>
		</div>
	</div>
	<div class="footer_top">
		<div class="content">
			<div class="partners"><img src="img/partners.png"></div>
		</div>
	</div>
	<div class="footer_bottom">
		<div class="content clearfix">
			<div class="copy">&copy; 2014-2021 {$settings.site_name}. All Rights Reserved.</div>
			<ul class="foot_menu" id="nav_foot">
				<li><a href="?a=home">Home</a></li>
				<li><a href="?a=faq">Faq</a></li>
				<li><a href="?a=rules">Rules</a></li>
				<li><a href="?a=news">News</a></li>
				<li><a href="?a=rateus">Rate Us</a></li>
				<li><a href="?a=cust&page=banners">Banners</a></li>
				<li><a href="?a=cust&page=about">About Us</a></li>
				<li><a href="?a=support">Support</a></li>
				<li><a href="?a=cust&page=security">Security</a></li>
				<li><a href="?a=cust&page=privacy">Privacy Policy</a></li>
				<li><a href="?a=cust&page=antispam">Anti-Spam Policy</a></li>
			</ul>
		</div>
	</div>
	<script src="js/jquery.firefly.js"></script>
	
	{literal}<script>
	$(document).ready(function() {
		$.firefly({images : ['img/fly1.jpg', 'img/fly2.jpg'],total : 50}); 	
	});
	</script>
	<script type="text/javascript">
		var config = {
		divId: "analog-clock",	
		useSecondHand: "true",
		clockWidthAndHeight: "160",
		
		clockFaceImg: "img/clockBg.png",
		hourHandImg: "img/hourHand.png",
		minuteHandImg: "img/minuteHand.png",
		secondHandImg: "img/secondHand.png",
		
		clockFaceHighResImg: "img/clockBg.png",
		hourHandHighResImg: "img/hourHand.png",
		minuteHandHighResImg: "img/minuteHand.png",
		secondHandHighResImg: "img/secondHand.png",
		
		smoothRotation: "false",
		secondHandSpeed: "100"
		};
		var myAnalogClock = new AnalogClock(config);
	</script>{/literal}
	
</body>
</html>