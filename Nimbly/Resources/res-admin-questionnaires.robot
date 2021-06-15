*** Variables ***
#Admin - Questionnaires

${search_quest_result}                  ${quest_title}
${tab_published}                        id:tab_pub_quest
${tab_deleted}                          id:tab_del_quest
${field_search_quest}                   id:input_search_quest
${field_quest_title}                    xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]/input[1]
${field_quest_dept}                     xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
${field_quest_categ}                    xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/form[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]
${field_quest_title_upload}             id:input_step1
${btn_dwnld_selected}                   xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/button[1]
${chckbox_all}                          xpath://thead/tr[1]/th[1]/label[1]/div[1]/span[1]
${chckbox_1}                            xpath://tbody/tr[1]/td[1]/label[1]/div[1]/span[1]
${chckbox_2}                            xpath://tbody/tr[2]/td[1]/label[1]/div[1]/span[1]
${chckbox_3}                            xpath://tbody/tr[3]/td[1]/label[1]/div[1]/span[1]

${field_question01}                     xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/form[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/textarea[1]
${field_question01_filled}              xpath://div[@class='question-content']//textarea[contains(text(),'Apa ayam dibersihkan pada air mengalir ?')]
${field_question02}                     xpath://div[@class='head']//div[@class='number'][contains(text(),'2')]
${input_question02}                     xpath://textarea[@placeholder='Enter the question']
${field_question03}                     xpath://div[@class='head']//div[@class='number'][contains(text(),'3')]

${btn_create_quest}                     id:btn_add_quest
${btn_bulk_upload_quest}                id:btn_bulk_upload_quest
${btn_done_question01}                  id:btn_quest1_done
${btn_done_question02}                  id:btn_quest1_done
${btn_done_question03}                  id:btn_quest1_done
${btn_publish_quest}                    xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/button[1]
${btn_edit_quest}                       id:btn_edit_quest
${btn_clone_quest}                      id:btn_clone_quest
${btn_delete_quest}                     id:btn_del_quest
${btn_yes_clone}                        id:btn_clone_yes
${btn_no_clone}                         id:btn_clone_no
${btn_yes_remove}                       id:btn_del_yes
${btn_no_remove}                        id:btn_del_no
${btn_upload_quest}                     id:btn_bulk_upload_quest
${checkbox_all_quest}                   id:chkbox_check_all
${checkbox_quest}                       xpath://tr[1]//td[@class='col-checkbox ']//label[1]//span[1]
${btn_add_category}                     id:btn_add_categ

${tab_deleted_quest}                    id:tab_del_quest

${quest_category}                       Restaurant
${quest_department}                     ${special_dept_name}
${quest_categ_list}                     xpath://div[@class=' css-26l3qy-menu']//div[1]//div[@class=' css-107s4ia-option'][contains(text(),'${quest_category}')]
${quest_dept_list}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${quest_dept_list_upload}               xpath://div[@class=' css-26l3qy-menu']//div[1]//div[@class=' css-1jmquwm-option'][contains(text(),'${special_dept_name}')]
${dropdown_quest_category}              id:drpdwn_categ_quest
${dropdown_department_upload}           id:drpdwn_step2
${quest_title}                          AutoQA Questionnaire
${quest_title_edited}                   Membersihkan Ayam AutoQA Edited
${question01}                           Apa ayam dibersihkan pada air mengalir ?
${question02}                           Apa ayam sudah dibersihkan dari darah yang tersisa?
${question03}                           Apa ayam sudah dibersihkan dari lemak yang tersisa?
${title_upload}                         Quesionnaire Uploaded
${choose_file_quest}                    /Users/machruk/Documents/File Upload/questionnaire-template-test.xlsx
${link_add_question}                    xpath://span[contains(text(),'Add Question')]
${icon_add_question}                    xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/form[1]/div[1]/div[4]/div[2]/div[1]/div[1]/span[1]/img[1]
${icon_add_categ}                       xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/form[1]/div[1]/div[4]/div[2]/div[1]/div[2]/span[1]/img[1]

${question_content}                     xpath://div[@class='question-content'][contains(text(),'Bersihkan ayam dari darah yang tersisa')]
${toast_add_quest_success}              Questionnaire has been successfully saved
${toast_del_quest_success}              Successfull delete questionnaire
${toast_clone_quest_success}            Successfull clone questionnaire
${toast_edit_quest_success}             Questionnaire has been successfully saved

${verify_quest_title}                   ${quest_title}
${verify_quest_department}              ${special_dept_name}
${verify_quest_category}                ${quest_category}

${label_title}                          id:btn_asc_title_quest
${label_no_quest}                       id:btn_asc_quest
${label_created_at}                     id:btn_asc_created
${label_last_updated}                   id:btn_asc_lastupdt
${label_modified_by}                    id:btn_asc_modif

#pagination
${btn_page_left}                        id:btn_left_arrow_questionnaire
${btn_page_1}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/button[2]
${btn_page_2}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/button[3]
${btn_page_right}                       id:btn_right_arrow_questionnaire





*** Keyword ***
Go to Questionnaire page
        Wait Until Element is Enabled               ${link_questionnaires}                      ${Delay}
        Click Element                               ${link_questionnaires}

Search Questionnaires
        Wait Until Element is Enabled               ${field_search_quest}                       ${Delay}
        Input Text                                  ${field_search_quest}                       ${quest_title}
        Wait Until Page Contains                    ${search_quest_result}                      ${Delay}

#Create Questionaire
Click Create Questionnaire
        Wait Until Element is Enabled               ${btn_create_quest}                            ${Delay}
        Click Element                               ${btn_create_quest}
Input Questionnaire Title
        ${RANDOM} =                                 Generate Random String                      3           [NUMBERS]
        Wait Until Element is Enabled               ${field_quest_title}                        ${Delay}
        Input Text                                  ${field_quest_title}                        ${quest_title} ${RANDOM}

Select Department
        Wait Until Element is Enabled               ${field_quest_dept}                         ${Delay}
        Click Element                               ${field_quest_dept}
        Wait Until Element is Enabled               ${quest_dept_list}                          ${Delay}
        Click Element                               ${quest_dept_list}

Select Category
        Click Element                               ${field_quest_categ}
        Wait Until Element is Enabled               ${quest_categ_list}                         ${Delay}
        Click Element                               ${quest_categ_list}


Click Add Question Link
        Wait Until Element is Enabled               ${link_add_question}                        ${Delay}
        Click Element                               ${link_add_question}

Add Question 1
        Click Element                               ${field_question01}
        Input Text                                  ${field_question01}                         ${question01}
        #Click Element                               ${btn_done_question01}

Add Question 2
        Wait Until Element is Enabled               ${field_question02}                         ${Delay}
        Click Element                               ${field_question02}
        Wait Until Element is Enabled               ${btn_done_question02}                      ${Delay}
        Input Text                                  ${input_question02}                         ${question02}
        Click Element                               ${btn_done_question02}

Question 3
        Wait Until Element is Enabled               ${field_question03}                         ${Delay}
        Click Element                               ${field_question03}
        Wait Until Element is Enabled               ${btn_done_question03}                      ${Delay}
        Input Text                                  ${input_question03}                         ${question03}
        Click Element                               ${btn_done_question03}

Add Category

Verify "Title" field is available
    Wait Until ELement is Enabled                           ${field_quest_title}                        ${Delay}
    Page Should Contain Element                             ${field_quest_title}
Verify "Department" dropdown is available
    Wait Until ELement is Enabled                           ${field_quest_dept}                         ${Delay}
    Page Should Contain Element                             ${field_quest_dept}
Verify "Category" dropdown is available
    Wait Until ELement is Enabled                           ${field_quest_categ}                        ${Delay}
    Page Should Contain Element                             ${field_quest_categ}
Verify "Question" field is available
    Wait Until ELement is Visible                           ${field_question01}                         ${Delay}
    Page Should Contain Element                             ${field_question01}
Verify "Add Question" icon is available
    Wait Until ELement is Enabled                           ${icon_add_question}                        ${Delay}
    Page Should Contain Element                             ${icon_add_question}
Verify "Add Category" icon is available
    Wait Until ELement is Enabled                           ${icon_add_categ}                           ${Delay}
    Page Should Contain Element                             ${icon_add_categ}
Verify "Publish" button is available
    Wait Until ELement is Enabled                           ${btn_publish_quest}                        ${Delay}
    Page Should Contain Element                             ${btn_publish_quest}
Verify Create Questionnaire is successfully
    Wait Until Page Contains                                ${toast_add_quest_success}                  ${Delay}
    Page Should Contain                                     ${toast_add_quest_success}



#Verify Questionnaire Adding Successful
Reload
        Reload Page
        Sleep                                       3

Search Added Questionnaire
        Wait Until Element is Enabled               ${field_search_quest}                       ${Delay}
        Input Text                                  ${field_search_quest}                       ${quest_title}
        Wait Until Page Contains                    ${search_quest_result}                      ${Delay}

Click Detail Questionnaire
        Sleep                                       3
        Wait Until Element is Enabled               ${btn_edit_quest}                           ${Delay}
        Click Element                               ${btn_edit_quest}

Verify Questionnaire Title
        Wait Until page contains                    ${verify_quest_title}                       ${Delay}
        Page Should Contain                         ${verify_quest_title}

Verify Questionnaire Department
        Wait Until page contains                    ${verify_quest_department}                  ${Delay}
        Page Should Contain                         ${verify_quest_department}

Verify Questionnaire Category
        Wait Until page contains                    ${verify_quest_category}                    ${Delay}
        Page Should Contain                         ${verify_quest_category}


#Edit Questionnaire
Search Questionnaires to Edit
        Wait Until Element is Enabled               ${field_search_quest}                       ${Delay}
        Input Text                                  ${field_search_quest}                       AutoQA
        Sleep                                       3
        Wait Until Page Contains                    ${search_quest_result}                      ${Delay}

Click Edit Button
        Wait Until Element is Enabled               ${btn_edit_quest}                           ${Delay}
        Click Element                               ${btn_edit_quest}

Edit Title
        Wait Until Element is Enabled               ${field_quest_title}                        ${Delay}
        ${RANDOM} =                                 Generate Random String                      3          [NUMBERS]
        Input Text                                  ${field_quest_title}                        ${quest_title_edited} ${RANDOM}

Click Publish Button
        Wait Until Element is Enabled               ${btn_publish_quest}                        ${Delay}
        Click Element                               ${btn_publish_quest}

Verify Edit Questionnaire Title Successfull
        Wait Until page contains                    ${toast_edit_quest_success}                 ${Delay}
        Page Should Contain                         ${toast_edit_quest_success}




#Clone Questionnaire
Search Questionnaires to Clone
        Wait Until Element is Enabled               ${field_search_quest}                       ${Delay}
        Input Text                                  ${field_search_quest}                       ${quest_title}
        Wait Until Page Contains                    ${search_quest_result}                      ${Delay}

Click Clone Button
        Wait Until Element is Enabled               ${btn_clone_quest}                          ${Delay}
        Click Element                               ${btn_clone_quest}

Verify Clone Dialog Popup is displayed
        Wait Until Page Contains                    Duplicate Questionnaire                     ${Delay}
        Page Should Contain                         Are you sure you want to clone the questionnaire:
        Page Should Contain Element                 ${btn_yes_clone}
        Page Should Contain Element                 ${btn_no_clone}

Click Yes Clone
        Wait Until Element is Enabled               ${btn_yes_clone}                            ${Delay}
        Click Element                               ${btn_yes_clone}


Verify Clone Questionnaire Successfull
        Wait Until Page Contains                    ${toast_clone_quest_success}                  ${Delay}
        Page Should Contain                         ${toast_clone_quest_success}

#Delete Questionnaire
Search Questionnaires to Delete
        Wait Until Element is Enabled               ${field_search_quest}                       ${Delay}
        Input Text                                  ${field_search_quest}                       ${quest_title}
        Wait Until Page Contains                    ${search_quest_result}                      ${Delay}

Click Delete Button
        Wait Until Element is Enabled               ${btn_delete_quest}                         ${Delay}
        Click Element                               ${btn_delete_quest}

Verify Delete Dialog Popup is displayed
        Wait Until Page Contains                    Remove Questionnaire                        ${Delay}
        Page Should Contain                         Are you sure want to remove this questionnaire?
        Page Should Contain Element                 ${btn_yes_remove}
        Page Should Contain Element                 ${btn_no_remove}

Click Yes Delete
        Wait Until Element is Enabled               ${btn_yes_remove}                           ${Delay}
        Click Element                               ${btn_yes_remove}

Verify Delete Questionnaire Successfully
        Wait Until Page Contains                    ${toast_del_quest_success}                  ${Delay}
        Page Should Contain                         ${toast_del_quest_success}

#Questionnaire Bulk Upload
Click Bulk Upload Button
        Wait Until Element is Enabled               ${btn_bulk_upload_quest}                    ${Delay}
        Click Element                               ${btn_bulk_upload_quest}

Input Questionnaire Title Upload
        ${RANDOM} =                                 Generate Random String                      3          [NUMBERS]
        Wait Until Element is Enabled               ${dropdown_department_upload}               ${Delay}
        Input Text                                  ${field_quest_title_upload}                 ${title_upload} ${RANDOM}

Select Department Upload
        Click Element                               ${dropdown_department_upload}
        Wait Until Element is Enabled               ${quest_dept_list_upload}                   ${Delay}
        Click Element                               ${quest_dept_list_upload}

Choose file
        Wait Until Element is Enabled               ${btn_choose_file}                          ${Delay}
        Choose File                                 ${btn_choose_file}                          ${choose_file_quest}

Click Upload
        Wait Until Element is Enabled               ${btn_upload_quest}                         ${Delay}
        Click Element                               ${btn_upload_quest}
