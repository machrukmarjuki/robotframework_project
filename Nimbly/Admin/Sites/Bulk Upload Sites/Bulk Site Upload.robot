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
#Bulk Site Upload
Click Site Upload Button
    Wait Until Element is Enabled               ${button_site_upload}                       ${Delay}
    Click Element                               ${button_site_upload}
Verify Site Upload modal displayed properly
    Wait Until ELement is Enabled               ${link_dwnld_template}                      ${Delay}
    Page Should Contain Element                 ${link_dwnld_template}
    Page Should Contain Element                 ${button_choose_file}
    Element Should Be Disabled                  ${button_upload_site}
    Page Should Contain Element                 ${button_cancel_upload}
Choose Site File
    Wait Until Element is Enabled               ${button_choose_file}                       ${Delay}
    Choose File                                 ${button_choose_file}                       ${choose_file_site}
Click Upload Button
    Wait Until Element is Enabled               ${button_upload_site}                            ${Delay}
    Click Element                               ${button_upload_site}
Verify Select File (Site) Successfully
    Wait Until ELement is Enabled               ${button_upload_site}                       ${Delay}
    Element Should Be Enabled                   ${button_upload_site}
Site Upload Successfully
    Wait Until Page Contains                    ${success_upload_toast}                     ${Delay}
    Page Should Contain                         ${success_upload_toast}

#Bulk Site Upload Templates
Verify Site Upload Successfully
    Click "Bulk Upload" Button
    Verify "Bulk Upload" can be clicked
    Click Site Upload Button
    Verify Site Upload modal displayed properly
    Choose Site File
    Verify Select File (Site) Successfully
    Click Upload Button
    Site Upload Successfully