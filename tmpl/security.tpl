{include file="mheader.tpl"}

<style>
body {
    color: #000!important;
}
</style>

<h3>Advanced login security settings:</h3><br><br>

<form method=post>
<input type=hidden name=a value="security">
<input type=hidden name=action value="save">
Detect IP Address Change Sensitivity<br>
<input type=radio name=ip value=disabled {if $security.detect_ip == 'disabled'}checked{/if}>Disabled<br>
<input type=radio name=ip value=medium {if $security.detect_ip == 'medium'}checked{/if}>Medium<br>
<input type=radio name=ip value=high {if $security.detect_ip == 'high'}checked{/if}>High<br><br>

Detect Browser Change<br>
<input type=radio name=browser value=disabled {if $security.detect_browser == 'disabled'}checked{/if}>Disabled<br>
<input type=radio name=browser value=enabled {if $security.detect_browser == 'enabled'}checked{/if}>Enabled<br><br>
<input type=submit value="Set" class=sbmt>
</form>


{include file="mfooter.tpl"}
