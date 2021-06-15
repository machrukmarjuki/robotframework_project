*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-sites.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser



*** Test Cases ***
#Go to Sites Page
    #Go to Sites Page








*** Keywords ***
#Edit Site Details (Edit Site not available)
Search Site to Edit
       Wait Until Element is Enabled                ${field_search_sites}                       ${Delay}
       Input Text                                   ${field_search_sites}                       AutoQA
#Search Result
       #Wait Until Element is Enabled                ${search_result}                            ${Delay}
       #Page Should Contain                         ${site_name_edited}
Click Edit Icon
       Sleep                                        3
       Wait Until Element is Enabled                ${icon_edit}                                ${Delay}
       Click Element                                ${icon_edit}
Edit Site Name
       ${RANDOM} =                                  Generate Random String                      3            [NUMBERS]
       Wait Until Element is Enabled                ${field_site_name}                          ${Delay}
       Input Text                                   ${field_site_name}                          ${site_name_edited} ${RANDOM}
Edit Site Subtitle
        Input Text                                   ${field_site_subtitle}                     ${edit_site_subtitle}
Click Save Changes
       Wait Until Element is Enabled                ${button_save_site}                         ${Delay}
       Scroll Element Into View                     ${button_save_site}
       Click Element                                ${button_save_site}
Verify Edit Site Successfully
       Wait Until Page Contains                     Updates saved.                              ${Delay}

#Edit Department - Templates
Verify "Edit" icon can be clicked
Verify "Edit Site" modal rendered correctly
Verify "Site Name", "Description" and "Email" can be edited
#Verify Selected sites will not be duplicated
#Verify Selected questionnaires will not be duplicated
#Verify Proper error message is displayed when edit user is unsuccessful

#Edit Site Templates
Edit Site
    Search Site to Edit
    Click Edit Icon
    Edit Site Name
    Edit Subtitle
    Click Save Changes
    Verify Edit Site Successfully

Verify Add Report Schedule on Special Site
    Search Site to Add Schedule
    Click Edit Icon
    Click Report Schedule Tab