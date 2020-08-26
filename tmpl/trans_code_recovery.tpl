{include file="header.tpl"}



<h3>Transaction code recovery:</h3><br>
{if $say == 'sent'}
Your transaction code has been sent to you. Please check your e-mail<br><br>
{/if}

{if $error == 'wrong_secret_answer'}
You enter wrong secret answer<br><br>
{/if}


If you forgot your alternative password, you could recover it here. <br>
<br>

Enter your "secret answer" bellow and press "recover" button.<br><br>

<form method=post>
<input type=hidden name=a value="trans_code_recovery">
<input type=hidden name=action value=recovery>
<input type=text name="sec_answer" value="" class=inpts size=50><br><br>

<input type=submit value="Recover" class=sbmt>
</form>


{include file="footer.tpl"}
