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
    Input Text    name:fld_username    pinku
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    pinku@gmail.com
    Open Browser    https://www.google.com    Chrome
    close all browsers

*** Keywords ***
