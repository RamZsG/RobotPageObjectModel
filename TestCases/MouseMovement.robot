*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot


*** Variables ***
${URLRobot}=    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
${URLTest}=    https://testautomationpractice.blogspot.com/
${Browser}=    gc

*** Test Cases ***
ContextualMenu
    Open my browser    ${URLRobot}    ${Browser}
    Open Context Menu    ${SeleniumHeader}
    Sleep    4
    Close my browser

DoubleClick
    Open my browser    ${URLTest}    ${Browser}
    Double Click Element    ${copyTxtBtn} 
    Sleep    4
    Close my browser

DragAndDrop
    Open my browser    ${URLTest}    ${Browser}
    Drag And Drop    ${dragElement}    ${dropElement} 
    Sleep    4
    Close my browser