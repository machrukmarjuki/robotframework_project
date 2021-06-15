*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-questionnaires.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser


*** Test Cases ***
Go to Questionnaire page
    Go to Questionnaire page

Verify "Questionnaire" page rendered correctly
    Verify "Published" tab is the default page that is open
    Verify "Search" field is available
    Verify "Download Selected" button which will be active if an auditor is selected
    Verify "Create Questionnaire" button is available
    Verify "Upload" button is available
    Verify "Published" and "Deleted" tabs are available

Verify "Published" tab rendered correctly
    Verify columns labeled "Title", "Number of Questions", "Created at", "Last Updated", and "Modified by" are available
    Verify checkboxes work properly
    Verify "Edit", "Clone" and "Delete" icon are available
    Verify Next, Previous, First and Last page on pagination work properly



*** Keywords ***

Verify "Published" tab is the default page that is open
        Wait Until Element is Enabled               ${btn_edit_quest}                           ${Delay}
        Page Should Contain Element                 ${btn_edit_quest}
Verify "Search" field is available
        Wait Until Element is Enabled               ${field_search_quest}                       ${Delay}
        Page Should Contain Element                 ${field_search_quest}
Verify "Download Selected" button which will be active if an auditor is selected
        Wait Until Element is Enabled               ${chckbox_all}                              ${Delay}
        Sleep                                       3
        Click Element                               ${chckbox_all}
        Click Element                               ${chckbox_all}
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Wait Until Element is Enabled               ${btn_dwnld_selected}
        Element Should Be Enabled                   ${btn_dwnld_selected}
        Sleep                                       2
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Element Should Be Disabled                  ${btn_dwnld_selected}
Verify "Create Questionnaire" button is available
        Wait Until Element is Enabled               ${btn_create_quest}                         ${Delay}
        Page Should Contain Element                 ${btn_create_quest}
Verify "Upload" button is available
        Wait Until Element is Enabled               ${btn_bulk_upload_quest}                    ${Delay}
        Page Should Contain Element                 ${btn_bulk_upload_quest}
Verify "Published" and "Deleted" tabs are available
        Wait Until Element is Enabled               ${tab_published}                            ${Delay}
        Page Should Contain Element                 ${tab_published}
        Page Should Contain Element                 ${tab_deleted}



#"Active" Tab
Verify columns labeled "Title", "Number of Questions", "Created at", "Last Updated", and "Modified by" are available
        Wait Until Element is Enabled               ${label_title}                              ${Delay}
        Page Should Contain Element                 ${label_title}
        Page Should Contain Element                 ${label_no_quest}
        Page Should Contain Element                 ${label_created_at}
        Page Should Contain Element                 ${label_last_updated}
        Page Should Contain Element                 ${label_modified_by}
        Sleep                                       5
Verify checkboxes work properly
        Wait Until Element is Enabled               ${chckbox_all}                              ${Delay}
        Page Should Contain Element                 ${chckbox_all}
        Page Should Contain Element                 ${chckbox_1}
        Page Should Contain Element                 ${chckbox_2}
        Page Should Contain Element                 ${chckbox_3}
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Wait Until Element is Enabled               ${btn_dwnld_selected}
        Element Should Be Enabled                   ${btn_dwnld_selected}
        Sleep                                       2
        Click Element                               ${chckbox_all}
        Sleep                                       2
        Element Should Be Disabled                  ${btn_dwnld_selected}
Verify "Edit", "Clone" and "Delete" icon are available
        Wait Until Element is Enabled               ${btn_edit_quest}                           ${Delay}
        Page Should Contain Element                 ${btn_edit_quest}
        Page Should Contain Element                 ${btn_clone_quest}
        Page Should Contain Element                 ${btn_delete_quest}
Verify Next, Previous, First and Last page on pagination work properly
        Wait Until Element is Enabled               ${btn_page_1}                               ${Delay}
        Element Should Be Disabled                  ${btn_page_left}
        Page Should Contain Element                 ${btn_page_1}
        Page Should Contain Element                 ${btn_page_2}
        Page Should Contain Element                 ${btn_page_right}
        Click Element                               ${btn_page_2}
        Wait Until Element is Enabled               ${btn_page_left}                            ${Delay}
        Element Should Be Enabled                   ${btn_page_left}

















        











