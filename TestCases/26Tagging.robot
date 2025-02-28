*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1:
    [Tags]  regression
    Log To Console    test case 1 start
    Log To Console    test case 1 end

TC2:
    [Tags]  sanity
    Log To Console    test case 2 start
    Log To Console    test case 2 end
TC3:
    [Tags]  regression
    Log To Console    test case 3 start
    Log To Console    test case 3 end
TC4:
    [Tags]  sanity
    Log To Console    test case 4 start
    Log To Console    test case 4 end