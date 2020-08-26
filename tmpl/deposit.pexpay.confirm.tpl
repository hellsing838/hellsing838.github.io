{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<table cellspacing=0 cellpadding=2 class="form deposit_confirm">
{if $deposit.id > 0}
<tr>
 <th>Plan:</th>
 <td>{$deposit.name|escape:html}</td>
</tr>
<tr>
 <th>Profit:</th>
 <td>{$deposit.percent}% {if $deposit.period == 'end'}after {$deposit.periods} days{else}{$deposit.period_name} for {$deposit.periods} {$deposit.time_units}{if $deposit.time_units != 1}s{/if} {if $deposit.work_week}(mon-fri){/if}{/if}</td>
</tr>
<tr>
 <th>Principal Return:</th>
 <td>{if $deposit.principal_return}Yes{if $deposit.principal_return_hold_percent > 0}, with {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}{else}No (included in profit){/if}</td>
</tr>
<tr>
 <th>Principal Withdraw:</th>
 <td>{if $deposit.principal_withdraw}Available with {$deposit.principal_withdraw_hold_percent|number_format:2}% fee {if $deposit.principal_withdraw_duration_min}after {$deposit.principal_withdraw_duration_min|number_format} days{/if}{if $deposit.principal_withdraw_duration_max} before {$deposit.principal_withdraw_duration_max|number_format} days{/if}{else}Not available{/if}</td>
</tr>
{if $deposit.use_compound == 1}
<tr>
 <th>Compound:</th>
 <td>{$deposit.compound|number_format}%</td>
</tr>
{/if}
{/if} {* $deposit.id *}
<tr>
 <th>Your PerfectMoney account:</th>
 <td>{$account}</td>
</tr>
{if $deposit.converted_amount}
<tr>
 <th>Amount:</th>
 <td>{$currency_sign}{$deposit.converted_amount}</td>
</tr>
<tr>
 <th>{$deposit.converted_fiat} Amount:</th>
 <td>{$deposit.amount|number_format:2}</td>
</tr>
{else}
<tr>
 <th>Amount:</th>
 <td>{$currency_sign}{$deposit.amount}</td>
</tr>
{/if}
</table>

<form name="payment" action="https://www.pexpay.com/payments/autopay.php" method="post">
<input type=hidden name=payment_id value="{$pid}">
<input type='hidden' name='payee_account' value='{$settings.def_payee_account_pexpay}'> 
<input type='hidden' name='amount' value='{$amount}'> 
<input type='hidden' name='memo' value='Deposit to {$settings.site_name} User {$userinfo.username}'> 
<input type='hidden' name='return_url' value='{$settings.site_url}/index.php?a=return_egold&process=yes'> 
<input type='hidden' name='cancel_url' value='{$settings.site_url}/index.php?a=return_egold&process=no'> 
<input type='hidden' name='notify_url' value='{$settings.site_url}/index.php'>
<input type='hidden' name='test' value=''> 
<input type='hidden' name='extra2' value='pexpay_postback'> 
  
<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}
