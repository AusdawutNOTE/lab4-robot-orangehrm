*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}  Chrome

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    name=username    10s

Input Username
    [Arguments]    ${username}
    Input Text    name=username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    name=password    ${password}

Click Login
    Click Button    xpath=//button[@type='submit']

Close Browser Page
    Close Browser
