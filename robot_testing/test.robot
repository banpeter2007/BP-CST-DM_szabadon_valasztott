*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Create a new date
    Sign in    
    Wait Until Element Is Visible    //*[@id="student"]/h2[1]    
    Sleep    1s
    Click Element    //*[@id="korepetator"]
    #Wait Until Page Contains Element    //*[@id="helper"]/h2[1]    timeout=10s

    #Click Element    //*[@id="startTime"]
    #Wait Until Element Is Visible    xpath://td[text()='29']    
    #Click Element    xpath://td[text()='29']

    #Wait Until Element Is Visible    xpath://div[contains(@class, 'hour')]//div[text()='14']
    #Click Element    xpath://div[contains(@class, 'hour')]//div[text()='14']

    #Wait Until Element Is Visible    xpath://div[contains(@class, 'minute')]//div[text()='30']
    #Click Element    xpath://div[contains(@class, 'minute')]//div[text()='30']

    
    Sleep    3s
    #Close Browser
    


*** Keywords ***
Sign in
    Open Browser    http://127.0.0.1:5500/FRONTEND/register_signIn.html    chrome 
    Input Text    //*[@id="email_input"]    anna@test.hu
    Input Text    //*[@id="password_input"]    Test1234!
    Click Element    //*[@id="signInButton"]
    

    
    