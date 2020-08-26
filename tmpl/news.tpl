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
      <div class="headerInner fadeInLeft wow"> <a href="indexbc14.html?a=home" id="logo"></a>
        <p>1 BTC: <span class="bitCoin"></span></p>
        <div class="hdRight">
          <div class="mainNavRight">
            <div class="navbar">
              <div class="navbar-inner">
                <ul class="nav">
                  <li><a style="color:#c79021!important;" href="?a=home">Home</a></li>
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
          <h3>News &amp; <span>Events</span></h3>
        </div>
      </div>
    </div>

  </div>

  <div class="inside_wrap">
    <div class="inside_inner">




      <center>
        {if $news}
        {section name=s loop=$news}

        <div class="news-title"><a name="1"></a>{$news[s].title}</div>

        <div class="news-text">{$news[s].full_text}</div>
        <div class="news-date">{$news[s].d}</div>
        {/section}
        {else}

        <div class="news-title"><a name="1"></a>No news found</div>

        <div class="news-text">Visit this page regularly to keep yourself updated about latest company news & updates.</div>
        <div class="news-date">..........</div>
        {/if}
      </center>

      {if $colpages > 1}
      <center>
        {if $prev_page > 0}
        <ul class="pagination">
          <li class="page-item"><a class="prev page-link disabled" href="?a=news&page={$prev_page}">&lt;&lt;</a></li>
          {/if}
          {section name=p loop=$pages}
          {if $pages[p].current == 1}
          {$pages[p].page}
          {else}
          <li class="page-item active"><a class="page-link" href="?a=news&page={$pages[p].page}">{$pages[p].page}</a></li>
          {/if}
          {/section}
          {if $next_page > 0}
          <li class="page-item"><a class="next page-link disabled" href="?a=news&page={$next_page}">&gt;&gt;</a></li></ul>
          {/if}
        </center>
        {/if}

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
