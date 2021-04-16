
*** Settings ***
Library  SeleniumLibrary
Library  String
Library    Process
Suite Setup  Before Suite
#Suite Teardown  Close All Browsers

*** Variables ***
${browser}  chrome
${url}  https://app.succulent2.eupheme.tech/sign_in
${template}   Blank Data Room
${randeal}
#${RANUSER}    Generate Random String   10     [LETTERS]

*** Test Cases ***

CreateADeal
    [Tags]   smoke
    create a deal
    #click Element    xpath://a[text()="Create Deal"]
    #Sleep    5
    #Click Element    xpath://*[@data-test-id='start-with-template']
    ${var1}     Set Variable         Element Should Be Visible    xpath://div[contains(text(),"${Deal Name}")]
    ${var2}=    Convert To Boolean    ${var1}
    ${var3}=    Element Should Not Be Visible    xpath://div[contains(text(),"${Deal Name}")]
    ${var4}=    Convert To Boolean    ${var3}


*** Keywords ***
Before Suite
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    15
    input text  xpath://input[@id='input-email']    shiva.vetukuri@qualitlabs.com
    input text  xpath://input[@id='input-password']     QualiT@7890
    click element   xpath://input[@type='submit']
  # sleep   2
create a deal
   Click Element    css=a[href="/deals"]
   Click Element     css=#create_deal_button

    #click Element    xpath://a[text()="Create Deal"]
  #  sleep   5
    Click Element    xpath://*[@data-test-id='start-with-template']
    Click Element    xpath://div[@data-test-id='deal-type-5']
    #Scroll Element Into View    xpath://div[@data-test-id="deal-template-6"]
    #Wait Until Element Is Visible    xpath://div[@data-test-id="deal-template-6"]
    #Click Element    xpath://div[@data-test-id="deal-template-6"]
    Input Text    xpath://input[@placeholder='Search Templates']    ${template}
    Click Element    xpath://h3[text()='Blank Data Room']
    Click Element    xpath://button[@data-test-id="include-data-room-button-yes"]
    Click Element    xpath://button[@data-test-id="use-voting-threshold-button-yes"]
    Click Element    xpath://span[text()='No']
    Click Element    xpath://div[@data-test-id="modal-bottom-right-button"]/button
    #Click Element    xpath://input[@data-test-id="create_deal_wizard_test_deal_yes"]
    Click Element    xpath://label[text()="Yes"]
    #Select Radio Button     checkbox     Yes
    ${randeal}    Generate Random String  8  [NUMBERS]
    Input Text    xpath://input[@data-test-id="deal-name"]      Dealno${randeal}
    ${Deal Name}    Set Global Variable    Dealno${randeal}
    Click Element    xpath://div[@data-test-id='modal-bottom-right-button']/button
    Click Element    xpath://div[@data-test-id="use-deal-email-no"]
    Click Element    xpath://div[@data-test-id='modal-bottom-right-button']/button
    Click Button    xpath://button[@data-test-id="setup-your-team"]
    Element Should Be Visible    xpath://a[text()="Working Group List"]
    Element Should Be Visible    xpath://h3[text()="Deals / TEST - Dealno${randeal}"]

   # Scroll Element Into View    xpath://div[contains(text(),"${Deal Name}")]
    #Click Element    xpath://div[contains(text(),"${Deal Name}")]
    Click Element    xpath://a[text()="Deal Settings"]
    Wait Until Element Is Visible    xpath://div[text()="Edit Deal"]
    Wait Until Element Is Enabled    css=*[name="Manage Deal Data"]>div
    Click Element    css=*[name="Manage Deal Data"]>div
    Click Button     //button[@data-test-id="delete-deal-button"]
    Wait Until Element Is Enabled    css:#checkbox-15
    Click Element    xpath://span[contains(text(),"I confirm")]
    Click Button    //button[@data-test-id="confirm-request-or-deletion-button"]
    #${var1}=    'Element Should Be Visible    xpath://div[contains(text(),"${Deal Name}")]'
   ${current_deal}  Set Global Variable    xpath://div[contains(text(),"${Deal Name}")]'
 #   ${var2}=    Convert To Boolean    ${var1}
#    ${var3}=    Element Should Not Be Visible    xpath://div[contains(text(),"${Deal Name}")]
 #   ${var4}=    Convert To Boolean    ${var3}


    FOR    ${timeout}    IN RANGE    10s    60s
        Reload Page

        Continue For Loop If
            Element Should Not Be Visible    ${current_deal}


    END



    Close Browser
