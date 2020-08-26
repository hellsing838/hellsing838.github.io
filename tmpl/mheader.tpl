{include file="logo.tpl"}

	
<div class="account_contentContainer">
		<div class="account_contentInner">
			<div class="account_title">
				<div class="account_title_Left">
					<div class="user"></div>
					<p>Hello, <span>{$userinfo.username}</span></p>
					<div class="clearfix"></div>
				</div>
				<div class="account_title_Right">
					<p>Your Personal Affiliate Link:</p>
					<a href="{$settings.site_url}/?ref={$userinfo.username}"> {$settings.site_url}/?ref={$userinfo.username}</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="account_ctn">
				<div class="account_ctn_Left">
					<ul>
						<li><a class="btn_acc hvr-sweep-to-right" href="?a=account">account</a></li>
						<li><a class="btn_dep hvr-sweep-to-right" href="?a=deposit">deposit</a></li>
						<li><a class="btn_withd hvr-sweep-to-right" href="?a=withdraw">withdraw</a></li>
						<li><a class="btn_yourdep hvr-sweep-to-right" href="?a=deposit_list">your deposits</a></li>
						<li><a class="btn_trans hvr-sweep-to-right" href="?a=deposit_history">transactions</a></li>
						<li><a class="btn_refer hvr-sweep-to-right" href="?a=referals">referrals</a></li>
						<li><a class="btn_setting hvr-sweep-to-right" href="?a=edit_account">settings</a></li>
						<li><a class="btn_securi hvr-sweep-to-right" href="?a=security">security</a></li>
					</ul>
				</div>
				<div class="account_ctn_Right">


