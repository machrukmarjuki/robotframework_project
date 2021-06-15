*** Settings ***
Library         Selenium2Library
Resource        ../Resources/resource.robot
Resource        ../Resources/login.robot



*** Test Cases ***
Open Browser
        Open Browser                                ${SERVER}                                   ${BROWSER}
        Maximize Browser Window

#Scenarios
Valid Login
        Valid Login














