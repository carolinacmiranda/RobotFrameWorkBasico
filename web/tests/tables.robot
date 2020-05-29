*** Settings ***
Resource            base.robot

Test Setup          Abrir Página
Test Teardown       Fechar Página


*** Test Cases ***
Validate Table Number Line
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors       3       Chris Pratt

Text Line And Validate Others Values
    Go To               ${url}/tables
    ${target}=          Get WebElement      xpath:.//tr[contains(., 'Homem de Ferro')]
    Log                 ${target.text}
    Log To Console      ${target.text}
    Should Contain      ${target.text}      @robertdowneyjr
    Should Contain      ${target.text}      Vingadores      