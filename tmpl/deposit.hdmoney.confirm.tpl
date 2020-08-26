{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<form  method="post" action="https://www.hd-money.com/sci/Payment.aspx">
Your HD-money account number <b>{$account}</b><br>
Amount ({$currency_sign}): <b>{$amount_format}</b><br>

{if $use_compound}
{if $compound_min_percents == $compound_max_percents && !$compound_percents}
<input type=hidden name=hd_var2 value="{$compound_min_percents}">
{else}
<table cellspacing=0 cellpadding=2 border=0>
<tr><td nowrap width=1%>Compounding percent: </td>
  {if $compound_percents}
<td><select name='hd_var2' class=inpts>
{section name=p loop=$compound_percents}<option value="{$compound_percents[p].percent}">{$compound_percents[p].percent}%</option>{/section}
</select></td>
  {else}
<td width=99%><input type=text name='hd_var2' value="{$compound_min_percents}" class=inpts size=5></td></tr>
<tr><td nowrap colspan=2>(You can set any percent between <b>{$compound_min_percents}%</b> and <b>{$compound_max_percents}%</b>)</td>
  {/if}
</tr>
</table>
{/if}
{else}
<input type=hidden name=hd_var2 value="0">
{/if}

<br>

<input type="hidden" name="hd_recipient" value="{$settings.def_payee_account_hdmoney}" />
<input type="hidden" name="hd_sci_name" value="{$settings.hdmoney_storename}" />
<input type="hidden" name="hd_amount" value="{$amount}" />
<input type="hidden" name="hd_item_name" value="Deposit" />
<input type="hidden" name="hd_description" value="Deposit to {$settings.site_name} User {$userinfo.username}" />
<input type="hidden" name="hd_callback_url" value="{$settings.site_url}/index.php" />
<input type="hidden" name="hd_callback_method" value="post" />
<input type="hidden" name="hd_success_url" value="{$settings.site_url}/index.php?a=return_egold&process=yes" />
<input type="hidden" name="hd_failure_url" value="{$settings.site_url}/index.php?a=return_egold&process=no" />
<input type="hidden" name="hd_var1" value="{$pid}" />


<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}
