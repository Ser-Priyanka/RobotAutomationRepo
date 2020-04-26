*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeyword/Locator.py
*** Variables ***
${Browser}    Chrome
${URL}  https://www.thetestingworld.com/testings/
*** Test Cases ***
TC_020
    Open Browser    ${URL}   ${Browser}
    Maximize Browser Window
    ${username}=  Read Element Locator  Registration.username_textbox_name
    Input Text    name:${username}    priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    priyanka@gmail.com


*** Keywords ***
Read Element Locator
    [Arguments]    ${pillu}
    ${result}=    read_locator_from_json    ${pillu}
    [return]    ${result}