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



Verify "Site" page rendered correctly
        Verify "Active" tab is the default page that is open
        Verify "Search" field is available
        Verify "Add Site" button is available
        Verify "Bulk Upload" button is available
        Verify "Blocked" tab is available

Verify "Active" sites tab rendered correctly
        Verify columns labeled "Site Name", "Supervisor", "Assigned Auditors", "Last Updated", and "Modified" are available
        Verify "Block" button is available
        Verify Next, Previous, First and Last page on pagination work properly


*** Keywords ***
Verify "Active" tab is the default page that is open
        Wait Until Element is Enabled               ${icon_block}                               ${Delay}
        Page Should Contain Element                 ${icon_block}
Verify "Search" field is available
        Wait Until ELement is Enabled               ${field_search_sites}                       ${Delay}
        Page Should Contain Element                 ${field_search_sites}
Verify "Add Site" button is available
        Wait Until ELement is Enabled               ${button_add_site}                          ${Delay}
        Page Should Contain Element                 ${button_add_site}
Verify "Bulk Upload" button is available
        Wait Until ELement is Enabled               ${button_bulk_site_upload}                  ${Delay}
        Page Should Contain Element                 ${button_bulk_site_upload}
Verify "Blocked" tab is available
        Wait Until ELement is Enabled               ${tab_blocked_site}                         ${Delay}
        Page Should Contain Element                 ${tab_blocked_site}
Verify columns labeled "Site Name", "Supervisor", "Assigned Auditors", "Last Updated", and "Modified" are available
        Wait Until ELement is Enabled               ${label_site_name}                          ${Delay}
        Page Should Contain Element                 ${label_site_name}
        Page Should Contain Element                 ${label_supervisor}
        Page Should Contain Element                 ${label_assigned_auditors}
        Page Should Contain Element                 ${label_last_updated}
        Page Should Contain Element                 ${label_modified_by}
Verify "Block" button is available
        Wait Until ELement is Enabled               ${icon_block}                               ${Delay}
        Page Should Contain Element                 ${icon_block}
Verify Next, Previous, First and Last page on pagination work properly
        Wait Until ELement is Enabled               ${btn_page_1}                               ${Delay}
        Element Should Be Disabled                  ${btn_page_left}
        Page Should Contain Element                 ${btn_page_1}
        Page Should Contain Element                 ${btn_page_2}
        Page Should Contain Element                 ${btn_page_right}
        Click Element                               ${btn_page_2}
        Wait Until ELement is Enabled               ${btn_page_left}                            ${Delay}
        Element Should Be Enabled                   ${btn_page_left}



Verify "Site" page rendered correctly
        Verify "Active" tab is the default page that is open
        Verify "Search" field is available
        Verify "Add Site" button is available
        Verify "Bulk Upload" button is available
        Verify "Blocked" tab is available
Verify "Active" sites tab rendered correctly
        Verify columns labeled "Site Name", "Supervisor", "Assigned Auditors", "Last Updated", and "Modified" are available
        Verify "Block" button is available
        Verify Next, Previous, First and Last page on pagination work properly









































