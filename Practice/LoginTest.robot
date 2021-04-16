*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://app.succulent2.eupheme.tech/sign_in

*** Test Cases ***
LoginLitera
    open browser    ${url}  ${browser}
    Maximize Browser Window
    loginToLitera
    FOR    ${xx}   IN RANGE      1   10
         LOG  ${}
    END
*** Keywords ***
loginToLitera
    input text  xpath://input[@id='input-email']    svetukuri@litera.com
    input text  xpath://input[@id='input-password']     QualiT@7890
    click element   xpath://input[@type='submit']
    sleep  10
    Scroll Element Into View    css=*[data-test-id="deal-item-1787"]>div>a
    Sleep    3
    Click Element    css=*[data-test-id="deal-item-1787"]>div>a

 x[pwoe[pew
        : FOR    ${x}    IN RANGE    1    10    opt.STEPS
                   \ Log    ${x}
