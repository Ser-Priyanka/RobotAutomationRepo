*** Settings ***
Library    SeleniumLibrary
Library    Collections
*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_008 multiple
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    set selenium speed    2seconds
    Input Text    name:fld_username    pinku
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    pinku@gmail.com
    go to    https://www.google.com
    ${url1}=    get location
    log to console    ${url1}
    go back
    ${url1}=  get location
    log to console    ${url1}
    execute javascript    window.scrollTo(0,1000)
    sleep    10seconds

*** Keywords ***
