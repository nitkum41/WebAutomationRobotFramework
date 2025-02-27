*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver      ../TestData/LoginData.xlsx  ##read data from excel file

Suite Setup     open my browser  #before test starts
Suite Teardown      close all the browsers   # after test completion
Test Template       Invalid Login   #steps which we will repeat multiple times

*** Test Cases ***
LogintestwithExcel using ${username} and ${password}


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input Username     ${username}
    Input Password      ${password}
    Click Login Button
    Error message should be visible