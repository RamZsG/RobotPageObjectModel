*** Settings ***
Resource    ../Resources/Resources.robot

*** Variables ***
${URL}=    https://opensource-demo.orangehrmlive.com/
${Browser}=    gc
${Username}=    Admin
${Password}=    admin123

*** Test Cases ***
LoginTest
    Open my browser    ${URL}    ${Browser}
    Enter Username    ${Username}
    Enter Password    ${Password}
    Click login button
    Validate Logged In
    Click on welcome panel
    Click on logout
    Validate Logged Out
    Close my browser