*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Timeout Test

    Open Browser   ${url}     ${browser}
    Maximize Browser Window

    # default selenium timeout
    ${time}=    Get Selenium Timeout
    Log To Console     ${time}
    
    # set custom timeout 
    Set Selenium Timeout    10

    # by default it will wait for 5 seconds only for this statement
    Wait Until Page Contains    Registration

    Select Radio Button    Gender    M

    Input Text      xpath://input[@id='FirstName']     Nitesh
    Input Text      xpath://input[@id='LastName']      Kumar
    Input Text      xpath://input[@id='Email']     nk@gmail.com
    Input Text      xpath://input[@id='Password']      Nitesh@123
    Input Text      xpath://input[@id='ConfirmPassword']       Nitesh@123

    #changed speed is 2 sec
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    
    Click Button    xpath://input[@type='submit']