*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot


*** Variables ***
${prev_month}                           September
${year}                                 2020
${this_month}                           October
${input_search}                         ${special_site}
${search_result}                        xpath://tbody/tr[1]/td[1]/span[contains(text(),'${special_site}')]
${edit_result}                          xpath://div[@class='cell col-name']//span[contains(text(),'AutoQA Site Edited')]
${field_search}                         id:input_search_sales
${btn_edit_period}                      id:btn_save_period
${drpdwn_month}                         id:drpdwn_month
${select_month}                         xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${prev_month}')]
${drpdwn_years}                         id:drpdwn_years
${select_year}                          xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${year})]
${btn_save_period}                      id:btn_save_period
${btn_upload_sales}                     id:btn_upload_sales
${btn_upload_target}                    id:btn_upload_target
${btn_view_detail}                      id:btn_view_detail



#Edit Target Modul
${btn_edit_target}                      id:btn_edit_target
${drpdwn_edit_month}                    id:drpdwn_edit_month
${select_edit_month}                    xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${this_month}')]
${drpdwn_edit_year}                     id:drpdwn_edit_year
${select_edit_year}                     xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${year})]
${input_amount}                         id:input_amount
${amount}                               000000
${amount_edit}                          000500
${btn_save_target}                      id:btn_save_target
${btn_cancel_target}                    id:btn_cancel_target

#Upload Sales Modul
${drpdwn_pick_date}                     id:drpdwn_pick_date
${link_dwnld_template}                  id:link_dwnld_template
${link_select_file}                     id:link_select_file
${btn_upload_file_sales}                id:btn_upload_sales
${btn_cancel_file_sales}                id:btn_cancel_sales
${choose_file_sales}                    /Users/machruk/Documents/File Upload/Sales Figures.csv


#Upload Target Modul
${drpdwn_pick_date_month}               id:drpdwn_pick_date_month
${drpdwn_pick_date_year}                id:drpdwn_pick_date_year
${link_dwnld_template}                  id:link_dwnld_template
${link_select_file}                     id:link_select_file
${btn_upload_file_target}               id:btn_upload_target
${btn_cancel_file_target}               id:btn_cancel_target
${choose_file_target}                   /Users/machruk/Documents/File Upload/Sales Target.csv

#View Detail Modul
${btn_add_sales}                        id:btn_add_sales
${btn_add_sales_15}                     xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[2]/div[4]/div[5]/div[1]/button[@id='btn_add_sales']
${input_sales}                          id:input_sales
${btn_submit}                           id:btn_submit
${btn_prev_month}                       id:btn_prev_month
${btn_next_month}                       id:btn_next_month
${progress_bar}                         xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[6]/div[2]/div[2]
${btn_edit_sales}                       xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/div[4]/span[3]


#Column Lable
${btn_asc_site}                         id:btn_asc_site
${btn_asc_dept}                         id:btn_asc_dept
${btn_asc_user}                         id:btn_asc_user
${btn_desc_total}                       id:btn_desc_total
${btn_desc_target}                      id:btn_desc_target
${btn_desc_prog}                        id:btn_desc_prog

#pagination
${btn_page_left}                        id:btn_left_arrow
${btn_page_1}                           id:btn_page1
${btn_page_2}                           id:btn_page2
${btn_page_right}                       id:btn_right_arrow



*** Keyword ***
Go to Sales Target Page
    Wait Until Element is Enabled                   ${link_sales_target}                        ${Delay}
    Click Element                                   ${link_sales_target}


#Search for a site name
Search Site
    Wait Until Element is Enabled                   ${field_search}                             ${Delay}
    Input Text                                      ${field_search}                             ${input_search}
    Wait Until Element is Enabled                   ${search_result}                            ${Delay}
    Page Should Contain Textfield                   ${input_search}

#Edit Periods
Click Edit Button
    Wait Until Element is Enabled                   ${btn_edit_period}                          ${Delay}
    Click Element                                   ${btn_edit_period}
Select Month
    Wait Until Element is Enabled                   ${drpdwn_month}                             ${Delay}
    Click Element                                   ${drpdwn_month}
    Wait Until Element is Enabled                   ${select_month}                             ${Delay}
    Click Element                                   ${select_month}
Select Year
    Wait Until Element is Enabled                   ${drpdwn_years}                             ${Delay}
    Click Element                                   ${drpdwn_years}
    Wait Until Element is Enabled                   ${select_year}                              ${Delay}
    Click Element                                   ${select_year}
Click Save Period
    Wait Until Element is Enabled                   ${btn_save_period}                          ${Delay}
    Click Element                                   ${btn_save_period}
    Page Should Contain                             ${prev_month}


#Edit Sales Target
Click Edit Sales Target Button
    Wait Until Element is Enabled                   ${btn_edit_target}                          ${Delay}
    Click Element                                   ${btn_edit_target}
Verify Dropdown Month is available
    Wait Until Element is Enabled                   ${drpdwn_edit_month}                        ${Delay}
    Page Should Contain Element                     ${drpdwn_edit_month}
Verify Dropdown Year is available
    Page Should Contain Element                     ${drpdwn_edit_year}
Verify "Amount" field is available
    Page Should Contain Element                     ${input_amount}
Verify "Save" button is available
    Page Should Contain Element                     ${btn_save_target}
Verify "Cancel" button is available
    Page Should Contain Element                     ${btn_cancel_target}

Edit Month
    Wait Until Element is Enabled                   ${drpdwn_edit_month}                        ${Delay}
    Click Element                                   ${drpdwn_edit_month}
    Wait Until Element is Enabled                   ${select_edit_month}                        ${Delay}
    Click Element                                   ${select_edit_month}

Edit Year
    Wait Until Element is Enabled                   ${drpdwn_edit_year}                         ${Delay}
    Click Element                                   ${drpdwn_edit_year}
    Wait Until Element is Enabled                   ${select_edit_year}                         ${Delay}
    Click Element                                   ${select_edit_year}

Input Amount
    ${RANDOM} =                                     Generate Random String                      3       [NUMBERS]
    Wait Until Element is Enabled                   ${input_amount}                             ${Delay}
    Input Text                                      ${input_amount}                             ${Random} ${amount}

Click Save Target Button
    Wait Until Element is Enabled                   ${btn_save_target}                          ${Delay}
    Click Element                                   ${btn_save_target}

Verify Edit Target Successful
    Wait Until Page Contains                        Success create SalesTarget            ${Delay}


#Upload Sales
Click Upload Sales Button
    Wait Until Element is Enabled                   ${btn_upload_sales}                         ${Delay}
    Click Element                                   ${btn_upload_sales}

Verify Warning Message is Displayed
    Page Should Contain                             Warning: Uploading in bulk will override any sales figures currently set.

Verify Pick a date Field is available
    Page Should Contain Element                     ${drpdwn_pick_date}

Verify "Download" link is available
    Page Should Contain Element                     ${link_dwnld_template}

Verify "Select" link is available
    Page Should Contain Element                     ${link_select_file}

Verify "Upload" Sales button is available
    Page Should Contain Element                     ${btn_upload_sales}

Verify "Cancel" upload button is available
    Page Should Contain Element                     ${btn_cancel_sales}

Download Template
    Wait Until Element is Enabled                   ${link_dwnld_template}                     ${Delay}
    Click Element                                   ${link_dwnld_template}

Select Sales File
    Wait Until Element is Enabled                   ${link_select_file}                        ${Delay}
    Choose File                                     ${link_select_file}                        ${choose_file_sales}

Click Upload Sales
    Wait Until Element is Enabled                   ${btn_upload_file_sales}                   ${Delay}
    Click Element                                   ${btn_upload_file_sales}

Verify Upload Sales Successful
    Wait Until Page Contains                        Uploaded 1 sales figures.                  ${Delay}
    Page Should Contain                             Uploaded 1 sales figures.



#Upload Target
Click Upload Target Button
    Wait Until Element is Enabled                   ${btn_upload_target}                       ${Delay}
    Click Element                                   ${btn_upload_target}

Verify Warning Message is Displayed (Target Modul)
    Page Should Contain                             Warning: Uploading in bulk will override any sales targets currently set.

Verify Pick a Month is available
    Page Should Contain Element                     ${drpdwn_pick_date_month}

Verify Pick a Year is available
    Page Should Contain Element                     ${drpdwn_pick_date_year}

Verify "Upload" target button is available
    Page Should Contain Element                     ${btn_upload_target}

Verify "Cancel" target button is available
    Page Should Contain Element                     ${btn_cancel_target}

Select Target File
    Wait Until Element is Enabled                   ${link_select_file}                         ${Delay}
    Choose File                                     ${link_select_file}                         ${choose_file_target}

Click Upload Target
    Wait Until Element is Enabled                   ${btn_upload_file_target}                   ${Delay}
    Click Element                                   ${btn_upload_file_target}

Verify Upload Target Successful
    Wait Until Page Contains                        Uploaded 1 sales targets.                         ${Delay}
    Page Should Contain                             Uploaded 1 sales targets.




#View Detail
Click View Detail Button
    Wait Until Element is Enabled                   ${btn_view_detail}                          ${Delay}
    Click Element                                   ${btn_view_detail}

Verify Prev Month Icon is Available
    Page Should Contain Element                     ${btn_prev_month}
Verify Next Month Icon is Available
    Page Should Contain Element                     ${btn_next_month}
Verify Title "Sales Detail" Is Displayed
    Page Should Contain                             Sales Detail
Verify Progress Bar is Displayed
    Wait Until Element is Enabled                   ${progress_bar}                             ${Delay}
    Page Should Contain Element                     ${progress_bar}
Verify Add Sales Button is Available
    Page Should Contain Element                     ${btn_add_sales}

Click Add Sales Button
    Wait Until Element is Enabled                   ${btn_add_sales_15}                        ${Delay}
    Click Element                                   ${btn_add_sales_15}

Input Sales
    ${RANDOM} =                                     Generate Random String                      3       [NUMBERS]
    Wait Until Element is Enabled                   ${input_sales}                             ${Delay}
    Input Text                                      ${input_sales}                             458000           #${RANDOM}${amount}

Click Submit Button
    Wait Until Element is Enabled                   ${btn_submit}                              ${Delay}
    Click Element                                   ${btn_submit}

Verify Add Sales Successfull
    Wait Until Page Contains                        Success create Sales                        ${Delay}

Click Edit Sales Button
    Wait Until Element is Enabled                   ${btn_edit_sales}                           ${Delay}
    Click Element                                   ${btn_edit_sales}

Edit Sales
    ${RANDOM} =                                     Generate Random String                      3       [NUMBERS]
    Wait Until Element is Enabled                   ${input_sales}                              ${Delay}
    Click Element                                   ${input_sales}
    Input Text                                      ${input_sales}                              ${RANDOM} ${amount_edit}

Verify Edit Sales Successful
    Wait Until Page Contains                        Successfully added sales figures for site.  ${Delay}


