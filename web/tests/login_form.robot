*** Settings ***
Resource            base.robot

Test Setup          Abrir Página
Test Teardown       Fechar Página


*** Test Cases ***
Success Login
    [Tags]                  success_login
    Go To                   ${url}/login
    Login With              stark       jarvis!

    Should See Logged User          Tony Stark

Invalid Password
    [Tags]                  invalid_password
    Go To                   ${url}/login
    Login With              stark       123
            
    Should Contain Login Alert      Senha é invalida!

Invalid Username
    [Tags]                  invalid_username
    Go To                   ${url}/login
    Login With              carol       jarvis!

    Should Contain Login Alert      O usuário informado não está cadastrado!

*** Keywords ***
Login With
    [Arguments]             ${username}                     ${password}

    Input Text              css:input[name=username]        ${username}
    Input Text              css:input[name=password]        ${password}
    Click Element           class:btn-login

Should Contain Login Alert
    [Arguments]             ${expect_message}

    ${message}=             Get WebElement                  id:flash             
    Should Contain          ${message.text}                 ${expect_message}

Should See Logged User
    [Arguments]             ${full_name}

    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!