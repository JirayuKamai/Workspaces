*** Settings ***
# Library    SeleniumLibrary
Library    Selenium2Library
Library    BuiltIn
Library    String
Suite Setup        Open Browser    about:blank    chrome
Suite Teardown     Close All Browsers

*** Variables ***
${url_covid19_survey}           https://docs.google.com/forms/d/e/1FAIpQLScoPhcMMJFzJOn67Mhem2Ps-4fY2mxy74vEOGpbz4pVtLZdDg/viewform
${input_EID}                    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input
${EID}                          jirayu.kamai

*** Keywords ***
Input EID
    [Arguments]     ${input_EID}    ${EID}
    Input Text      ${input_EID}    ${EID}

***Test Cases ***
เปิด COVID-19 Survey ด้วย Chrome
    Go To       ${url_covid19_survey}
    Input EID   ${input_EID}    ${EID}