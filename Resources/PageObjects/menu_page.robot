*** Keywords ***
Click Menu Option
    [Arguments]    ${menu}
    Click Link    xpath=//a[normalize-space()='${menu}']
