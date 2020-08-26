{include file="header.tpl"}

<h3>Your account</h3>
{if $settings.use_transaction_code ==1 && $userinfo.transaction_code == ''} <b>Note: currently you have not specified 
a Transaction code. The Transaction code strengthens your funds security in our 
system. The code is required to withdraw funds from your account{if $settings.internal_transfer_enabled} 
and for internal transfer to another user account{/if}. Just do not change 'Transaction 
code' in your account information if you do not want to use this feature. <a href=?a=edit_account>Click 
here</a> to specify a new transaction code .</b> <br>
<br>
{/if}
<div class="account_page clearfix">

<div class="member_reg">
	<table cellspacing=0 cellpadding=2 border=0 width=100%>
		<tr>
			<td class="acc">User:</td>
			<td class="ass">{$userinfo.username}</td>
		</tr>
		<tr>
			<td class="acc">Registration Date:</td>
			<td class="ass">{$userinfo.create_account_date}</td>
		</tr>
		<tr class="last">
			<td class="acc">Last Access:</td>
			<td class="ass">{$last_access}</td>
		</tr>
	</table>
</div>

<div class="balance">
	<span>Account Balance:<br><strong>{$currency_sign}{$ab_formated.total}</strong></span>
</div>

<div class="ref_link">
	<div class="link">
		Your referral link: <zxc href={$settings.site_url}/?ref={$user.username} style="font-weight: bold; color: #8b7e72;">{$settings.site_url}/?ref={$user.username}</zxc>
	</div>
	<div class="button">
		<a href="?a=referallinks">Promotion</a>
	</div>
</div>

<div class="all_ac">
	<table cellspacing=0 cellpadding=2 border=0 width=100%>
		<tr>
			<td style="width: 170px;">Earned Total:</td>
			<td align=right>{$currency_sign}<b>{$ab_formated.earning}</b></td>
		</tr>
		<tr>
			<td>Pending Withdrawal:</td>
			<td align=right>{$currency_sign}<b>{$ab_formated.withdraw_pending}</b></td>
		</tr>
		<tr>
			<td>Active Deposit:</td>
			<td align=right>{$currency_sign}<b>{$ab_formated.active_deposit}</b></td>
		</tr>
				<tr>
			<td>Last Deposit:</td>
			<td align=right><small>{$last_deposit_date}</small>{$last_deposit}</td>
		</tr>
				<tr>
			<td>Total Deposit:</td>
			<td align=right>{$currency_sign}{$ab_formated.deposit}</td>
		</tr>
				<tr>
			<td>Last Withdrawal:</td>
			<td align=right><small>{$last_withdrawal_date}</small> {$currency_sign}{$last_withdrawal}</td>
		</tr>
				<tr class="last">
			<td>Withdrew Total:</td>
			<td align=right>{$currency_sign}{$ab_formated.withdrawal}</td>
		</tr>
	</table>
</div>

<div class="button_ac">
	<a href="?a=deposit">Make Deposit</a>
	<a href="?a=withdraw">Withdraw</a>
</div>

</div>
{include file="footer.tpl"}