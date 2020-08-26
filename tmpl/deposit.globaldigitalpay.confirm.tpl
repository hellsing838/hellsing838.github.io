{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<form method=post action="https://www.globaldigitalpay.com/process.htm">
Your GlobalDigitalPay account <b>{$account}</b><br>
Amount ($US): <b>{$amount_format}</b><br>
{if $use_compound}
{if $compound_min_percents == $compound_max_percents && !$compound_percents}
<input type=hidden name=gdp_custom_3 value="{$compound_min_percents}">
{else}
<table cellspacing=0 cellpadding=2 border=0>
<tr><td nowrap width=1%>Compounding percent: </td>
  {if $compound_percents}
<td><select name='gdp_custom_3' class=inpts>
{section name=p loop=$compound_percents}<option value="{$compound_percents[p].percent}">{$compound_percents[p].percent}%</option>{/section}
</select></td>
  {else}
<td width=99%><input type=text name='gdp_custom_3' value="{$compound_min_percents}" class=inpts size=5></td></tr>
<tr><td nowrap colspan=2>(You can set any percent between <b>{$compound_min_percents}%</b> and <b>{$compound_max_percents}%</b>)</td>
  {/if}
</tr>
</table>
{/if}
{else}
<input type=hidden name=gdp_custom_3 value="0">
{/if}
  <input type=hidden name=gdp_custom_1 value="return_gdp_deposit">
  <input type=hidden name=gdp_custom_2 value="{$pid}">

  <input type=hidden name=store_id value="{$settings.md5altphrase_globaldigitalpay_store_id}">
  <input type=hidden name=member value="{$settings.def_payee_account_globaldigitalpay}">
  <input type=hidden name=action value="payment">
  <input type=hidden name=product value="deposit">
  <input type=hidden name=price value="{$amount}">
  <input type=hidden name=currency value="USD">
  <input type=hidden name=nocheck value="1">
  <input type=hidden name=user_price="0">
  <input type=hidden name=display_quantity value="0">
  <input type=hidden name=quantity value="1">
  <input type=hidden name=success_url value="{$settings.site_url}/index.php?a=return_egold&process=yes">
  <input type=hidden name=fail_url value="{$settings.site_url}/index.php?a=return_egold&process=no">
  <input type=hidden name=status_url value="{$settings.site_url}/index.php?">
  <input type=hidden name=comments value="Deposit to {$settings.site_name} User {$userinfo.username}">
  
<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}
