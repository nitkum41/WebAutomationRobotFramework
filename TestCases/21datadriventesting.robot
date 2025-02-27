*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot

Suite Setup     open my browser  #before test starts
Suite Teardown      close all the browsers   # after test completion
Test Template       Invalid Login   #steps which we will repeat multiple times with different sets of data

*** Test Cases ***                  username               password
Valid user empty password       admin@yourstore.com         ${EMPTY}
Valid user wrong password       admin@yourstore.com         abc
InValid user wrong password     adn@yourstore.com           abc
InValid user valid password     adn@yourstore.com           admin
InValid user empty password     adn@yourstore.com           ${EMPTY}

*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input Username     ${username}
    Input Password      ${password}
    Click Login Button
    Error message should be visible

