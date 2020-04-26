*** Settings ***
Library    SeleniumLibrary
Library    Collections
*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_010 switch browser
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Open Browser    https://www.google.com    Chrome
    Maximize Browser Window
    switch browser    1
    ${url1}=    get location
    log to console    ${url1}
    switch browser    2
    ${url2}=    get location
    log to console    ${url2}

*** Keywords ***
