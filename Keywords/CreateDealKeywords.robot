*** Settings ***
Library   SeleniumLibrary
Library  Selenium2Library
Library  String
Library   ../Locators/CreateDealLocators.py

*** Keywords ***
I am Creating a Test Deal
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
    Skip If    ${mercuryCompliance_No_X}
    Click Element    ${mercuryCompliance_No_X}
    Click Element    ${next_X)
    Click Element    ${testDeal_Yes_X}
    ${randeal}    Generate Random String  8  [NUMBERS]
    Input Text    ${dealName_X}      Dealno${randeal}
    Set Global Variable  ${random}  Dealno${randeal}
    Click Element    ${next_X}
    Click Element    ${dealEmail_No_X}
    Click Element    ${next_X}
    Click Button    ${setUpTeam_X}

Deal is created Successfully
    Element Should Be Visible    ${wgl_X}
    Element Should Be Visible    xpath://h3[text()="Deals / TEST - Dealno${random}"]
