*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***

Begin Web Test
    Open Browser    https://www.jio.com/    gc
    Maximize Browser Window 
    Sleep    2s

End Web Test
    Close All Browsers