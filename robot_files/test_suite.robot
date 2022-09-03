*** Settings ***
Documentation    Test google search using selenium.
...
...              Test should access google.com and
...              search anything there.

Resource         resources/resource.robot
Default Tags     selenium_exec


*** Test Case ***
Test Google Search
    [Setup]         Open Browser On Google Page
    Input Data      TESTE
    Click on search button
    Element should exist on page
    [Teardown]      Close Browser
