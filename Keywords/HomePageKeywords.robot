*** Settings ***
Library  Selenium2Library
Library  String
Variables    ../Variables/DataForLitera.py
Variables    ../Locators/LoginPageLocators.py
Variables    ../Locators/CreateDealLocators.py

*** Keywords ***

Before Suite

    Open Browser    ${URL}   ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    ${wait}
    Input Text    ${userName_X}    ${UserName}
    Input Text    ${password_X}    ${Password}
    Click Element    ${signIn_X}

Before Test
    Input Text    ${userName_X}    ${UserName}
    Input Text    ${password_X}    ${Password}
    Click Element    ${signIn_X}

The login is successfull
    Element Should Be Visible    ${dealsTitle_X}

I am on Deals Page
    Click Link    ${deals_Nav_Link}
    Element Should Be Visible    ${dealsTitle_X}
    Element Should Be Visible    ${dealList_X}
I have opened a deal
    Click Element    //div[contains(text(),"${random}")]


