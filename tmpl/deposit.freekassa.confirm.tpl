{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>

<form name="payment" action="http://www.free-kassa.ru/merchant/cash.php" method="get">
Amount ($US): <b>{$amount_format}</b><br>
{if $use_compound}
{if $compound_min_percents == $compound_max_percents && !$compound_percents}
<input type=hidden name=us_compound value="{$compound_min_percents}">
{else}
<table cellspacing=0 cellpadding=2 border=0>
<tr><td nowrap width=1%>Compounding percent: </td>
  {if $compound_percents}
<td><select name='us_compound' class=inpts>
{section name=p loop=$compound_percents}<option value="{$compound_percents[p].percent}">{$compound_percents[p].percent}%</option>{/section}
</select></td>
  {else}
<td width=99%><input type=text name='us_compound' value="{$compound_min_percents}" class=inpts size=5></td></tr>
<!--tr><td nowrap colspan=2>(You can set any percent between <b>{$compound_min_percents}%</b> and <b>{$compound_max_percents}%</b>)</td-->
  {/if}
</tr>
</table>
{/if}
{else}
<input type=hidden name=us_compound value="0">
{/if}
<input type=hidden name="o" value="{$pid}">
<input type="hidden" name="m" value="{$settings.def_payee_account_freekassa}">
<input type="hidden" name="oa" value="{$amount}">
<input type="hidden" name="s" value="{$signature}"> 
<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}
