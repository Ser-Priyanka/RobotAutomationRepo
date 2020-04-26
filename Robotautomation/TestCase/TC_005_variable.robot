*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}    Chrome
${URL}    https://www.thetestingworld.com/testings/


*** Test Cases ***
TC_005 variable
    ${var1}=    set variable    Helloworld
    log to console    ${var1}
    @{list1}    create list    Hello    32    pinku    pranjal
    ${list_length}=    get length    ${list1}
    log to console    ${list_length}
    ${list_data}    get from list    ${list1}    3
    log to console    ${list_data}
    : For    ${i}    IN    @{list1}
     \    log to console    ${i}
    ${key_var}=    set variable    log to console
    run keyword    ${key_var}    priyankasisodia
    ${var1}=    set variable    No
    run keyword if    '${var1}'=='Yes'    ${key_var}    found
    run keyword if    '${var1}'=='No'    ${key_var}    value not found

*** Keywords ***
