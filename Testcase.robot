
*** Setting ***
Library           SeleniumLibrary

*** Test Cases ***
Observe user is able to test sanity flow
    [Tags]    sanity    regression
    User Launch Browser for Flipkart
    #When User lands on Homepage
    User enters phoneno and password to login
    #And User clicks on Search Icon
    User enters on electronics section and clicks for search
    #Selects product
    User selects an electronic product
    #adds item to cart
    User adds to cart 
    #verify product
    User comes back to home page and verifies cart
   
   
*** Keyword ***
User Launch Browser for Flipkart
    Open Browser        https://www.flipkart.com/  gc
    Maximize Browser Window
    
   
    
User enters phoneno and password to Login
    Input Text  ${phoneno}  7899008620
    Input Text  ${password}  Niki123
    Click Button  ${submit}
   

User enters on electronics section and clicks for search
   

    Click Element  ${search}
     Input Text  ${search}  Electronics
     Click Button  ${enter}
     Sleep    4s
 User selects an electronic product
    Click Element  ${product}
    Switch Window  locator=NEW

 User adds to cart 
    Click Button  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    sleep    4s
    
User comes back to home page and verifies cart
    Click Element  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a[1]/img
    Sleep    3s
    
    Click Element   xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a/span
    

*** Variables ***

${phoneno}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${password}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${submit}=  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
${electronics}=  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img

${search}=  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input
${enter}=  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
${product}=  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/div/a[1]/div[1]/div/div/img

${cart}=  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a/span
