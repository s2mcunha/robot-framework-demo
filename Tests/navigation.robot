*** Settings ***
Documentation     Test suite to validate navigation menu of QA Testing Hub website.
Library           SeleniumLibrary
Suite Setup       Open Browser To QA Testing Hub
Suite Teardown    Close Browser

*** Variables ***
${URL}            https://www.qatesthub.info/
${HOME_TEXT}      QA Testing Hub
${NEWS_TEXT}      QA News
${EBOOKS_TEXT}    E-books
${BLOG_TEXT}      Blog
${EVENTS_TEXT}    Events
${CONTACT_TEXT}   Contact Information

*** Test Cases ***
Navigate To Home Page And Verify Text
    [Documentation]    TC_01: Validate that Home page loads and contains expected text.
    Click Link         xpath=//a[normalize-space()='Home']
    Page Should Contain    ${HOME_TEXT}

Navigate To News Page And Verify Text
    [Documentation]    TC_02: Validate that News page loads and contains expected text.
    Click Link         xpath=//a[normalize-space()='News']
    Page Should Contain    ${NEWS_TEXT}

Navigate To E-books Page And Verify Text
    [Documentation]    TC_03: Validate that E-books page loads and contains expected text.
    Click Link         xpath=//a[normalize-space()='E-books']
    Page Should Contain    ${EBOOKS_TEXT}

Navigate To Blog Page And Verify Text
    [Documentation]    TC_04: Validate that Blog page loads and contains expected text.
    Click Link         xpath=//a[normalize-space()='Blog']
    Page Should Contain    ${BLOG_TEXT}

Navigate To Events Page And Verify Text
    [Documentation]    TC_05: Validate that Events page loads and contains expected text.
    Click Link         xpath=//a[normalize-space()='Events']
    Page Should Contain    ${EVENTS_TEXT}

Navigate To Contact Page And Verify Text
    [Documentation]    TC_06: Validate that Contact page loads and contains expected text.
    Click Link         xpath=//a[normalize-space()='Contact']
    Page Should Contain    ${CONTACT_TEXT}

*** Keywords ***
Open Browser To QA Testing Hub
    [Documentation]    Opens the QA Testing Hub website in Edge browser and maximizes window.
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//nav    timeout=10s
