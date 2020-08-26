{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<form name="payment" action="https://interkassa.com/lib/payment.php" method="post" 
enctype="application/x-www-form-urlencoded" accept-charset="cp1251">
Your InterKassa account <b>{$account}</b><br>
Amount ($US): <b>{$amount_format}</b><br>
{if $use_compound}
{if $compound_min_percents == $compound_max_percents && !$compound_percents}
<input type=hidden name=ik_baggage_fields value="{$compound_min_percents}">
{else}
<table cellspacing=0 cellpadding=2 border=0>
<tr><td nowrap width=1%>Compounding percent: </td>
  {if $compound_percents}
<td><select name='ik_baggage_fields' class=inpts>
{section name=p loop=$compound_percents}<option value="{$compound_percents[p].percent}">{$compound_percents[p].percent}%</option>{/section}
</select></td>
  {else}
<td width=99%><input type=text name='ik_baggage_fields' value="{$compound_min_percents}" class=inpts size=5></td></tr>
<tr><td nowrap colspan=2>(You can set any percent between <b>{$compound_min_percents}%</b> and <b>{$compound_max_percents}%</b>)</td>
  {/if}
</tr>
</table>
{/if}
{else}
<input type=hidden name=compound value="0">
{/if}
  <input type=hidden name=ik_payment_id value="{$pid}">
  <input type="hidden" name="ik_shop_id" value="{$settings.def_payee_account_interkassa}">

<input type="hidden" name="ik_payment_amount" value="{$amount}">
<input type="hidden" name="ik_payment_desc" value="Deposit to {$settings.site_name} User {$userinfo.username}">
<input type="hidden" name="ik_success_url" value="{$settings.site_url}/index.php?a=return_egold&process=yes">
<input type="hidden" name="ik_success_method" value="GET">
<input type="hidden" name="ik_fail_url" value="{$settings.site_url}/index.php?a=return_egold&process=no">
<input type="hidden" name="ik_fail_method" value="GET">
<input type="hidden" name="ik_status_url" value="{$settings.site_url}/index.php">
<input type="hidden" name="ik_status_method" value="POST">
  
<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}
