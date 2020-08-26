{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<form method="POST" action="http://sci.eurogoldcash.com">
Your EuroGoldCash account <b>{$account}</b><br>
Amount ($US): <b>{$amount_format}</b><br>
{if $use_compound}
{if $compound_min_percents == $compound_max_percents && !$compound_percents}
<input type=hidden name=bf_compound value="{$compound_min_percents}">
{else}
<table cellspacing=0 cellpadding=2 border=0>
<tr><td nowrap width=1%>Compounding percent: </td>
  {if $compound_percents}
<td><select name='bf_compound' class=inpts>
{section name=p loop=$compound_percents}<option value="{$compound_percents[p].percent}">{$compound_percents[p].percent}%</option>{/section}
</select></td>
  {else}
<td width=99%><input type=text name='bf_compound' value="{$compound_min_percents}" class=inpts size=5></td></tr>
<tr><td nowrap colspan=2>(You can set any percent between <b>{$compound_min_percents}%</b> and <b>{$compound_max_percents}%</b>)</td>
  {/if}
</tr>
</table>
{/if}
{else}
<input type=hidden name=bf_compound value="0">
{/if}
  <input type=hidden name=bf_pid value="{$pid}">
  <input type=hidden name=bf_return value="return_eurogoldcash">
  
  <input type="hidden" name="egc_acc" value="{$settings.def_payee_account_eurogoldcash}">
  <input type="hidden" name="egc_store" value="{$settings.md5altphrase_eurogoldcash_store}">
  <input type="hidden" name="egc_amnt" value="{$amount}">
  <input type="hidden" name="egc_currency" value="1">
  <input type="hidden" name="egc_comments" value="Deposit to {$settings.site_name} User {$userinfo.username}">
  <input type=hidden name=egc_success_url value="{$settings.site_url}/index.php?a=return_egold&process=yes">
  <input type=hidden name=egc_fail_url value="{$settings.site_url}/index.php?a=return_egold&process=no">
  <input type=hidden name=egc_success_url_method value="2">
  <input type=hidden name=egc_fail_url_method value="2">
  
<br><input type=submit name=i_submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}
