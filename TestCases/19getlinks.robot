*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url1}     https://www.worldometers.info/geography/flags-of-the-world/

*** Test Cases ***
GetAllLinks
    Open Browser    ${url1}     ${browser}

    Maximize Browser Window

    # total links count
    ${links_count}=     Get Element Count    xpath://a
    Log To Console    ${links_count}
    
    @{link_items}   Create List

    ## read text of each element
    FOR    ${i}    IN RANGE     1    ${links_count}+1
        ${link_text}=   Get Text    xpath:(//a)[${i}]
        Log To Console    ${link_text}
        @{link_items}
         
    END
