*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com
${BROWSER}  Chrome

*** Test Cases ***
Open Google
    Open Browser    ${URL}    ${BROWSER}
    Sleep    5s
    Close Browser
