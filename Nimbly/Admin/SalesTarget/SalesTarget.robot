*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-salestarget.robot
Suite Setup             Open Browser to Admin Menu



*** Test Cases ***

Go to Sales Target Page
    Go to Sales Target Page


Verify "Sales Target" page rendered correctly
    Verify "Search" field is available
    Verify "Edit" button is available
    Verify "Upload" Sales button is available
    Verify "Upload" target button is available
    Verify columns labeled "Site", "Department", "Assigned Auditors", "Total Sales Made", "Sales Target" and "Progress" are available
    Verify "View Detail" button is available
    Verify Next, Previous, First and Last page on pagination work properly



*** Keywords ***

Verify "Search" field is available
    Wait Until Element is Enabled                   ${field_search}                             ${Delay}
    Page Should Contain Element                     ${field_search}
Verify "Edit" button is available
    Wait Until Element is Enabled                   ${btn_edit_period}                          ${Delay}
    Page Should Contain Element                     ${btn_edit_period}
Verify columns labeled "Site", "Department", "Assigned Auditors", "Total Sales Made", "Sales Target" and "Progress" are available
    Wait Until Element is Enabled                   ${btn_asc_site}                             ${Delay}
    Page Should Contain Element                     ${btn_asc_site}
    Page Should Contain Element                     ${btn_asc_dept}
    Page Should Contain Element                     ${btn_asc_user}
    Page Should Contain Element                     ${btn_desc_total}
    Page Should Contain Element                     ${btn_desc_target}
    Page Should Contain Element                     ${btn_desc_prog}

Verify "View Detail" button is available
    Wait Until Element is Enabled                   ${btn_view_detail}                          ${Delay}
    Page Should Contain Element                     ${btn_view_detail}
Verify Next, Previous, First and Last page on pagination work properly
    Wait Until Element is Enabled                   ${btn_page_1}                               ${Delay}
    Element Should Be Disabled                      ${btn_page_left}
    Page Should Contain Element                     ${btn_page_1}
    Page Should Contain Element                     ${btn_page_2}
    Page Should Contain Element                     ${btn_page_right}
    Click Element                                   ${btn_page_2}
    Wait Until Element is Enabled                   ${btn_page_left}                            ${Delay}
    Element Should Be Enabled                       ${btn_page_left}










