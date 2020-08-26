{include file="mheader.tpl"}


	<div class="account_ctn_Right_Part1">
						<div class="acr_Part1 acr_Part11">
							<h4>username:</h4>
							<h3>{$userinfo.username}</h3>
						</div>
						<div class="acr_Part1 acr_Part12">
							<h4>Registration Date:</h4>
							<h3>{$userinfo.create_account_date}</h3>
						</div>
						<div class="acr_Part1 acr_Part13">
							<h4>last access:</h4>
							<h3>{$last_access}&nbsp;</h3>
						</div>
					</div>
					<div class="account_ctn_Right_Part2">
						<div class="acr_Part2 acr_Part21 ">
							<div class="acr_Part2_title">
								<p>Account Balance</p>
								<h3>{$currency_sign}<b>{$ab_formated.total}</b></h3>
							</div>
							<div class="acr_Part2_ctn">
								<a href="?a=withdraw">request payment</a>
							</div>
						</div>
						<div class="acr_Part2 acr_Part22 ">
							<div class="acr_Part2_title">
								<p>earned total</p>
								<h3>{$currency_sign}{$ab_formated.earning}</h3>
							</div>
							<div class="acr_Part2_ctn">
								<a href="?a=deposit">make a deposit</a>
							</div>
						</div>
						<div class="acr_Part2 acr_Part23">
							<div class="acr_Part2_title">
								<p>active deposit</p>
								<h3>{$currency_sign}<b>{$ab_formated.active_deposit}</b></h3>
							</div>
							<div class="acr_Part2_ctn">
								<ul>
									<li>Last Deposit:<span>{$currency_sign}<b>{$last_deposit|default:"0.00"}</b><span></li>
									<li>Total Deposit:<span>{$currency_sign}<b>{$ab_formated.deposit}</b><span></li>
								</ul>
							</div>
						</div>
						<div class="acr_Part2 acr_Part24">
							<div class="acr_Part2_title">
								<p>total withdrawal</p>
								<h3>{$currency_sign}<b>{$ab_formated.withdrawal}</b></h3>
							</div>
							<div class="acr_Part2_ctn">
								<ul>
									<li>Last Withdrawal: <span>{$currency_sign}<b>{$last_withdrawal|default:"0.00"}</b><span></li>
									<li>Pending Withdrawal: <span>{$currency_sign}<b>{$ab_formated.withdraw_pending}</b><span></li>
								</ul>
							</div>
						</div>
					</div>


                                                              
<br><br>
<br>
{include file="mfooter.tpl"}

				