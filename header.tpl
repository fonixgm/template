<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Fonix [ twitter.com/FXRetro ]">
    <meta name="description" content="El servidor de juegos de alto rendimiento con protección anti-DDoS. Servidores de juegos o servidores de alojamiento a partir de sólo 4,00 €/mes.">
	<link rel="icon" href="{$WEB_ROOT}/templates/{$template}/img/favicon.png">
    <meta property="og:title" content="Kiaura hosting" />
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"} 
	{$headoutput}
    </head>
    <body class="body-move {if $loginpage eq 0 and $templatefile ne " clientregister "}full-body-login{/if}" data-phone-cc-input="{$phoneNumberInputStyle}">
    {$headeroutput}
	<!-- {include file="$template/template-parts/demo-panel.tpl"} -->
	<div id="loading-bg"><!-- start loading page -->
	<div class="loading">
	<div class="effect-1 effects"></div>
	<div class="effect-2 effects"></div>
	<div class="effect-3 effects"></div>
	</div>
	<div class="loading-text">{$LANG.loading}</div>
	</div><!-- end loading page -->
	{if $loginpage eq 0 and $templatefile ne "clientregister"}<!-- login and register page without the default header and footer -->
    <nav class="coodiv-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
                <a href="{$WEB_ROOT}/index.php" class="the-logo">
                    <img class="logo" src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="{$companyname}"><!-- site logo image -->
                    <span class="b-title">{$companyname}</span><!-- website title -->
                </a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav coodiv-inner-navbar">
                    {include file="$template/template-parts/menu.tpl"}<!-- the main menu -->
                </ul>
            </div>
        </div>
    </nav>
    <header class="navbar coodiv-header navbar-expand-lg navbar-light">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
            <a href="{$WEB_ROOT}/index.php" class="the-logo">
                    <img class="logo" src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="{$companyname}"><!-- site logo image -->
                    <span class="b-title">{$companyname}</span><!-- website title -->
            </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li><a class="mobile-menu" id="mobile-collapse"><span></span></a></li>
                {include file="$template/template-parts/search.tpl"}<!-- search bar -->
            </ul>
            <ul class="navbar-nav ml-auto">
            {if $languagechangeenabled && count($locales) > 1}
			{include file="$template/template-parts/language.tpl"}<!-- language selector -->
			{/if}
			{include file="$template/template-parts/cart.tpl"}<!-- shopping cart -->
			{include file="$template/template-parts/notifications.tpl"}<!-- the notifications -->
			{include file="$template/template-parts/login.tpl"}<!-- account informations -->
            </ul>
        </div>
    </header>
    <div class="header-hight-fixed"></div>
    <div class="coodiv-main-container">
        <div class="coodiv-wrapper">
            <div class="coodiv-content">
                <div class="coodiv-inner-content">
                    <div class="main-body">
                        <div class="page-wrapper">
					
                            {if $templatefile == 'homepage'} 
							{if $registerdomainenabled || $transferdomainenabled}
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="domain-chaker-homepage" method="post" action="domainchecker.php">
                                        <h5>{$LANG.homebegin}<span>{$LANG.exampledomain}</span></h5>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                                            <span class="input-group-btn">
						                    <button type="submit" class="btn search" value="{$LANG.domainsregister}"><i class="fas fa-shopping-cart"></i><span>{$LANG.domainsregister}</span></button>
						                    <button type="submit" name="transfer" class="btn transfer" value="{$LANG.domainstransfer}"><i class="fas fa-exchange-alt"></i><span>{$LANG.domainstransfer}</span></button>
						                    </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
							{/if}
                         
                                                
                                                    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="
                        margin-bottom: 30px;
                    ">
                                                        <!-- Indicators -->
                                                        <!--<ol class="carousel-indicators">
                                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                                        </ol>-->
                                                        <!-- Wrapper for slides -->
                                                        <div class="carousel-inner">
                                                            <div class="item active">
                                                            <img src="https://i.ibb.co/2YL9F17/mcslajder.jpg" alt="Minecraft Pic">
                                                            <div class="carousel-caption d-sm-block">
                                                            <h3>Host your own <span class="ljubicasta">Minecraft</span> Server</h3>
                                                            <p>The high-performance minecraft server with anti-DDoS protection. Minecraft server's or Hosting server's start at just €6.50/Month.</p>
                                                            <a href="https://www.kiaura.eu/cart.php" class="btn btn-slider btn-blue">view more</a>
                                                            </div>
                                                        </div>

                                                            
                                                        <div class="item">
                                                            <img src="https://i.ibb.co/cxk2BbZ/fivemslider.jpg" alt="Fivem Pic">
                                                            <div class="carousel-caption d-sm-block">
                                                            <h3>need profesional <span class="ljubicasta">fivem</span> Server</h3>
                                                            <p>The high-performance fivem server with anti-DDoS protection. Fivem server's or Hosting server's start at just €9.50/Month.</p>
                                                            <a href="https://www.kiaura.eu/cart.php?gid=5" class="btn btn-slider btn-blue">view more</a>
                                                            </div>
                                                        </div>

                                                        <div class="item">
                                                            <img src="https://i.ibb.co/gDqtNPd/sampslider.jpg" alt="samp pic">
                                                            <div class="carousel-caption d-sm-block">
                                                            <h3>best <span class="ljubicasta">samp</span> game hosting</h3>
                                                            <p>The high-performance samp server with anti-DDoS protection. Samp server's or Hosting server's start at just €4.00/Month.</p>
                                                            <a href="https://www.kiaura.eu/cart.php?gid=6" class="btn btn-slider btn-blue">view more</a>
                                                            </div>
                                                        </div>
                                                        </div>

                                                        <!-- Left and right controls -->
                                                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                                            
                                                            
                                                        </a>
                                                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                                        
                                                            
                                                        </a>
                                                    </div>
                                                </div>
                                                <section id="features">
                                                <div class="row">
                                                <div class="col-md-4">
                                                <div class="media">
                                                <div class="media-left">
                                                <div class="media-icon">
                                                <i class="fas fa-shield-alt"></i>
                                                </div>
                                                </div>
                                                <div class="media-body">
                                                <h4 class="media-heading">DDoS Protection</h4>
                                                <p>We have 1.2 Tb / s DDoS protection with permanent type mitigation on all our servers. Onet + OVH</p>
                                                </div>
                                                </div>
                                                </div>
                                                <div class="col-md-4">
                                                <div class="media">
                                                <div class="media-left">
                                                <div class="media-icon">
                                                <i class="fas fa-globe"></i>
                                                </div>
                                                </div>
                                                <div class="media-body">
                                                <h4 class="media-heading">2 Global locations</h4>
                                                <p>Create a Game server in any of our 2 global locations! Play with low latency from anywhere in the world. Our 2 locations is German and France.</p>
                                                </div>
                                                </div>
                                                </div>
                                                <div class="col-md-4">
                                                <div class="media">
                                                <div class="media-left">
                                                <div class="media-icon">
                                                <i class="fas fa-puzzle-piece"></i>
                                                </div>
                                                </div>
                                                <div class="media-body">
                                                <h4 class="media-heading">Modpack support</h4>
                                                <p>1-Click installs for all of the most popular server types! Swap between modpacks or server types at any time.</p>
                                                </div>
                                                </div>
                                                </div>
                                                </div>
                                                <div class="row">
                                                <div class="col-md-4">
                                                <div class="media">
                                                <div class="media-left">
                                                <div class="media-icon">
                                                <i class="fas fa-stopwatch"></i>
                                                </div>
                                                </div>
                                                <div class="media-body">
                                                <h4 class="media-heading">Uptime 99.9%</h4>
                                                <p>We maintain and uphold high network availability by housing our infrastructure in only the industry's best datacenters with the most reliable uplinks.</p>
                                                </div>
                                                </div>
                                                </div>
                                                <div class="col-md-4">
                                                <div class="media">
                                                <div class="media-left">
                                                <div class="media-icon">
                                                <i class="fas fa-microchip	"></i>
                                                </div>
                                                </div>
                                                <div class="media-body">
                                                <h4 class="media-heading">Powerful processors</h4>
                                                <p>We use CPUs that excel in single-core performance. Up to 4 GHz for standard services & up to 5 GHz on premium.</p>
                                                </div>
                                                </div>
                                                </div>
                                                <div class="col-md-4">
                                                <div class="media">
                                                <div class="media-left">
                                                <div class="media-icon">
                                                <i class="fas fa-user-headset"></i>
                                                </div>
                                                </div>
                                                <div class="media-body">
                                                <h4 class="media-heading">24/7 Tech support</h4>
                                                <p>Speak with a real human being via live chat or support tickets at any time of the day! We're always available.</p>
                                                </div>
                                                </div>
                                                </div>
                                                </div>
                                                </section>
                            <section class="popular-games">
                                    
                                    <div class="flex-grid-fourths">
                                        <div class="col plancol" id="garrysmod">
                                            <img src="https://i.ibb.co/f03L54g/mc-logo.png" alt="">
                                            <p><strong>Start at 1GB</strong></p>
                                            <div class="home-price">
                                                <h2><sup>€</sup>6.50<small>/month</small></h2>
                                            </div>
                                            <a href="https://www.kiaura.eu/cart.php?gid=8" class="button secondary ordbtn"><span>Order Now</span></a>
                                        </div>
                                        <div class="col plancol" id="fivem">
                                            <img src="https://i.ibb.co/3Fkv8DZ/fivemlogo.png" alt="">
                                            Start at <strong>12</strong> slots
                                            <div class="home-price">
                                                <h2><sup>€</sup>9.0<small>/month</small></h2>
                                            </div>
                                            <a href="https://www.kiaura.eu/cart.php?gid=5" class="button secondary ordbtn"><span>Order Now</span></a>
                                        </div>
                                        <div class="col plancol" id="samp">
                                            <img src="https://i.ibb.co/kHwdG7R/samplogo.png" alt="">
                                            Start at <strong>50</strong> slots
                                            <div class="home-price">
                                                <h2><sup>€</sup>4.0<small>/month</small></h2>
                                            </div>
                                            <a href="https://www.kiaura.eu/cart.php?gid=6" class="button secondary ordbtn"><span>Order Now</span></a>
                                        </div>
                                        <div class="col plancol" id="csgo">
                                            <img src="https://i.ibb.co/b6xqGv6/cs16.png" alt="">
                                            Start at <strong>12</strong> slots
                                            <div class="home-price">
                                                <h2><sup>€</sup>4.80<small>/month</small></h2>
                                            </div>
                                            <a href="https://www.kiaura.eu/cart.php?gid=7" class="button secondary ordbtn"><span>Order Now</span></a>
                                        </div>
                                        
                                        
                                    </div>
                                </div>
                            </section>
                            <div class="game-panel panel">

                            <div class="row">
                            <div class="col-md-7 aos-init aos-animate" data-aos="zoom-in-right">
                            <h2>{$LANG.ourgp}</h2>
                            <p>{$LANG.ourgpdesc1}</p>
                            <p>{$LANG.ourgpdesc2}</p>
                            <ul>
                            <div class="row">
                            <div class="col-md-6">
                            <li><i class="far fa-check-circle"></i> Full Access</li>
                            <li><i class="far fa-check-circle"></i> DDoS Protection</li>
                            </div>
                            <div class="col-md-6">
                            <li><i class="far fa-check-circle"></i> 24/7 Customer Support</li>
                            <li><i class="far fa-check-circle"></i> Delivery from 24h</li>
                            </div>

                            </div>
                            </ul>
                            </div>
                            <div class="col-md-5 aos-init aos-animate" data-aos="zoom-in-left">
                            <img class="img-panel" src="https://i.ibb.co/128j8T0/gp-hostyger.png">
                            </div>
                            </div>
                            </div>
                            <section class="home-map">
                                <div class="map">
                                    <span class="pin leftbox standard fr"">
                                        <div class="dcboxlon">
                                            <span class="pulse"></span>
                                            Roubaix
                                            <section>
                                                <h5>Roubaix</h5>
                                            </section>
                                        </div>
                                    </span>
                                    <span class="pin standard rightbox gr">
                                        <div class="dcboxgr">
                                            <span class="pulse"></span>
                                            Frankfurt
                                            <section>
                                                <h5>Frankfurt</h5>
                                            </section>
                                        </div>
                                    </span>
                                </div>
                            </section>
                            <section class="join">
                                <div class="row">
                                    <div class="col-md-4 text-center aos-init aos-animate" data-aos="fade-up">
                                        <i class="fab fa-discord fa-5x"></i>
                                        <h4>Discord</h4>
                                        <a href="https://discord.com/invite/Q4SF5cT2Zt" class="btn btn-join">Unete ahora</a>
                                    </div>
                                    <div class="col-md-4 text-center aos-init aos-animate" data-aos="fade-up">
                                        <i class="fab fa-facebook-square fa-5x"></i>
                                        <h4>Facebook</h4>
                                        <a href="https://www.facebook.com/kiauradm" class="btn btn-join">Unete ahora</a>
                                    </div>
                                    <div class="col-md-4 text-center aos-init aos-animate" data-aos="fade-up">
                                        <i class="fab fa-twitter fa-5x"></i>
                                        <h4>Twitter</h4>
                                        <a href="https://twitter.com/Kiaura_DM" class="btn btn-join">Join now</a>
                                    </div>
                                </div>
                            </section>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card daily-sales">
                                        <div class="card-header">
                                            <h5><i class="feather icon-box"></i>{$LANG.howcanwehelp}</h5>
                                        </div>
                                        <div class="card-block">
                                            <div class="row how-can-help-box-container">
                                                {if $registerdomainenabled || $transferdomainenabled}
                                                <div class="col-md-3 how-can-help-box">
                                                    <div class="how-can-help-box-icon">
                                                    <i class="flaticon-020-gold-ingot"></i>
                                                    </div>
                                                    <span class="the-title">{$LANG.buyadomain}</span>
                                                    <p class="the-text">{$LANG.cartdomainsconfigdesc}</p>
                                                    <a href="domainchecker.php" class="btn btn-how-can-help-box">{$LANG.domainsregister}</a>
                                                </div>
                                                {/if}
                                                <div class="col-md-3 how-can-help-box {if !$registerdomainenabled || !$transferdomainenabled}col-md-offset-1{/if}">
                                                    <div class="how-can-help-box-icon">
                                                        <i class="flaticon-028-coin-1"></i>
                                                    </div>
                                                    <span class="the-title">{$LANG.orderhosting}</span>
                                                    <p class="the-text">{$LANG.cloudSlider.feature01DescriptionTwo}</p>
                                                    <a href="cart.php" class="btn btn-how-can-help-box">{$LANG.ordertitle}</a>
                                                </div>
                                                <div class="col-md-3 how-can-help-box">
                                                    <div class="how-can-help-box-icon">
                                                        <i class="flaticon-034-credit-card-1"></i>
                                                    </div>
                                                    <span class="the-title">{$LANG.makepayment}</span>
                                                    <p class="the-text">{$LANG.masspaydescription}</p>
                                                    <a href="clientarea.php" class="btn btn-how-can-help-box">{$LANG.invoicespaynow}</a>
                                                </div>
                                                <div class="col-md-3 how-can-help-box">
                                                    <div class="how-can-help-box-icon">
                                                        <i class="flaticon-008-idea"></i>
                                                    </div>
                                                    <span class="the-title">{$LANG.getsupport}</span>
                                                    <p class="the-text">{$LANG.cloudSlider.feature02DescriptionTwo}</p>
                                                    <a href="submitticket.php" class="btn btn-how-can-help-box">{$LANG.supportticketspagetitle}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {/if} 
							{include file="$template/includes/verifyemail.tpl"}
                            
                            
                            <section id="main-body">
                            
                                <div class="{if $skipMainBodyContainer}-fluid without-padding{/if}">
                                    <div class="row">
                                        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())} {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                                        
                                        
                                        {/if} 
										{/if}<!-- Container for main page display content -->
                                        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-12{else}col-xs-12{/if} main-content">
                                            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
											{include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=false}
											{/if} 
											{/if}<!-- login and register page without the default header and footer -->
                                            
                                            