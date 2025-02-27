*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url1}     https://www.google.co.in/
${url2}     https://www.bing.com/
${url3}     https://www.flipkart.com/

*** Test Cases ***
NavigationTest

    Open Browser   ${url1}     ${browser}
    Maximize Browser Window

    #gives the url
    ${'current_url'}=   Get Location
    Log To Console    ${'current_url'}

    ## go to keyword
    Go To    ${url2}

    ${'current_url'}=   Get Location
    Log To Console    ${'current_url'}

    Go Back

    ${'current_url'}=   Get Location
    Log To Console    ${'current_url'}

    Go To   ${url3}

    Go Back

    Sleep    3

    Close Browser