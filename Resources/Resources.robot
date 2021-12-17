*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]    ${Username}
    Clear Element Text    ${txtLoginUsername}
    Input Text    ${txtLoginUsername}    ${Username}

Enter Password
    [Arguments]    ${Password}
    Clear Element Text    ${txtPassword}
    Input Password    ${txtPassword}    ${Password}

Click login button
    Element Should Be Visible    ${btnLogin}
    Click Button    ${btnLogin}

Validate Logged In
    Title Should Be    OrangeHRM

Click on welcome panel
    Element Should Be Visible    ${welcomePanelElement}
    Click Element    ${welcomePanelElement}

Click on logout
    Element Should Be Visible    ${logoutLinkText}
    Click Link    ${logoutLinkText}

Validate Logged Out
    Title Should Be    OrangeHRM

Close my browser
    Sleep    5
    Close All Browsers