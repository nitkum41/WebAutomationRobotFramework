*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}     https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Alerts

    Open Browser   ${url}     ${browser}
    Maximize Browser Window

    # opens alert
    Click Element    xpath://button[@id='confirmBtn']

    
    Sleep    3

    #ok
    Handle Alert    accept

    #cancel
    Handle Alert    dismiss

    # leave the alert open
    Handle Alert    leave

    #check for alert text displayed
    Alert Should Be Present     Press a button!

    Alert Should Not Be Present    Press a button!
    