*** Settings ***
Resource    ../resources/login_keywords.robot

*** Test Cases ***
UAT-Lab04-Invalid Login
    Open Login Page
    Input Username    wronguser
    Input Password    wrongpass
    Click Login
    Wait Until Page Contains    Invalid credentials    10s
    Close Browser Page
