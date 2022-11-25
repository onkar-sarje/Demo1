*** Settings ***

Resource    ../Resources/testApp.robot
Resource    ../Resources/common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

# robot -d results tests/testfile.robot

*** Variables ***


*** Test Cases ***

Should be able to open go up to payment page for recharge
    [Tags]    Test 1
    
    Click Element    xpath=//*[@id="firstlevel-nav"]/ul/li[1]   
    Sleep    2s
    Scroll Element Into View    xpath=/html/body/div[2]/section[2]/div/div/div/div[2] 
    Sleep    2s
    Click Button    id=quick-recharge   
    Wait Until Element Contains    xpath=/html/body/div[8]/div/div/div[1]/div[1]/div[2]/div    Quick Recharge 
    Sleep    2s
    Click Element    xpath=//*[@id="quick-recharge-user-number"]
    Sleep    2s
    Input Text    //*[@id="quick-recharge-user-number"]    9137851212    
    Sleep    2s
    Click Button    Continue
    Wait Until Element Contains    xpath=/html/body/div[8]/div/div/div[2]/div[1]/div[2]/div/h5    Choose plan
    Sleep    2s
    Click Button    View all plans
    Sleep    2s
    Scroll Element Into View    xpath=//*[@id="__next"]/div/div[2]/div[1]/div[2]/div[1]/div/div[2]/button[8]  
    Sleep    2s
    Click Button    xpath=//*[@id="__next"]/div/div[2]/div[1]/div[2]/div[1]/div/div[2]/button[8]
    Sleep    2s
    Wait Until Element Contains    xpath=//*[@id="0"]    Affordable Packs
    Click Button   xpath=//*[@id="panel_0"]/div[1]/div[2]/div[2]/button[1]
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="popup_overlay"]/div/div/div/div/div[1]/div/div[2]
    Sleep    2s
    Click Button    xpath=//*[@id="popup_overlay"]/div/button
    Sleep    2s
    Click Button    xpath=//*[@id="panel_0"]/div[1]/div[2]/div[2]/button[2]
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/div[1]/p
    Sleep    2s
    Click Element    xpath=//*[@id="__next"]/div[2]/div/div/div[2]/div[1]/div/p
    Sleep    3s


Should be able to go up to payments page of 


