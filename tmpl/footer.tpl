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
							<li><a href="?a=referallinks">Affiliate Tools</a></li>
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
			<div class="copy">&copy; 2016 {$settings.site_name}. All Rights Reserved.</div>
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