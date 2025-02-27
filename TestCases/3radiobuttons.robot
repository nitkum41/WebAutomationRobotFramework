*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}  https://www.knowledgeware.in/Automation/practiceform.html

*** Test Cases ***
Testing radio buttons and check boxes
    Open Browser   ${url}     ${browser}
    Maximize Browser Window
    Set Selenium Speed    2      ##set wait time for evry statement
    
    Scroll Element Into View    xpath://label[@for='hobbies']

    #seelct radio button
    Select Radio Button    gender    male  ##name and value

    
    #select check box 
    
    Select Checkbox    sports     ##value of the checkbox
    Select Checkbox    reading
    Select Checkbox    music

    Unselect Checkbox    sports
