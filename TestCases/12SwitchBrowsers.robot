*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url1}     https://www.google.co.in/
${url2}     https://www.bing.com/

*** Test Cases ***
Handling Tabbed Browsers

    Open Browser   ${url1}     ${browser}
    Maximize Browser Window

    Open Browser   ${url2}     ${browser}
    Maximize Browser Window

    #switch to first browser
    Switch Browser    1
    ${title1}=  Get Title
    Log To Console    ${title1}


    #switch to second browser
    Switch Browser    2
    ${title2}=  Get Title
    Log To Console    ${title2}


    Close All Browsers


