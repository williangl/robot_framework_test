*** Settings ***
Documentation    Resource file with reusable keywords and variables.

...              System specific keyword to use on tests

Library           SeleniumLibrary

*** Variables ***
${SERVER}      google.com
${SERVER_URL}   https://${SERVER}/
${BROWSER}        Chrome

*** Keywords ***
Open Browser On Google Page
    Open Browser    ${SERVER_URL}    ${BROWSER}

Input Data
    [Arguments]    ${input_data}
    Input Text    class:gLFyf    ${input_data}

Click on search button
    Press Keys    class:gLFyf    RETURN

Element should exist on page
    Element Should Contain    xpath://h3[@class="GmE3X"]    Principais notícias
