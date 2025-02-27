*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  Chrome
${url1}     https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}     https://testautomationpractice.blogspot.com/
${url3}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${data1}    Hello World!

*** Test Cases ***
    MouseTest

    Open Browser   ${url1}     ${browser}
    Maximize Browser Window

    #right click on the element
    Open Context Menu    xpath://span[@class="context-menu-one btn btn-neutral"]
    Sleep    2

    ##double click
    Go To   ${url2}
    Maximize Browser Window
    
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    2
    
    Get Text    xpath://input[@id='field2']
    
    ### drag and drop

    Go To   ${url3}
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    Sleep    3