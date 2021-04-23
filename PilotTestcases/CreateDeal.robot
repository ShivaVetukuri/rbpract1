*** Settings ***
Library  Selenium2Library
Resource    ../Keywords/HomePageKeywords.robot
Resource    ../Keywords/CreateDealKeywords.robot
Resource    ../Keywords/DealSettingsKeywords.robot
Suite Setup     Before suite


*** Test Cases ***
1. Start with deal creation
   [Tags]   smoke
   Given I am on Deals Page
   When I am Creating a Deal
   Then I select deal to be test deal
   Then Deal is created Successfully


2. Delete Deal
   Given I am on Deals Page
   And I have opened a deal
   When I am deleting deal




