{if in_array('state', $optionalFields)}

    <script>

        var statesTab = 10;

        var stateNotRequired = true;

    </script>

{/if}



<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>

<script type="text/javascript" src="{$BASE_PATH_JS}/PasswordStrength.js"></script>

<script>

    window.langPasswordStrength = "{$LANG.pwstrength}";

    window.langPasswordWeak = "{$LANG.pwstrengthweak}";

    window.langPasswordModerate = "{$LANG.pwstrengthmoderate}";

    window.langPasswordStrong = "{$LANG.pwstrengthstrong}";

    jQuery(document).ready(function()

    {

        jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);

    });

</script>

<div class="custom-login-page">

<div class="login-left-side-custom" style="

    background: #161922;

">

<div id="particles-bg"></div>

<div>

<a class="navbar-brand nobg" href="{$WEB_ROOT}/index.php">

<img class="w-logo" src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="{$companyname}" />

<span class="w-text">{$companyname}</span>

</a>

<span class="login-email-header">admin@kiaura.eu</span>

</div>

<div class="kt-grid">

	<div class="item-middle">

		<h3 class="login-title">Bienvenido al Panel de Registro</h3>

		<span class="login-subtitle">Debe registrarse para acceder a esta página. Estos datos de acceso difieren del nombre de usuario y la contraseña del panel de control de su sitio web.</span>

	</div>

	<div class="item-footer">

	<div class="login-info">

	<div class="login-copyright">© 2019-{$date_year}, {$companyname}</div>

	<div class="login-menu">

	<a href="knowledgebase.php" class="kt-link">{$LANG.knowledgebasetitle}</a>

	<a href="contact.php" class="kt-link">{$LANG.supportticketscontact}</a>

	</div>

	</div>

	</div>

</div>		

</div>







<div class="login-right-side-custom">

<div class="login-head"><a class="phone-homepage-login-link" href="{$WEB_ROOT}/index.php">{$LANG.clientareanavhome}</a><span>{$LANG.alreadyregistered}</span> <a href="login.php">{$LANG.login}</a></div>

<div class="login-wrapper">

<div class="login-form-container register-special">

{if $registrationDisabled}

    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="cart.php" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}

{/if}

{if $errormessage}

    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}

{/if}

{if !$registrationDisabled}

<h5 class="login-title">{$LANG.remoteAuthn.titleSignUpVerb}</h5>



<div id="registration">

    <form method="post" class="using-password-strength" action="{$smarty.server.PHP_SELF}" role="form" name="orderfrm" id="frmCheckout">

        <input type="hidden" name="register" value="true"/>

        <div id="containerNewUserSignup">

            {include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}



            <div class="sub-heading">

                <span>{$LANG.orderForm.personalInformation}</span>

            </div>

            <div class="row">

                <div class="col-sm-6">

                    <div class="form-group">

                        <input type="text" name="firstname" id="inputFirstName" class="field form-control" placeholder="{$LANG.orderForm.firstName}" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} autofocus>

                    </div>

                </div>

                <div class="col-sm-6">

                    <div class="form-group">

                        <input type="text" name="lastname" id="inputLastName" class="field form-control" placeholder="{$LANG.orderForm.lastName}" value="{$clientlastname}" {if !in_array('lastname', $optionalFields)}required{/if}>

                    </div>

                </div>

                <div class="col-sm-6">

                    <div class="form-group">

                        <input type="email" name="email" id="inputEmail" class="field form-control" placeholder="{$LANG.orderForm.emailAddress}" value="{$clientemail}">

                    </div>

                </div>

                <div class="col-sm-6">

                    <div class="form-group">

                        <input type="tel" name="phonenumber" id="inputPhone" class="field" placeholder="{$LANG.orderForm.phoneNumber}" value="{$clientphonenumber}">

                    </div>

                </div>

            </div>



            <div class="sub-heading">

                <span>{$LANG.orderForm.billingAddress}</span>

            </div>



            <div class="row">

                <div class="col-sm-12">

                    <div class="form-group">

                        <input type="text" name="companyname" id="inputCompanyName" class="field" placeholder="{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})" value="{$clientcompanyname}">

                    </div>

                </div>

                <div class="col-sm-12">

                    <div class="form-group">

                        <input type="text" name="address1" id="inputAddress1" class="field form-control" placeholder="{$LANG.orderForm.streetAddress}" value="{$clientaddress1}"  {if !in_array('address1', $optionalFields)}required{/if}>

                    </div>

                </div>

                <div class="col-sm-12">

				<div class="form-group">

                        <input type="text" name="address2" id="inputAddress2" class="field" placeholder="{$LANG.orderForm.streetAddress2}" value="{$clientaddress2}">

                </div>

				</div>

                </div>

				

				<div class="row">

                <div class="col-sm-4">

                    <div class="form-group">

                        <input type="text" name="city" id="inputCity" class="field form-control" placeholder="{$LANG.orderForm.city}" value="{$clientcity}"  {if !in_array('city', $optionalFields)}required{/if}>

                    </div>

                </div>

                <div class="col-sm-5">

                    <div class="form-group">

                        <input type="text" name="state" id="state" class="field form-control" placeholder="{$LANG.orderForm.state}" value="{$clientstate}"  {if !in_array('state', $optionalFields)}required{/if}>

                    </div>

                </div>

                <div class="col-sm-3">

                    <div class="form-group">

                        <input type="text" name="postcode" id="inputPostcode" class="field form-control" placeholder="{$LANG.orderForm.postcode}" value="{$clientpostcode}" {if !in_array('postcode', $optionalFields)}required{/if}>

                    </div>

                </div>

				</div>

				<div class="row">

                <div class="col-sm-12">

                    <div class="form-group">

                        <select name="country" id="inputCountry" class="field form-control">

                            {foreach $clientcountries as $countryCode => $countryName}

                                <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>

                                    {$countryName}

                                </option>

                            {/foreach}

                        </select>

                    </div>

                </div>

                {if $showTaxIdField}

                    <div class="col-sm-12">

                        <div class="form-group">

                        <input type="text" name="tax_id" id="inputTaxId" class="field" placeholder="{lang key=\WHMCS\Billing\Tax\Vat::getLabel()} ({$LANG.orderForm.optional})" value="{$clientsdetails.tax_id}">

                        </div>

                    </div>

                {/if}

				</div>

            </div>

            {if $customfields || $currencies}

            <div class="sub-heading">

                <span>{$LANG.orderadditionalrequiredinfo}</span>

            </div>

            <div class="row">

                {if $customfields}

                {foreach $customfields as $customfield}

                    <div class="col-sm-6">

                        <div class="form-group">

                            <label for="customfield{$customfield.id}">{$customfield.name}</label>

                            <div class="control">

                                {$customfield.input}

                            {if $customfield.description}

                                <span class="field-help-text">{$customfield.description}</span>

                            {/if}

                            </div>

                        </div>

                    </div>

                {/foreach}

                {/if}

                {if $customfields && count($customfields)%2 > 0 }

                    <div class="clearfix"></div>

                {/if}

                {if $currencies}

                <div class="col-sm-6">

                    <div class="form-group">

                        <select id="inputCurrency" name="currency" class="field form-control">

                            {foreach from=$currencies item=curr}

                                <option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>

                            {/foreach}

                        </select>

                    </div>

                </div>

                {/if}

            </div>

            {/if}

        <div id="containerNewUserSecurity" {if $remote_auth_prelinked && !$securityquestions } class="hidden"{/if}>



            <div class="sub-heading">

                <span>{$LANG.orderForm.accountSecurity}</span>

            </div>

            <div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} hidden{/if}">

                <div id="passwdFeedback" style="display: none;" class="alert alert-info text-center col-sm-12"></div>

                <div class="col-sm-6">

                    <div class="form-group">

                        <input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="field" placeholder="{$LANG.clientareapassword}" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>

                    </div>

                </div>

                <div class="col-sm-6">

                    <div class="form-group">

                        <input type="password" name="password2" id="inputNewPassword2" class="field" placeholder="{$LANG.clientareaconfirmpassword}" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>

                    </div>

                </div>

                <div class="col-sm-6">

                    <button type="button" class="btn btn-default btn-sm generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">

                        {$LANG.generatePassword.btnLabel}

                    </button>

                </div>

                <div class="col-sm-6">

                    <div class="password-strength-meter">

                        <div class="progress">

                            <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar">

                            </div>

                        </div>

                        <p class="text-center small text-muted" id="passwordStrengthTextLabel">{$LANG.pwstrength}: {$LANG.pwstrengthenter}</p>

                    </div>

                </div>

            </div>

            {if $securityquestions}

            <div class="row">

                <div class="form-group col-sm-12">

                    <select name="securityqid" id="inputSecurityQId" class="field form-control">

                        <option value="">{$LANG.clientareasecurityquestion}</option>

                        {foreach $securityquestions as $question}

                            <option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>

                                {$question.question}

                            </option>

                        {/foreach}

                    </select>

                </div>

                <div class="col-sm-6">

                    <div class="form-group">

                        <input type="password" name="securityqans" id="inputSecurityQAns" class="field form-control" placeholder="{$LANG.clientareasecurityanswer}" autocomplete="off">

                    </div>

                </div>

            </div>

            {/if}

        </div>







        {include file="$template/includes/captcha.tpl"}



        <br/>

        {if $accepttos}

            <div class="row">

                <div class="col-md-12">

                    <div class="panel panel-danger tospanel">

                        <div class="panel-heading">

                            <h3 class="panel-title"><span class="fas fa-exclamation-triangle tosicon"></span> &nbsp; {$LANG.ordertos}</h3>

                        </div>

                        <div class="panel-body">

                            <div class="col-md-12">

                                <label class="checkbox">

                                    <input type="checkbox" name="accepttos" class="accepttos">

                                    {$LANG.ordertosagreement} <a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>

                                </label>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        {/if}

        <p align="center">

            <input class="btn btn-large btn-primary{$captcha->getButtonClass($captchaForm)}" type="submit" value="{$LANG.clientregistertitle}"/>

        </p>

    </form>

</div>

</div>

</div>

</div>

</div>

{/if}
