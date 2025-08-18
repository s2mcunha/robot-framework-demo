*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.qatesthub.info/
${EBOOK_1_PRICE}  //div[@data-id='1']//span[@class='total-price']
${EBOOK_2_PRICE}  //div[@data-id='2']//span[@class='total-price']
${FINAL_PRICE}    //span[@id='final-price']
${QUANTITY_EBOOK_1}    //input[@id='quantity-ebook-1']
${ADD_EBOOK_1}    //button[@onclick='addToCart(1)']
${QUANTITY_EBOOK_2}    //input[@id='quantity-ebook-2']
${ADD_EBOOK_2}    //button[@onclick='addToCart(2)']

*** Test Cases ***
Open Browser And Navigate To E-Books Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Link    xpath=//a[text()='E-books']
    Wait Until Page Contains Element    xpath=//h1[text()='E-books']
    
Add First E-Book To Cart
    Input Text    ${QUANTITY_EBOOK_1}    1
    Click Button    ${ADD_EBOOK_1}
    Handle Alert    ACCEPT

Add Second E-Book To Cart
    Input Text    ${QUANTITY_EBOOK_2}    2
    Click Button    ${ADD_EBOOK_2}
    Handle Alert
    
Verify Final Price
    ${ebook_1_price}=    Get Text    ${EBOOK_1_PRICE}
    ${ebook_2_price}=    Get Text    ${EBOOK_2_PRICE}
    ${final_price}=      Get Text    ${FINAL_PRICE}

    # Convert the prices to numbers by first applying replace on the string, then converting to float
    ${ebook_1_price_num}=    Evaluate    float('${ebook_1_price}'.replace('$', '').strip())
    ${ebook_2_price_num}=    Evaluate    float('${ebook_2_price}'.replace('$', '').strip())
    ${final_price_num}=      Evaluate    float('${final_price}'.replace('$', '').strip())

    # Sum the prices of both e-books
    ${expected_total}=       Evaluate    ${ebook_1_price_num} + ${ebook_2_price_num}

    # Verify the final price matches the expected total
    Should Be Equal As Numbers    ${final_price_num}    ${expected_total}

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.qatesthub.info/
${EBOOK_1_PRICE}  //div[@data-id='1']//span[@class='total-price']
${EBOOK_2_PRICE}  //div[@data-id='2']//span[@class='total-price']
${FINAL_PRICE}    //span[@id='final-price']
${QUANTITY_EBOOK_1}    //input[@id='quantity-ebook-1']
${ADD_EBOOK_1}    //button[@onclick='addToCart(1)']
${QUANTITY_EBOOK_2}    //input[@id='quantity-ebook-2']
${ADD_EBOOK_2}    //button[@onclick='addToCart(2)']

*** Test Cases ***
Open Browser And Navigate To E-Books Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Link    xpath=//a[text()='E-books']
    Wait Until Page Contains Element    xpath=//h1[text()='E-books']
    
Add First E-Book To Cart
    Input Text    ${QUANTITY_EBOOK_1}    1
    Click Button    ${ADD_EBOOK_1}
    Handle Alert    ACCEPT

Add Second E-Book To Cart
    Input Text    ${QUANTITY_EBOOK_2}    2
    Click Button    ${ADD_EBOOK_2}
    Handle Alert
    
Verify Final Price
    ${ebook_1_price}=    Get Text    ${EBOOK_1_PRICE}
    ${ebook_2_price}=    Get Text    ${EBOOK_2_PRICE}
    ${final_price}=      Get Text    ${FINAL_PRICE}

    # Convert the prices to numbers by first applying replace on the string, then converting to float
    ${ebook_1_price_num}=    Evaluate    float('${ebook_1_price}'.replace('$', '').strip())
    ${ebook_2_price_num}=    Evaluate    float('${ebook_2_price}'.replace('$', '').strip())
    ${final_price_num}=      Evaluate    float('${final_price}'.replace('$', '').strip())

    # Sum the prices of both e-books
    ${expected_total}=       Evaluate    ${ebook_1_price_num} + ${ebook_2_price_num}

    # Verify the final price matches the expected total
    Should Be Equal As Numbers    ${final_price_num}    ${expected_total}

