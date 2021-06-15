*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-promotions.robot
Suite Setup             Open Browser to Admin Menu
#Suite Teardown          Close Browser
Documentation           Promotion



*** Test Cases ***
Go to Promotions Page
        Go to Promotions Page


Verify "Promotion" page rendered correctly
        Verify "Active" tab is rendered correctly
        Verify "Scheduled" tab is available
        Verify "Archived" tab is available
        Verify "New Promotion" button is available


Verify "Active" tab is the default page that is open
        Verify "Active" tab is rendered correctly
        Verify columns labeled "Promotion Title", "Description", "Target", "Promotion Cost", "Start" and "End" are available




*** Keywords ***

Verify "Scheduled" tab is available
        Wait Until ELement is Enabled               ${tab_scheduled_promotion}                  ${Delay}
        Page Should Contain Element                 ${tab_scheduled_promotion}
Verify "Archived" tab is available
        Wait Until ELement is Enabled               ${tab_archived_promotion}                   ${Delay}
        Page Should Contain Element                 ${tab_archived_promotion}
Verify "New Promotion" button is available
        Wait Until ELement is Enabled               ${button_new_promotion}                     ${Delay}
        Page Should Contain Element                 ${button_new_promotion}
Verify "Active" tab is rendered correctly
        Wait Until ELement is Enabled               ${icon_edit}                                ${Delay}
        Page Should Contain Element                 ${icon_edit}
Verify "Scheduled" tab is rendered correctly
        Wait Until ELement is Enabled                                                           ${Delay}
        Page Should Contain Element
Verify "Archived" tab is rendered correctly
        Wait Until ELement is Enabled                                                           ${Delay}
        Page Should Contain Element
Verify columns labeled "Promotion Title", "Description", "Target", "Promotion Cost", "Start" and "End" are available
        Wait Until ELement is Enabled               ${btn_asc_title_promo}                      ${Delay}
        Page Should Contain Element                 ${btn_asc_title_promo}
        Page Should Contain Element                 ${btn_asc_descr_promo}
        Page Should Contain Element                 ${btn_asc_target}
        Page Should Contain Element                 ${btn_asc_cost}
        Page Should Contain Element                 ${btn_asc_sales_result}
        Page Should Contain Element                 ${btn_asc_start_promo}
        Page Should Contain Element                 ${btn_asc_end_promo}















