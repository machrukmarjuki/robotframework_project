*** Variables ***
#Admin - Auditor Page
${field_search_auditors}                id:input_search_auditor
${field_auditor_name}                   id:input_user_auditor
${field_auditor_email}                  id:input_email_auditor
${field_auditor_phone}                  id:input_phone_auditor
${dropdown_auditor_role}                id:drpdwn_role_auditor
${dropdown_auditor_department}          id:dropdwn_dept_auditor
${search_auditor_result}                xpath://td[@class='col-name']//span[contains(text(),'AutoQA Auditor')]
${search_auditor_edited}                xpath://td[@class='col-name']//span[contains(text(),'AutoQA Auditor Edited')]
${list_auditor_role}                    xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Auditor')]
${list_auditor_dapartment}              xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${btn_dwnld_selected}                   xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/button[1]
${button_add_auditors}                  id:btn_add_user
${button_bulk_auditors_upload}          id:btn_bulk_upload_auditor
${button_auditor_save}                  id:btn_save_auditor
${button_auditor_cancel}                id:btn_cancel_auditor
${button_yes_block_auditor}             id:btn_yes_block_auditor
${button_no_block_auditor}              id:btn_no_block_auditor
${button_auditor_activate}              id:btn_activate_auditor
${button_yes_activate_auditor}          id:btn_yes_activate_auditor
${button_no_activate_auditor}           id:btn_no_activate_auditor
${button_auditor_yes_upload}            id:btn_upload_auditor
${button_auditor_cancel_upload}         id:btn_cancel_upload_auditor

${icon_auditor_edit}                    id:btn_edit_auditor
${icon_auditor_block}                   id:btn_block
${tab_auditor_active}                   id:tab_active_auditor
${tab_auditor_blocked}                  id:tab_bloked_auditor
${toast_auditor_success}                Successfully Added
${toast_auditor_block_success}          Successfully  #Block User
${toast_auditor_activate_success}       Successfully  #Activate User
${toast_email_existed}                  xpath://div[@class='Toastify__toast-body toast-body'][contains(text(),'Email has existed.')]
${toast_auditor_edit_success}           Successfully updated user
${choose_file_auditor}                  /Users/machruk/Documents/File Upload/user-template.xlsx
${auditor_name}                         AutoQA Auditor
${auditor_email}                        @hellonimbly.com
${auditor_name_edited}                  AutoQA Auditor Edited

${button_bulk_auditor_upload}           id:btn_bulk_upload_auditor
${link_dwnld_template}                  id:link_dwnld_template
${button_select_file}                   id:file
${icon_delete_file}                     xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[2]/img[1]

${chckbox_all}                           xpath://thead/tr[1]/th[1]/label[1]/div[1]/span[1]
${chckbox_1}                             xpath://tbody/tr[1]/td[1]/label[1]/div[1]/span[1]
${chckbox_2}                             xpath://tbody/tr[2]/td[1]/label[1]/div[1]/span[1]
${chckbox_3}                             xpath://tbody/tr[3]/td[1]/label[1]/div[1]/span[1]


${label_email_auditor}                  id:btn_asc_email_auditor
${label_name_auditor}                   id:btn_asc_usr
${label_phone_auditor}                  xpath://th[contains(text(),'Phone No.')]
${label_role_auditor}                   id:btn_asc_role
${label_status_auditor}                 id:btn_asc_status


#pagination
${btn_page_left}                        id:btn_left_arrow_auditor
${btn_page_1}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/button[2]
${btn_page_2}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/button[3]
${btn_page_right}                       id:btn_right_arrow_auditor





*** Keyword ***
Go to Auditors Page
        Wait Until Element is Enabled               ${link_auditors}                            ${Delay}
        Click Element                               ${link_auditors}

Delay
        Sleep                                       5

Search Auditor
        Wait Until Element is Enabled               ${field_search_auditors}                    ${Delay}
        Input Text                                  ${field_search_auditors}                    ${auditor_name}
        Wait Until Element is Enabled               ${search_auditor_result}                    ${Delay}











