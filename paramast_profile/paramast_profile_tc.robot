*** Settings ***
Library            SeleniumLibrary
Suite Setup        Open Browser    https://deviltarxd.github.io/    chrome
Suite Teardown     Close All Browsers

***Test Cases ***
Open Paramast profile
    Title Should Be                      my-portfolio

Verify Header
    Page Should Contain Element          class:snes-jp-logo
    Page Should Contain                  Paramas

Verify Introduce content
    Page Should Contain Element          class:nes-bcrikko
    Page Should Contain                  I'm Paramas. This is everything about me.

Verify Things I do content
    Page Should Contain                  Things I do
    Page Should Contain                  Web Develop
    Page Should Contain                  Dev OPS

Verify Social Media content
    Page Should Contain                  Social Media 
    
    # IG | Twitter | Facebook | Github 
    
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div[2]/a[1]/i      
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div[2]/a[2]/i
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div[2]/a[3]/i
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div[2]/a[4]/i

Verify Frontend Knowledge content
    Page Should Contain                  Frontend Knowledge

    # HTML progress = 95/100
    Page Should Contain                  HTML[5]
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[1]/div[2]/progress
    
    # Javascript progress = 75/100
    Page Should Contain                  Javascript
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div[2]/progress
    
    # Jquery progress = 75/100
    Page Should Contain                  Jquery
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[3]/div[2]/progress
    
    # CSS[3] progress = 25/100
    Page Should Contain                  CSS[3]
    Page Should Contain Element          //*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[4]/div[2]/progress

Verify Backend Knowledge content
    Element Text Should Be               //*[@id="app"]/div/div[2]/div/div[2]/div[2]/h3                      ฺBackend Knowledge
    Page Should Contain                  PHP
    Page Should Contain                  Docker
    Page Should Contain                  Node. js

Verify Other Knowledge content
    Page Should Contain                  Other Knowledge
    Page Should Contain                  Laravel
    Page Should Contain                  Vue
    Page Should Contain                  Git
    Page Should Contain                  React

Verify Experience content
    Element Text Should Be               //*[@id="app"]/div/div[2]/div/div[2]/h3                             Experience

Verify 1st Experience content
    Element Text Should Be               //*[@id="app"]/div/div[2]/div/div[2]/div[4]/div[1]/div[2]/h3        PRINCE OF SONGKLA UNIVERSITY, PHUKET CAMPUS
    Element Text Should Be               //*[@id="app"]/div/div[2]/div/div[2]/div[4]/div[1]/div[2]/p[1]      Technology and Environment (Information Technology) Majors
    Element Text Should Be               //*[@id="app"]/div/div[2]/div/div[2]/div[4]/div[1]/div[2]/p[2]      GPA: 2.97/4.00
    Element Text Should Be               //*[@id="app"]/div/div[2]/div/div[2]/div[4]/div[1]/div[2]/p[3]      2012 - 2015

Verify Footer
    Element Text Should Be               //*[@id="app"]/div/div[3]/div/div                                   Using NES.css 2019

Verify Instagram Navigation
    Click Element                        //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div[2]/a[1]/i
    Wait Until Element Is Visible        id:loginForm
    Page Should Contain Element          //*[@id="loginForm"]/div/div[5]/button/span[2]                      Log in with Facebook
    Close All Browsers

Verify Twitter Navigation
    Open Browser                         https://deviltarxd.github.io/                                       chrome
    Click Element                        //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div[2]/a[2]/i
    Title Should Be                      PorPePor (@WhoIsPor) / Twitter
    Wait Until Location Contains         https://twitter.com/WhoIsPor                                        5s           PorPePor  
    Close All Browsers

Verify Facebook Navigation
    Open Browser                         https://deviltarxd.github.io/                                       chrome
    Click Element                        //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div[2]/a[3]/i    
    Wait Until Location Contains         https://web.facebook.com/paramas.wae                                5s           Paramest Waewsuwan
