{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<form action="http://www.cosmicpay.com/scis/" method="post">
<input type=hidden name=pid value={$pid}>
Your CosmicPay account <b>{$account}</b><br>
Amount ($US): <b>{$amount_format}</b><br>
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
  <input type="hidden" name="cp_to_acc" value="{$settings.def_payee_account_cosmicpay}">
  <input type="hidden" name="cp_store_name" value="{$settings.md5altphrase_cosmicpay_store}">
  <input type="hidden" name="cp_amount" value="{$amount}">
  <input type="hidden" name="cp_currency" value="USD">
  <input type="hidden" name="cp_comments" value="Deposit to {$settings.site_name} User {$userinfo.username}">
  <input type="hidden" name="cp_suc_url" value="{$settings.site_url}/index.php?a=return_egold&process=yes">
  <input type="hidden" name="cp_fail_url" value="{$settings.site_url}/index.php?a=return_egold&process=no">
  
<br><input type=submit name=i_submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}