*** Variables ***
#Issue Tracker Menu


${button_add_issue}                     id:btn_add_issue

${dropdown_by_questionnaire}            id:drpdwn_by_quest
${dropdown_by_user}                     id:drpdwn_by_usr
${dropdown_by_department}               id:drpdwn_by_dept
${dropdown_by_site}                     id:drpdwn_by_site
${dropdown_by_flag}                     id:drpdwn_by_flag
${dropdown_by_status}                   id:drpdwn_by_stts
${dropdown_by_priority}                 id:drpdwn_by_prior

${dropdown_update_by_status}            id:drpdwn_status
${list_update_by_status_resolved}       xpath://body/div[@id='root']/div/div/div/div/div/div/div/div[3]/div[1]/div[3]/div[1]/div[1]/div[1]//div[@class=' css-26l3qy-menu']//div[1]//div[1][contains(text(),'Resolved')]
${list_by_questionnaire}                xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${special_questionnaire}')]
${list_by_user}                         xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Jack')]
${list_by_department}                   xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'QA Department')]
${list_by_site}                         xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Manual QA Site')]
${list_by_red_flag}                     xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Red')]
${list_by_yellow_flag}                  xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Yellow')]
${list_by_status_open}                  xpath://div[@class=' css-26l3qy-menu']//div[1]//div[1][contains(text(),'Open')]
${list_by_status_resolved}              xpath://div[@class=' css-26l3qy-menu']//div[1]//div[2][contains(text(),'Resolved')]
${list_by_normal_priority}              xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Normal')]
${list_by_high_priority}                xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'High')]
#View By
${view_by_startdate}                    id:issue_filter_start_date
${view_by_enddate}                      id:issue_filter_end_date
${select_startdate}                     xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//table[1]//tbody[1]//tr[1]//td[contains(text(),'1')]
${select_enddate}                       xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//table[1]//tbody[1]//tr[5]//td[contains(text(),'29')]
#Sort By
${sort_by_date_created}                 id:radiobtn_date_created
${sort_by_due_date}                     id:radiobtn_due_date

${link_remove_all_filter}               xpath://span[contains(text(),'Remove All')]

${issue}                                xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[3]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[10]/span[1]
${issue_resolved}                       xpath://div[contains(text(),'Resolved')]
#Add Issue Adhoc
${input_search_issue}                   id:input_search_issue
${input_question_title_issue}           xpath://input[@placeholder='Enter your question/title']
${dropdown_category_issue}              xpath://body/div[@id='root']/div/div/div/div/div[2]/div[2]/div[2]/div[1]/div[1]
${dropdown_assigned_dept_issue}         xpath://body/div[@id='root']/div/div/div/div/div/div[3]/div[1]/div[1]/div[2]/div[1]/div[1]
${dropdown_reporter_dept_issue}         xpath://body/div[@id='root']/div/div/div/div/div/div[3]/div[1]/div[2]/div[2]/div[1]/div[1]
${dropdown_severity_issue}              xpath://body/div[@id='root']/div/div/div/div/div/div/div/div[1]/div[3]/div[1]/div[1]
${dropdown_site_issue}                  xpath://body/div[@id='root']/div/div/div/div/div/div[5]/div[1]/div[1]/div[2]/div[1]/div[1]
${dropdown_assigned_user_issue}         xpath://body/div[@id='root']/div/div/div/div/div/div[5]/div[1]/div[2]/div[2]/div[1]/div[1]
${select_due_date}                      id:issue-creator
${dropdown_due_time}                    xpath://body/div[@id='root']/div/div/div/div/div/div/div/div/div[3]/div[2]/div[1]/div[1]/div[1]
${input_comment_issue}                  xpath://textarea[@placeholder='Enter your comment']
${link_add_image_issue}                 xpath://button[contains(text(),'add image')]
${button_save_issue}                    xpath://div[@id='root']//div//div//div//div//div//div//button[contains(text(),'Add')]
${button_cancel_issue}                  xpath://button[contains(text(),'Cancel')]

${question_title_issue}                 AutoQA Issue Question
${list_category_issue}                  xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Restaurant')]
${list_assigned_dept_issue}             xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'QA Department')]
${list_reporter_dept_issue}             xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'QA Department')]
${list_red_severity_issue}              xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Red')]
${list_yellow_severity_issue}           xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Yellow')]
${list_site_issue}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Manual QA Site')]
${list_assigned_user_issue}             xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Jack')]
${comment_issue}                        ini adalah komen yang dibuat dengan automation
${verify_add_issue_successful}
${input_add_comment_issue}              //textarea[@placeholder='Add Coment']
${add_comment_issue}                    ini adalah penambahan komen yang dibuat dengan automation
${button_post_comment}                  xpath://button[contains(text(),'Post')]
${Verify_post_comment_successful}



${input_email_login}                    id:input-email-login
${input_password_login}                 id:input-password-login
${input_email_forgot}                   id:link-forgot-return-password
${button_login}                         id:button-submit-login
${link_forgot_return_password}          id:input-email-forgot
${message_success_login}
${message_invalid_pass_login}           Error: Incorrect password. Please try again
${message_invalid_email_login}          Error: Email address was not found. Please try again.

${add_issues_successtoast}
${end_of_list}                          xpath://p[contains(text(),'End of List')]





*** Keywords ***
Go to Issue Tracker Page
        Wait Until Element is Enabled               ${link_issue_tracker}                       ${DELAY}
        Click Element                               ${link_issue_tracker}

Filter by Questionnaire
        Wait Until Element is Enabled               ${dropdown_by_questionnaire}                ${DELAY}
        Click Element                               ${dropdown_by_questionnaire}
        Wait Until Element is Enabled               ${list_by_questionnaire}                    ${DELAY}
        Click Element                               ${list_by_questionnaire}
Verify Filter by Questionnaire is Available
        Wait Until Element is Enabled               ${dropdown_by_questionnaire}                ${DELAY}
        Page Should Contain Element                 ${dropdown_by_questionnaire}
Verify Filter by Questionnaire is successful


Filter by User
        Wait Until Element is Enabled               ${dropdown_by_user}                         ${DELAY}
        Click Element                               ${dropdown_by_user}
        Wait Until Element is Enabled               ${list_by_user}                             ${DELAY}
        Click Element                               ${list_by_user}
Verify Filter by User is Available
        Wait Until Element is Enabled               ${dropdown_by_user}                         ${DELAY}
        Page Should Contain Element                 ${dropdown_by_user}
Verify Filter by User is successful


Filter by Department
        Wait Until Element is Enabled               ${dropdown_by_department}                   ${DELAY}
        Click Element                               ${dropdown_by_department}
        Wait Until Element is Enabled               ${list_by_department}                       ${DELAY}
        Click Element                               ${list_by_department}
Verify Filter by Department is Available
        Wait Until Element is Enabled               ${dropdown_by_department}                   ${DELAY}
        Page Should Contain Element                 ${dropdown_by_department}
Verify Filter by Department is successful




Filter by Site
        Wait Until Element is Enabled               ${dropdown_by_site}                         ${DELAY}
        Click Element                               ${dropdown_by_site}
        Wait Until Element is Enabled               ${list_by_site}                             ${DELAY}
        Click Element                               ${list_by_site}
Verify Filter by Site is Available
        Wait Until Element is Enabled               ${dropdown_by_site}                         ${DELAY}
        Page Should Contain Element                 ${dropdown_by_site}
Verify Filter by Site is successful



Filter by Flag
        Wait Until Element is Enabled               ${dropdown_by_flag}                         ${DELAY}
        Click Element                               ${dropdown_by_flag}
        Wait Until Element is Enabled               ${list_by_red_flag}                         ${DELAY}
        Click Element                               ${list_by_red_flag}
Verify Filter by Red & Yellow Flags are Available
        Wait Until Element is Enabled               ${dropdown_by_flag}                         ${DELAY}
        Click Element                               ${dropdown_by_flag}
        Wait Until Element is Enabled               ${list_by_red_flag}                         ${DELAY}
        Page Should Contain Element                 ${list_by_red_flag}
        Wait Until Element is Enabled               ${list_by_yellow_flag}                      ${DELAY}
        Page Should Contain Element                 ${list_by_yellow_flag}



Filter by Priority
        Wait Until Element is Enabled               ${dropdown_by_priority}                     ${DELAY}
        Click Element                               ${dropdown_by_priority}
        Wait Until Element is Enabled               ${list_by_normal_priority}                  ${DELAY}
        Click Element                               ${list_by_normal_priority}
Verify Filter by Priority is Available
        Wait Until Element is Enabled               ${dropdown_by_priority}                     ${DELAY}
        Click Element                               ${dropdown_by_priority}
        Wait Until Element is Enabled               ${list_by_normal_priority}                  ${DELAY}
        Page Should Contain Element                 ${list_by_normal_priority}
        Wait Until Element is Enabled               ${list_by_high_priority}                    ${DELAY}
        Page Should Contain Element                 ${list_by_high_priority}
Verify Filter by Priority is successful






Filter by Status "Open"
        Wait Until Element is Enabled               ${dropdown_by_status}                       ${DELAY}
        Click Element                               ${dropdown_by_status}
        Wait Until Element is Enabled               ${list_by_status_open}                      ${DELAY}
        Click Element                               ${list_by_status_open}
        Wait Until Element is Enabled               ${link_remove_all_filter}                   ${DELAY}
Verify Filter by Status Open & Resolve is Available
        Wait Until Element is Enabled               ${dropdown_by_status}                       ${DELAY}
        Click Element                               ${dropdown_by_status}
        Wait Until Element is Enabled               ${list_by_status_open}                      ${DELAY}
        Page Should Contain Element                 ${list_by_status_open}
        Wait Until Element is Enabled               ${list_by_status_resolved}                  ${DELAY}
        Page Should Contain Element                 ${list_by_status_resolved}

Verify Filter by Status is successful





Verify View by date is Available
        Wait Until Element is Enabled               ${view_by_startdate}                        ${DELAY}
        Page Should Contain Element                 ${view_by_startdate}
        Wait Until Element is Enabled               ${view_by_enddate}                          ${DELAY}
        Page Should Contain Element                 ${view_by_enddate}
View by date
        Wait Until Element is Enabled               ${view_by_startdate}                        ${DELAY}
        Click Element                               ${view_by_startdate}
        Wait Until Element is Enabled               ${select_startdate}                         ${DELAY}
        Click Element                               ${select_startdate}
        Wait Until Element is Enabled               ${select_enddate}                           ${DELAY}
        Click Element                               ${select_enddate}
Verify Sort by "Date Created" is available
        Wait Until Element is Enabled               ${sort_by_date_created}                     ${DELAY}
        Page Should Contain Element                 ${sort_by_date_created}
Verify Sort by "Due Date" is available
        Wait Until Element is Enabled               ${sort_by_due_date}                         ${DELAY}
        Page Should Contain Element                 ${sort_by_due_date}
Sort by Due Date
        Click Element                               ${sort_by_due_date}


Remove Filter
        Wait Until Element is Enabled               ${link_remove_all_filter}                   ${DELAY}
        Click Element                               ${link_remove_all_filter}



#Add Issue
Verify "Add Issue" button is Available
        Wait Until Element is Enabled               ${button_add_issue}                         ${DELAY}
        Page Should Contain Element                 ${button_add_issue}
Click Add Issue Button
        Wait Until Element is Enabled               ${button_add_issue}                         ${DELAY}
        Click Element                               ${button_add_issue}
        Sleep                                       5
Input title
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_question_title_issue}               ${DELAY}
        Input Text                                  ${input_question_title_issue}               ${question_title_issue} ${RANDOM}

Select Assigned Department
        Wait Until Element is Enabled               ${dropdown_assigned_dept_issue}             ${DELAY}
        Click Element                               ${dropdown_assigned_dept_issue}
        Wait Until Element is Enabled               ${list_assigned_dept_issue}                 ${DELAY}
        Click Element                               ${list_assigned_dept_issue}
Select Reporter Department
        Wait Until Element is Enabled               ${dropdown_reporter_dept_issue}             ${DELAY}
        Click Element                               ${dropdown_reporter_dept_issue}
        Wait Until Element is Enabled               ${list_reporter_dept_issue}                 ${DELAY}
        Click Element                               ${list_reporter_dept_issue}
Select Category
        Wait Until Element is Enabled               ${dropdown_category_issue}                  ${DELAY}
        Click Element                               ${dropdown_category_issue}
        Wait Until Element is Enabled               ${list_category_issue}                      ${DELAY}
        Click Element                               ${list_category_issue}
Select Severity
        Wait Until Element is Enabled               ${dropdown_severity_issue}                  ${DELAY}
        Click Element                               ${dropdown_severity_issue}
        Wait Until Element is Enabled               ${list_red_severity_issue}                  ${DELAY}
        Click Element                               ${list_red_severity_issue}

Select Due date
        Wait Until Element is Enabled               ${select_due_date}                          ${DELAY}
        Click Element                               ${select_due_date}

Select time
        Wait Until Element is Enabled                ${dropdown_due_time}                       ${DELAY}
        Click Element                                ${dropdown_due_time}
        Wait Until Element is Enabled
        Click Element

Select Site
        Wait Until Element is Enabled               ${dropdown_site_issue}                      ${DELAY}
        Click Element                               ${dropdown_site_issue}
        Wait Until Element is Enabled               ${list_site_issue}                          ${DELAY}
        Click Element                               ${list_site_issue}

Select Assign User
        Wait Until Element is Enabled               ${dropdown_assigned_user_issue}             ${DELAY}
        Click Element                               ${dropdown_assigned_user_issue}
        Wait Until Element is Enabled               ${list_assigned_user_issue}                 ${DELAY}
        Click Element                               ${list_assigned_user_issue}

Input Comment Issue
        Input Text                                  ${input_comment_issue}                      ${comment_issue}

Add Image
        Choose File                                 ${link_add_image_issue}

Click button save
        Click Element                               ${button_save_issue}

Verify Add Issue Successfully
        #Wait Until Page Contains                    ${add_issues_successtoast}                 ${DELAY}
        #Page Should Contain                         ${add_issues_successtoast}
        Wait Until Element is Enabled               xpath://span[contains(text(),'${question_title_issue}')]  ${DELAY}
        Page Should Contain Element                 xpath://span[contains(text(),'${question_title_issue}')]

Verify "Title" Field is Available
        Wait Until Element is Enabled               ${input_question_title_issue}               ${DELAY}
        Page Should Contain Element                 ${input_question_title_issue}
Verify "Category" dropdown is Available
        Wait Until Element is Enabled               ${dropdown_category_issue}                  ${DELAY}
        Page Should Contain Element                 ${dropdown_category_issue}
Verify "Assigned Department" dropdown is available
        Wait Until Element is Enabled               ${dropdown_assigned_dept_issue}             ${DELAY}
        Page Should Contain Element                 ${dropdown_assigned_dept_issue}
Verify "Reporter Department" dropdown is available
        Wait Until Element is Enabled               ${dropdown_reporter_dept_issue}             ${DELAY}
        Page Should Contain Element                 ${dropdown_reporter_dept_issue}
Verify "Severity" dropdown is available
        Wait Until Element is Enabled               ${dropdown_severity_issue}                  ${DELAY}
        Page Should Contain Element                 ${dropdown_severity_issue}
Verify "Due Date & Time" dropdown is available
        Wait Until Element is Enabled               ${select_due_date}                          ${DELAY}
        Page Should Contain Element                 ${select_due_date}
        Wait Until Element is Enabled               ${dropdown_due_time}                        ${DELAY}
        Page Should Contain Element                 ${dropdown_due_time}
Verify "Site" dropdown is available
        Wait Until Element is Enabled               ${dropdown_site_issue}                      ${DELAY}
        Page Should Contain Element                 ${dropdown_site_issue}
Verify "Assigned to" dropdown is available
        Wait Until Element is Enabled               ${dropdown_assigned_user_issue}             ${DELAY}
        Page Should Contain Element                 ${dropdown_assigned_user_issue}
Verify "Comment" Field is available
        Wait Until Element is Enabled               ${input_comment_issue}                      ${DELAY}
        Page Should Contain Element                 ${input_comment_issue}
Verify "Add Image" link is available
        Wait Until Element is Enabled               ${link_add_image_issue}                     ${DELAY}
        Page Should Contain Element                 ${link_add_image_issue}
Verify "Save" button is available
        Wait Until Element is Enabled               ${button_save_issue}                        ${DELAY}
        Page Should Contain Element                 ${button_save_issue}
Verify "Cancel" button is available
        Wait Until Element is Enabled               ${button_cancel_issue}                      ${DELAY}
        Page Should Contain Element                 ${button_cancel_issue}










#Update Status to Resolved
Select Status Resolved
        Wait Until Element is Enabled               ${dropdown_update_by_status}                ${DELAY}
        Click Element                               ${dropdown_update_by_status}
        Wait Until Element is Enabled               ${list_by_status_resolved}                  ${DELAY}
        Click Element                               ${list_by_status_resolved}
Wait Until the status changes to be resolved
        Wait Until Element is Enabled               ${issue_resolved}                           ${DELAY}

Delay
        Sleep                                       10





#Add Comment
Select Issue
        Wait Until Element is Enabled               ${issue}                                    ${DELAY}
        Click Element                               ${issue}
Input Comment
        ${RANDOM} =                                 Generate Random String                      3       [NUMBERS]
        Wait Until ELement is Enabled               ${input_add_comment_issue}                  ${DELAY}
        Input Text                                  ${input_add_comment_issue}                  ${add_comment_issue} ${RANDOM}
Click Post Button
        Wait Until Element is Enabled               ${button_post_comment}                      ${DELAY}
        Mouse Over                                  ${button_post_comment}
        Click Element                               ${button_post_comment}

Verify Post Comment Successfully
        Wait Until Element is Enabled               xpath://p[contains(text(),'${add_comment_issue}')]           ${DELAY}
        Page Should Contain Element                 xpath://p[contains(text(),'${add_comment_issue}')]