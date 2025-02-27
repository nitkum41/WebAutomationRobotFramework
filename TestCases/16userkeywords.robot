*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***

${browser}  Chrome
${url1}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
TC1
    ${PageTitle}=    LaunchBrowser   ${url1}     ${browser}
    Log To Console    ${PageTitle}
    Log    ${PageTitle}  # log in the report

    Set Selenium Implicit Wait    5

    Input Text    name:username    Admin
    Input Text    name:password    admin123




