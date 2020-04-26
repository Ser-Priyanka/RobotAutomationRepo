*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_004_keyword
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Enter Username Email    Priyanka    priyankasis@gmail.com
    Enter Username Email    Pinku    pinkusis@gmail.com

*** Keywords ***
Enter Username Email
    [Arguments]  ${username}    ${email}
    Input Text    name:fld_username    ${username}
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    ${email}