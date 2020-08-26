{include file="header.tpl"}
<style>
a {
    color: #F5C60A;
}
a:hover {
    color: #fff;
}
</style>

{if $false_data != 1}
<h3>Deposit Confirmation:</h3>
<br><br>

<table cellspacing=0 cellpadding=2 class="form deposit_confirm">
{if $deposit.id > 0}
<tr>
 <th>Plan:</th>
 <td>{$deposit.name|escape:html}</td>
 <td rowspan=6>{$coin_payment_image}</td>
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
{if $deposit.converted_amount}
<tr>
 <th>Amount:</th>
 <td>{$currency_sign}{$deposit.converted_amount}</td>
</tr>
<tr>
 <th>{$deposit.converted_fiat} Amount:</th>
 <td>{$deposit.amount}</td>
</tr>
{else}
<tr>
 <th>Amount:</th>
 <td>{$currency_sign}{$deposit.amount}</td>
</tr>
{/if}
</table>

{$payment_form}
{/if}
{include file="footer.tpl"}

