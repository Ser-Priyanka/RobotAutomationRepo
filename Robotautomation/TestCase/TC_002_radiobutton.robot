*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}  https://www.thetestingworld.com/testings/


*** Test Cases ***
TC_002 Radiobutton
    Open Browser    ${URL}   ${Browser}
    Maximize Browser Window
    Select Radio Button    add_type    home
    Select Checkbox    name:terms
    Click Link    xpath://a[text()='Read Detail']     #manual writing of xpath


*** Keywords ***
