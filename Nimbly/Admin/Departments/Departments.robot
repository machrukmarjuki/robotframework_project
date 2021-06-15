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


Verify "Department" page rendered correctly
        Verify "Active" tab is the default page that is open
        Verify "Search" field is available
        Verify "Add Department" button is available
        Verify "Bulk Upload" button is available
        Verify "Departments Group" tab is available
        Verify "Inactive" tab is available

Verify "Active" department tab rendered correctly
        Verify columns labeled "Unique key", "Department name", "Description" and "email" are available
        Verify "Edit" and "Block" buttons are available
        Verify Next, Previous, First and Last page on pagination work properly




*** Keywords ***

#Verify Department -> Active Tab
Verify Department list fetched successfully
Verify "Active" tab is the default page that is open
    Wait Until ELement is Enabled               ${button_edit_department}                   ${Delay}
    Page Should Contain Element                 ${button_edit_department}
Verify "Search" field is available
    Wait Until ELement is Enabled               ${field_search_department}                  ${Delay}
    Page Should Contain Element                 ${field_search_department}
Verify "Add Department" button is available
    Wait Until ELement is Enabled               ${button_add_department}                    ${Delay}
    Page Should Contain Element                 ${button_add_department}
Verify "Bulk Upload" button is available
    Wait Until ELement is Enabled               ${button_bulk_department_upload}            ${Delay}
    Page Should Contain Element                 ${button_bulk_department_upload}
Verify "Departments Group" tab is available
    Wait Until ELement is Enabled               ${tab_departments_group}                    ${Delay}
    Page Should Contain Element                 ${tab_departments_group}
Verify "Inactive" tab is available
    Wait Until ELement is Enabled               ${tab_inactive}                             ${Delay}
    Page Should Contain Element                 ${tab_inactive}
Verify columns labeled "Unique key", "Department name", "Description" and "email" are available
    Wait Until ELement is Enabled               ${btn_asc_key}                              ${Delay}
    Page Should Contain Element                 ${btn_asc_key}
    Page Should Contain Element                 ${btn_asc_name_dept}
    Page Should Contain Element                 ${btn_asc_descript_dept}
    Page Should Contain Element                 ${btn_asc_email_dept}
Verify "Edit" and "Block" buttons are available
    Wait Until ELement is Enabled               ${button_edit_department}                   ${Delay}
    Page Should Contain Element                 ${button_edit_department}
    Page Should Contain Element                 ${button_delete_dept}
Verify Next, Previous, First and Last page on pagination work properly
    Wait Until ELement is Enabled               ${btn_page_1}                               ${Delay}
    Element Should Be Disabled                  ${btn_page_left}
    Page Should Contain Element                 ${btn_page_1}
    Page Should Contain Element                 ${btn_page_2}
    Page Should Contain Element                 ${btn_page_right}
    Click Element                               ${btn_page_2}
    Wait Until ELement is Enabled               ${btn_page_left}                            ${Delay}
    Element Should Be Enabled                   ${btn_page_left}




#Test Case Templates
Verify "Department" page rendered correctly
        Verify "Active" tab is the default page that is open
        Verify "Search" field is available
        Verify "Add Department" button is available
        Verify "Bulk Upload" button is available
        Verify "Departments Group" tab is available
        Verify "Inactive" tab is available

Verify "Active" department tab rendered correctly
        Verify columns labeled "Unique key", "Department name", "Description" and "email" are available
        Verify "Edit" and "Block" buttons are available
        Verify Next, Previous, First and Last page on pagination work properly















































