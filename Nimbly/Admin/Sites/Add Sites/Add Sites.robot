*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-sites.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser



*** Test Cases ***
Go to Sites Page
    Go to Sites Page

Verify "Site Name Unavailable" Message is displayed
    Click Add Site Button
    Input Special Site Name
    Input Site Subtitle
    Input Site Address
    #Input Cordinates
    Input Timezone Manually
    Select Assigned Departments
    Select Dept for Supervisor
    Select Auditor for Supervisor
    Click Add Supervisor to list
    Select Dept for Auditor
    Select User for Auditor
    Click Save Button
    Verify "Site Name Unavailable" is displayed
    Go to Sites Page
    Handle Alert                        ACCEPT

Verify Add Site is Succesful
    Click Add Site Button
    Verify "Add Site" Modal rendered correctly
    Input Site Name
    Input Site Subtitle
    Input Site Address
    #Input Cordinates
    Input Timezone Manually
    Check-in Radius - Large
    Select Assigned Departments
    Select Dept for Supervisor
    Select Auditor for Supervisor
    Click Add Supervisor to list
    Select Dept for Auditor
    Select User for Auditor
    Click Save Button
    Add Site Succesfully





*** Keywords ***
Add Site Succesfully
        Wait Until Element is Enabled               ${site_success_toast}                       ${Delay}
        Page Should Contain Element                 ${site_success_toast}
Verify Site Name Successfully
        Wait Until Element is Enabled               ${verify_site_title}                        ${Delay}
        Page Should Contain Element                 ${verify_site_title}
Verify Assigned Departments Successfully
        Wait Until Element is Enabled               ${verify_assigned_department}               ${Delay}
        Page Should Contain Element                 ${verify_assigned_department}
Verify "Add Site" Modal rendered correctly
        Wait Until ELement is Enabled               ${field_site_name}                          ${Delay}
        Page Should Contain Element                 ${field_site_name}
        Page Should Contain Element                 ${field_site_subtitle}
        Page Should Contain Element                 ${dropdown_site_address}
        Page Should Contain Element                 ${dropdown_timezone}
        Page Should Contain Element                 ${dropdown_radius}
        Page Should Contain Element                 ${dropdown_assigned_departments}
        Page Should Contain Element                 ${dropdown_dept_for_spv}
        Page Should Contain Element                 ${dropdown_user_for_spv}
        Page Should Contain Element                 ${btn_add_spv_to_list}
        Page Should Contain Element                 ${btn_clear_all_spv}
        Page Should Contain Element                 ${dropdown_dept_for_auditor}
        Page Should Contain Element                 ${dropdown_user_for_auditor}
        Page Should Contain Element                 ${btn_add_spv_to_list}
        Page Should Contain Element                 ${btn_clear_all_spv}
        Page Should Contain Element                 ${button_save_site}
        Verify "Report Schedule" Tab Is Disabled
        Verify "SKUs" Tab Is Disabled
        Verify "Purchase Orders" Tab Is Disabled
        Verify "Reports" Tab Is Disabled
        Verify "Non-Operational Days" Tab Is Disabled
Verify "Report Schedule" Tab Is Disabled
        Wait Until Element is Enabled               ${tab_report_sched_site}                        ${Delay}
        Click Element                               ${tab_report_sched_site}
        Wait Until Page Contains                    ${warning_fill}                                 ${Delay}
        Page Should Contain                         ${warning_fill}
Verify "SKUs" Tab Is Disabled
        Wait Until Element is Enabled               ${tab_sku_site}                                 ${Delay}
        Click Element                               ${tab_sku_site}
        Wait Until Page Contains                    ${warning_fill}                                 ${Delay}
        Page Should Contain                         ${warning_fill}
Verify "Purchase Orders" Tab Is Disabled
        Wait Until Element is Enabled               ${tab_po_site}                                  ${Delay}
        Click Element                               ${tab_po_site}
        Wait Until Page Contains                    ${warning_fill}                                 ${Delay}
        Page Should Contain                         ${warning_fill}
Verify "Reports" Tab Is Disabled
        Wait Until Element is Enabled               ${tab_report_site}                              ${Delay}
        Click Element                               ${tab_report_site}
        Wait Until Page Contains                    ${warning_fill}                                 ${Delay}
        Page Should Contain                         ${warning_fill}
Verify "Non-Operational Days" Tab Is Disabled
        Wait Until Element is Enabled               ${tab_non_opr_site}                             ${Delay}
        Click Element                               ${tab_non_opr_site}
        Wait Until Page Contains                    ${warning_fill}                                 ${Delay}
        Page Should Contain                         ${warning_fill}
Verify "Site Name Unavailable" is displayed
        Wait Until Page Contains                    ${toast_existing_site}                         ${Delay}
        Page Should Contain                         ${toast_existing_site}


#Add Site Templates
Verify Add Special Site Successfully
    Click Add Site Button
    Verify "Add Site" Modal rendered correctly
    Input Special Site Name
    Input Site Subtitle
    Input Site Address
    #Input Cordinates
    Input Timezone Manually
    Select Assigned Departments
    Select Dept for Supervisor
    Select Auditor for Supervisor
    Click Add Supervisor to list
    Select Dept for Auditor
    Select User for Auditor
    Click Save Button
    Verify Add Site Succesfully

Verify Add Site Succesfully
    Click Add Site Button
    Verify "Add Site" Modal rendered correctly
    Input Site Name
    Input Site Subtitle
    Input Site Address
    #Input Cordinates
    Input Timezone Manually
    Check-in Radius - Large
    Select Assigned Departments
    Select Dept for Supervisor
    Select Auditor for Supervisor
    Click Add Supervisor to list
    Select Dept for Auditor
    Select User for Auditor
    Click Save Button
    Add Site Succesfully



Verify "Site Name Unavailable" Message is displayed
    Click Add Site Button
    Input Special Site Name
    Input Site Subtitle
    Input Site Address
    #Input Cordinates
    Input Timezone Manually
    Select Assigned Departments
    Select Dept for Supervisor
    Select Auditor for Supervisor
    Click Add Supervisor to list
    Select Dept for Auditor
    Select User for Auditor
    Click Save Button
    Verify "Site Name Unavailable" is displayed



