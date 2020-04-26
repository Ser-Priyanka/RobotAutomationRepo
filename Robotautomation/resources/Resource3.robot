*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Start Browser and Maximize
    [Arguments]    ${Userurl}    ${Inputbrowser}
    Open Browser    ${Userurl}    ${Inputbrowser}
    Maximize Browser Window
    ${Title}=    Get Title
    [return]    ${Title}