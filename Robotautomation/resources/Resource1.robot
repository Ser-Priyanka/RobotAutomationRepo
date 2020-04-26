*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/
*** Keywords ***
Start Browser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
Close Browser Window
    ${Title}=    Get Title
    log to console    ${Title}
    close browser
Before each Test Suit
    log to console    Registration Test Suit Strating
After each Test Suit
    log to console    Registration Test Suit Completed

