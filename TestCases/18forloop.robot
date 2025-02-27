*** Settings ***

Library    OperatingSystem

*** Test Cases ***

ForLoop
#range
    FOR    ${i}   IN RANGE      1      10
         LOG TO CONSOLE      ${i}
    END


ForLoop1
    FOR    ${i}   IN  1  2  3  4  5  6
         LOG TO CONSOLE      ${i}
    END

ForLoop3
##list
    @{items}    Create List    1   2   3   4   5
    FOR    ${element}    IN    @{items}
        Log To Console   ${element}

    END

ForLoop4
    FOR    ${element}    IN    nitesh   rajiv   shubham
        Log To Console    ${element}

    END

ForLoop4
    @{items}    Create List     nitesh   rajiv   shubham
    FOR    ${element}    IN    @{items}
        Log To Console    ${element}

    END

ForLoop6WithExit
    @{items}    Create List     1   2   3   4   5   6
    FOR    ${element}    IN    @{items}

        Log To Console   ${element}
        Exit For Loop If    ${element}==3

    END