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
                  <li><a style="color:#c79021!important;" href="?a=about">About</a></li>
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
          <h3>About <span>us</span></h3>
        </div>
      </div>
    </div>

  </div>

  <div class="contentTopContainer">
    <div class="contentTopInnerAbout">
      <p> Welcome to the website of {$settings.site_name} LTD! If you find yourself here, you are definitely in search of reliable and profitable investment. Yes, you are just at the right place! Our company offers trust assets management of the highest quality on the basis of foreign exchange and profitable trade through Funds exchanges. There is no other worldwide financial market that can guarantee a Hourly ability to generate constant profit with the large price swings of BitCoin and other crypto currencies. Proposed modalities for strengthening cooperation will be accepted by anyone who uses cryptocurrency and knows about its fantastic prospects.</p>
      <p>{$settings.site_name} LTD investment project is a product of careful preparation and fruitful work of experts in the field of mining, highly profitable trade in cryptocurrencies and online marketing. Using modern methods of doing business and a personal approach to each client, we offer a unique investment model to people who want to use cryptocurrencies not only as a method of payment, but also as a reliable source of stable income.</p>
      <p>Your deposit is working on an ongoing basis, and makes profit every hour with the ability to withdraw profit. Your deposit is for life and irretrievable. This proposal would be interesting not only for beginners of cryptocurrency operation, but also for experienced online investors. {$settings.site_name} LTD Business uses only modern mining equipment and trades at the most stable markets, which minimizes the risk of financial loss to customers and guarantees them a stable income accrued every 60 minutes. Join our company today and start making high profits!</p>


    </div>
  </div>
  <div class="investmentContainer">
    <div class="investmentInner">
      <h2><span>{$settings.site_name} LTD</span> BENEFITS</h2>
      <hr>
      <div class="ctn-inves-row">
        <div class="ctn-Instant Instant-part1">
          <h1>Professional Team</h1>
          <p>We are team of professional traders in Forex &amp; Crypto Exchange and Coins trading and Crypto Mining who know how to grab the profit end of the day.</p>
        </div>
        <div class="ctn-Instant Instant-part2">
          <h1>ddos protection</h1>
          <p>We are using one of most experienced , professional and trusted DDoS Protection and mitigation provider.</p>
        </div>
        <div class="ctn-Instant Instant-part3">
          <h1>COMODO SSL Security</h1>
          <p>Our website using Comodo SSL Security, SSL <br> encryption and that confirms that the presented content is the genuine and legitimate.</p>
        </div>
        <div class="ctn-Instant Instant-part4">
          <h1>UK Registered Company</h1>
          <p>We are a legal company registered in the UK providing its investment services to the members all around the world.</p>
        </div>
        <div class="ctn-Instant Instant-part5">
          <h1>Instant Withdrawals</h1>
          <p>Get your payment instantly as soon as you request it! Minimum withdrawal is $0.1. There is no fee for withdrawals of hourly interest.</p>
        </div>
        <div class="ctn-Instant Instant-part6">
          <h1>Great Customer Support</h1>
          <p>We understand how important having reliable support service is to you. Please don't hesitate to contact us should you have any questions and we will get back to you in 24 Hours!</p>
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
