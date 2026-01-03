*** Settings ***
Resource    ../resources/login_keywords.robot

*** Variables ***
${USERNAME}  Admin
${PASSWORD}  admin123

*** Test Cases ***
UAT-Lab04-Valid Login
    Open Login Page
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login
    Wait Until Page Contains    Dashboard    10s
    Close Browser Page
