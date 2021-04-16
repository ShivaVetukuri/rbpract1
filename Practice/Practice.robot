*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://app.succulent2.eupheme.tech/sign_in
${emailglobal}   xpath://input[@id='input-email']
*** Test Cases ***
LoginLitera

    open browser    ${url}  ${browser}
    Maximize Browser Window
    #${emailglobal}  Set Variable   xpath://input[@id='input-email']
    Element Should Be Visible    ${emailglobal}
    Element Should Be Enabled    ${emailglobal}
    loginToLitera
    sleep   15
    Title Should Be    Litera Transact
    Close Browser

*** Keywords ***
loginToLitera
    input text   ${emailglobal}  svetukuri@litera.com
    sleep  5
    Scroll Element Into View    locator
    Clear Element Text    ${emailglobal}
    input text  xpath://input[@id='input-password']     QualiT@7890
    click element   xpath://input[@type='submit']


