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
            dataType: 'json',
        }).done(function(data) {
            // console.log( "BTC : " + data.BTC.USD + ", ETH : " + data.ETH.USD + ", DASH : " + data.DASH.USD, LTC : " + data.LTC.USD);
            jQuery(".dashCoin").html('$' + data.DASH.USD);
            jQuery(".ethCoin").html('$' + data.ETH.USD);
            jQuery(".bitCoin").html('$' + data.BTC.USD);
            jQuery(".liteCoin").html('$' + data.LTC.USD);
        }).fail(function() {
            console.log("API error");
        });

    </script>
</head>

<body>
    <div class="wrapper">
        <div class="headerContainer">
            <div class="headerInner fadeInLeft wow">
                <a href="?a=home" id="logo"></a>
                <p>1 BTC: <span class="bitCoin"></span>
                </p>
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
                                    <li><a href="?a=support">SUPPORT</a></li>
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
                    <h3><span>Open New Account</span></h3>
                </div>
            </div>
        </div>
    </div>

    <body class="loginarea">
        <div class="signuppage">
            <div class="becomeInner">
                <div class="loginwrappers">
                    <div class="form-container signup">
                        {if $deny_registration}
                        <h3 style="text-align: center;"> We are closed for new registrations now.</h3>
                        {elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
                        <h5 style="text-align: center;"> You do not have a upline. Our system require a upline for each user.</h5>
                        {else}
                        {literal}

                        <script language=javascript>
                            function checkform() {
                                if (document.regform.fullname.value == '') {
                                    alert("Please enter your full name!");
                                    document.regform.fullname.focus();
                                    return false;
                                } {
                                    /literal} {
                                    if $settings.use_user_location == 1
                                } {
                                    literal
                                }
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
                                } {
                                    /literal} { /
                                    if
                                } {
                                    literal
                                }
                                if (document.regform.username.value == '') {
                                    alert("Please enter your username!");
                                    document.regform.username.focus();
                                    return false;
                                }
                                if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
                                    alert("For username you should use English letters and digits only!");
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
                                } {
                                    /literal} {
                                    if $settings.use_transaction_code
                                } {
                                    literal
                                }
                                if (document.regform.transaction_code.value == '') {
                                    alert("Please enter your transaction code!");
                                    document.regform.transaction_code.focus();
                                    return false;
                                }
                                if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
                                    alert("Please check your transaction code!");
                                    document.regform.transaction_code2.focus();
                                    return false;
                                } {
                                    /literal} { /
                                    if
                                } {
                                    literal
                                }
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

                                for (i in document.regform.elements) {
                                    f = document.regform.elements[i];
                                    if (f.name && f.name.match(/^pay_account/)) {
                                        if (f.value == '') continue;
                                        var notice = f.getAttribute('data-validate-notice');
                                        var invalid = 0;
                                        if (f.getAttribute('data-validate') == 'regexp') {
                                            var re = new RegExp(f.getAttribute('data-validate-regexp'));
                                            if (!f.value.match(re)) {
                                                invalid = 1;
                                            }
                                        } else if (f.getAttribute('data-validate') == 'email') {
                                            var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
                                            if (!f.value.match(re)) {
                                                invalid = 1;
                                            }
                                        }
                                        if (invalid) {
                                            alert('Invalid account format. Expected ' + notice);
                                            f.focus();
                                            return false;
                                        }
                                    }
                                }

                                if (document.regform.agree.checked == false) {
                                    alert("You have to agree with the Terms and Conditions!");
                                    return false;
                                }

                                return true;
                            }

                            function IsNumeric(sText) {
                                var ValidChars = "0123456789";
                                var IsNumber = true;
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
                            <li>Please enter valid username! It should contains English letters and digits only.
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
                                {if $errors[e] eq 'invalid_perfectmoney_account'}
                            <li>Please enter USD PerfectMoney account number!
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

                                {if $errors[e] eq 'invalid_account_format'}
                                {foreach from=$account_errors item=err}
                            <li>{$err}
                                {/foreach}
                                {/if}

                                <br>
                                {/section}
                        </ul>
                        {/if}
                        

                        <form method=post onsubmit="return checkform()" name="regform">
                            <input type=hidden name=a value="signup">
                            <input type=hidden name=action value="signup">
                            <div style="width:48%; float:left">
                                <table width="100%" border=0 cellspacing=0>
                                    <tr>
                                        <td width="100%">
                                            <label>Your Full Name</label>
                                            <input placeholder="" type=text name=fullname value="{$frm.fullname|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Username</label>
                                            <input placeholder="" type=text name=username value="{$frm.username|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your E-mail</label>
                                            <input placeholder="" type=text name=email value="{$frm.email|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Retype E-mail</label>
                                            <input placeholder="" type=text name=email1 value="{$frm.email1|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Secret Question</label>
                                            <input placeholder="" type=text name=sq value="{$frm.sq|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Secret Answer</label>
                                            <input placeholder="" type=text name=sa value="{$frm.sa|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Define Password</label>
                                            <input placeholder="" type=password name=password value="{$frm.password|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Retype Password</label>
                                            <input placeholder="" type=password name=password2 value="{$frm.password2|escape:" quotes"}" class=inpts size=30>
                                        </td>
                                    </tr>
                                   
                                    {if $settings.use_transaction_code}
                                    <tr>

                                        <td> <label>Define Transaction Code:</label><input type=password name=transaction_code value="{$frm.transaction_code|escape:" quotes"}" class=inpts size=30></td>
                                    </tr>
                                    <tr>

                                        <td><label>Retype Transaction Code:</label> <input type=password name=transaction_code2 value="{$frm.transaction_code2|escape:" quotes"}" class=inpts size=30></td>
                                    </tr>
                                    {/if}
                                    {if $ti.check.signup}
                                    <tr>

                                        <td><label> Code: <img src="{" ?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}"> </label> <input type=text name=validation_number class=inpts size=30></td>
                                    </tr>
                                    {/if}
                                </table>
                            </div>
                            {literal}
                            <div style="width:48%; float:right">
                                <table width="100%" border=0 cellspacing=0>
                                    <tr>
                                        <td>
                                            <label>Your PerfectMoney Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[18] value="" data-validate="regexp" data-validate-regexp="^U\d{5,}$" data-validate-notice="UXXXXXXX" placeholder="U12345678">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Payeer Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[43] value="" data-validate="regexp" data-validate-regexp="^P\d{5,}$" data-validate-notice="PXXXXXXX" placeholder="P12345678">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Bitcoin Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[48] value="" data-validate="regexp" data-validate-regexp="^[13][a-km-zA-HJ-NP-Z1-9]{25,34}$" data-validate-notice="Bitcoin Address" placeholder="1YourBitcoinAddressmwGAiHnxQWP8J2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Litecoin Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[68] value="" data-validate="regexp" data-validate-regexp="^[LM3][a-km-zA-HJ-NP-Z1-9]{25,34}$" data-validate-notice="Litecoin Address" placeholder="LYourLitecoinsAddresstwHAionxQTL2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Dogecoin Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[79] value="" data-validate="regexp" data-validate-regexp="^[DA9][a-km-zA-HJ-NP-Z1-9]{25,34}$" data-validate-notice="Dogecoin Address" placeholder="Drm13YuL9EbYDiXVkLcCZg2QewDLBPH6Ze">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Ethereum Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[69] value="" data-validate="regexp" data-validate-regexp="^(0x)?[0-9a-fA-F]{40}$" data-validate-notice="Ethereum Address" placeholder="0x6c78b0ac68bf953c7fdbec0fd65bd5df933r8473">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Bitcoin Cash Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[77] value="" data-validate="regexp" data-validate-regexp="^[\w\d]{25,43}$" data-validate-notice="Bitcoin Cash Address" placeholder="qqsAr4Ui98fsTmUkJv7HMQkJpU8ZKGzgAB">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Your Dash Account</label>
                                            <input type=text class=inpts size=30 name=pay_account[71] value="" data-validate="regexp" data-validate-regexp="^X[0-9a-zA-Z]{33}$" data-validate-notice="Dash Address" placeholder="XpU2LbWJfuzNN7JLtJ1D5qQRS9ReQLnReX">
                                        </td>
                                    </tr>
                                    {/literal}
                                    <tr>
                                        <td colspan=2>
                                            <input type=checkbox name=agree value=1>I agree with <a href="?a=rules">Terms and conditions</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type=submit value="Register" class=sbmt>
                                        </td>
                                    </tr>
                                </table>
                        </form>


                        {/if}
                    </div>
                </div>
            </div>
            <div class="loginpageright" style="padding-top:200px">
                <a href="https://beta.companieshouse.gov.uk/company/11731430" target="_blank">
                    <img src="styles/assets/images/loginpageright.png" alt="" />
                </a>
            </div>
        </div>
        </div>
    </body>
    <div class="primebitContainer">
        <div class="primebitInner">
            <h1><span>3 level</span> Referral commission</h1>
            <div class="ctn-level">
                <div class="livel-part">
                    <h2>4<span>%</span></h2>
                    <p>livel1</p>
                </div>
                <div class="livel-img">
                    <img src="styles/assets/images/call-ic2.png">
                </div>
                <div class="livel-part">
                    <h2>0.5<span>%</span></h2>
                    <p>livel2</p>
                </div>
                <div class="livel-img">
                    <img src="styles/assets/images/call-ic2.png">
                </div>
                <div class="livel-part">
                    <h2>0.5<span>%</span></h2>
                    <p>livel3</p>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <div class="solidContainer">
        <div class="solidInner zoomIn wow">
            <div class="solid">
                <a href="#" class="solid1"></a>
                <a href="#" class="solid2"></a>
                <a href="#" class="solid3"></a>
                <a href="#" class="solid4"></a>
                <a href="#" class="solid5"></a>
                <a href="#" class="solid6"></a>
                <a href="#" class="solid7"></a>
                <a href="#" class="solid8"></a>
            </div>
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
