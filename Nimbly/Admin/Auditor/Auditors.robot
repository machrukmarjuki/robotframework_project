*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-auditor.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser


*** Test Cases ***
Go to Auditors Page
    Go to Auditors Page

Verify "Auditor" page rendered correctly
    Verify "Active" tab is the default page that is open
    Verify "Search" field is available
    Verify "Download Selected" button which will be active if an auditor is selected
    Verify "Add User" button is available
    Verify "Bulk Upload" button is available
    Verify "Active" and "Blocked" tabs are available

Verify "Active" tab rendered correctly
    Verify columns labeled "Email", "Name", "Phone No", "Role", and "Status" are available
    Verify checkboxes work properly
    Verify "Edit" and "Block" icon are available
    Verify Next, Previous, First and Last page on pagination work properly





*** Keywords ***
Verify "Active" tab is the default page that is open
        Wait Until ELement is Enabled               ${icon_auditor_edit}                        ${Delay}
        Page Should Contain Element                 ${icon_auditor_edit}
Verify "Search" field is available
        Wait Until ELement is Enabled               ${field_search_auditors}                    ${Delay}
        Page Should Contain Element                 ${field_search_auditors}
Verify "Download Selected" button which will be active if an auditor is selected
        Wait Until ELement is Enabled               ${chckbox_all}                              ${Delay}
        Sleep                                       3
        Click Element                               ${chckbox_all}
        Click Element                               ${chckbox_all}
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Wait Until ELement is Enabled               ${btn_dwnld_selected}
        Element Should Be Enabled                   ${btn_dwnld_selected}
        Sleep                                       2
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Element Should Be Disabled                  ${btn_dwnld_selected}
Verify "Add User" button is available
        Wait Until ELement is Enabled               ${button_add_auditors}                      ${Delay}
        Page Should Contain Element                 ${button_add_auditors}
Verify "Bulk Upload" button is available
        Wait Until ELement is Enabled               ${button_bulk_auditors_upload}              ${Delay}
        Page Should Contain Element                 ${button_bulk_auditors_upload}
Verify "Active" and "Blocked" tabs are available
        Wait Until ELement is Enabled               ${tab_auditor_active}                       ${Delay}
        Page Should Contain Element                 ${tab_auditor_active}
        Page Should Contain Element                 ${tab_auditor_blocked}



#"Active" Tab
Verify columns labeled "Email", "Name", "Phone No", "Role", and "Status" are available
        Wait Until ELement is Enabled               ${label_email_auditor}                      ${Delay}
        Page Should Contain Element                 ${label_email_auditor}
        Page Should Contain Element                 ${label_name_auditor}
        Page Should Contain Element                 ${label_phone_auditor}
        Page Should Contain Element                 ${label_role_auditor}
        Page Should Contain Element                 ${label_status_auditor}
        Sleep                                       5
Verify checkboxes work properly
        Wait Until ELement is Enabled               ${chckbox_all}                              ${Delay}
        Page Should Contain Element                 ${chckbox_all}
        Page Should Contain Element                 ${chckbox_1}
        Page Should Contain Element                 ${chckbox_2}
        Page Should Contain Element                 ${chckbox_3}
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Wait Until ELement is Enabled               ${btn_dwnld_selected}
        Element Should Be Enabled                   ${btn_dwnld_selected}
        Sleep                                       2
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Element Should Be Disabled                  ${btn_dwnld_selected}
Verify "Edit" and "Block" icon are available
        Wait Until ELement is Enabled               ${icon_auditor_edit}                        ${Delay}
        Page Should Contain Element                 ${icon_auditor_edit}
        Page Should Contain Element                 ${icon_auditor_block}
Verify Next, Previous, First and Last page on pagination work properly
        Wait Until ELement is Enabled               ${btn_page_1}                               ${Delay}
        Element Should Be Disabled                  ${btn_page_left}
        Page Should Contain Element                 ${btn_page_1}
        Page Should Contain Element                 ${btn_page_2}
        Page Should Contain Element                 ${btn_page_right}
        Click Element                               ${btn_page_2}
        Wait Until ELement is Enabled               ${btn_page_left}                            ${Delay}
        Element Should Be Enabled                   ${btn_page_left}










