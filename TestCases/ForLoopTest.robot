*** Test Cases ***
ForLoop
    FOR  ${e}  IN RANGE    1    11
        Log To Console    ${e}   
    END

ForLoop2
    FOR  ${e}  IN    1 2 3 4 5 6 7 8 9 10
        Log To Console    ${e}   
    END