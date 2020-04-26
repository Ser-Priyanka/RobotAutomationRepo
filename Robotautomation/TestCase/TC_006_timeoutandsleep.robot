*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/


*** Test Cases ***
TC_006 Timeout
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    sleep    10 seconds
    set selenium timeout    20 seconds
    ${tm}=    get selenium timeout
    log to console    ${tm}
    wait until page contains    Testing
    set selenium speed    2seconds
    Input Text    name:fld_username    pinku
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    pinku@gmail.com

*** Keywords ***
