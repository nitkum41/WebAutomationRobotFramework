*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url1}     https://www.worldometers.info/geography/flags-of-the-world/

*** Test Cases ***
ScrollingPage
    Open Browser    ${url1}     ${browser}

    Maximize Browser Window

    #1--vertical scrolling using pixels

#    Execute Javascript  window.scrollTo(0,1500)

    # 2--scrolling to a particular elemnt
#    Scroll Element Into View    xpath://img[@src='/img/flags/small/tn_in-flag.gif']

    # 3--scroll till bottom of the page
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)

    Sleep    3

    # 3--scroll till top of the page
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)


    Sleep    3
