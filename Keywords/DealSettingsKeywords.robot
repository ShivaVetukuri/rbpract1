*** Settings ***
Library   Selenium2Library
Library  String
Variables   ../Locators/DealSettingsLocators.py

*** Keywords ***
I am deleting deal
    Wait Until Element Is Visible    ${deal_Settings}
    Click Element   ${deal_Settings}
    #Sleep    4
    #Click Element   xpath://a[text()="Deal Settings"]
    Wait Until Element Is Visible    ${edit_Deal_Form}
    Wait Until Element Is Enabled    ${manage_Deal_Data}
    Click Element   ${manage_Deal_Data}
    Click Button   ${delete_Deal_btn}
    Wait Until Element Is Enabled  ${checkbox_Enable}
    Click Element   ${confirm_Delete_Checkbox}
    Click Button   ${confirm_Deletion_btn}