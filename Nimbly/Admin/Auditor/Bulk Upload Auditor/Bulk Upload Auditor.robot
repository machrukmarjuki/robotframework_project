*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-auditor.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser

*** Test Cases ***
#Go to Auditors Page
    #Go to Auditors Page




*** Keywords ***
#Auditor Bulk Upload
Click Bulk Upload Button
        Wait Until Element is Enabled                ${button_bulk_auditor_upload}               ${Delay}
        Click Element                                ${button_bulk_auditor_upload}
Click Download Link
        Wait Until Element is Enabled                ${link_dwnld_template}                     ${Delay}
        Click Element                                ${link_dwnld_template}
Select File
        Wait Until Element is Enabled                ${button_select_file}                       ${Delay}
        Choose File                                  ${button_select_file}                       ${choose_file_auditor}
Click upload button
        Wait Until Element is Enabled                ${button_auditor_yes_upload}                ${Delay}
        Click Element                                ${button_auditor_yes_upload}
Bulk Upload Successfully
        Wait Until Element is Enabled                ${toast_auditor_activate_success}           ${Delay}
Verify Bulk Upload modal displayed properly
        Wait Until ELement is Enabled                ${link_dwnld_template}                      ${Delay}
        Page Should Contain Element                  ${link_dwnld_template}
        Page Should Contain Element                  ${button_choose_file}
        Element Should Be Disabled                   ${button_auditor_yes_upload}
        Page Should Contain Element                  ${button_auditor_cancel_upload}
Verify Select File Successfully
        Wait Until ELement is Enabled                ${icon_delete_file}                         ${Delay}
        Page Should Contain Element                  ${icon_delete_file}





#Auditor Bulk Upload - Test Case Templates
Verify Download User Template Successfully
        Click Bulk Upload Button
        Verify Bulk Upload modal displayed properly
        Click Download Link

Verify Bulk Upload Successfully
        Click Bulk Upload Button
        Verify Bulk Upload modal displayed properly
        Select File
        Verify Select File Successfully
        Click upload button
        Bulk Upload Successfully