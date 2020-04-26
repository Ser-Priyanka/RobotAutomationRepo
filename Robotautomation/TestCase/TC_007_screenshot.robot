*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/


*** Test Cases ***
TC_007 Screenshot
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${default}=    get selenium implicit wait
    log to console    ${default}
    set selenium implicit wait    20seconds
    ${default}=    get selenium implicit wait
    log to console    ${default}
    capture page screenshot    TC_007_screenshot1.png
    Input Text    name:fld_username    pinku
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    pinku@gmail.com

*** Keywords ***
