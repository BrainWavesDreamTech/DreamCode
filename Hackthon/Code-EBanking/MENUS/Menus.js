document.write('<STYLE type="text/css">');
document.write('#menuspan21270515 { position:absolute; width:200px; }');
document.write('#menutable21270515 { border-width: 0px; border-color: #000000; border-style:solid}');
document.write('td.menucell21270515 { padding:2px; padding-left:4px; padding-right:4px; background:#E0BCD3; border:2px outset #76A5E8; text-align:LEFT; }');
document.write('#submenutable21270515 { background: #E2D8CB; border-width: 1px; border-color: #F4CACC; border-style:solid}');
document.write('td.topcell21270515 {text-decoration:none; color:#FFFFFF; font-weight: 700; font-family: Verdana; font-size: 12px; font-style:normal; text-align:CENTER; }');
document.write('a.topitem21270515 {text-decoration:none; color:#FFFFFF; font-weight: 700; font-family: Verdana; font-size: 12px; font-style:normal; } ');
document.write('a.topitem21270515:hover {text-decoration:none; color:#FFFFFF; font-weight: 700; font-family: Verdana; font-size: 12px; font-style:normal;}');
document.write('a.subitem21270515 {text-decoration:none; color:#000000; font-weight: 400; font-family: Verdana; font-size: 11px; font-style:normal; } ');
document.write('a.subitem21270515:hover {text-decoration:none; color:#FFDD00; font-weight: 400; font-family: Verdana; font-size: 11px; font-style:normal; }');
document.write('P.MN21270515 {margin:0px; color:#FFFFFF; font-weight: 700; font-family: Verdana; font-size:12px; font-style:normal;  }');
document.write('P.SMN21270515 {text-decoration:none; color:#000000; font-weight: 400; font-family: Verdana; font-size:11px; font-style:normal; margin:0px; }');
document.write('#submenu21270515_0 { position:absolute; left:198px; top:0px; visibility:hidden; }');
document.write('#submenu21270515_1 { position:absolute; left:198px; top:116px; visibility:hidden; }');
document.write('#submenu21270515_2 { position:absolute; left:198px; top:174px; visibility:hidden; }');
document.write('</style>');
var thisbrowser21270515
var hidetimer21270515 = null;
if(document.layers){ thisbrowser21270515='NN4'; }
if(document.all){ thisbrowser21270515='IE'; }
if(!document.all && document.getElementById){ thisbrowser21270515='NN6'; }
function showmenu21270515(menuname)
{
if(thisbrowser21270515=='NN4') document.layers[menuname].visibility = 'visible';
if(thisbrowser21270515=='IE') document.all[menuname].style.visibility = 'visible';
if(thisbrowser21270515=='NN6') document.getElementById(menuname).style.visibility = 'visible';
if(hidetimer21270515) clearTimeout(hidetimer21270515);}
function timermenu21270515()
{
if(hidetimer21270515) clearTimeout(hidetimer21270515);hidetimer21270515 = setTimeout("hideall21270515();",1000);
}
function hidemenu21270515(menuname)
{
if(thisbrowser21270515=='NN4') document.layers[menuname].visibility = 'hidden';
if(thisbrowser21270515=='IE') document.all[menuname].style.visibility = 'hidden';
if(thisbrowser21270515=='NN6') document.getElementById(menuname).style.visibility = 'hidden';
}
function hilite21270515(menuitem) 
{
if(typeof(currentpage21270515)!='undefined' && menuitem==currentpage21270515) return;
if(thisbrowser21270515=='IE') document.all[menuitem].style.backgroundColor = '#517389';
if(thisbrowser21270515=='NN6') document.getElementById(menuitem).style.backgroundColor = '#517389';
if(hidetimer21270515) clearTimeout(hidetimer21270515);}
function unhilite21270515(menuitem) 
{
if(typeof(currentpage21270515)!='undefined' && menuitem==currentpage21270515) return;
if(thisbrowser21270515=='IE') document.all[menuitem].style.backgroundColor = '#E0BCD3';
if(thisbrowser21270515=='NN6') document.getElementById(menuitem).style. backgroundColor = '#E0BCD3';
if(hidetimer21270515) clearTimeout(hidetimer21270515);hidetimer21270515 = setTimeout("hideall21270515();",1000);
}
function hideall21270515()
{
hidemenu21270515('submenu21270515_0');
hidemenu21270515('submenu21270515_1');
hidemenu21270515('submenu21270515_2');
}
function openmenu21270515(menuname)
{
showmenu21270515(menuname);
if(menuname!='submenu21270515_0') hidemenu21270515('submenu21270515_0');
if(menuname!='submenu21270515_1') hidemenu21270515('submenu21270515_1');
if(menuname!='submenu21270515_2') hidemenu21270515('submenu21270515_2');
}
document.write('<table width=200 cellspacing=0 border=0 cellpadding=0>');
document.write('<tr><td align=left valign=top>');
document.write('<span id="menuspan21270515">');
document.write('<table width=200 id="menutable21270515" cellspacing=0 cellpadding=3 >');
document.write('<tr>');
document.write('<td align=center background="/l7.gif">&nbsp;</td>');
document.write('<td class="topcell21270515" align=CENTER width=200 height=50 background="/b7.gif" onMouseOver="openmenu21270515(\'submenu21270515_0\')" onMouseOut="timermenu21270515();">')
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=CENTER>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="topitem21270515">AccountsInformation</a>');
document.write('</td><td><p class="SMN21270515"><font face="webdings" color=#C447FF>4</font></p></td></tr></table>');
document.write('</td>');
document.write('<td align=center background="/r7.gif">&nbsp;</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=center background="/l7.gif">&nbsp;</td>');
document.write('<td class="topcell21270515" align=CENTER width=200 height=50 background="/b7.gif" onMouseOver="hideall21270515()">')
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=CENTER>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="topitem21270515">Investment Services</a>');
document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('<td align=center background="/r7.gif">&nbsp;</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=center background="/l7.gif">&nbsp;</td>');
document.write('<td class="topcell21270515" align=CENTER width=200 height=50 background="/b7.gif" onMouseOver="openmenu21270515(\'submenu21270515_1\')" onMouseOut="timermenu21270515();">')
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=CENTER>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="topitem21270515">Payments & Transfer</a>');
document.write('</td><td><p class="SMN21270515"><font face="webdings" color=#C447FF>4</font></p></td></tr></table>');
document.write('</td>');
document.write('<td align=center background="/r7.gif">&nbsp;</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=center background="/l7.gif">&nbsp;</td>');
document.write('<td class="topcell21270515" align=CENTER width=200 height=50 background="/b7.gif" onMouseOver="openmenu21270515(\'submenu21270515_2\')" onMouseOut="timermenu21270515();">')
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=CENTER>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="topitem21270515">Customer Service</a>');
document.write('</td><td><p class="SMN21270515"><font face="webdings" color=#C447FF>4</font></p></td></tr></table>');
document.write('</td>');
document.write('<td align=center background="/r7.gif">&nbsp;</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=center background="/l7.gif">&nbsp;</td>');
document.write('<td class="topcell21270515" align=CENTER width=200 height=50 background="/b7.gif" onMouseOver="hideall21270515()">')
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=CENTER>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="topitem21270515">Information Centre</a>');
document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('<td align=center background="/r7.gif">&nbsp;</td>');
document.write('</tr>');
document.write('</table><p>');
document.write('<div id="submenu21270515_0">');
document.write('<table id="submenutable21270515" width=150 cellspacing=1>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_0_0" onMouseOver="hilite21270515(\'s21270515_0_0\')" onMouseOut="unhilite21270515(\'s21270515_0_0\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Account Balance</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_0_1" onMouseOver="hilite21270515(\'s21270515_0_1\')" onMouseOut="unhilite21270515(\'s21270515_0_1\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Account Statement</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_0_2" onMouseOver="hilite21270515(\'s21270515_0_2\')" onMouseOut="unhilite21270515(\'s21270515_0_2\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >T-Pin</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('</table></div>');
document.write('<div id="submenu21270515_1">');
document.write('<table id="submenutable21270515" width=150 cellspacing=1>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_1_0" onMouseOver="hilite21270515(\'s21270515_1_0\')" onMouseOut="unhilite21270515(\'s21270515_1_0\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Account to Account Transfer</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_1_1" onMouseOver="hilite21270515(\'s21270515_1_1\')" onMouseOut="unhilite21270515(\'s21270515_1_1\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Credit Payment</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_1_2" onMouseOver="hilite21270515(\'s21270515_1_2\')" onMouseOut="unhilite21270515(\'s21270515_1_2\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >DD Request</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_1_3" onMouseOver="hilite21270515(\'s21270515_1_3\')" onMouseOut="unhilite21270515(\'s21270515_1_3\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Utility Payment</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_1_4" onMouseOver="hilite21270515(\'s21270515_1_4\')" onMouseOut="unhilite21270515(\'s21270515_1_4\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Payment Recieved</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_1_5" onMouseOver="hilite21270515(\'s21270515_1_5\')" onMouseOut="unhilite21270515(\'s21270515_1_5\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Online Prepaid Mobile Recharge</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('</table></div>');
document.write('<div id="submenu21270515_2">');
document.write('<table id="submenutable21270515" width=150 cellspacing=1>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_2_0" onMouseOver="hilite21270515(\'s21270515_2_0\')" onMouseOut="unhilite21270515(\'s21270515_2_0\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Cheque Book Request</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_2_1" onMouseOver="hilite21270515(\'s21270515_2_1\')" onMouseOut="unhilite21270515(\'s21270515_2_1\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Deposit Request Slip</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_2_2" onMouseOver="hilite21270515(\'s21270515_2_2\')" onMouseOut="unhilite21270515(\'s21270515_2_2\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Change ATM Code</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('<tr>');
document.write('<td align=LEFT class="menucell21270515" height=20 id="s21270515_2_3" onMouseOver="hilite21270515(\'s21270515_2_3\')" onMouseOut="unhilite21270515(\'s21270515_2_3\')">');
document.write('<table cellspacing=0 cellpadding=0 border=0 width="100%"><tr><td width="90%" align=LEFT>');
document.write('<a href="http://www.seltecodownload.com/unregistered.smmk.php" target="_self" title="" class="subitem21270515" >Stop Payment</a>')
;document.write('</td><td><p class="SMN21270515">&nbsp;</p></td></tr></table>');
document.write('</td>');
document.write('</tr>');
document.write('</table></div>');
document.write('</span></td></tr></table>');
