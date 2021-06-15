*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-promotions.robot
Suite Setup             Open Browser to Admin Menu
#Suite Teardown          Close Browser
Documentation           Promotion



*** Test Cases ***
Go to Promotions Page
        Go to Promotions Page

End Active Promotion
        Delay
        Click End Button
        Click Yes, End Button
        Verify End Promotion Successful
        Click Cancel, End Button

End Scheduled Promotion
        Click Scheduled Tab
        Click End Button
        Click Yes, End Button
        Verify End Promotion Successful



*** Keywords ***
End Active Promotion
        Click End Button
        Click Yes, End Button
        Verify End Promotion Successful

End Scheduled Promotion
        Click Scheduled Tab
        Click End Button
        Click Yes, End Button
        Verify End Promotion Successful