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
      <div class="bannerInner fadeInRight wow">
        <div class="ctn-banner">
          <h3><span>brand new </span><br>
            online trading <br>
            <span>platform </span></h3>
            <p>TEMPLATE REX is made so even investors with zero trading experience are successfully making a profit. Our program, unlike any other, guarantees fix hourly interest for investors regardless of market conditions.</p>
            <h4>Earn up 40% Hourly Profit </h4>
            <div class="banner-btt">
              <a href="?a=login" class="bn-btt1">Member Login</a>
              <a href="?a=signup" class="bn-btt2">Registration</a>
            </div>
            <br>
            <div class="banner-btt">

              <a href="https://beta.companieshouse.gov.uk/company/11122233" target="_blank" class="bn-btt1">Check Company Number: #11122233</a> <br>


            </div>
          </div>
        </div>
      </div>

      <div class="profitContainer">
        <div class="profitInner">
          <div class="contentBot zoomIn wow">
            <div class="ctn-bot-row ctn-bot-row1">
              <h3>{$currency_sign} {$settings.info_box_deposit_funds_generated}</h3>
              <p>Total Deposited</p>
            </div>
            <div class="ctn-bot-row ctn-bot-row2">
              <h3>{$settings.info_box_total_accounts_generated}</h3>
              <p>Total members</p>
            </div>
            <div class="ctn-bot-row ctn-bot-row3">
              <h3>{$currency_sign} {$settings.info_box_withdraw_funds_generated}</h3>
              <p>Total payments</p>
            </div>
            <div class="ctn-bot-row ctn-bot-row4">
              <h3>{$settings.site_days_online_generated}</h3>
              <p>days online</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="becomeContainer">
      <div class="becomeInner fadeInRight wow">
        <div class="ctn-become">
          <p>The best investment plan of 2019. You can earn<span> up 40% hourly.</span></p>
        </div>
      </div>
    </div>
    <div class="startedContainer">
      <div class="startedInner">
        <div class="ctn-started">
          <div class="started-row started-part1 fadeInLeft wow">
            <h3>Starter Plan</h3>
            <h1>6%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $1</p>
            <p>Maximum Deposit: $500</p>
            <a href="?a=deposit">deposit</a>
          </div>
          <div class="started-row started-part2 fadeInRight wow">
            <h3>premium Plan</h3>
            <h1>4%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $500</p>
            <p>Maximum Deposit: $1,000</p>
            <a href="?a=deposit">deposit</a>
          </div>
          <div class="started-row started-part3 fadeInRight wow">
            <h3>advanced Plan</h3>
            <h1>20%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $1,000</p>
            <p>Maximum Deposit: $3,000</p>
            <a href="?a=deposit">deposit</a>
          </div>
          <div class="started-row started-part4 fadeInRight wow">
            <h3>vip Plan</h3>
            <h1>40%</h1>
            <h2> Hourly For 24 Hours</h2>
            <p>Minimum Deposit: $3,000</p>
            <p>Maximum Deposit: $10,000</p>
            <a href="?a=deposit">deposit</a>
          </div>
        </div>
      </div>
    </div>








<div class="CalculateContainer">
  <div class="CalculateInner fadeInLeft wow">
    <div class="calu">

     
      <table class="cal">
        <th>
          <td>
            <lebel>Select Plan</lebel>
            <select id="calc_plan" style="
            border: 0px;
            padding: 6px;
            width: 110%;
            border-radius: 30px;
            text-transform: capitalize;
            letter-spacing: 0.5px;
            outline: none;
            margin-top:7px;">
            <option value="1"> 6% Hourly For 24 Hours</option>
            <option value="2">4% Hourly For 24 Hours</option>
            <option value="3">20% Hourly For 24 Hours</option>
            <option value="4"> VIP Hourly For 24 Hours</option>
          </select></td>
        </th>

        <th>
          <td>
            <lebel>Enter Amount</lebel>
            <input id="inv_amount" type="text" value="100"/>
          </td>
        </th>

        <th>
          <td>
            <lebel>Total Profit</lebel>
            <input id="net_profit" type="text" value="100" readonly=""/>
          </td>
        </th>

        <th>
          <td>
            <lebel>Total Percent</lebel>
            <input id="assign_per" type="text" value="100" readonly=""/>
          </td>
        </th>

        <th>
          <td>
            <lebel>Total Return</lebel>
            <input id="total_return" type="text" value="100" readonly=""/>
          </td>
        </th>

      </table>


    </div>
  </div>
</div>














<div class="contentTopContainer">
  <div class="contentTopInner">
    <div class="ctn-forexrial fadeInRight wow">
      <h1>Welcome to <span>{$settings.site_name} LTD</span></h1>
      <p>Looking for highest returns on your investments? {$settings.site_name} LTD is an automatic online investment platform, part of {$settings.site_name} LTD – team of professional traders focusing mainly on Bitcoin and other crypto currencies trading over multiple Exchanges and markets. Thanks to the extraordinary diversification of our investments, we are able to deliver steady income for our investors.</p>
      <p>Headquartered in London in 2019, {$settings.site_name} LTD is already becoming the Panam's fastest growing trading company. Our name is synonymous with effective and profitable  trading solutions where our investors need little to no trading experience at all. With {$settings.site_name} LTD, investors choose one of our four simple investment plans, make a deposit and sit back while our experts go to work. They can withdraw their profit any time and schedule withdrawals quickly and easily through our website. If you have been looking for an easy to use investment platform, choose {$settings.site_name} LTD now and let our professionals help you choose an investment plan that meets your needs today!</p>
    </div>
  </div>
</div>
<div class="depositContainer">
  <div class="depositInner">
    <div class="depositLeft fadeInLeft wow">
      <h3>Last 10 Deposits <img src="styles/assets/images/ctn-ic5.png"></h3>
      <div class="ctn-diposit-part1">
        <table>
          <tbody>{if $last_deposits} {foreach from=$last_deposits item=s}
            <tr>
              <td>{$s.username}</td>
              <td><span>{$currency_sign}{$s.amount}</span>
              </td>
              <td>
                <img src="images/{$s.ec}.gif">
              </td>
            </tr>{/foreach} {else}
            <tr>
              <td>No Data Found</td>
              <td><span>N/A</span>
              </td>
              <td></td>
            </tr>{/if}</tbody>
          </table>
        </div>
      </div>
      <div class="depositRight fadeInRight wow">
        <h3>Last 10 withdrawals <img src="styles/assets/images/ctn-ic6.png"></h3>
        <div class="ctn-diposit-part1">
         <table>
				    			<tbody>
								{if $last_withdrawals}
								{foreach from=$last_withdrawals item=s}
								<tr>
												<td>{$s.username}</td>
												<td><span>{$currency_sign}{$s.amount}</span></td>
												<td><img src="images/{$s.ec}.gif"></td>
											</tr>{/foreach}{else}
											<tr>
												<td>No Data Found</td>
												<td><span>N/A</span></td>
												<td></td>
											</tr>{/if}
																						
																									    			</tbody>
				    		</table>
        </div>
      </div>
    </div>
  </div>
  <div class="investmentContainer">
    <div class="investmentInner zoomIn wow">
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
  <div class="primebitContainer">
    <div class="primebitInner zoomIn wow ">
      <h1><span>3 level</span> Referral commission</h1>
      <div class="ctn-level fadeInLeft wow">
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
      <div class="text-level fadeInRight wow">
        <p>At {$settings.site_name} LTD, we believe there is no better advertisement than satisfied clients. No wonder that majority of our new clients are affiliates from our existing clients. We are proud that our clients like to recommend our financial service to others. Because of this, we are pleased to offer one of the strongest online affiliate programs in the financial service industry, with a high commission rate, customized tools and reports, and timely commission payouts. </p>
        <p>{$settings.site_name} LTD is paying for the popularization of its investment program and anyone can be rewarded. To benefit from this, you have to tell your friends, relatives or colleagues about our company. We offer 3 level referral commissions: The first level of direct referrals from you will entitle you to a commission of 4%, and second level gives you commission of 0.5% and third level is 0.5% . You can surely make a lot of money from the referral commissions you get!</p>
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
