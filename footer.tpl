{if $loginpage eq 0 and $templatefile ne "clientregister"}<!-- login and register page without the default header and footer -->
                                        </div><!-- /.main-content -->
                                    <div class="clearfix"></div>
                                </div><!-- end row -->
                            </div><!-- end container -->
                        </section><!-- end main body section -->
                    </div><!-- end page wrapper -->
                </div><!-- end main body -->
            </div><!-- end coodiv inner content -->
        </div><!-- end coodiv content -->
    </div><!-- end coodiv wrapper -->
</div><!-- end coodiv main container -->

<div class="footer">
    <div class="row">
        <div class="col-lg-3">
            <h4></h4>
                <ul>
                    
                </ul>
                </div>
                    <div class="col-lg-2">
                        <h4>Company</h4>
                        <ul>
                            <li><a href="{$WEB_ROOT}/cart.php" target="_blank">{$LANG.navStore}</a></li>
                            <li><a href="{$WEB_ROOT}/contact.php" target="_blank">{$LANG.contactus}</a></li>
                            <li><a href="sponzori">Partners</a></li>
                            {if !$loggedin}
                            <li><a href="{$WEB_ROOT}/login.php" target="_blank">Login</a></li>
                            <li><a href="{$WEB_ROOT}/register.php" target="_blank">{$LANG.register}</a></li>
                            
                            {else}
                            <li><a href="clientarea.php" target="_blank">{$LANG.clientareanavhome}</a></li>
                            {/if}
                        </ul>
                    </div>
                    <div class="col-lg-2">
                        <h4>Game Hosting</h4>
                <ul>
                    <li><a href="https://www.kiaura.eu/cart.php?gid=6">Grand Theft Auto SA Servers</a></li>
                    <li><a href="https://www.kiaura.eu/cart.php?gid=5">Grand Theft Auto V Servers</a></li>
                    <li><a href="#">Counter Strike GO Servers</a></li>
                    <li><a href="https://www.kiaura.eu/cart.php?gid=7">Counter Strike 1.6 Servers</a></li>
                    <li><a href="https://www.kiaura.eu/cart.php?gid=8">Minecraft Servers</a></li>
                </ul>
                    </div>
                    
                    <div class="col-lg-5 text-center">
                        <div id="shape-logo"></div>
                        <img class="img-fluid" width="200" src="https://billing.kiaura.eu/img/logo.png" alt="Footer Logo">
                        
                        <ul class="social">
                            <li><a href="https://www.facebook.com/kiauradm" target="blank" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook Page"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="https://twitter.com/Kiaura_DM" target="blank" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter Page"><i class="fab fa-twitter"></i></a></li>
                            
                            <li><a href="https://discord.gg/Q4SF5cT2Zt" target="blank" data-toggle="tooltip" data-placement="top" title="" data-original-title="Discord Support"><i class="fab fa-discord"></i></a></li>
                        </ul>
                        </div>
                    
                    </div>
                    
<p class="copyright text-center">
Copyright &copy; 2019 - {$date_year}. <a href="https://www.kiaura.eu" style="color: #74788d; font-weight: 600;">{$companyname}</a>. All rights reserved.
</p>
                </div>
                
{/if}
{if $loggedin}<span id="gravataremail" class="hidden">{$clientsdetails.email}</span><!-- gravatar email -->{/if}

<div id="fullpage-overlay" class="hidden">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
            <br>
            <span class="msg"></span>
        </div>
    </div>
</div>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">{$LANG.close}</span>
                </button>
                <h4 class="modal-title">title</h4>
            </div>
            <div class="modal-body panel-body">
                {$LANG.loading}
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-notch fa-spin"></i>
                    {$LANG.loading}
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    {$LANG.close}
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    {$LANG.submit}
                </button>
            </div>
        </div>
    </div>
</div>
{include file="$template/includes/generate-password.tpl"}
{$footeroutput}
<script src="{$WEB_ROOT}/templates/{$template}/js/jquery.slimscroll.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/main.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/md5.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/flickity.pkgd.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/wow.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/demo.js"></script>

<script>
$('.header-main-slider').flickity({
  prevNextButtons: false,
  pageDots: true,
  autoPlay: 5000
  
});
$('.header-main-nav').flickity({
  asNavFor: '.header-main-slider',
  prevNextButtons: false,
  pageDots: false,
  contain: true
  
});
$('.banner-slider').flickity({
  prevNextButtons: false,
  pageDots: true,
});
</Script>
<script>
new WOW().init();
</script>
</body>
</html>
