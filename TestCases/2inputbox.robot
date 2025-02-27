*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}  https://practicetestautomation.com/practice-test-login/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    Test Login | Practice Test Automation
#    Click Link    xpath://a[@class="ico-login"]
    ${"username_txt"}  Set Variable     id:username

    Element Should Be Visible    ${"username_txt"}
    Element Should Be Enabled    ${"username_txt"}

    Input Text    ${"username_txt"}    student
    Sleep    5
    Clear Element Text    ${"username_txt"}
    Sleep    5

    Close Browser

*** Keywords ***