*** Settings ***
Resource            base.robot

Test Setup          Abrir Página
Test Teardown       Fechar Página


*** Variables ***
${check_thor}           id:thor
${check_iron}           css:input[value='iron-man']
${check_panther}        xpath://*[@id='checkboxes']/input[7] 


*** Test Cases ***
Test Checkbox ID
    [Tags]          thor
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_thor}
    Checkbox Should Be Selected         ${check_thor}

Test Checkbox CSS Selector
    [Tags]          ironman
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_iron} 
    Checkbox Should Be Selected         ${check_iron} 

Test Checkbox Xpath
    [Tags]          blackpanther
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_panther}
    Checkbox Should Be Selected         ${check_panther}
 