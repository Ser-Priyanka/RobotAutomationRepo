*** Settings ***
Resource    ../resources/resource2.robot
*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_17
    Start Browser and Maximize    ${URL}    ${Browser}
    Input Text    name:fld_username    priyanka
*** Keywords ***
