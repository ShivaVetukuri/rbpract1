*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    [Tags]   Smoke
    Log  This is first smoke 1

TC2
    [Tags]  sanity
    Log To Console    his is sanity test 1

TC3
    [Tags]  smoke
    Log    This is smoke test3

TC4
    [Tags]  sanity
    Log To Console   this is sanity test 4
