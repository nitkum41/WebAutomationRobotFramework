*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url}     https://demoqa.com/frames

*** Test Cases ***
Handling Frames

    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    


    Select Frame    xpath://iframe[@id='frame1']

    ${frame1}=  Get Text    xpath://h1[@id='sampleHeading']
    Log To Console    ${frame1}

    Unselect Frame


    Select Frame    xpath://iframe[@id='frame2']
    
    ${frame2}=  Get Text    xpath://h1[@id='sampleHeading']
    Log To Console    ${frame1}
    Unselect Frame

    Close Browser

