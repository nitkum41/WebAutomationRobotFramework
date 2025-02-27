*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}  https://www.knowledgeware.in/Automation/practiceform.html

*** Test Cases ***
Testing drop downs and list boxes
    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    2

    Scroll Element Into View    xpath://button[@name='submit']


    #select and unselect multiple values from dropdowns
    Select From List By Label    countrySelect   Haryana

    Select From List By Index    citySelect   2

#    Select From List By Value    citySelect     Ambala if values available

    #select and unselect multiple values from listbox

    Select From List By Label    countrySelect      Bihar
    Unselect From List By Label    countrySelect    Patna

    Close Browser