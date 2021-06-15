*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot


*** Variables ***
${search}                               AutoQA Site
${search_result}                        xpath://div[@class='cell col-name']//span[contains(text(),'AutoQA')]
${edit_result}                          xpath://div[@class='cell col-name']//span[contains(text(),'AutoQA Site Edited')]
${tab_active_site}                      id:tab_active_sites
${tab_blocked_site}                     id:tab_blocked_sites
${field_search_sites}                   xpath://input[@placeholder='Search...']

#table
${label_site_name}                      id:btn_asc_name
${label_supervisor}                     id:btn_asc_spv
${label_assigned_auditors}              id:btn_asc_user
${label_last_updated}                   id:btn_asc_last_updated
${label_modified_by}                    id:btn_asc_modified

#pagination
${btn_page_left}                        id:btn_left_arrow_sites
${btn_page_1}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/div[1]/button[2]
${btn_page_2}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/div[1]/button[3]
${btn_page_right}                       id:btn_right_arrow_sites



#Add Site
${tab_detail_site}                      id:tab_details_site
${tab_report_sched_site}                id:tab_schedule_site
${tab_sku_site}                         id:tab_sku_site
${tab_po_site}                          id:tab_po_site
${tab_report_site}                      id:tab_report_site
${tab_non_opr_site}                     id:tab_non_opr_days_site
${warning_fill}                         Please fill in site's details.

${button_add_site}                      id:btn_add_site
${field_site_name}                      id:input_name_site
${field_site_subtitle}                  id:input_subtitle_site
${dropdown_assigned_departments}        id:drpdwn_assign_dept
${list_assigned_departmens}             xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${dropdown_supervisor}                  id:drpdwn_spv
${list_supervisor}                      xpath://div[@class='select-editor__menu css-16c52d9-menu']//div[1]//div[contains(text(),'${special_auditor}')]
${dropdown_assigned_auditors}           id:drpdwn_assign_auditor
${list_assigned_auditor}                xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${dropdown_add_user}                    id:drpdwn_add_user
${list_add_user}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_auditor}')]
${dropdown_site_address}                id:input_address_site
${site_address}                         xpath://span[text()=', Bekasi City, West Java, Indonesia']
${input_country}                        id:input_country_site
${input_provice}                        id:input_province_site
${input_city}                           id:input_city_site
${dropdown_timezone}                    id:drpdwn_time_zone
${list_timezone}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Asia/Jakarta (UTC+7)')]
${dropdown_radius}                      id:drpdwn_radius
${select_radius_default}                xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Default (Settings)')]
${select_radius_small}                  xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Small')]
${select_radius_medium}                 xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Medium')]
${select_radius_large}                  xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Large')]
${select_radius_disabled}               xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Disabled')]
${button_save_site}                     id:btn_save_site
${button_cancel_site}                   id:btn_cancel_site

${dropdown_dept_for_spv}                id:site-detail__department-supervisor-dropdown
${select_dept_for_spv}                  xpath://div[@class='select-editor__menu css-16c52d9-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${dropdown_user_for_spv}                id:site-detail__users-supervisor-dropdown
${select_user_for_spv}                  xpath://div[@class='select-editor__menu css-16c52d9-menu']//div[1]//div[contains(text(),'${special_auditor}')]
${btn_add_spv_to_list}                  xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/form[1]/div[2]/div[2]/div[1]/div[2]/button[2]
${btn_clear_all_spv}                    xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/form[1]/div[2]/div[2]/div[1]/div[2]/button[1]

${dropdown_dept_for_auditor}            id:site-detail__department-auditor-dropdown
${select_dept_for_auditor}              xpath://div[@class='select-editor__menu css-16c52d9-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${dropdown_user_for_auditor}            id:site-detail__users-auditor-dropdown
${select_user_for_auditor}              xpath://div[@class='select-editor__menu css-16c52d9-menu']//div[1]//div[contains(text(),'${special_auditor}')]
${btn_add_auditor_to_list}              xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/form[1]/div[2]/div[3]/div[1]/div[2]/button[2]
${btn_clear_all_auditor}                xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/form[1]/div[2]/div[3]/div[1]/div[2]/button[1]

${site_success_toast}                   xpath://div[@class='Toastify__toast-body toast-body'][contains(text(),'Updates saved.')]
${verify_site_title}                    xpath://input[@placeholder='Enter a Site Name'][@value='${special_site}']
${verify_assigned_department}           xpath://span[contains(text(),'${special_dept_name}')]
${toast_existing_site}                  Name unavailable
#Edit Site
${icon_edit}                            id:btn_edit_sites
${tab_detail}                           id:tab_details_site
${tab_report_schedule}                  id:tab_schedule_site


#Block Site
${icon_block}                           id:btn_block
${button_yes_block_site}                id:btn_yes_block_site
${button_cancel_block_site}             id:btn_no_block_site
${success_block_toast}                  Success

#Bulk Site Upload
${link_dwnld_template}                  id:link_dwnld_template
${button_bulk_site_upload}              id:btn_bulk_upload_sites
${button_site_upload}                   id:btn_site_upload
${button_schedule_upload}               id:btn_schedule_upload
${button_edit_schedule}                 id:btn_edit_schedule_upload

${button_upload_site}                   id:btn_upload
${button_cancel_upload}                 id:btn_cancel_upload
${button_upload_schedule}               id:btn_sche_upload
${button_cancel_schedule}               id:btn_sche_cancel_upload
${button_upload_edit}                   id:btn_sche_upload
${button_cancel_edit}                   id:btn_sche_cancel_upload
${choose_file_site}                     /Users/machruk/Documents/File Upload/site-schedule-monthly.xlsx
${choose_file_schedule}                 /Users/machruk/Documents/File Upload/site-schedule-weekly.xlsx
${choose_file_schedule_edited}          /Users/machruk/Documents/File Upload/site-edit-schedule.xlsx
${success_upload_toast}

#Reactivate button
${btn_activate}                         id:btn_reactive_site
${btn_yes_unblock_site}                 id:btn_yes_unblock_site
${btn_cancel_unblock_site}              id:btn_no_unblock_site
${success_unblock_toast}                Success



${site_name}                            AutoQA Site
${site_subtitle}                        Site ini dibuat menggunakan automation oleh QA
${edit_site_name}                       AutoQA Site Edited
${edit_site_subtitle}                   Subtitle ini sudah di edit secara otomatis oleh QA

#Report Schedule tab
${tab_report_schedule}




*** Keyword ***
Go to Sites Page
        Wait Until Element is Enabled               ${link_sites}                               ${Delay}
        Click Element                               ${link_sites}

Input Search
        Wait Until Element is Enabled               ${field_search_sites}                       ${Delay}
        Input Text                                  ${field_search_sites}                       ${search}
Search Result
        Wait Until Element is Enabled               ${search_result}                            ${Delay}
        Page Should Contain                         ${search}

Search Site to Add Schedule
        Wait Until Element is Enabled               ${field_search_sites}                       ${Delay}
        Input Text                                  ${field_search_sites}                       ${special_site}

Delay
        Sleep                                       5


#Add Site
Click Add Site Button
       Wait Until Element is Enabled                ${button_add_site}                          ${Delay}
       Click Element                                ${button_add_site}
Input Site Name
       ${RANDOM} =                                  Generate Random String                      3            [NUMBERS]
       Wait Until Element is Enabled                ${field_site_name}                          ${Delay}
       Input Text                                   ${field_site_name}                          ${site_name} ${RANDOM}
Input Special Site Name
       Wait Until Element is Enabled                ${field_site_name}                          ${Delay}
       Input Text                                   ${field_site_name}                          ${special_site}
Input Site Subtitle
       Input Text                                   ${field_site_subtitle}                      ${site_subtitle}
Input Site Address
       Wait Until Element is Enabled                ${dropdown_site_address}                    ${Delay}
       Input Text                                   ${dropdown_site_address}                    Bekasi
       Wait Until Element is Enabled                ${site_address}                             ${Delay}
       Click Element                                ${site_address}
Input Cordinates
       Wait Until Element is Enabled
Input Timezone Manually
       Wait Until Element is Enabled                ${dropdown_timezone}                        ${Delay}
       Click Element                                ${dropdown_timezone}
       Wait Until Element is Enabled                ${list_timezone}                            ${Delay}
       Click Element                                ${list_timezone}
Check-in Radius - Default
       Wait Until Element is Enabled                ${dropdown_radius}                          ${Delay}
       Click Element                                ${dropdown_radius}
       Wait Until Element is Enabled                ${select_radius_default}                    ${Delay}
       Click Element                                ${select_radius_default}
Check-in Radius - Small
       Wait Until Element is Enabled                ${dropdown_radius}                          ${Delay}
       Click Element                                ${dropdown_radius}
       Wait Until Element is Enabled                ${select_radius_small}                      ${Delay}
       Click Element                                ${select_radius_small}
Check-in Radius - Medium
       Wait Until Element is Enabled                ${dropdown_radius}                          ${Delay}
       Click Element                                ${dropdown_radius}
       Wait Until Element is Enabled                ${select_radius_medium}                     ${Delay}
       Click Element                                ${select_radius_medium}
Check-in Radius - Large
       Wait Until Element is Enabled                ${dropdown_radius}                          ${Delay}
       Click Element                                ${dropdown_radius}
       Wait Until Element is Enabled                ${select_radius_large}                      ${Delay}
       Click Element                                ${select_radius_large}
Check-in Radius - Disabled
       Wait Until Element is Enabled                ${dropdown_radius}                          ${Delay}
       Click Element                                ${dropdown_radius}
       Wait Until Element is Enabled                ${select_radius_disabled}                   ${Delay}
       Click Element                                ${select_radius_disabled}
Select Assigned Departments
       Wait Until Element is Enabled                ${dropdown_assigned_departments}            ${Delay}
       Click Element                                ${dropdown_assigned_departments}
       Wait Until Element is Enabled                ${list_assigned_departmens}                 ${Delay}
       Click Element                                ${list_assigned_departmens}
Select Dept for Supervisor
       Wait Until Element is Enabled                ${dropdown_dept_for_spv}                    ${Delay}
       Click Element                                ${dropdown_dept_for_spv}
       Wait Until Element is Enabled                ${select_dept_for_spv}                      ${Delay}
       Click Element                                ${select_dept_for_spv}
Select Auditor for Supervisor
       Wait Until Element is Enabled                ${dropdown_user_for_spv}                    ${Delay}
       Click Element                                ${dropdown_user_for_spv}
       Wait Until Element is Enabled                ${select_user_for_spv}                      ${Delay}
       Click Element                                ${select_user_for_spv}
Click Add Supervisor to list
       Wait Until Element is Enabled                ${btn_add_spv_to_list}                      ${Delay}
       Click Element                                ${btn_add_spv_to_list}
Click Clear All Supervisor
       Wait Until Element is Enabled                ${btn_clear_all_spv}                        ${Delay}
       Click Element                                ${btn_clear_all_spv}
Select Dept for Auditor
       Wait Until ELement is Enabled                ${dropdown_dept_for_auditor}                ${Delay}
       Click Element                                ${dropdown_dept_for_auditor}
       Wait Until Element is Enabled                ${select_dept_for_auditor}                  ${Delay}
       Click ELement                                ${select_dept_for_auditor}
Select User for Auditor
       Wait Until ELement is Enabled                ${dropdown_user_for_auditor}                ${Delay}
       Click Element                                ${dropdown_user_for_auditor}
       Wait Until Element is Enabled                ${select_user_for_auditor}                  ${Delay}
       Click ELement                                ${select_user_for_auditor}
Click Add Auditor to list
       Wait Until Element is Enabled                ${btn_add_auditor_to_list}                  ${Delay}
       Click Element                                ${btn_add_auditor_to_list}
Click Clear All Auditor
       Wait Until Element is Enabled                ${btn_clear_all_auditor}                    ${Delay}
       Click Element                                ${btn_clear_all_auditor}
Click Save Button
       Wait Until Element is Enabled                ${button_save_site}                         ${Delay}
       Click Element                                ${button_save_site}


#Bulk Upload Button
Click "Bulk Upload" Button
    Wait Until Element is Enabled               ${button_bulk_site_upload}                  ${Delay}
    Click Element                               ${button_bulk_site_upload}
Verify "Bulk Upload" can be clicked
    Wait Until Element is Enabled               ${button_site_upload}                       ${Delay}
    Page Should Contain Element                 ${button_site_upload}
    Page Should Contain Element                 ${button_schedule_upload}
    Page Should Contain Element                 ${button_edit_schedule}