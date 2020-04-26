*** Settings ***
Library    SeleniumLibrary
Library     SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}  https://www.thetestingworld.com/testings/


*** Keywords ***



*** Test Cases ***
TC_001 Browser Start
    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window
    Input Text    name:fld_username    pinku
    Input Text   xpath://*[@id="tab-content1"]/form/input[3]    pinku@gmail.com
    Clear Element Text    name:fld_username
    Close Browser