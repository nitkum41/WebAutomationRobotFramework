*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
     
    Open Browser    ${url}  ${browser}

    loginToApplication  #user defined keyword

    Close Browser

*** Keywords ***
loginToApplication
    Click Link    xpath://a[normalize-space()='Log in']
    Input Text      id:Email    nitkum836@gmail.com
    Input Text      id:Password     Test@123
    Click Element   xpath: //button[normalize-space()='Log in']

