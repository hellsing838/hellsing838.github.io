{include file="header.tpl"}

<h3>Registration at Grand FX</h3>

{if $deny_registration}
 We are closed for new registrations now.
{elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
 You  do not have a upline. Our system require a upline for each user.
{else}
 {literal}

 <script language=javascript>
 function checkform() {
  if (document.regform.fullname.value == '') {
    alert("Please enter your full name!");
    document.regform.fullname.focus();
    return false;
  }
 {/literal}
 {if $settings.use_user_location}
 {literal}
  if (document.regform.address.value == '') {
    alert("Please enter your address!");
    document.regform.address.focus();
    return false;
  }
  if (document.regform.city.value == '') {
    alert("Please enter your city!");
    document.regform.city.focus();
    return false;
  }
  if (document.regform.state.value == '') {
    alert("Please enter your state!");
    document.regform.state.focus();
    return false;
  }
  if (document.regform.zip.value == '') {
    alert("Please enter your ZIP!");
    document.regform.zip.focus();
    return false;
  }
  if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
    alert("Please choose your country!");
    document.regform.country.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.username.value == '') {
    alert("Please enter your username!");
    document.regform.username.focus();
    return false;
  }
  if (document.regform.password.value == '') {
    alert("Please enter your password!");
    document.regform.password.focus();
    return false;
  }
  if (document.regform.password.value != document.regform.password2.value) {
    alert("Please check your password!");
    document.regform.password2.focus();
    return false;
  }
 {/literal}
 {if $settings.use_transaction_code}
 {literal}
  if (document.regform.transaction_code.value == '') {
    alert("Please enter your transaction code!");
    document.regform.transaction_code.focus();
    return false;
  }
  if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
    alert("Please check your transaction code!");
    document.regform.transaction_code2.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.email.value != document.regform.email1.value) {
    alert("Please retupe your e-mail!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.agree.checked == false) {
    alert("You have to agree with the Terms and Conditions!");
    return false;
  }
  return true;
 }

 function IsNumeric(sText) {
  var ValidChars = "0123456789";
  var IsNumber=true;
  var Char;
  if (sText == '') return false;
  for (i = 0; i < sText.length && IsNumber == true; i++) { 
    Char = sText.charAt(i); 
    if (ValidChars.indexOf(Char) == -1) {
      IsNumber = false;
    }
  }
  return IsNumber;
 }
 </script>
 {/literal}
 
 {if $errors}
  <ul style="color:red">
  {section name=e loop=$errors} 
   {if $errors[e] eq 'full_name'}
    <li>Please enter your full name!
   {/if}
   {if $errors[e] eq 'address'}
    <li>Please enter your address!
   {/if}
   {if $errors[e] eq 'city'}
    <li>Please enter your city!
   {/if}
   {if $errors[e] eq 'state'}
    <li>Please enter your state!
   {/if}
   {if $errors[e] eq 'zip'}
    <li>Please enter your zip!
   {/if}
   {if $errors[e] eq 'country'}
    <li>Please choose your country!
   {/if}
   {if $errors[e] eq 'username'}
    <li>Please enter your username!
   {/if}
   {if $errors[e] eq 'username_exists'}
    <li>Sorry, such user already exists! Please try another username. 
   {/if}
   {if $errors[e] eq 'email_exists'}
    <li>Sorry, such email already exists! Please try another email. 
   {/if} 
   {if $errors[e] eq 'password'} 
    <li>Please enter a password!
   {/if}
   {if $errors[e] eq 'password_confirm'}
    <li>Please check your password!
   {/if}
   {if $errors[e] eq 'password_too_small'}
    <li>The password you provided is too small, please enter at least {$settings.min_user_password_length} characters!
   {/if} 
   {if $errors[e] eq 'transaction_code'} 
    <li>Please enter the Transaction Code!
   {/if} 
   {if $errors[e] eq 'transaction_code_confirm'} 
    <li>Please check your Transaction Code!
   {/if}
   {if $errors[e] eq 'transaction_code_too_small'}
    <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length} characters!
   {/if}
   {if $errors[e] eq 'transaction_code_vs_password'} 
    <li>The Transaction Code should differ from the Password!
   {/if}
   {if $errors[e] eq 'egold'} 
    <li>Please enter your e-gold account number!
   {/if}
   {if $errors[e] eq 'email'} 
    <li>Please enter your e-mail!
   {/if}
   {if $errors[e] eq 'agree'}
    <li>You have to agree with the Terms and Conditions!
   {/if}
   {if $errors[e] eq 'turing_image'}
    <li>Enter the verification code as it is shown in the corresponding box.
   {/if} 
   {if $errors[e] eq 'no_upline'}
    <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or found a referral link in the net.{/if}
   {/if} 
   {if $errors[e] eq 'ip_exists_in_database'}
    <li>Your IP already exists in our database. Sorry, but registration impossible.
   {/if}

   <br> 
  {/section}
  </ul>
 {/if} 


<div class="sign_up_page">
<form method=post onsubmit="return checkform()" name="regform">
<input type=hidden name=a value="signup">
<input type=hidden name=action value="signup">

<div class="personal_info">
<h2><span>YOUR PERSONAL INFORMATION</span></h2>
<table cellspacing=0 cellpadding=2 border=0>
	<tr>
		<td><input type=text name=fullname value="" size=30 placeholder="Your Full Name"></td>
	</tr>
	<tr>
		<td><input type=text name=email value="" size=30 placeholder="Your E-mail Address"></td>
	</tr>
	<tr>
		<td><input type=text name=email1 value="" size=30 placeholder="Retype Your E-mail"></td>
	</tr>
	</table>
</div>


<div  class="login_info">
<h2><span>YOUR LOGIN INFORMATION</span></h2>
<table cellspacing=0 cellpadding=2 border=0>
	<tr>
		<td><input type=text name=username value="" size=30 placeholder="Your Username"></td>
	</tr>
	<tr>
		<td><input type=password name=password value="" size=30 placeholder="Define Password"></td>
	</tr>
	<tr>
		<td><input type=password name=password2 value="" class=inpts size=30 placeholder="Retype Password"></td>
	</tr>
		<tr>
		<td><input type=text name=sq value="" size=30 placeholder="Secret question"></td>
	</tr>
	<tr>
		<td><input type=text name=sa value="" size=30 placeholder="Secret answer"></td>
	</tr>
</table>
</div>

<div  class="plat_info">
<h2><span>YOUR E-CURRENCY ACCOUNTS</span></h2>
<table cellspacing=0 cellpadding=2 border=0>
{section name=ps loop=$pay_accounts}
		<tr>
		<td><input type=text class=inpts size=30 name=pay_account[{$pay_accounts[ps].id}] value="{$pay_accounts[ps].account|escape:html}" placeholder="Your {$pay_accounts[ps].name} Account"></td>
	</tr>{/section}


	</table>
</div>

<div class="upline_info">
<h2><span>UPLINE INFORMATION</span></h2>
	<table cellspacing=0 cellpadding=2 border=0 width=100%>
{if $settings.use_referal_program}
{if $referer}
<tr>
<td><div><span>Your Upline:</span> <a href="mailto:{$referer.email}">{$referer.name}</a> ({$referer.username})</div></td>

</tr>
{else}
{if $settings.force_upline}
 {if $settings.get_rand_ref}
  <tr>
   <td colspan=2>
    You do not have an upline. Our system requires an upline for each user. You'll have to agree to get a random one or find a referral link on the net.
    <input type=checkbox name="rand_ref" value=1>
   </td>
  </tr>
 {else}
  <tr>
   <td colspan=2>
    You do not have an upline. Our system requires an upline for each user.
   </td>
  </tr>
 {/if}
{/if}
{/if}
{/if}
		
	</table>
</div>


<div class="reg_button">
<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
 <td align=center><input type=checkbox name=agree value=1 {if $frm.agree}checked{/if} > I agree with <a href=?a=rules>Terms and conditions</a></td>
</tr>
{if $userinfo.validation_enabled == 1}
<tr>
 <td class=menutxt align=right><img src="?a=show_validation_image&{$userinfo.session_name}={$userinfo.session_id}&rand={$userinfo.rand}"></td>
 <td><input type=text name=validation_number class=inpts size=15></td>
</tr>
{/if}

	<tr>
		<td align=center><input type=submit value="Register"></td>
	</tr>
</table>
</div>
</form>
{/if}
</div>

	{include file="footer.tpl"}		