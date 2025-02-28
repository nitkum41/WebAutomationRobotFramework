*** Settings ***
Library     SeleniumLibrary

Suite Setup     Log To Console    opening browser
Suite Teardown      Log To Console    closing browser

Test Setup      Log To Console    Login to application
Test Teardown       Log To Console    Logout from application

*** Test Cases ***
TC1:
    Log To Console    test case 1

TC2:
    Log To Console    test case 2

TC3:
    Log To Console    test case 3

TC4:
    Log To Console    test case 4