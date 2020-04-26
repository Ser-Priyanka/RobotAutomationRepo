*** Settings ***
Resource    ../resources/resource1.robot
*** Variables ***

*** Test Cases ***
TC_16
    Start Browser and Maximize
    Input Text    name:fld_username    priyanka



*** Keywords ***
