*** Settings ***
Resource    ../resources/resource1.robot
Documentation    This test case is to have registration functionality scenario
Test Setup    Start Browser and Maximize
Test Teardown    Close Browser Window
Suite Setup    Before each Test Suit
Suite Teardown    After each Test Suit
*** Variables ***
*** Test Cases ***
Robot First Test Case
    [Documentation]    This test case is to check the textbox input
    Input Text    name:fld_username    priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    priyanka@gmail.com

Robot Second Test Case
    [Documentation]    Click on radio button
    Select Radio Button    add_type    home
*** Keywords ***
