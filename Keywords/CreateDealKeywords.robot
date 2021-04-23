*** Settings ***
#Library   SeleniumLibrary
Library   Selenium2Library
Library  String
Library    Process
variables   ../Variables/DataForLitera.py
variables   ../Locators/CreateDealLocators.py
variables   ../Locators/DealSettingsLocators.py
variables   ../Locators/LoginPageLocators.py

*** Keywords ***
I am selecting Mercury
    Click Element    ${mercuryCompliance_No_X}
    Click Element    ${next_X)
I am Creating a Deal
    Click Link    ${deals_Nav_Link}
    Element Should Be Visible    ${dealsTitle_X}
    Element Should Be Visible    ${dealList_X}
    sleep   4

    Click Element    ${createDeal_X}
    click Element    ${createByType_X}
    Click Element    ${selectDealType_X}
    Input Text    ${searchTemplate_X}   ${template}
    Click Element    ${selectTemplate_X}
    Click Element    ${dataRoom_Yes_X}
    Click Element    ${votingThreshold_Yes_X}
   # Click Element    ${mercuryCompliance_No_X}
   # Run Keyword And Continue On Failure    I am Creating a Test Deal
   # Click Element    ${next_X)
   # Run Keyword And Return Status    I am selecting Mercury
   ${Result}=     Run Keyword And Return Status     Page Should Contain Element  ${mercuryCompliance_No_X}
   IF    ${Result}
       Click Element    ${mercuryCompliance_No_X}
       Click Element    ${next_X)
    ELSE
       Click Element    ${testDeal_Yes_X}
    END

I select deal to be test deal
    Click Element    ${testDeal_Yes_X}
    ${randeal}    Generate Random String  8  [NUMBERS]
    Input Text    ${dealName_X}      Dealno${randeal}
    Set Global Variable  ${random}  Dealno${randeal}
    Click Element    ${next_X}
    Click Element    ${dealEmail_No_X}
    Click Element    ${next_X}
    Wait Until Page Contains Element    ${setUpTeam_X}
    Wait Until Element Is Visible   ${setUpTeam_X}
    Click Button    ${setUpTeam_X}
Deal is created Successfully
    Element Should Be Visible    ${wgl_X}
    Element Should Be Visible    xpath://h3[text()="Deals / TEST - ${random}"]
    
