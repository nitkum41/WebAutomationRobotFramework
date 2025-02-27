*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  Chrome
${url1}     https://demowebshop.tricentis.com/register
${url2}     http://www.automationpractice.pl/index.php

*** Test Cases ***
close browser Test

    Open Browser   ${url1}     ${browser}
    Maximize Browser Window

    Open Browser   ${url2}     ${browser}
    Maximize Browser Window

    #close the latest opened browser
#    Close Browser

    # close all browsers
    Close All Browsers

