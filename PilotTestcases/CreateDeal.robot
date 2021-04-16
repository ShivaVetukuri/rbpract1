*** Settings ***
Library  SeleniumLibrary
Resource    ../Keywords/HomePageKeywords.robot
Resource    ../Keywords/CreateDealKeywords.robot
Resource    ../Keywords/DealSettingsKeywords.robot
Suite Setup   Before suite
Default Tags


*** Test Cases ***

1. Start with deal creation
   Given I am on Deals Page
   When I am Creating a Test Deal
   Then Deal is created Successfully
   And Close Browser

2. Delete Deal
   Given I am on Deals Page
   And I have opened a deal
   When I am deleting deal



