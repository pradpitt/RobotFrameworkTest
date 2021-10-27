*** Settings ***
Documentation  The UI Tests are in this suite
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Test_01_Open_Webpage
    Open Browser  https://www.glasswallsolutions.com/  chrome
    Capture Page Screenshot
    Close Browser




