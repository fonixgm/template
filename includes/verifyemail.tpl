{if $emailVerificationIdValid}
	<div class="homepagewhmc-alert-fixed alert alert alert-success alert-dismissible wow fadeOutUp" data-wow-delay="12s" role="alert">
  	{$LANG.emailAddressVerified}.
 	<button type="button" class="close coowhm-close" data-dismiss="alert" aria-label="Close">
 	<span class="feather icon-plus" aria-hidden="true"></span>
 	</button>
	</div>
{elseif $emailVerificationIdValid === false}
	<div class="homepagewhmc-alert-fixed alert alert alert-warning alert-dismissible wow fadeOutUp" data-wow-delay="12s" role="alert">
  	{$LANG.emailKeyExpired}.
	<button id="btnResendVerificationEmail" class="btn coowhm-warning active" data-email-sent="{$LANG.emailSent}">{$LANG.resendEmail}</button>
 	<button type="button" class="close coowhm-close" data-dismiss="alert" aria-label="Close">
 	<span class="feather icon-plus" aria-hidden="true"></span>
 	</button>
	</div>
{elseif $emailVerificationPending && !$showingLoginPage}
	<div class="homepagewhmc-alert-fixed alert alert-warning alert-dismissible wow fadeOutUp" data-wow-delay="12s" role="alert">
  	{$LANG.verifyEmailAddress}.<button id="btnResendVerificationEmail" class="btn coowhm-warning active" data-email-sent="{$LANG.emailSent}">{$LANG.resendEmail}</button>
 	<button type="button" class="close coowhm-close" data-dismiss="alert" aria-label="Close">
 	<span class="feather icon-plus" aria-hidden="true"></span>
 	</button>
	</div>
{/if}
