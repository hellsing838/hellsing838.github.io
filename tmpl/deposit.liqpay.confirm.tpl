{include file="header.tpl"}

{if $false_data != 1}
<h3>Please confirm your deposit:</h3><br><br>
{literal}
<script>
function liqpaysubmit() {
var compound = 0;
if (document.liqpayform.compound.tagName.toLowerCase() == 'select') {
  compound = document.liqpayform.compound.options[document.liqpayform.compound.selectedIndex].value;
} else {
  compound = document.liqpayform.compound.value;
}
document.liqpayform.order_id.value = document.liqpayform.pid.value+'-'+compound;
}
</script>
{/literal}

<form action="https://liqpay.com/?do=clickNbuy" method="post" accept-charset="utf-8" onsubmit="return liqpaysubmit()" name="liqpayform">
Your LiqPay account <b>{$account}</b><br>
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
  <input type=hidden name=pid value="{$pid}">
  <input type=hidden name=a value="liqpay_postback">
  
  <input type="hidden" name="version" value="1.1">
  <input type="hidden" name="merchant_id" value="{$settings.liqpay_merchantid}">
  <input type="hidden" name="amount" value="{$amount}">
  <input type="hidden" name="currency" value="USD">
  <input type="hidden" name="order_id"  value="{$pid}">
  <input type="hidden" name="description" value="Deposit to {$settings.site_name} User {$userinfo.username}">
  <input type="hidden" name="result_url" value="{$settings.site_url}/index.php?a=return_egold&process=yes">
  <input type="hidden" name="server_url" value="{$settings.site_url}/index.php">
  
<br><input type=submit value="Process" class=sbmt> &nbsp;
<input type=button class=sbmt value="Cancel" onclick="document.location='?a=account'">
</form>
{/if}
{include file="footer.tpl"}