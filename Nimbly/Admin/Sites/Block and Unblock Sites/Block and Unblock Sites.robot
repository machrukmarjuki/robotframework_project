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


Verify Block Site Successfully
    Search Site to Block
    Click Block Icon
    Verify "Block" icon can be clicked
    Verify Confirmation Popup "Block" is displayed properly
    Verify "Yes, Block" and "No" buttons are available
    Click Yes Block
    Delay
    Delay
    Delay
    Block Site Successfully


Verify Unblock Site Successfully
    Verify Blocked Site list is displayed correctly
    Search Site to Unblock
    Click Unblock Button
    Verify "Unblock" icon can be clicked
    Verify Confirmation Popup "Unblock" is displayed properly
    Verify "Yes, Activate" and "No" buttons are available
    Click Yes Unblock










*** Keywords ***
#Block Site
Search Site to Block
    Wait Until Element is Enabled                ${field_search_sites}                       ${Delay}
    Input Text                                   ${field_search_sites}                       ${Search}
    Wait Until Element is Enabled                ${search_result}                            ${Delay}
    Page Should Contain                          ${Search}
Click Block Icon
    Sleep                                        3
    Wait Until Element is Enabled                ${icon_block}                               ${Delay}
    Click Element                                ${icon_block}
Click Yes Block
    Wait Until Element is Enabled                ${button_yes_block_site}                    ${Delay}
    Click Element                                ${button_yes_block_site}

#Block Site - Templates
Verify "Block" icon can be clicked
    Wait Until Element is Enabled               ${button_yes_block_site}                    ${Delay}
    Element Should Be Enabled                   ${button_yes_block_site}
Verify Confirmation Popup "Block" is displayed properly
    Wait Until Element is Enabled               ${button_yes_block_site}                    ${Delay}
    Page Should Contain                         You can't undo this action.
    Page Should Contain Element                 ${button_yes_block_site}
    Page Should Contain Element                 ${button_cancel_block_site}
Verify "Yes, Block" and "No" buttons are available
    Page Should Contain Element                 ${button_yes_block_site}
    Page Should Contain Element                 ${button_cancel_block_site}
Block Site Successfully
    #Wait Until Page Contains                    ${success_block_toast}                                 ${Delay}
    #Page Should Contain                         ${success_block_toast}
    Wait Until Element is Visible               ${tab_blocked_site}                         ${Delay}
    Click Element                               ${tab_blocked_site}
    Search Site to Block

#Verify proper error message displayed when blocking department is unsuccessful

Verify Block Site Successfully
    Search Site to Block
    Click Block Icon
    Verify "Block" icon can be clicked
    Verify Confirmation Popup "Block" is displayed properly
    Verify "Yes, Block" and "No" buttons are available
    Click Yes Block
    Delay
    Delay
    Delay
    Block Site Successfully










#Unblock Site
Click Blocked Tab
    Wait Until Element is Enabled               ${tab_blocked_site}                         ${Delay}
    Click Element                               ${tab_blocked_site}
Verify Blocked Site list is displayed correctly
    Wait Until ELement is Enabled               ${label_site_name}                          ${Delay}
    Page Should Contain Element                 ${label_site_name}
    Page Should Contain Element                 ${label_supervisor}
    Page Should Contain Element                 ${label_assigned_auditors}
    Page Should Contain Element                 ${label_last_updated}
    Page Should Contain Element                 ${label_modified_by}
    #Page Should Contain Element                 ${btn_activate}
Search Site to Unblock
    Wait Until Element is Enabled               ${field_search_sites}                       ${Delay}
    Input Text                                  ${field_search_sites}                       ${Search}
    Wait Until Element is Enabled               ${search_result}                            ${Delay}
    Page Should Contain                         ${Search}
Click Unblock Button
    Wait Until Element is Enabled               ${btn_activate}                             ${Delay}
    Click Element                               ${btn_activate}
Verify "Unblock" icon can be clicked
    Wait Until Element is Enabled               ${btn_yes_unblock_site}                     ${Delay}
    Element Should Be Enabled                   ${btn_yes_unblock_site}
Verify Confirmation Popup "Unblock" is displayed properly
    Wait Until Element is Enabled               ${btn_yes_unblock_site}                     ${Delay}
    Page Should Contain                         Are you sure you want to unblock this site?
    Page Should Contain Element                 ${btn_yes_unblock_site}
    Page Should Contain Element                 ${btn_cancel_unblock_site}
Verify "Yes, Activate" and "No" buttons are available
    Page Should Contain Element                 ${btn_yes_unblock_site}
    Page Should Contain Element                 ${btn_cancel_unblock_site}
Click Yes Unblock
    Wait Until Element is Enabled               ${btn_yes_unblock_site}                     ${Delay}
    Click Element                               ${btn_yes_unblock_site}
Unblock Site Successfully
    #Wait Until Page Contains                    ${success_unblock_toast}                    ${Delay}
    #Page Should Contain                         ${success_unblock_toast}

#Verify proper error message displayed when unblock site is unsuccessful

#Unblock Site Templates
Verify Unblock Site Successfully
    Click Blocked Tab
    Verify Blocked Site list is displayed correctly
    Search Site to Unblock
    Click Unblock Button
    Verify "Unblock" icon can be clicked
    Verify Confirmation Popup "Unblock" is displayed properly
    Verify "Yes, Activate" and "No" buttons are available
    Click Yes Unblock
    #Unblock Site Successfully