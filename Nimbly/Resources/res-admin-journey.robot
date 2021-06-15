*** Variables ***
#Journey Plan
${input_search_journey_plan}            xpath://input[@placeholder='Search for a Journey Plan...']
${result_search_journey_plan}           ${journey_name}
${button_create_journey_plan}           xpath://button[contains(text(),'Create Journey Plan')]
${button_bulk_csv_upload}               xpath://button[contains(text(),'Bulk csv Upload')]
${button_save_journey}                  xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/button[2]
${input_journey_name}                   id:journeyName
${dropdown_save_to_department}          id:department
${select_save_to_department}            xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${dropdown_sites_to_visit}              id:site-req

${select_sites_to_visit}                xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${special_site}')]
${dropdown_salesman}                    id:salesman-req

${select_salesman}                      xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${special_auditor}')]
${dropdown_questionnire_journey}        id:question-req

${select_questionnaire_journey}         xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${special_questionnaire}')]
${select_signature_none}                xpath://div[contains(text(),'none')]
${select_signature_one}                 xpath://div[contains(text(),'one')]
${select_signature_two}                 xpath://div[contains(text(),'two')]
${select_selfie_signature}              xpath://label[contains(text(),'Require selfie signature?')]/div[@class='circle']
${unselect_selfie_signature}            xpath://label[contains(text(),'Require selfie signature?')]
${input_send_email_to}                  id:email0
${input_another_email}                  id:email1
${link_another_email}                   xpath://span[contains(text(),'Add another email')]
${radiobtn_daily}                       xpath://div[contains(text(),'Daily')]
${radiobtn_weekly}                      xpath://div[contains(text(),'Weekly')]
${btn_mon}                              xpath://body/div[@id='root']/div/div/div/div/div/div/div[5]/div[1]
${btn_tue}                              xpath://div[contains(text(),'Tue')]
${btn_wed}                              xpath://div[contains(text(),'Wed')]
${btn_thu}                              xpath://div[contains(text(),'Thu')]
${btn_fri}                              xpath://div[contains(text(),'Fri')]
${btn_sat}                              xpath://div[contains(text(),'Sat')]
${btn_sun}                              xpath://div[contains(text(),'Sun')]
${radiobtn_monthly}                     xpath://div[contains(text(),'Monthly')]
${btn_01}                               xpath://div[contains(text(),'1')]
${btn_20}                               xpath://div[contains(text(),'20')]
${btn_30}                               xpath://div[contains(text(),'30')]
${btn_30}                               xpath://div[contains(text(),'31')]
${verify_create_journey}                xpath://div[@id='root']//div//div//div//div//div//table//span[contains(text(),'${journey_name}')]
${toast_success_create_journey}         Success create Journey plan


${journey_name}                         AutoQA Journey Plan
${journey_special_name}                 Special AutoQA Journey

${verify_journey_name}                  xpath://input[@id='journeyName'][@value='${journey_name}']
${verify_journey_department}            xpath://div[contains(text(),'Manual QA')]
${verify_Journey_site}                  xpath://span[contains(text(),'Manual QA Site')]
${verify_salesman}                      xpath://body/div[@id='root']/div/div/div/div/div/div/div[6]/span/span[contains(text(),'Jack')]
${verify_daily_journey}                 xpath://body/div[@id='root']/div/div/div/div/div/div/div[4]/div[1]/div[1]/div[1]
${verify_weekly_journey}                xpath:
${verify_monthly_journey}               xpath:
${verify_journey_questionaire}          xpath:
${verify_none_signature}                xpath:
${verify_one_signature}                 xpath:
${verify_two_signature}                 xpath:
${verify_email_1}                       xpath:
${verify_email_2}                       xpath:


#Edited
${dropdown_edit_sites_to_visit}         id:site-valid
${dropdown_edit_salesman}               id:salesman-valid
${dropdown_edit_quest_journey}          id:question-valid
${btn_edit_journey}                     xpath://tr[1]//td[7]//img[1]
${journey_name_edited}                  AutoQA Journey edited
${select_department_edited}             xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'QA Department')]
${select_sites_edited}                  xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Pasar Pagi')]
${select_questionnaire_edited}          xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'colorbox')]
${daily_journey_to_edit}                AutoQA Daily Journey
${weekly_journey_to_edit}               AutoQA Weekly Journey
${monthly_journey_to_edit}              AutoQA Monthly
${success_update_journey}               Successfully update Journey plan


#Clone
${field_search_journey}                 xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${search_journey_result}                ${journey_name}
${btn_clone_journey}                    xpath://tr[1]//td[7]//img[2]
${btn_yes_clone}                        xpath://button[contains(text(),'Yes')]
${btn_no_clone}                         xpath://button[contains(text(),'No')]
${clone_success_toast}                  Success create Journey plan

#Delete
${btn_delete_journey}                   xpath://tr[1]//td[7]//img[3]
${btn_yes_delete}                       xpath://button[contains(text(),'Yes')]
${btn_no_delete}                        xpath://button[contains(text(),'No')]
${delete_success_toast}                 Success delete Journey plan





*** Keywords ***
Go to Journey Plan Page
        Wait Until Element is Enabled               ${link_journey_plan}                        ${Delay}
        Click Element                               ${link_journey_plan}


Click Create Journey Plan
        Wait Until Element is Enabled               ${button_create_journey_plan}               ${Delay}
        Click Element                               ${button_create_journey_plan}

Input Journey Name
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_journey_name}                       ${Delay}
        Input Text                                  ${input_journey_name}                       ${journey_name} ${RANDOM}

Select to Department
        Wait Until Element is Enabled               ${dropdown_save_to_department}              ${Delay}
        Click Element                               ${dropdown_save_to_department}
        Wait Until Element is Enabled               ${select_save_to_department}                ${Delay}
        Click Element                               ${select_save_to_department}

Select Sites to Visit
        Wait Until Element is Enabled               ${dropdown_sites_to_visit}                  ${Delay}
        Click Element                               ${dropdown_sites_to_visit}
        Wait Until Element is Enabled               ${select_sites_to_visit}                    ${Delay}
        Click Element                               ${select_sites_to_visit}
Edit Sites to Visit
        Wait Until Element is Enabled               ${dropdown_edit_sites_to_visit}             ${Delay}
        Click Element                               ${dropdown_edit_sites_to_visit}
        Wait Until Element is Enabled               ${select_sites_to_visit}                    ${Delay}
        Click Element                               ${select_sites_to_visit}
Select Daily Journey Schedule
        Wait Until Element is Enabled               ${radiobtn_daily}                           ${Delay}
        Click Element                               ${radiobtn_daily}
Select Weekly Journey Schedule
        Wait Until Element is Enabled               ${radiobtn_weekly}                          ${Delay}
        Click Element                               ${radiobtn_weekly}
Select Monday
        Wait Until Element is Enabled               ${btn_mon}                                  ${Delay}
        Click Element                               ${btn_mon}
Select Tuesday
        Wait Until Element is Enabled               ${btn_tue}                                  ${Delay}
        Click Element                               ${btn_tue}
Select Wednesday
        Wait Until Element is Enabled               ${btn_wed}                                  ${Delay}
        Click Element                               ${btn_wed}
Select Thursday
        Wait Until Element is Enabled               ${btn_thu}                                  ${Delay}
        Click Element                               ${btn_thu}
Select Friday
        Wait Until Element is Enabled               ${btn_fri}                                  ${Delay}
        Click Element                               ${btn_fri}
Select Saturday
        Wait Until Element is Enabled               ${btn_sat}                                  ${Delay}
        Click Element                               ${btn_sat}
Select Sunday
        Wait Until Element is Enabled               ${btn_sun}                                  ${Delay}
        Click Element                               ${btn_sun}

Select Monthly Journey Schedule
        Wait Until Element is Enabled               ${radiobtn_monthly}                         ${Delay}
        Click Element                               ${radiobtn_monthly}
Select 01
        Wait Until Element is Enabled               ${btn_01}                                   ${Delay}
        Click Element                               ${btn_01}
Select 20
        Wait Until Element is Enabled               ${btn_20}                                   ${Delay}
        Click Element                               ${btn_20}
Select 30
        Wait Until Element is Enabled               ${btn_30}                                   ${Delay}
        Click Element                               ${btn_30}

Select Salesman
        Wait Until Element is Enabled               ${dropdown_salesman}                        ${Delay}
        Click Element                               ${dropdown_salesman}
        Wait Until Element is Enabled               ${select_salesman}                          ${Delay}
        Click Element                               ${select_salesman}
Select Questionnaire for Site in Journey
        Wait Until Element is Enabled               ${dropdown_questionnire_journey}            ${Delay}
        Click Element                               ${dropdown_questionnire_journey}
        Wait Until Element is Enabled               ${select_questionnaire_journey}             ${Delay}
        Click Element                               ${select_questionnaire_journey}
Select None Signature
        Wait Until Element is Enabled               ${select_signature_none}                    ${Delay}
        Click Element                               ${select_signature_none}
Select One Signature
        Wait Until Element is Enabled               ${select_signature_one}                     ${Delay}
        Click Element                               ${select_signature_one}
Select Two Signature
        Wait Until Element is Enabled               ${select_signature_two}                     ${Delay}
        Click Element                               ${select_signature_two}
Select Selfie Signature
        Wait Until Element is Enabled
        Click Element
Unselect Selfie Signature
        Wait Until Element is Enabled               ${unselect_selfie_signature}                ${Delay}
        Click Element                               ${unselect_selfie_signature}
Send Email to
        Wait Until Element is Enabled               ${input_send_email_to}                      ${Delay}
        Input Text                                  ${input_send_email_to}                      ${EMAIL}
Click Link Add Another Email
        Wait Until Element is Enabled               ${link_another_email}                       ${Delay}
        Click Element                               ${link_another_email}
Input Another Email
        Wait Until Element is Enabled               ${input_another_email}                      ${Delay}
        Input Text                                  ${input_another_email}                      anton@hellonimbly.com
Click Save Journey Plan
        Wait Until Element is Enabled               ${button_save_journey}
        Click Element                               ${button_save_journey}
Verify Creating Journey Plan Successful
        Wait Until Page Contains                    ${toast_success_create_journey}             ${Delay}
        Page Should Contain                         ${toast_success_create_journey}



Verify "Journey Name" field is available
        Wait Until ELement is Enabled               ${input_journey_name}                       ${Delay}
        Page Should Contain Element                 ${input_journey_name}
Verify "Journey Department" dropdown is available
        Wait Until ELement is Enabled               ${dropdown_save_to_department}              ${Delay}
        Page Should Contain Element                 ${dropdown_save_to_department}
Verify "Site to visit" dropdown is available
        Wait Until ELement is Enabled               ${dropdown_sites_to_visit}                  ${Delay}
        Page Should Contain Element                 ${dropdown_sites_to_visit}
Verify "Site to visit" dropdown is available (edit)
        Wait Until ELement is Enabled               ${dropdown_edit_sites_to_visit}             ${Delay}
        Page Should Contain Element                 ${dropdown_edit_sites_to_visit}

Verify "Salesman" dropdown is available
        Wait Until ELement is Enabled               ${dropdown_salesman}                        ${Delay}
        Page Should Contain Element                 ${dropdown_salesman}

Verify "Salesman" dropdown is available (edit)
        Wait Until ELement is Enabled               ${dropdown_edit_salesman}                   ${Delay}
        Page Should Contain Element                 ${dropdown_edit_salesman}

Verify "Daily Journey" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_daily}                           ${Delay}
        Page Should Contain Element                 ${radiobtn_daily}
Verify "Weekly Journey" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_weekly}                          ${Delay}
        Page Should Contain Element                 ${radiobtn_weekly}
Verify "Monthly Journey" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_monthly}                         ${Delay}
        Page Should Contain Element                 ${radiobtn_monthly}

Verify "Journey Questionnaire" dropdown is available
        Wait Until ELement is Enabled               ${dropdown_questionnire_journey}            ${Delay}
        Page Should Contain Element                 ${dropdown_questionnire_journey}
Verify "Journey Questionnaire" dropdown is available (edit)
        Wait Until ELement is Enabled               ${dropdown_edit_quest_journey}              ${Delay}
        Page Should Contain Element                 ${dropdown_edit_quest_journey}

Verify "None Signature" radio button is available
        Wait Until ELement is Enabled               ${select_signature_none}                    ${Delay}
        Page Should Contain Element                 ${select_signature_none}
Verify "One Signature" radio button is available
        Wait Until ELement is Enabled               ${select_signature_one}                     ${Delay}
        Page Should Contain Element                 ${select_signature_one}
Verify "Two Signature" radio button is available
        Wait Until ELement is Enabled               ${select_signature_two}                     ${Delay}
        Page Should Contain Element                 ${select_signature_two}
Verify "Selfie Signature" toggle is available
        Wait Until ELement is Enabled               ${unselect_selfie_signature}                ${Delay}
        Page Should Contain Element                 ${unselect_selfie_signature}

Verify "Email 1" field is available
Verify "Email 2" field is displayed

Verify Daily Journey Plan Detail
Verify Weekly Journey Plan Detail
Verify Monthly Journey Plan Detail

#Search Journey Plan
Search Journey Plan to Edit
        Wait Until Element is Enabled               ${input_search_journey_plan}                ${Delay}
        Input Text                                  ${input_search_journey_plan}                ${journey_name}
Search Monthly Journey Plan to Edit
        Wait Until Element is Enabled               ${input_search_journey_plan}                ${Delay}
        Input Text                                  ${input_search_journey_plan}                ${monthly_journey_to_edit}
Search Weekly Journey Plan to Edit
        Wait Until Element is Enabled               ${input_search_journey_plan}                ${Delay}
        Input Text                                  ${input_search_journey_plan}                ${weekly_journey_to_edit}
Search Daily Journey Plan to Edit
        Wait Until Element is Enabled               ${input_search_journey_plan}                ${Delay}
        Input Text                                  ${input_search_journey_plan}                ${daily_journey_to_edit}

#Edit Journey Plan
Click Edit Button
        Wait Until Element is Enabled               ${btn_edit_journey}                         ${Delay}
        Click Element                               ${btn_edit_journey}
Edit Journey Name
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_journey_name}                       ${Delay}
        Input Text                                  ${input_journey_name}                       ${journey_name_edited} ${RANDOM}
Edit Department
        Wait Until Element is Enabled               ${dropdown_save_to_department}              ${Delay}
        Click Element                               ${dropdown_save_to_department}
        Wait Until Element is Enabled               ${select_department_edited}                 ${Delay}
        Click Element                               ${select_department_edited}
Edit Site to Visit
        Wait Until Element is Enabled               ${dropdown_edit_sites_to_visit}             ${Delay}
        Click Element                               ${dropdown_edit_sites_to_visit}
        Wait Until Element is Enabled               ${select_sites_edited}                      ${Delay}
        Click Element                               ${select_sites_edited}
Edit Schedule to Daily
        Wait Until Element is Enabled               ${radiobtn_daily}                           ${Delay}
        Click Element                               ${radiobtn_daily}
Edit Schedule to Weekly
        Wait Until Element is Enabled               ${radiobtn_weekly}                          ${Delay}
        Click Element                               ${radiobtn_weekly}
Edit Schedule to Sunday
        Wait Until Element is Enabled               ${btn_sun}                                  ${Delay}
        Click Element                               ${btn_sun}
Edit Schedule to Monthly
        Wait Until Element is Enabled               ${radiobtn_monthly}                         ${Delay}
        Click Element                               ${radiobtn_monthly}
Edit Schedule to 31
        Wait Until Element is Enabled               ${btn_31}                                   ${Delay}
        Click Element                               ${btn_31}

Edit Quetionnaires for Sites
        Wait Until Element is Enabled               ${dropdown_edit_quest_journey}              ${Delay}
        Click Element                               ${dropdown_edit_quest_journey}
        Wait Until Element is Enabled               ${select_questionnaire_edited}              ${Delay}
        Click Element                               ${select_questionnaire_edited}
Edit Signature to None
        Wait Until Element is Enabled               ${select_signature_none}                    ${Delay}
        Click Element                               ${select_signature_none}
Edit Signature to One
        Wait Until Element is Enabled               ${select_signature_one}                     ${Delay}
        Click Element                               ${select_signature_one}
Edit Signature to Two
        Wait Until Element is Enabled               ${select_signature_two}                     ${Delay}
        Click Element                               ${select_signature_two}
Add Another Email
        Wait Until Element is Enabled               ${link_another_email}                       ${Delay}
        Click Element                               ${link_another_email}

Verify Edit Journey Plan Successful
        Wait Until Page Contains                    ${success_update_journey}                   ${Delay}
        Page Should Contain                         ${success_update_journey}


#Clone Journey Plan
Search Journey Plan to Clone
        Wait Until Element is Enabled               ${field_search_journey}                     ${Delay}
        Input Text                                  ${field_search_journey}                     ${journey_name}
        Wait Until Page Contains                    ${search_journey_result}                    ${Delay}
Click Clone Button
        Wait Until Element is Enabled               ${btn_clone_journey}                        ${Delay}
        Click Element                               ${btn_clone_journey}
Verify Clone Dialog Popup is displayed
        Wait Until Page Contains                    Clone Journey Plan                          ${Delay}
        Page Should Contain                         Are you sure you want to clone the Journey Plan:
        Page Should Contain Element                 ${btn_yes_clone}
        Page Should Contain Element                 ${btn_no_clone}
Click Yes Clone
        Wait Until Element is Enabled               ${btn_yes_clone}                            ${Delay}
        Click Element                               ${btn_yes_clone}
Click No Clone
        Wait Until Element is Enabled               ${btn_no_clone}                             ${Delay}
        Click Element                               ${btn_no_clone}
Verify Clone Journey Plan Successful
        Wait Until Page Contains                    ${clone_success_toast}                      ${Delay}
        Page Should Contain                         ${clone_success_toast}




#Delete Journey Plan
Search Journey Plan to Delete
        Wait Until Element is Enabled               ${field_search_journey}                     ${Delay}
        Input Text                                  ${field_search_journey}                     ${journey_name}
        Wait Until Page Contains                    ${search_journey_result}                    ${Delay}
Click Delete Button
        Wait Until Element is Enabled               ${btn_delete_journey}                       ${Delay}
        Click Element                               ${btn_delete_journey}
Verify Delete Dialog Popup is displayed
        Wait Until Page Contains                    Delete Journey Plan                         ${Delay}
        Page Should Contain                         Are you sure you want to delete the Journey Plan:
        Page Should Contain Element                 ${btn_yes_delete}
        Page Should Contain Element                 ${btn_no_delete}
Click Yes Delete
        Wait Until Element is Enabled               ${btn_yes_delete}                           ${Delay}
        Click Element                               ${btn_yes_delete}
Click No Delete
        Wait Until Element is Enabled               ${btn_no_delete}                            ${Delay}
        Click Element                               ${btn_no_delete}
Verify Delete Journey Plan Successful
        Wait Until Page Contains                    ${delete_success_toast}                     ${Delay}
        Page Should Contain                         ${delete_success_toast}

Delay
        Sleep                                       3