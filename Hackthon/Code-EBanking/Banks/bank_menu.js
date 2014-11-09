//©Xara Ltd
if(typeof(loc)=="undefined"||loc==""){var loc="";if(document.body&&document.body.innerHTML){var tt=document.body.innerHTML;var ml=tt.match(/["']([^'"]*)bank_menu.js["']/i);if(ml && ml.length > 1) loc=ml[1];}}

var bd=0
document.write("<style type=\"text/css\">");
document.write("\n<!--\n");
document.write(".bank_menu_menu {z-index:999;border-color:#000000;border-style:solid;border-width:"+bd+"px 0px "+bd+"px 0px;background-color:#c9d8a2;position:absolute;left:0px;top:0px;visibility:hidden;}");
document.write(".bank_menu_plain, a.bank_menu_plain:link, a.bank_menu_plain:visited{text-align:left;background-color:#c9d8a2;color:#242020;text-decoration:none;border-color:#000000;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:9pt;font-family:Verdana, Arial, Helvetica, sans-serif;font-weight:bold;}");
document.write("a.bank_menu_plain:hover, a.bank_menu_plain:active{background-color:#666b46;color:#f4f3eb;text-decoration:none;border-color:#000000;border-style:solid;border-width:0px "+bd+"px 0px "+bd+"px;padding:2px 0px 2px 0px;cursor:hand;display:block;font-size:9pt;font-family:Verdana, Arial, Helvetica, sans-serif;font-weight:bold;}");
document.write("\n-->\n");
document.write("</style>");

var fc=0xf4f3eb;
var bc=0x666b46;
if(typeof(frames)=="undefined"){var frames=0;}

startMainMenu("",0,0,1,3,0)
mainMenuItem("bank_menu_b1",".gif",36,206,"javascript:;","","Account Information",1,2,"bank_menu_plain");
mainMenuItem("bank_menu_b2",".gif",36,206,"javascript:;","","Investment Services",1,2,"bank_menu_plain");
mainMenuItem("bank_menu_b3",".gif",36,206,"javascript:;","","Downloads",1,2,"bank_menu_plain");
mainMenuItem("bank_menu_b4",".gif",36,206,"javascript:;","","Home",2,2,"bank_menu_plain");
mainMenuItem("bank_menu_b5",".gif",36,206,"javascript:;","","Button Text",2,2,"bank_menu_plain");
mainMenuItem("bank_menu_b6",".gif",36,206,"javascript:;","","Button Text",2,2,"bank_menu_plain");
endMainMenu("",0,0);

startSubmenu("bank_menu_b3","bank_menu_menu",82);
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("&copy;Xara","http://www.xara.com/products/MenuMaker/mmtrialmenu.asp","","bank_menu_plain");
endSubmenu("bank_menu_b3");

startSubmenu("bank_menu_b2","bank_menu_menu",82);
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("Menu Text","javascript:;","","bank_menu_plain");
submenuItem("&copy;Xara","http://www.xara.com/products/MenuMaker/mmtrialmenu.asp","","bank_menu_plain");
endSubmenu("bank_menu_b2");

startSubmenu("bank_menu_b1","bank_menu_menu",138);
submenuItem("Account Balance","Default5.aspx","","bank_menu_plain");
submenuItem("Account Statement","Default5.aspx","","bank_menu_plain");
submenuItem("Tpin","javascript:;","","bank_menu_plain");
submenuItem("&copy;Xara","http://www.xara.com/products/MenuMaker/mmtrialmenu.asp","","bank_menu_plain");
endSubmenu("bank_menu_b1");

loc="";
