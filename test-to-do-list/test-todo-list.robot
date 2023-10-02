*** Settings ***
Library  SeleniumLibrary
Test Setup  Open Browser  https://abhigyank.github.io/To-Do-List/  Chrome
#Test Teardown  Close Browser

*** Test Cases ***

Test Case 1: Add Input Item and Show New Item in To-Do Tasks
    [Tags]  Smoke

    # Input Text
    Input Text    id:new-task   new-item1

    # Click Add Btn
    # Wait for the button element to become visible
    Wait Until Element Is Visible  xpath=//button[contains(@class, 'mdl-button--colored')]
    # Click on the button element
    Click Element  xpath=//button[contains(@class, 'mdl-button--colored')]

    # Click Tab TO-DO TASK
    # Wait for the anchor element to become visible
    Wait Until Element Is Visible    xpath=//a[contains(@class, 'mdl-tabs__tab') and contains(@href, '#todo')]
    # Click on the anchor element
    Click Element    xpath=//a[contains(@class, 'mdl-tabs__tab') and contains(@href, '#todo')]
    
    # Check Result Case
    Page Should Contain Element    xpath=//span[contains(@class, 'mdl-checkbox__label') and contains(@id, 'text-1') and text()='new-item1']


 Test Case 2: Add Multiple Items and Verify In TO-DO TASK
    [Tags]  Smoke
    
    # Input 'new-item1' into the input field and add it
    Input Text    id:new-task    new-item1
    Click Element    xpath=//button[contains(@class, 'mdl-button--colored')]

    # Input 'new-item2' into the input field and add it
    Input Text    id:new-task    new-item2
    Click Element    xpath=//button[contains(@class, 'mdl-button--colored')]
    
    # Wait for the "To-Do Tasks" tab to become active
    Wait Until Element Is Visible    xpath=//a[contains(@class, 'mdl-tabs__tab') and contains(@href, '#todo')]
    # Click on the anchor element
    Click Element    xpath=//a[contains(@class, 'mdl-tabs__tab') and contains(@href, '#todo')]
    
    # Check if the page should contain 'new-item1'
    Page Should Contain Element    xpath=//span[contains(@class, 'mdl-checkbox__label') and contains(@id, 'text-1') and text()='new-item1']   
    
    # Check if the page should contain 'new-item2'
    Page Should Contain Element    xpath=//span[contains(@class, 'mdl-checkbox__label') and contains(@id, 'text-2') and text()='new-item2']
    
    