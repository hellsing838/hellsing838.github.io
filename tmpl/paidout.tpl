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
                  <li><a href="?a=support">SUPPORT</a></li>
                  <li><a style="color:#c79021!important;"href="?a=paidout">PAID</a></li>
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
          <h3>Paid Out</h3>
        </div>
      </div>
    </div>

  </div>

  <div class="inside_wrap">
    <div class="inside_inner">
      <div class="panel-group one" id="accordion" role="tablist" aria-multiselectable="true">


        <script language=javascript>
        function go(p)
        {
          document.opts.page.value=p;
          document.opts.submit();
        }
      </script>


      <form method=post name=opts><input type="hidden" name="form_id" value="15506316346557"><input type="hidden" name="form_token" value="0f46495f8d9e575fc937e3826b02f43a">
        <input type=hidden name=a value=paidout>
        <input type=hidden name=page value=1>
        <table cellspacing=0 cellpadding=0 border=0 width=100%><tr>

          <td align=right>
            <select name=month class=inpts>
              {section name=month loop=$month}
              <option value={$smarty.section.month.index+1} {if $smarty.section.month.index+1 == $frm.month}selected{/if}>{$month[month]}
                {/section}
              </select> &nbsp;
              <select name=year class=inpts>
                {section name=year loop=$year}
                <option value={$year[year]} {if $year[year] == $frm.year}selected{/if}>{$year[year]}
                  {/section}
                </select>
              </td>
              <td width=1% nowrap>
                &nbsp; <input type=submit value="Go" class=sbmt>
              </td>
            </tr></table>
          </form>
          <br>

          <table style="border-collapse: separate!important;" spacing=1 cellpadding=2 border=1 width=100%><tr>
            <tr>
              <td align="center" width="18%">Username</td>
              <td align="center" width="22%">Date</td>
              <td align="center" width="17%">Amount</td>
              <td align="center" width="18%">Payment</td>
              <td align="center" width="25%">Transaction ID</td>
            </tr>
            {if $stats}
            {section name=s loop=$stats}
            <tr>
              <td align="center" width="18%"><b>{$stats[s].username}</b></td>
              <td align="center" width="22%"><b>{$stats[s].dd}</b></td>
              <td align="center" width="17%"><b>{$currency_sign}{$stats[s].actual_amount}</b></td>
              <td align="center" width="18%"><b><img src="images/47.gif"></b></td><!--REMOVE EXAMPLE ICON BITCOIN-->
              <!-- <td align="center" width="18%"><b><img src="images/{$s.ec}.gif"></b></td> ENABLE-->
              <td align="center" width="25%"><b><a style="color: #fff;" href="https://chain.so/tx/BTC/{$stats[s].batch}" target="_blank">{if $stats[s].batch != 0}{$stats[s].batch} {else}  <label style="color: #fff;"> - </label>  {/if}</a></b></td>
            </tr>
            {/section}
            {else}
            <tr>
              <td colspan=3 align=center>No transactions found</td>
            </tr>
            {/if}
            {if $stats}
            <tr>
              <td colspan=2 align=center><b>TOTAL</b></td>
              <td colspan=3 align=center><b>{$currency_sign}{$total_withdraw}</b></td>
            </tr>
            {/if}
          </table>

          <br>
          {if $colpages > 1}
          <center>
            {if $prev_page > 0}
            <a href="javascript:go('{$prev_page}')">&lt;&lt;</a>
            {/if}
            {section name=p loop=$pages}
            {if $pages[p].current == 1}
            {$pages[p].page}
            {else}
            <a href="javascript:go('{$pages[p].page}')">{$pages[p].page}</a>
            {/if}
            {/section}
            {if $next_page > 0}
            <a href="javascript:go('{$next_page}')">&gt;&gt;</a>
            {/if}
          </center>
          {/if}
          <br>

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

              </div></div>
            </div>
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
