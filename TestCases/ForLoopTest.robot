*** Test Cases ***
ForLoop
    FOR  ${e}  IN RANGE    1    11
        Log To Console    ${e}   
    END

ForLoop2
    FOR  ${e}  IN    1  2  3  4  5  6  7  8  9  10
        Log To Console    ${e}   
    END

ForLoop3
    @{ItemList}    Create List    1  2  3  4  5  6  7  8  9  10
    FOR  ${e}  IN    @{ItemList}
        Log To Console    ${e}   
    END

ForLoop4
    @{ItemList}    Create List    as    df    gh    tu    io
    FOR  ${e}  IN    @{ItemList}
        Log To Console    ${e}   
    END

ForLoop5
    @{ItemList}    Create List    1  2  3  4  5  6  7  8  9  10
    FOR  ${e}  IN    @{ItemList}
        Log To Console    ${e}  
        Exit For Loop If    ${e}==4 
    END

ForLoop6
    @{ItemList}    Create List    1  2  3  4  5  6  7  8  9  10
    FOR  ${e}  IN    @{ItemList} 
        Continue For Loop If    ${e}==4 
        Log To Console    ${e} 
    END
    
ForLoop7
    @{ItemList}    Create List    as    df    gh    tu    io
    FOR  ${e}  IN    @{ItemList}
        Exit For Loop If    '${e}'=='tu'
        Log To Console    ${e} 
    END

ForLoop8
    @{ItemList}    Create List    as    df    gh    tu    io
    FOR  ${e}  IN    @{ItemList}
        Continue For Loop If    '${e}'=='tu'
        Log To Console    ${e} 
    END