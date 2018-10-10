<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayWide=false>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="${properties.kcBodyClass!}">
  <div class="${properties.kcLoginClass!}">
    
    <nav class="topNavbar">
        <div class="logoWrapper">
            <div class="Logo"></div>
        </div>
        <div class="loginBar">
            <button class="loginButton dark">Iniciar sesión</button>
            <button class="loginButton light">Registrarse</button>
        </div>
    </nav>

    <div class="secondaryBar">
        <h2 class="secondaryH2">Portal de <span>Co-creación Legislativa</span></h2>
        <div class="linkBar">
            <a>Proyectos</a>
            <a>Cómo participar</a>
            <a>La propuesta</a>
        </div>
    </div>
    

    <div class="${properties.kcFormCardClass!} <#if displayWide>${properties.kcFormCardAccountClass!}</#if>">
      <header class="${properties.kcFormHeaderClass!}">
        <#if realm.internationalizationEnabled  && locale.supported?size gt 1>
            <div id="kc-locale">
                <div id="kc-locale-wrapper" class="${properties.kcLocaleWrapperClass!}">
                    <div class="kc-dropdown" id="kc-locale-dropdown">
                        <a href="#" id="kc-current-locale-link">${locale.current}</a>
                        <ul>
                            <#list locale.supported as l>
                                <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                            </#list>
                        </ul>
                    </div>
                </div>
            </div>
        </#if>
        <h1 id="kc-page-title"><#nested "header"></h1>
      </header>
      <div id="kc-content">
        <div id="kc-content-wrapper">

          <#if displayMessage && message?has_content>
              <div class="alert alert-${message.type}">
                  <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                  <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                  <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                  <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
                  <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
              </div>
          </#if>

          <#nested "form">

          <#if displayInfo>
              <div id="kc-info" class="${properties.kcSignUpClass!}">
                  <div id="kc-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
                      <#nested "info">
                  </div>
              </div>
          </#if>
        </div>
      </div>

    </div>

<footer class="footerWrapper">
    <div class="footerBar">
        <a class="footerLink">Proyectos</a>
        <a class="footerLink">La Propuesta</a>
        <a class="footerLink">Preguntas Frecuentes</a>
        <a class="footerLink">Términos y condiciones</a>
    </div>
    
    <div class="socialBar">
        <a href="/"><div class="socialIconTw"></div></a>
        <a href="/"><div class="socialIconFb"></div></a>

    </div>

    <div class="bottomFooter"><p class="footerP">Honorable Cámara de diputados de la Nación Argentina | Congreso de la Nación Argentina | Av. Rivadavia 1864 | Ciudad Autónoma de Bs. As. (C.P. C1033AAV) | (54-11) 4127-7100</p><p class="footerP">La información contenida en este sitio es de dominio público y puede ser utilizada libremente. Se solicita citar la fuente.</p></div></footer>
  </div>
</body>
</html>
</#macro>