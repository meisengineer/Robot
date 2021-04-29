*** Settings ***
Library    Browser

*** Test Cases ***
Launch Browser
    New Browser    headless=false
    #New Page    https://www.amazon.com/PlayStation-5-Console/dp/B08FC5L3RG
    #Wait Until Keyword Succeeds    2000x    300 s    Get Element    [id=priceblock_ourprice]
    New Page    https://cyberatlantis.com/anonymous_email.php
    Fill Text    .anonmail > input:nth-child(2)    jcsviper@gmail.com
    Fill Text    .anonmail > input:nth-child(6)    Amazon has it
    Fill Text    .anonmail > textarea:nth-child(16)    Go Get It!
    ${captcha}    Get Text    .anonmail > b:nth-child(19)
    Fill Text    .anonmail > input:nth-child(22)    ${captcha}
    Click    button.submit:nth-child(26)