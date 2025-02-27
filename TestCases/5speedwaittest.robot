*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Speed Test

    ## default speed is 0 seconds
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}

    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    
    Set Selenium Speed    2  ## applicable for every statement in the script

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