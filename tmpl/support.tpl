<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>{$settings.site_name} LTD</title>
  <link rel="shortcut icon" href="styles/assets/images/favicon.png">
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">
  <link href='styles/assets/bootstrap.min.css' rel='stylesheet' type='text/css'>
  <link href='styles/assets/animate.css' rel='stylesheet' type='text/css'>
  <link href='styles/assets/custom_back.css' rel='stylesheet' type='text/css'>
  <script src='styles/assets/jquery.js' type='text/javascript'></script>
  <script src="styles/assets/wow.js"></script>
  <script src="styles/assets/wow.min.js"></script>
  <script type="text/javascript" src="styles/assets/bootstrap.min.js"></script>
  <script src='styles/assets/setting.js' type='text/javascript'></script>


  <script type="text/javascript">
  //// Get the CryptoCurrency Information from the API
  jQuery.ajax({
    url: "https://min-api.cryptocompare.com/data/pricemulti",
    data: "fsyms=BTC,ETH,DASH,LTC&tsyms=USD",
    dataType : 'json',
  }).done(function(data) {
    // console.log( "BTC : " + data.BTC.USD + ", ETH : " + data.ETH.USD + ", DASH : " + data.DASH.USD, LTC : " + data.LTC.USD);
    jQuery(".dashCoin").html('$' + data.DASH.USD);
    jQuery(".ethCoin").html('$' + data.ETH.USD);
    jQuery(".bitCoin").html('$' + data.BTC.USD);
    jQuery(".liteCoin").html('$' + data.LTC.USD);
  }).fail(function() {
    console.log( "API error" );
  });
</script>

</head>
<body>
  <div class="wrapper">
    <div class="headerContainer">
      <div class="headerInner fadeInLeft wow"> <a href="?a=home" id="logo"></a>
        <p>1 BTC: <span class="bitCoin"></span></p>
        <div class="hdRight">
          <div class="mainNavRight">
            <div class="navbar">
              <div class="navbar-inner">
                <ul class="nav">
                  <li><a href="?a=home">Home</a></li>
                  <li><a href="?a=about">About</a></li>
                  <li><a href="?a=faq">FAQ </a></li>
                  <li><a href="?a=cust&amp;page=investment">PLANS</a></li>
                  <li><a href="?a=affiliate">AFFILIATES</a></li>
                  <li><a style="color:#c79021!important;" href="?a=support">SUPPORT</a></li>
                  <li><a href="?a=paidout">PAID</a></li>
                  {if $userinfo.logged != 1}
                  <li><a href="?a=login" class="login">login</a></li>
                  <li><a href="?a=signup" class="signup">signup</a></li>{else}

                  <li><a href="?a=account" class="signup">dashboard</a></li>{/if}
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="bannerContainer">
      <div class="bannerInner insideheader fadeInRight wow">
        <div class="ctn-banner">
          <h3>Contact <span>Us</span></h3>
        </div>
      </div>
    </div>



    <div class="inside_wrap">
      <div class="inside_inner">

        <div class="contact_right">
          <h1 class="section-header">Feedback Form</h1>



{if $say eq 'send'}
Message has been successfully sent. We will back to you in next 24 hours. Thank you.<br><br>
{else}

<script language=javascript>
{if $userinfo.logged == 1}
{literal}
function checkform() { 
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{else}
{literal}
function checkform() {
  if (document.mainform.name.value == '') {
    alert("Please type your full name!");
    document.mainform.name.focus();
    return false;
  }
  if (document.mainform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.mainform.email.focus();
    return false;
  }
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{/if}
</script>

<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value=support>
<input type=hidden name=action value=send>

 {if $errors}
  <ul style="color:red">
   {if $errors.turing_image == 1}
    <li>Invalid turing image</li>
   {/if}
   {if $errors.invalid_email == 1}
    <li>Invalid email address</li>
   {/if}
  </ul>
 {/if}

<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>Your Name:</td>
{if $userinfo.logged}
 <td><b>{$userinfo.name}</b></td>
{else}
 <td><input type="text" name="name" value="{$frm.name|escape:htmlall}" size=30 class=inpts></td>
{/if}
</tr>
<tr>
 <td>Your Email:</td>
{if $userinfo.logged}
 <td><b>{$userinfo.email}</b></td>
{else}
 <td><input type="text" name="email" value="{$frm.email|escape:htmlall}" size=30 class=inpts></td>
{/if}
</tr>
<tr>
 <td colspan=2>Message:<br><br><textarea name=message class=inpts cols=45 rows=4>{$frm.message|escape:htmlall}</textarea>
</tr>
{if $userinfo.validation_enabled == 1}
<tr>
 <td class=menutxt><img src="{"?a=show_validation_image&`$userinfo.session_name`=`$userinfo.session_id`&rand=`$userinfo.rand`"|encurl}"></td>
 <td><input type=text name=validation_number class=inpts size=30></td>
</tr>
{/if}
<tr>
 <td>&nbsp;</td>
 <td><input type=submit value="Send" class=sbmt></td>
</tr></table>
</form>

{/if}



    </div>
    <div class="contact_mid">
      <p> Do You have any questions? We strongly recommend that you start searching for the necessary information in the <a href="?a=faq">FAQ</a> section. If you need advice or technical assistance, do not hesitate to contact our specialists. Customer support is available around the clock. You just need to send a letter or a request via the feedback form to promptly receive the necessary assistance. Remember that the more detailed the description of your problem is, the sooner it will be solved. Do not forget to indicate your login, if you are a registered user of the website.</p>
      <div class="email">
        <h2>Our E-mail:</h2>
        <p><a href="mailto:admin@{$settings.site_name}.com">admin@{$settings.site_name}.com</a></p>
      </div> </div>  </div> </div>
    </div>
  </div>
</div>
<div class="solidContainer">
  <div class="solidInner zoomIn wow">
    <div class="solid"> <a href="#" class="solid1"></a> <a href="#" class="solid2"></a> <a href="#" class="solid3"></a> <a href="#" class="solid4"></a> <a href="#" class="solid5"></a> <a href="#" class="solid6"></a> <a href="#" class="solid7"></a> <a href="#" class="solid8"></a> </div>
  </div>
</div>
<div class="footerContainer">
  <div class="footerInner">
    <div class="ft-row1">
      <h3>&copy; 2019. <a href="?a=home">{$settings.site_name}</a> ALL RIGHTS RESERVED</h3>
    </div>
    <div class="ft-part1"> <a href="?a=about">ABOUT US</a> <a href="?a=news">NEWS</a> <a href="?a=faq">FAQ</a> <a href="?a=support">support</a> <a href="?a=rules">terms</a><a href="?a=paidout">ALL PAID </a></div>
  </div>
</div>
</body>

</html>
