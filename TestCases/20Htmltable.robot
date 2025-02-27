*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url}     https://testautomationpractice.blogspot.com/


*** Test Cases ***
StaticTable

    Open Browser   ${url}     ${browser}
    Maximize Browser Window

    #total rows count
    ${rows}=      Get Element Count    xpath://table[@name='BookTable']/tbody/tr

    # total columns from first row of the table
    ${columns}=     Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows},${columns}
    
    # read data based on row and column
    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}
    
    #validations on data using table xpath
    
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author

    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS

    Table Cell Should Contain    xpath://table[@name='BookTable']     5    2    Mukesh

    Table Header Should Contain    xpath://table[@name='BookTable']    BookName


    Close Browser
    
