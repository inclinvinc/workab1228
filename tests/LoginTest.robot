*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=${CURDIR}/../results/
Library    ../keywords/CustomKeys.py


*** Variables ***
${BROWSER}    chrome
${URL}  https://www.saucedemo.com/v1/
${USERNAME}    standard_user

*** Test Cases ***
Valid Login test
    Prints hello world    abc
    Open Browser    url=${URL}    browser=${BROWSER}
    Input Text    id=user-name    text=standard_userw
    Input Password    id=password    password=secret_sauce
    Click Element    id=login-button
    Page should contain    	text=Products