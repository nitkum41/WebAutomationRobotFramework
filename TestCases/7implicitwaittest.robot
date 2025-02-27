*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Implicit wait Test

    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    
    ${implicitwait}=    Get Selenium Implicit Wait
    Log To Console    ${implicitwait}
    
    # wait for 10 s it is applicable for every element if it is not located
    #otherwise it will continue with next steps
    Set Selenium Implicit Wait    10

     ${implicitwait}=    Get Selenium Implicit Wait
    Log To Console    ${implicitwait}


    Select Radio Button    Gender    M

    Input Text      xpath://input[@id='FirstName1']     Nitesh
    Input Text      xpath://input[@id='LastName']      Kumar
    Input Text      xpath://input[@id='Email']     nk@gmail.com
    Input Text      xpath://input[@id='Password']      Nitesh@123
    Input Text      xpath://input[@id='ConfirmPassword']       Nitesh@123


    
    Click Button    xpath://input[@type='submit']