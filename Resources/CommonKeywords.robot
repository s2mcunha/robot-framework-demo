*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To QA Testing Hub
    [Documentation]    Opens the QA Testing Hub website and maximizes window.
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//nav    timeout=10s

