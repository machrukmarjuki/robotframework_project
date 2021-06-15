*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-department.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser

*** Test Cases ***
#Go to Departments Page
    #Go to Departments Page










*** Keywords ***
#Bulk Upload
Click Bulk Upload Button
       Wait Until Element is Enabled                ${button_bulk_department_upload}            ${Delay}
       Click Element                                ${button_bulk_department_upload}
Select File
       Wait Until Element is Enabled                ${button_select_file}                       ${Delay}
       Choose File                                  ${button_select_file}                       ${choose_file_department}
Click Upload Button
       Wait Until Element is Enabled                ${button_yes_upload}                        ${Delay}
       Click Element                                ${button_yes_upload}
Bulk Upload Department Successfully
       Wait Until Page Contains                     ${success_upload_toast}                     ${Delay}
       Page Should Contain                          ${success_upload_toast}
Verify Bulk Upload modal displayed properly
       Wait Until ELement is Enabled                ${link_dwnld_template}                      ${Delay}
       Page Should Contain Element                  ${link_dwnld_template}
       Page Should Contain Element                  ${button_select_file}
       Element Should Be Disabled                   ${button_yes_upload}
       Page Should Contain Element                  ${button_cancel_upload}
Verify Select File Successfully
       Wait Until ELement is Enabled                ${icon_delete_file}                         ${Delay}
       Page Should Contain Element                  ${icon_delete_file}



#Bulk Upload - Templates
Verify Bulk Upload Department Successfully
    Click Bulk Upload Button
    Verify Bulk Upload modal displayed properly
    Select File
    Verify Select File Successfully
    Click Upload Button
    Bulk Upload Department Successfully