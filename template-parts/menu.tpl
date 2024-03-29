<span class="navigation-header"><i>{$LANG.clientareanavservices}</i></span>

<li data-username="Home" class="nav-item">

<a href="{$WEB_ROOT}/index.php" class="nav-link active"><span class="coodiv-micon"><i class="feather icon-home"></i></span><span class="coodiv-mtext">{$LANG.clientareanavhome}</span><span class="template-new-menu">{$LANG.domainCheckerSalesGroup.new}</span></a>

</li>

<li data-username="store" class="nav-item coodiv-hasmenu">

<a class="nav-link "><span class="coodiv-micon"><i class="feather icon-box"></i></span><span class="coodiv-mtext">{$LANG.navStore}</span></a>

<ul class="coodiv-submenu">

<li><a href="{$WEB_ROOT}/cart.php">{$LANG.navBrowseProductsServices}</a></li>

{foreach from=$productgroups item=productgroup}

<li><a href="{$WEB_ROOT}/cart.php?gid={$productgroup.id}">{$productgroup.name}</a></li>

{/foreach}

{if $loggedin}

<li><a href="cart.php?gid=addons">{$LANG.cartproductaddons}</a></li>

{/if}

{if $loggedin && $renewalsenabled}

<li><a href="{$WEB_ROOT}/cart.php?gid=renewals">{$LANG.domainrenewals}</a></li>

{/if}

{if $registerdomainenabled}

<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>

{/if}

{if $transferdomainenabled}

<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer">{$LANG.transferinadomain}</a></li>

{/if}

</ul>

</li>



<li data-username="domains" class="nav-item coodiv-hasmenu">

<a class="nav-link "><span class="coodiv-micon"><i class="feather icon-globe"></i></span><span class="coodiv-mtext">{$LANG.cartproductdomain}</span></a>

<ul class="coodiv-submenu">

<li><a href="{$WEB_ROOT}/clientarea.php?action=domains">{$LANG.clientareanavdomains}</a></li>

{if $renewalsenabled}

<li><a href="cart.php?gid=renewals">{$LANG.domainrenewals}</a></li>

{/if}

{if $registerdomainenabled}

<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>

{/if}

{if $transferdomainenabled}

<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer">{$LANG.transferinadomain}</a></li>

{/if}

<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=register">{$LANG.navdomainsearch}</a></li>

</ul>

</li>

<li data-username="Home" class="nav-item">

<a href="{$WEB_ROOT}/affiliates.php" class="nav-link"><span class="coodiv-micon"><i class="feather icon-user-plus"></i></span><span class="coodiv-mtext">{$LANG.affiliatestitle}</span></a>

</li>

{if $loggedin}



<li data-username="store" class="nav-item coodiv-hasmenu">

<a class="nav-link "><span class="coodiv-micon"><i class="feather icon-credit-card"></i></span><span class="coodiv-mtext">{$LANG.navbilling}</span></a>

<ul class="coodiv-submenu">

<li><a href="{$WEB_ROOT}/clientarea.php?action=invoices">{$LANG.invoices}</a></li>

<li><a href="{$WEB_ROOT}/clientarea.php?action=quotes">{$LANG.quotestitle}</a></li>

<li><a href="{$WEB_ROOT}/clientarea.php?action=masspay&all=true">{$LANG.masspaytitle}</a></li>

</ul>

</li>

{/if}

<span class="navigation-header"><i>{$LANG.navsupport}</i></span>

<li data-username="support" class="nav-item coodiv-hasmenu">

<a class="nav-link "><span class="coodiv-micon"><i class="feather icon-life-buoy"></i></span><span class="coodiv-mtext">{$LANG.navsupport}</span></a>

<ul class="coodiv-submenu">

<li><a href="{$WEB_ROOT}/supporttickets.php">{$LANG.navtickets}</a></li>

<li><a href="{$WEB_ROOT}/submitticket.php">{$LANG.navopenticket}</a></li>

</ul>

</li>



<li data-username="announcements" class="nav-item">

<a href="{$WEB_ROOT}/announcements.php" class="nav-link "><span class="coodiv-micon"><i class="feather icon-file-text"></i></span><span class="coodiv-mtext">{$LANG.announcementstitle}</span> <span class="template-new-menu another-color">{$LANG.domainCheckerSalesGroup.new}</span></a>

</li>

<li data-username="knowledgebase" class="nav-item">

<a href="{$WEB_ROOT}/knowledgebase.php" class="nav-link "><span class="coodiv-micon"><i class="feather icon-server"></i></span><span class="coodiv-mtext">{$LANG.knowledgebasetitle}</span></a>

</li>

<li data-username="Network" class="nav-item">

<a href="{$WEB_ROOT}/serverstatus.php" class="nav-link "><span class="coodiv-micon"><i class="feather icon-pie-chart"></i></span><span class="coodiv-mtext">{$LANG.networkstatustitle}</span></a>

</li>

<span class="navigation-header"><i>{$LANG.contactus}</i></span>

<li data-username="contact" class="nav-item">

<a href="{$WEB_ROOT}/contact.php" class="nav-link "><span class="coodiv-micon"><i class="feather icon-mail"></i></span><span class="coodiv-mtext">{$LANG.contactus}</span></a>

</li>

{if !$loggedin}

<li data-username="register" class="nav-item">

<a href="{$WEB_ROOT}/register.php" class="nav-link "><span class="coodiv-micon"><i class="feather icon-unlock"></i></span><span class="coodiv-mtext">{$LANG.register}</span></a>

</li>
<script type="text/javascript" src="https://cdn.ywxi.net/js/1.js" async></script>
{/if}