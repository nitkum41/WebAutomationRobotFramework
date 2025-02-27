*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url}     https://demo.automationtesting.in/Windows.html

*** Test Cases ***
Handling Tabbed Windows

    Open Browser   ${url}     ${browser}
    Maximize Browser Window

    Click Element    xpath://button[normalize-space()='click']

    #switch to new window

    Switch Window     title:Selenium

    Click Element    xpath://a[normalize-space()='Register now!']
    
    Sleep    2

    Close All Browsers


