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
#Bulk Edit Schedule
Click Edit Schedule Button
    Wait Until Element is Enabled               ${button_edit_schedule}                     ${Delay}
    Click Element                               ${button_edit_schedule}
Verify Edit Schedule Upload modal displayed properly
    Wait Until ELement is Enabled               ${link_dwnld_template}                      ${Delay}
    Page Should Contain Element                 ${link_dwnld_template}
    Page Should Contain Element                 ${button_choose_file}
    Element Should Be Disabled                  ${button_upload_edit}
    Page Should Contain Element                 ${button_cancel_edit}
Choose Edited Schedule File
    Wait Until Element is Enabled               ${button_choose_file}                       ${Delay}
    Choose File                                 ${button_choose_file}                       ${choose_file_schedule_edited}
Verify Select File (Edit Schedule) Successfully
    Wait Until ELement is Enabled               ${button_upload_edit}                       ${Delay}
    Element Should Be Enabled                   ${button_upload_edit}
Click Upload Edit Button
    Wait Until Element is Enabled               ${button_upload_edit}                       ${Delay}
    Click Element                               ${button_upload_edit}
Bulk Edit Schedule Upload Successfully
    Wait Until Page Contains                    ${success_upload_toast}                     ${Delay}
    Page Should Contain                         ${success_upload_toast}


#Bulk Edit Schedule Templates
Verify Bulk Edit Schedule Upload Successfully
    Click "Bulk Upload" Button
    Verify "Bulk Upload" can be clicked
    Click Edit Schedule Button
    Verify Edit Schedule Upload modal displayed properly
    Choose Edited Schedule File
    Verify Select File (Edit Schedule) Successfully
    Click Upload Edit Button
    Bulk Edit Schedule Upload Successfully