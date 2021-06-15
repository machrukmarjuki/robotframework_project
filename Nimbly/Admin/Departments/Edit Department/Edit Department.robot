*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-department.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser

*** Test Cases ***
Go to Departments Page
    Go to Departments Page

Verify Edit Department Successfully
    Search Department to Edit
    Search Result
    Click Edit Icon
    Verify "Edit" icon can be clicked
    Verify "Edit Department" modal rendered correctly
    Verify "Department Name", "Description" and "Email" can be edited
    Verify "Unique Key" field is disabled
    Verify User can add sites
    Verify User can delete selected sites
    Verify User can edit questionnaires
    Verify User can delete selected questionnaires
    Edit Department Name
    Edit Desciption
    Edit Email
    Edit Sites
    Edit Questionnaire
    Click Save Changes
    Edit Department Successfully










*** Keywords ***
#Active Tab - Edit Department
Search Department to Edit
        Wait Until Element is Enabled               ${field_search_department}                  ${Delay}
        Input Text                                  ${field_search_department}                  ${dept_to_edit}
Click Edit Icon
        Wait Until Element is Enabled               ${button_edit_department}                   ${Delay}
        Click Element                               ${button_edit_department}
        Wait Until Element is Enabled               ${button_save_department}                   ${Delay}
Edit Department Name
        ${RANDOM} =                                 Generate Random String                      3           [NUMBERS]
        Input Text                                  ${field_department_name}                    ${edit_department_name} ${RANDOM}
Edit Desciption
        ${RANDOM} =                                 Generate Random String                      3           [NUMBERS]
        Input Text                                  ${field_department_desc}                    ${edit_department_desc} ${RANDOM}
Edit Email
        Input Text                                  ${field_department_email}                   ${EMAIL}
Edit Sites
        Wait Until Element is Enabled               ${dropdown_department_sites}                ${Delay}
        Click Element                               ${dropdown_department_sites}
        Wait Until Element is Enabled               ${list_department_sites}                    ${Delay}
        Click Element                               ${list_department_sites}
Edit Questionnaire
        Wait Until Element is Enabled               ${dropdown_department_questionnaires}       ${Delay}
        Click Element                               ${dropdown_department_questionnaires}
        Wait Until Element is Enabled               ${list_department_questionnaires}           ${Delay}
        Click Element                               ${list_department_questionnaires}
Delete Selected Questionnaire
        Wait Until Element is Enabled               ${icon_del_quest}                           ${Delay}
        Click Element                               ${icon_del_quest}
Delete Selected Sites
        Wait Until Element is Enabled               ${icon_del_sites}                           ${Delay}
        Click Element                               ${icon_del_sites}
Click Save Changes
        Click Element                               ${Button_SaveDepartment}
Select Level
        Wait Until Element is Enabled               ${drpdwn_level}                             ${Delay}
        Click Element                               ${drpdwn_level}
        Wait Until Element is Enabled               ${select_level}                             ${Delay}
        Click Element                               ${select_level}
Select User
        Wait Until Element is Enabled               ${drpdwn_add_users}                         ${Delay}
        Click Element                               ${drpdwn_add_users}
        Wait Until Element is Enabled               ${select_add_user}                          ${Delay}
        Click Element                               ${select_add_user}
Click Another Level
        Wait Until Element is Enabled               ${btn_add_another_level}                    ${Delay}
        Click Element                               ${btn_add_another_level}
Click Delete Escalation
        Wait Until Element is Enabled               ${link_delete_escal}                        ${Delay}
        Click Element                               ${link_delete_escal}
        Wait Until Element is Enabled               ${btn_continue_delete}                      ${Delay}
        Click Element                               ${btn_continue_delete}
Select Escalation Time
        Wait Until Element is Enabled               ${drpdwn_time_escal}                        ${Delay}
        Click Element                               ${drpdwn_time_escal}
        Wait Until Element is Enabled               ${select_time_escal}                        ${Delay}
        Click Element                               ${select_time_escal}
Edit Department Successfully
        Wait Until Page Contains                    ${success_toast}                            ${Delay}
        Page Should Contain                         ${success_toast}

#Edit Department - Templates
Verify "Edit" icon can be clicked
    Wait Until Element is Enabled               ${button_save_department}                   ${Delay}
    Element Should Be Enabled                   ${button_save_department}

Verify "Edit Department" modal rendered correctly
    Wait Until ELement is Enabled               ${field_department_name}                    ${Delay}
    Page Should Contain Element                 ${field_department_name}
    Page Should Contain Element                 ${field_department_desc}
    Page Should Contain Element                 ${field_department_email}
    Page Should Contain Element                 ${dropdown_department_sites}
    Page Should Contain Element                 ${dropdown_department_questionnaires}
    Page Should Contain Element                 ${button_save_department}

Verify "Department Name", "Description" and "Email" can be edited
    Element Should Be Enabled                   ${field_department_name}
    Element Should Be Enabled                   ${field_department_desc}
    Element Should Be Enabled                   ${field_department_email}

Verify "Unique Key" field is disabled
    Element Should Be Disabled                  ${field_department_key}
Verify User cannot edit "Unique Key"
    Element Should Be Disabled                  ${field_department_key}
Verify User can add sites
    Select Department Sites
Verify User can delete selected sites
    Delete Selected Sites
Verify User can edit questionnaires
    Edit Questionnaire
Verify User can delete selected questionnaires
    Delete Selected Questionnaire

#Verify Selected sites will not be duplicated
#Verify Selected questionnaires will not be duplicated
#Verify Proper error message is displayed when edit user is unsuccessful

Verify Edit Department Successfully
    Search Department to Edit
    Search Result
    Click Edit Icon
    Verify "Edit" icon can be clicked
    Verify "Edit Department" modal rendered correctly
    Verify "Department Name", "Description" and "Email" can be edited
    Verify "Unique Key" field is disabled
    Verify User can add sites
    Verify User can delete selected sites
    Verify User can edit questionnaires
    Verify User can delete selected questionnaires
    Edit Department Name
    Edit Desciption
    Edit Email
    Edit Sites
    Edit Questionnaire
    Click Save Changes
    Edit Department Successfully