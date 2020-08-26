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

<form action="https://perfectmoney.is/api/step1.asp" method="POST">

<input type=hidden name=pid value={$pid}>
{if $use_compound}
{if $compound_min_percents == $compound_max_percents && !$compound_percents}
<input type=hidden name=compound value="{$compound_min_percents}">
{else}
<table cellspacing=0 cellpadding=2 border=0>
<tr><td nowrap width=1%>Compounding percent: </td>
  {if $compound_percents}
<td><select name='compound' class=inpts>
{section name=p loop=$compound_percents}<option value="{$compound_percents[p].percent}">{$compound_percents[p].percent}%</option>{/section}
</select></td>
  {else}
<td width=99%><input type=text name='compound' value="{$compound_min_percents}" class=inpts size=5></td></tr>
<tr><td nowrap colspan=2>(You can set any percent between <b>{$compound_min_percents}%</b> and <b>{$compound_max_percents}%</b>)</td>
  {/if}
</tr>
</table>
{/if}
{else}
<input type=hidden name=compound value="0">
{/if}
  
  <input type="hidden" name="PAYEE_ACCOUNT" value="{$settings.def_payee_account_perfectmoney}">
  <input type="hidden" name="PAYEE_NAME" value="{$settings.def_payee_name_perfectmoney}">
  <input type="hidden" name="PAYMENT_ID" value="">
  <input type="hidden" name="PAYMENT_AMOUNT" value="{$amount}">
  <input type="hidden" name="PAYMENT_UNITS" value=USD>
  <input type="hidden" name="SUGGESTED_MEMO" value="{$deposit.description}">
  <input type="hidden" name="STATUS_URL" value="{$settings.site_url}/perfectmoney_processing.php">
  <input type="hidden" name="PAYMENT_URL" value="{$settings.site_url}/index.php?a=return_egold&process=yes">
  <input type="hidden" name="PAYMENT_URL_METHOD" value="POST">
  <input type="hidden" name="NOPAYMENT_URL" value="{$settings.site_url}/index.php?a=return_egold&process=no">
  <input type="hidden" name="NOPAYMENT_URL_METHOD" value="POST">
  <input type="hidden" name="BAGGAGE_FIELDS" value="pid{if $use_compound} compound{/if}">

  
<br><input type=submit name=i_submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}

