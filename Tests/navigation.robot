*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/CommonKeywords.robot
Resource   ../Resources/PageObjects/menu_page.robot

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
    Click Menu Option    Home
    Page Should Contain    ${HOME_TEXT}

Navigate To News Page And Verify Text
    Click Menu Option    News
    Page Should Contain    ${NEWS_TEXT}

Navigate To E-books Page And Verify Text
    Click Menu Option    E-books
    Page Should Contain    ${EBOOKS_TEXT}

Navigate To Blog Page And Verify Text
    Click Menu Option    Blog
    Page Should Contain    ${BLOG_TEXT}

Navigate To Events Page And Verify Text
    Click Menu Option    Events
    Page Should Contain    ${EVENTS_TEXT}

Navigate To Contact Page And Verify Text
    Click Menu Option    Contact
    Page Should Contain    ${CONTACT_TEXT}
