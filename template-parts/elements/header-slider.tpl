<div class="coodiv-main-container slider">
    <div class="silder-container">
        <span class="silder-bg"></span>
        <div class="carousel header-main-slider">
		<!-- start domain slider -->
            <div class="carousel-cell">
                <div class="silder-text">
                    <h5>{$LANG.homebegin}</h5>
                    <p>{$LANG.cartdomainsconfigdesc}</p>
					<form class="domain-chaker-homepage-style-2" method="post" action="domainchecker.php">
                        <input type="text" class="inputdomainsearch" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                            <span class="group-btn-search-tr">
						        <button data-toggle="tooltip" data-placement="left" title="{$LANG.domainsregister}" type="submit" class="btn-search" value="{$LANG.domainsregister}"><i class="feather icon-shopping-cart"></i></button>
						        <button data-toggle="tooltip" data-placement="left" title="{$LANG.domainstransfer}" type="submit" name="transfer" class="btn-transfer" value="{$LANG.domainstransfer}"><i class="feather icon-refresh-cw"></i></button>
						    </span>
                    </form>
                </div>
                <div class="silder-image">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-1/graphic.png" alt="" />
					<div class="img-slider-elements domains">
					<img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-1/com.png" alt="" />
					<img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-1/org.png" alt="" />
					<img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-1/net.png" alt="" />
					</div>
                </div>
            </div>
        <!-- end domain slider -->
		
		<!-- start webhosting slider -->
            <div class="carousel-cell">
                <div class="silder-text">
				<div class="notification-slider"><span class="badge">{$LANG.domainCheckerSalesGroup.hot}!</span><span class="text">We provide a 50% discount for students, teachers and volume licenses.</span></div>
                    <h5>{$LANG.orderForm.chooseFromRange}</h5>
                    <p>{$LANG.cloudSlider.feature01DescriptionTwo}</p>
                    <a class="order-now-button" href="cart.php">{$LANG.orderForm.addHosting}<i class="feather icon-chevron-right"></i></a>
                </div>
                <div class="silder-image">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-2/graphic.png" alt="" />
                </div>
            </div>
        <!-- end webhosting slider -->
		
		<!-- start payment slider -->
            <div class="carousel-cell">
                <div class="silder-text">
                    <h5>{$LANG.subaccountpermsinvoices}</h5>
                    <p>{$LANG.masspaydescription}</p>
                    <a class="order-now-button" href="clientarea.php">{$LANG.invoicespaynow}<i class="feather icon-chevron-right"></i></a>
                </div>
				
				<div class="silder-image">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-3/graphic.png" alt="" />
                </div>
				
            </div>
		<!-- end payment slider -->
		
		<!-- start tickets slider -->	
			<div class="carousel-cell">
                <div class="silder-text">
                    <h5>{$LANG.supportticketsintro}</h5>
                    <p>{$LANG.cloudSlider.feature02DescriptionTwo}</p>
                    <a class="order-now-button" href="submitticket.php">{$LANG.supportticketspagetitle} <i class="feather icon-chevron-right"></i></a>
                </div>
				
				<div class="silder-image">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-4/graphic.png" alt="" />
                </div>
            </div>
		<!-- end tickets slider -->
		
		<!-- start knowledgebase slider -->
			<div class="carousel-cell">
                <div class="silder-text">
                    <h5>{$LANG.clientHomeSearchKb}</h5>
                    <p>{$LANG.knowledgebaseintrotext}</p>
                    <a class="order-now-button" href="#">{$LANG.kbsuggestions}<i class="feather icon-chevron-right"></i></a>
                </div>
				
				<div class="silder-image">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/slider/elements/slide-5/graphic.png" alt="" />
                </div>
				
            </div>
		<!-- end knowledgebase slider -->

        </div>
    </div>

    <div class="carousel header-main-nav">
	<!-- start domain button -->
        <div class="carousel-cell our-sevices-box homepage">
            <img src="{$WEB_ROOT}/templates/{$template}/img/icons/svg/domain.svg" alt="" />
            <span class="carousel-active-statu"><i class="feather icon-check"></i></span>
            <h5>{$LANG.buyadomain}</h5>
            <p>{$LANG.cartdomainsconfigdesc}</p>
        </div>
	<!-- end domain button -->

    <!-- start webhosting button -->
        <div class="carousel-cell our-sevices-box homepage">
            <img src="{$WEB_ROOT}/templates/{$template}/img/icons/svg/hosting.svg" alt="" />
            <span class="carousel-active-statu"><i class="feather icon-check"></i></span>
            <h5>{$LANG.orderhosting}</h5>
            <p>{$LANG.cloudSlider.feature01DescriptionTwo}</p>
        </div>
    <!-- end webhosting button -->
	
	<!-- start payment button -->
        <div class="carousel-cell our-sevices-box homepage">
            <img src="{$WEB_ROOT}/templates/{$template}/img/icons/svg/payment.svg" alt="" />
            <span class="carousel-active-statu"><i class="feather icon-check"></i></span>
            <h5>{$LANG.makepayment}</h5>
            <p>{$LANG.masspaydescription}</p>
        </div>
    <!-- end payment button -->
	
	<!-- start tickets button -->	
        <div class="carousel-cell our-sevices-box homepage">
            <img src="{$WEB_ROOT}/templates/{$template}/img/icons/svg/support.svg" alt="" />
            <span class="carousel-active-statu"><i class="feather icon-check"></i></span>
            <h5>{$LANG.getsupport}</h5>
            <p>{$LANG.cloudSlider.feature02DescriptionTwo}</p>
        </div>
	<!-- end tickets button -->

	<!-- start knowledgebase button -->
		<div class="carousel-cell our-sevices-box homepage">
            <img src="{$WEB_ROOT}/templates/{$template}/img/icons/svg/knowledgebase.svg" alt="" />
            <span class="carousel-active-statu"><i class="feather icon-check"></i></span>
            <h5>{$LANG.knowledgebasetitle}</h5>
            <p>{$LANG.knowledgebaseintrotext}</p>
        </div>
	<!-- end knowledgebase button -->
    </div>
</div>