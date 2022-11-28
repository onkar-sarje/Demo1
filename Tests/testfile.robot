*** Settings ***

Resource    ../Resources/testApp.robot
Resource    ../Resources/common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

# robot -d results tests/testfile.robot
# robot -d results -i Test2 tests/testfile.robot

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


Should be able to complete product buying journey
    [Documentation]    Should be able to go upto Payments page.
    [Tags]    Test2
    Click Element    xpath=//*[@id="firstlevel-nav"]/ul/li[4]
    Sleep    2s
    Scroll Element Into View    xpath=//*[@id="root"]/div/section[6]/div/div[1]/h2
    Sleep    2s
    Click Button    xpath=//*[@id="root"]/div/section[4]/div/div[2]/div[3]/div/a/button
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="priceHeader"]/div[2]/h2
    Sleep    2s
    Scroll Element Into View    xpath=//*[@id="pincode-button"]
    Sleep    2s
    Click Element    xpath=//*[@id="address.postcode"]
    Sleep    2s
    Input Text    xpath=//*[@id="address.postcode"]    413003
    Sleep    2s
    Click Button    xpath=//*[@id="pincode-button"]    
    Sleep    2s
    Scroll Element Into View    xpath=//*[@id="AddToCartBTN"]
    Sleep    2s

    Click Button    xpath=//*[@id="addToCartForm"]/div[1]/div[1]/div/div/div[2]/button[2]
    Sleep    2s

    Click Button    //*[@id="AddToCartBTN"]
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="popup3"]/div/div/div/div[2]/div[2]
    Sleep    10s

    Click Link    xpath=//*[@id="digi-cartpopup-GotoCart"]/a
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="content"]/div[1]/div[2]/div[2]
    Sleep    2s
    
    Input Text    xpath=//*[@id="qty"]    3
    Sleep    2s

    Click Link    xpath=//*[@id="updateCartForm4918948970"]/a
    Sleep    2s

    Scroll Element Into View    xpath=//*[@id="checkoutButtonBottom"]
    Sleep    2s
    Click Button    xpath=//*[@id="checkoutButtonBottom"]
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="content"]/div/div/div[3]/div[1]/div[1]/h2
    Sleep    2s
    Input Text    xpath=//*[@id="personalDetail.firstName"]    Testing
    Sleep    2s
    Input Text    xpath=//*[@id="personalDetail.lastName"]   Leads
    Sleep    2s
    Input Text    xpath=//*[@id="personalDetail.emailAddress"]    testing@gmail.com
    Sleep    2s
    Input Text    xpath=//*[@id="personalDetail.mobileNumber"]    9137851212
    Sleep    2s
    Click Button    xpath=//*[@id="personalDetailsContinueBtn"]
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="content"]/div/div/div[4]/div[1]/div[1]/h2
    Sleep    2s
    Input Text    xpath=//*[@id="address.line1"]    Testing 2
    Sleep    2s

    Click Element    xpath=//*[@id="address.line2"]
    Sleep    2s

    Input Text    xpath=//*[@id="address.line2"]   Leads 2
    Sleep    2s

    Input Text    xpath=//*[@id="address.area.locality"]    again 2
    Sleep    2s

    Click Button    //*[@id="addressForm"]/span/button
    Sleep    2s

    Log    Test Case Completed
