*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url1}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Test Cases ***
ScreenshotTest

    Open Browser   ${url1}     ${browser}
    Maximize Browser Window
    
    Set Selenium Implicit Wait    5
    
    Input Text    xpath://input[@name='username']    Admin
    Input Text    xpath://input[@name='password']    admin123


    Wait Until Element Is Visible    xpath://div[@class='orangehrm-login-logo']/img
    Wait Until Element Is Visible    xpath://img[@alt='company-branding']

    Capture Page Screenshot     ./screenshots/page_image.png

    Sleep    2



    Capture Element Screenshot    xpath://div[@class='orangehrm-login-logo']/img     ./screenshots/logo_image.png
    
    Sleep    2




    Capture Element Screenshot    xpath://img[@alt='company-branding']      ./screenshots/hrm_logo.png

    Sleep    2
