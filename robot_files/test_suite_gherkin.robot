*** Settings ***
Documentation    Test google search using selenium.
...
...              Test should access google.com and
...              search anything there.

Resource         resources/resource.robot
Default Tags     selenium_exec

Test Teardown     Close Browser

*** Test Case ***
Test Google Search
    Given Open Browser On Google Page
    When Input Data "TESTE"
    And Click on search button
    Then Element should exist on page


*** Keywords ***
Input Data "${input_data}"
    Input Text    class:gLFyf    ${input_data}
