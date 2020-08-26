{include file="mheader.tpl"}
<style>
body {
    color: #000!important;
}
</style>
<br>
<h3>Your Referrals:</h3><br>
{if $upline.email != ""}
Your upline is <a href=mailto:{$upline.email}>{$upline.name}</a><br><br>
{/if}
<br>
<table width=300 cellspacing=1 cellpadding=1>
<tr>
  <td class=item>Referrals:</td>
  <td class=item>{$total_ref}</td>
</tr><tr>
  <td class=item>Active referrals:</td>
  <td class=item>{$active_ref}</td>
</tr><tr>
  <td class=item>Total referral commission:</td>
  <td class=item>{$currency_sign}{$commissions}</td>
</tr>
</table>
<h3 class="title">Our Custom Banners</h3><br>
<h4>Your Unique Referral Link: {$settings.site_url}/?ref={$userinfo.username}</h4>
<br>
<div style="text-align:left;">
<h4>125x125 banner</h4><br>
<img src="styles/banners/banner_125.gif" alt="" width="125" height="125" /><br /><br>

<textarea  class="reftextarea" cols=35 rows=4>
<a href={$settings.site_url}/?ref={$userinfo.username}><img src="styles/banners/banner_125" alt="" width="125" height="125" /></a>
</textarea><br><br>

<h4>468x60 banner</h4><br>    
<img src="styles/banners/banner_468.gif" alt="" width="468" height="60" /><br /><br>

<textarea  class="reftextarea" cols=35 rows=4>
<a href={$settings.site_url}/?ref={$userinfo.username}><img src="styles/banners/banner_468.gif" alt="" width="468" height="60" /></a>
</textarea>
<br><br>

<h4>728x90 banner</h4><br>
<img src="styles/banners/banner_728.gif" width=728 height=90><br><br>
<textarea  class="reftextarea" cols=35 rows=4>
<a href={$settings.site_url}/?ref={$userinfo.username}><img src="styles/banners/banner_728.gif" alt="" width="728" height="90" /></a>
</textarea><br><br>

</div>
<br>
{if $settings.show_refstat}

<h1>Referral ins/signups</h1><br>
<table cellspacing=0 cellpadding=1 border=0>
<form method=post name=opts>
<input type=hidden name=a value=referals>
 <td align=right>
From: </td>
<td>
<select name=month_from class=inpts>
{section name=month_from loop=$month}
<option value={$smarty.section.month_from.index+1} {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}>{$month[month_from]}
{/section}
</select> &nbsp;
<select name=day_from class=inpts>
{section name=day_from loop=$day}
<option value={$smarty.section.day_from.index+1} {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}>{$day[day_from]}
{/section}
</select> &nbsp;
<select name=year_from class=inpts>
{section name=year_from loop=$year}
<option value={$year[year_from]} {if $year[year_from] == $frm.year_from}selected{/if}>{$year[year_from]}
{/section}
</select>
</td>
 <td rowspan=2>
	&nbsp; <input type=submit value="Go" class=sbmt>
 </td>
</tr>
<tr><td align=right>To:</td><td> <select name=month_to class=inpts>
{section name=month_to loop=$month}
<option value={$smarty.section.month_to.index+1} {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}>{$month[month_to]}
{/section}
</select> &nbsp;
<select name=day_to class=inpts>
{section name=day_to loop=$day}
<option value={$smarty.section.day_to.index+1} {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}>{$day[day_to]}
{/section}
</select> &nbsp;

<select name=year_to class=inpts>
{section name=year_to loop=$year}
<option value={$year[year_to]} {if $year[year_to] == $frm.year_to}selected{/if}>{$year[year_to]}
{/section}
</select>

 </td>
</tr></form></table>


<table width=300 celspacing=1 cellpadding=1 border=0>
<tr>
 <td class=inheader>Date</td>
 <td class=inheader>Ins</td>
 <td class=inheader>Signups</td>
</tr>
{if $show_refstat}
{section name=s loop=$refstat}
<tr>
 <td class=item align=center><b>{$refstat[s].date}</b></td>
 <td class=item align=right>{$refstat[s].income}</td>
 <td class=item align=right>{$refstat[s].reg}</td>
</tr>
{/section}
{else}
<tr>
 <td class=item align=center colspan=3>No statistics found for this period.</td>
</tr>
{/if}
</table><br>
{/if}

{if $settings.show_referals}
{if $show_referals}
<h1>Your referrals:</h1>
<table cellspacing=1 cellpadding=1 border=0>
<tr>
 <td class=inheader>Nickname</td>
 <td class=inheader>E-mail</td>
 <td class=inheader>Status</td>
</tr>
{section name=s loop=$referals}
<tr>
 <td class=item><b>{$referals[s].username}</b></td>
 <td class=item><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
 <td class=item>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
</tr>
{if $referals[s].ref_stats}
<tr>
 <td colspan=3>
  User referrals:
  {section name=l loop=$referals[s].ref_stats}
   <nobr>{$referals[s].ref_stats[l].cnt_active} active of {$referals[s].ref_stats[l].cnt} on level {$referals[s].ref_stats[l].level}{if !$smarty.section.l.last};{/if}</nobr>
  {/section}
 </td>
</tr>
{/if}
{if $referals[s].came_from}
<tr><td colspan=3>
<a href="{$referals[s].came_from}" target=_blank>[User came from]</a>
</td></tr>
{/if}
{/section}
<tr>
 <td colspan=3>&nbsp;</td>
</tr>
<tr>
 <td colspan=3><b>2-10 level referrals:</b> {$cnt_other}</td>
</tr>
<tr>
 <td colspan=3><b>2-10 level active referrals:</b> {$cnt_other_active}</td>
</tr>
</table>
{/if}
{/if}


{include file="mfooter.tpl"}
