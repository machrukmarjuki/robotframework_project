*** Variables ***
${tab_department}                       xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/a[1]
${tab_departments_group}                xpath://a[contains(text(),'Departments Group')]
${tab_active}                           id:tab_actv_dept
${tab_inactive}                         id:tab_del_dept
${field_search_department}              id:input_search_dept
${search_department_result}             xpath://td[@class='col-name']//span[contains(text(),'AutoQA')]
${button_add_department}                id:btn_add_dept
${button_bulk_department_upload}        id:btn_bulk_upld_dept
${button_yes_upload}                    id:btn_upload_dept
${button_cancel_upload}                 id:btn_cancel_dept
${field_department_name}                id:input_name_dept
${field_department_desc}                id:input_desc_dept
${field_department_email}               id:input_email_dept
${field_department_key}                 id:input_key_dept
${link_check_key}                       id:link_check_key
${link_dwnld_template}                  id:link_dwnld_template
${icon_delete_file}                     xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[2]/img[1]

${dropdown_department_sites}            id:drpdwn_site_dept
${dropdown_department_questionnaires}   id:drpdwn_quest_dept
${list_department_sites}                xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'All')]
${list_department_questionnaires}       xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'All')]
${button_save_department}               id:btn_save_dept
${button_edit_department}               id:btn_edit_dept
${button_select_file}                   id:btn_select_file
${choose_file_department}               /Users/machruk/Documents/File Upload/department-bulk-template.xlsx
${button_delete_dept}                   id:btn_block_dept
${button_yes_delete}                    id:btn_block_yes
${button_no_delete}                     id:btn_block_no
${button_activate}                      id:btn_activate
${button_yes_activate}                  id:btn_activate_yes
${button_no_activate}                   id:btn_activate_no
${icon_del_quest}                       xpath://body/div[@id='root']/div/div/div/div/div/div/div/div/div/div/div/span[2]
${icon_del_sites}                       xpath://body//div[@id='root']//div//div//div//div//div//div//div//div[2]//div[1]//div[2]//span[2]

${success_toast}                        Success update department
${success_block_toast}                  Successfully Block department
${success_upload_toast}                 Successfully upload bulk
${success_activate_toast}               Successfully Activate department


${drpdwn_add_users}                     id:drpdwn_user_escal1
${select_add_user}
${drpdwn_level}                         id:drpdwn_level_escal1
${select_level}
${link_delete_escal}                    id:link_del_escal1
${btn_continue_delete}
${btn_cancel_delete}
${drpdwn_time_escal}                    id:drpdwn_time_escal1
${select_time_escal}
${btn_add_another_level}                id:btn_add_level
${warning_msg_duplicate_key}            Duplicate unique code, try another key
${key_duplicate}                        Specialkey


${department_title}                     AutoQA
${department_desc}                      Departement ini dibuat secara otomatis oleh QA
${department_key}                       Autokey
${specialkey}                           Specialkey
${dept_to_edit}                         ${department_title}
${dept_to_delete}                       ${department_title}
${dept_to_activate}                     ${department_title}
${edit_department_name}                 AutoDep Name Edited
${edit_department_desc}                 Department ini sudah di edit secara otomatis oleh QA

#table & pagination
${btn_asc_key}                          id:btn_asc_key
${btn_asc_name_dept}                    id:btn_asc_name_dept
${btn_asc_descript_dept}                id:btn_asc_descript_dept
${btn_asc_email_dept}                   id:btn_asc_email_dept
${btn_page_left}                        id:btn_left_arrow
${btn_page_1}                           id:btn_page1
${btn_page_2}                           id:btn_page2
${btn_page_right}                       id:btn_right_arrow



*** Keywords ***
Go to Departments Page
        Wait Until Element is Enabled               ${link_departments}                         ${Delay}
        Click Element                               ${link_departments}
Delay
        Sleep                                       5


Search Department
        Wait Until Element is Enabled               ${field_search_department}                  ${Delay}
        Input Text                                  ${field_search_department}                  ${department_title}
Search Result
        Wait Until Element is Enabled               ${search_department_result}                 ${Delay}
        Delay

#Add Department
Click Add Department Button
        Wait Until Element is Enabled               ${button_add_department}                    ${Delay}
        Click Element                               ${button_add_department}
        Wait Until ELement is Enabled               ${field_department_name}                    ${Delay}
Input Department Name
        ${RANDOM} =                                 Generate Random String                      3           [NUMBERS]
        Input Text                                  ${field_department_name}                    ${department_title} ${RANDOM}
Input Special Department Name
        Input Text                                  ${field_department_name}                    ${special_dept_name}

Input Description
        Input Text                                  ${field_department_desc}                    ${department_desc}
Input Email Department
        Input Text                                  ${field_department_email}                   ${EMAIL}
Input Department Key
        ${RANDOM} =                                 Generate Random String                      3           [NUMBERS]
        Input Text                                  ${field_department_key}                     ${department_key} ${RANDOM}
Input Special Department Key
        Input Text                                  ${field_department_key}                     ${specialkey}
Select Department Sites
        Wait Until Element is Enabled               ${dropdown_department_sites}                ${Delay}
        Click Element                               ${dropdown_department_sites}
        Wait Until Element is Enabled               ${list_department_sites}                    ${Delay}
        Click Element                               ${list_department_sites}
Select Questionnaires
        Wait Until Element is Enabled               ${dropdown_department_questionnaires}       ${Delay}
        Click Element                               ${dropdown_department_questionnaires}
        Wait Until Element is Enabled               ${list_department_questionnaires}           ${Delay}
        Click Element                               ${list_department_questionnaires}
Click Save Department
        Wait Until Element is Enabled               ${button_save_department}                   ${Delay}
        Click Element                               ${button_save_department}
Add Department Successfully
        Wait Until Page Contains                    Successful Create New Department                ${Delay}
        Page Should Contain                         Successful Create New Department

Verify "Add Department" Modal rendered correctly
        Wait Until ELement is Enabled               ${field_department_name}                    ${Delay}
        Page Should Contain Element                 ${field_department_name}
        Page Should Contain Element                 ${field_department_desc}
        Page Should Contain Element                 ${field_department_email}
        Page Should Contain Element                 ${field_department_key}
        Page Should Contain Element                 ${dropdown_department_sites}
        Page Should Contain Element                 ${dropdown_department_questionnaires}
        Page Should Contain Element                 ${button_save_department}
Verify special characters are not allowed on "Department Name"

Verify Email Address is valid
        Wait Until Page Contains                    @hellonimbly.com                            ${Delay}
        Page Should Contain                         @hellonimbly.com
Verify "Unique key" can only contain letters
Verify special characters and spaces are not allowed on "Unique key"
Verify "Check" link work properly
Verify Warning message is displayed if the unique key already exists
        Wait Until Element is Enabled               ${field_department_key}                     ${Delay}
        Input Text                                  ${field_department_key}                     ${key_duplicate}
        Click Element                               ${link_check_key}
        Wait Until Page Contains                    ${warning_msg_duplicate_key}                ${Delay}
        Page Should Contain                         ${warning_msg_duplicate_key}

Verify warning message is displayed if the data is invalid
        Wait Until Page Contains                    Please review the fields highlighted in red                ${Delay}
        Page Should Contain                         Please review the fields highlighted in red
Verify "Add Department" Successfully
        Wait Until Element is Enabled               ${field_search_department}                  ${Delay}
        Input Text                                  ${field_search_department}                  ${department_title}
        Page Should Contain                         ${department_title}
