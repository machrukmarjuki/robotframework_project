*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-sites.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser



*** Test Cases ***
#Go to Sites Page
    #Go to Sites Page







*** Keywords ***
#Bulk Schedule Upload
Click Schedule Upload Button
    Wait Until Element is Enabled               ${button_schedule_upload}                   ${Delay}
    Click Element                               ${button_schedule_upload}
Verify Schedule Upload modal displayed properly
    Wait Until ELement is Enabled               ${link_dwnld_template}                      ${Delay}
    Page Should Contain Element                 ${link_dwnld_template}
    Page Should Contain Element                 ${button_choose_file}
    Element Should Be Disabled                  ${button_upload_schedule}
    Page Should Contain Element                 ${button_cancel_schedule}
Choose Schedule File
    Wait Until Element is Enabled               ${button_choose_file}                       ${Delay}
    Choose File                                 ${button_choose_file}                       ${choose_file_schedule}
Verify Select File (Schedule) Successfully
    Wait Until ELement is Enabled               ${button_upload_schedule}                   ${Delay}
    Element Should Be Enabled                   ${button_upload_schedule}
Click Upload Schedule
    Wait Until Element is Enabled               ${button_upload_schedule}                   ${Delay}
    Click Element                               ${button_upload_schedule}
Schedule Upload Successfully
    Wait Until Page Contains                    ${success_upload_toast}                     ${Delay}
    Page Should Contain                         ${success_upload_toast}

#Bulk Schedule Upload Templates
Verify Bulk Schedule Upload Successfully
    Click "Bulk Upload" Button
    Verify "Bulk Upload" can be clicked
    Click Schedule Upload Button
    Verify Schedule Upload modal displayed properly
    Choose Schedule File
    Verify Select File (Schedule) Successfully
    Click Upload Schedule
    Schedule Upload Successfully