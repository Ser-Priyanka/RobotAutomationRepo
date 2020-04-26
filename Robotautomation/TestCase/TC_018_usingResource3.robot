*** Settings ***
Resource    ../resources/resource3.robot
*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_17
    ${Res}=    Start Browser and Maximize    ${URL}    ${Browser}
    Input Text    name:fld_username    priyanka
    log to console    ${Res}
*** Keywords ***
