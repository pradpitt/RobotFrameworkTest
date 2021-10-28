*** Settings ***
Documentation  The UI Tests are in this suite
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Test_01_Open_Webpage
    Open Browser  https://www.glasswallsolutions.com/  chrome  options=add_argument("--disable-notifications"); add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors");add_argument('--no-sandbox');add_argument("--headless");add_argument("--disable-dev-shm-usage")
    Capture Page Screenshot
    Close Browser




