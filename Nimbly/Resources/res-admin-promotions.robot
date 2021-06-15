*** Variables ***
#Promotions
${button_new_promotion}                 id:btn_new_promo
${button_resend}                        id:btn_resend
${tab_active_promotion}                 id:tab_active_promo
${tab_scheduled_promotion}              id:tab_sched_promo
${tab_archived_promotion}               id:tab_archi_promo
${icon_edit}                            id:btn_edit_romo
${icon_end}                             xpath://tbody/tr[1]/td[8]/img[2]

#table
${btn_asc_title_promo}                  id:btn_asc_title_promo
${btn_asc_descr_promo}                  id:btn_asc_descr_promo
${btn_asc_target}                       id:btn_asc_target
${btn_asc_cost}                         id:btn_asc_cost
${btn_asc_sales_result}                 id:btn_asc_sales_result
${btn_asc_start_promo}                  id:btn_asc_start_promo
${btn_asc_end_promo}                    id:btn_asc_end_promo


#Add promotion
${input_promotion_title}                id:input_title_promo
${input_promotion_description}          id:input_desc_promo
${link_add_image}                       id:btn_add_image
${input_cost_promo}                     id:input_cost_promo

#All Sites
${radiobtn_all_sites}                   id:radiobtn_all_sites
#Specific Sites
${radiobtn_spesific_site}               id:radiobtn_spec_sites
${dropdown_specific_sites}              xpath://body/div[@id='root']/div/div/div/div/div/div/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]
${select_specific_sites}                xpath://div[@class=' css-52m07i-menu']//div[1]//div[contains(text(),'${special_site}')]
#Specific Department
${radiobtn_spesific_department}         id:radiobtn_spec_dept
${dropdown_specific_department}         id:drpdwn_spec_dept
${select_specific_department}           xpath://div[@class=' css-52m07i-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
#Send Now
${radiobtn_send_now}                    id:radiobtn_send_now
${drpdwn_end_date}                      id:drpdwn_end_date
${select_end_date}                      xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//table[1]//tbody[1]//tr[1]//td[4]
${drpwn_end_time}                       id:drpdwn_end_date_time
${select_end_time}                      xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'12:00')]
${drpdwn_end_ampm}                      id:drpdwn_end_date_ampm
${select_end_ampm}                      xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'AM')]
#Specific Date & Time
${radiobtn_spesific_date}               id:radiobtn_spec_date
${drpdwn_spec_start_date}               id:drpdwn_spec_startdate
${select_spec_start_date}               xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//table[1]//tbody[1]//tr[5]//td[1]
${drpdwn_spec_start_time}               id:drpdwn_spec_startdate_time
${select_spec_start_time}               xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'08:00')]
${drpdwn_spec_start_ampm}               id:drpdwn_spec_startdate_ampm
${select_spec_start_ampm}               xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'PM')]
${drpdwn_spec_end_date}                 id:drpdwn_spec_enddate
${btn_next_month}                       xpath://body/div[@id='root']/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div/div[2]//*[local-name()='svg']
${select_spec_end_date}                 xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//table[1]//tbody[1]//tr[1]//td[4]
${drpdwn_spec_end_time}                 id:drpdwn_spec_enddate_time
${select_spec_end_time}                 xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'12:00')]
${drpdwn_spec_end_ampm}                 id:drpdwn_spec_enddate_ampm
${select_spec_end_ampm}                 xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'AM')]

${button_save_promotion}                id:btn_save_promo
${btn_cancel_promo}                     id:btn_cancel_promo

${promotion_title}                      AutoQA Promotion
${promotion_description}                Ini adalah promotion yang dibuat menggunakan automation
${choose_promotion_image}               /Users/machruk/Downloads/Test.jpg

#End Promo
${btn_yes_end_promo}                    id:btn_end_promo
${btn_cancel_end_promo}                 id:btn_cancel_promo





*** Keywords ***
Go to Promotions Page
        Wait Until Element is Enabled               ${link_promotions}                          ${Delay}
        Click Element                               ${link_promotions}

Click Active Tab
        Wait Until Element is Enabled               ${tab_active_promotion}                     ${Delay}
        Click Element                               ${tab_active_promotion}
Click Scheduled Tab
        Wait Until Element is Enabled               ${tab_scheduled_promotion}                  ${Delay}
        Click Element                               ${tab_scheduled_promotion}
Click Archived Tab
        Wait Until Element is Enabled               ${tab_archived_promotion}                   ${Delay}
        Click Element                               ${tab_archived_promotion}
Click New Promotion
        Wait Until Element is Enabled               ${button_new_promotion}                     ${Delay}
        Click Element                               ${button_new_promotion}

Input Promotion Title
        ${RANDOM} =                                 Generate Random String                      3       [NUMBERS]
        Wait Until Element is Enabled               ${input_promotion_title}                    ${Delay}
        Input Text                                  ${input_promotion_title}                    ${promotion_title} ${RANDOM}
Input Promotion Description
        Wait Until Element is Enabled               ${input_promotion_description}              ${Delay}
        Input Text                                  ${input_promotion_description}              ${promotion_description}
Select All Site
        Wait Until Element is Enabled               ${radiobtn_all_sites}                       ${Delay}
        Click Element                               ${radiobtn_all_sites}
Select Radio Button Specific Site
        Wait Until Element is Enabled               ${radiobtn_spesific_site}                   ${Delay}
        Click Element                               ${radiobtn_spesific_site}

Select Specific Site
        Wait Until Element is Enabled               ${dropdown_specific_sites}                  ${Delay}
        Click Element                               ${dropdown_specific_sites}
        Wait Until Element is Enabled               ${select_specific_sites}                    ${Delay}
        Click Element                               ${select_specific_sites}
Select Radio Button Specific Department
        Wait Until Element is Enabled               ${radiobtn_spesific_department}             ${Delay}
        Click Element                               ${radiobtn_spesific_department}
Select Specific Department
        Wait Until Element is Enabled               ${dropdown_specific_department}             ${Delay}
        Click Element                               ${dropdown_specific_department}
        Wait Until Element is Enabled               ${select_specific_department}               ${Delay}
        Click Element                               ${select_specific_department}
Select Send Now
        Wait Until Element is Enabled               ${radiobtn_send_now}                        ${Delay}
        Click Element                               ${radiobtn_send_now}
Select End date
        Wait Until Element is Enabled               ${drpdwn_end_date}                          ${Delay}
        Click Element                               ${drpdwn_end_date}
        Click Element                               ${btn_next_month}
        Wait Until Element is Enabled               ${select_end_date}                          ${Delay}
        Click Element                               ${select_end_date}
Select End time
        Wait Until Element is Enabled               ${drpwn_end_time}                           ${Delay}
        Click Element                               ${drpwn_end_time}
        Wait Until Element is Enabled               ${select_end_time}                          ${Delay}
        Click Element                               ${select_end_time}
Select End am/pm
        Wait Until Element is Enabled               ${drpdwn_end_ampm}                          ${Delay}
        Click Element                               ${drpdwn_end_ampm}
        Wait Until Element is Enabled               ${select_end_ampm}                          ${Delay}
        Click Element                               ${select_end_ampm}


#Specific Date
Select Specific Date & Time
        Wait Until Element is Enabled               ${radiobtn_spesific_date}                   ${Delay}
        Click Element                               ${radiobtn_spesific_date}

Select Specific start date
        Wait Until Element is Enabled               ${drpdwn_spec_start_date}                   ${Delay}
        Click Element                               ${drpdwn_spec_start_date}
        Wait Until Element is Enabled               ${select_spec_start_date}                   ${Delay}
        Click Element                               ${select_spec_start_date}
Select Specific Start Time
        Wait Until Element is Enabled               ${drpdwn_spec_start_time}                   ${Delay}
        Click Element                               ${drpdwn_spec_start_time}
        Wait Until Element is Enabled               ${select_spec_start_time}                   ${Delay}
        Click Element                               ${select_spec_start_time}
Select Specific Start AM/PM
        Wait Until Element is Enabled               ${drpdwn_spec_start_ampm}                   ${Delay}
        Click Element                               ${drpdwn_spec_start_ampm}
        Wait Until Element is Enabled               ${select_spec_start_ampm}                   ${Delay}
        Click Element                               ${select_spec_start_ampm}

Select Specific End Date
        Wait Until Element is Enabled               ${drpdwn_spec_end_date}                     ${Delay}
        Click Element                               ${drpdwn_spec_end_date}
        Click Element                               ${btn_next_month}
        Wait Until Element is Enabled               ${select_spec_end_date}                     ${Delay}
        Click Element                               ${select_spec_end_date}
Select Specific End Time
        Wait Until Element is Enabled               ${drpdwn_spec_end_time}                     ${Delay}
        Click Element                               ${drpdwn_spec_end_time}
        Wait Until Element is Enabled               ${select_spec_end_time}                     ${Delay}
        Click Element                               ${select_spec_end_time}
Select Specific End AM/PM
        Wait Until Element is Enabled               ${drpdwn_spec_end_ampm}                     ${Delay}
        Click Element                               ${drpdwn_spec_end_ampm}
        Wait Until Element is Enabled               ${select_spec_end_ampm}                     ${Delay}
        Click Element                               ${select_spec_end_ampm}
Add Promotion Image
        Wait Until Element is Enabled               ${link_add_image}                           ${Delay}
        Choose File                                 ${link_add_image}                           ${choose_promotion_image}
Click Save Promotion
        Wait Until Element is Enabled               ${button_save_promotion}                    ${Delay}
        Click Element                               ${button_save_promotion}
Verify Create Promotion Successful
        Wait Until Page Contains                    Success create Promotion                    ${Delay}

Click Edit Button
        Wait Until Element is Enabled               ${icon_edit}                                ${Delay}
        Click Element                               ${icon_edit}

Verify Edit Promotion Successful
        Wait Until Page Contains                    Success update Promotion                    ${Delay}

Verify End Promotion Successful
        Wait Until Page Contains                    Success update Promotion                    ${Delay}

Click Resend
        Wait Until Element is Enabled               ${button_resend}                            ${Delay}
        Click Element                               ${button_resend}

Verify Resend Promotion Successful
        Wait Until Page Contains                    Success create Promotion                    ${Delay}

#End Promotiom
Click End Button
        Wait Until Element is Enabled               ${icon_end}                                 ${Delay}
        Click Element                               ${icon_end}

Click Yes, End Button
        Wait Until Element is Enabled               ${btn_yes_end_promo}                        ${Delay}
        Click Element                               ${btn_yes_end_promo}

Click Cancel, End Button
        Wait Until Element is Enabled               ${btn_cancel_end_promo}                     ${Delay}
        Click Element                               ${btn_cancel_end_promo}
Delay
        Sleep                                       5


#New Promotion
Verify the New Promotion form is Displayed
        Verify Promotion "Title" field is available
        Verify Promotion "Description" field is available
        Verify "Add Image" button is available
        Verify "Promotion Cost" field is available
        Verify "All Sites" radio button is available
        Verify "Specific Sites" radio button is available
        Verify "Send Now" radio button is available
        Verify "End Date" Field is Available
        Verify "Specific Date and Time" radio button is available

Verify Promotion "Title" field is available
        Wait Until ELement is Enabled               ${input_promotion_title}                    ${Delay}
        Page Should Contain Element                 ${input_promotion_title}
Verify Promotion "Description" field is available
        Wait Until ELement is Enabled               ${input_promotion_description}              ${Delay}
        Page Should Contain Element                 ${input_promotion_description}
Verify "Add Image" button is available
        Wait Until ELement is Enabled               ${link_add_image}                           ${Delay}
        Page Should Contain Element                 ${link_add_image}
Verify "Promotion Cost" field is available
        Wait Until ELement is Enabled               ${input_cost_promo}                         ${Delay}
        Page Should Contain Element                 ${input_cost_promo}
Verify "All Sites" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_all_sites}                       ${Delay}
        Page Should Contain Element                 ${radiobtn_all_sites}
Verify "Specific Sites" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_spesific_site}                   ${Delay}
        Page Should Contain Element                 ${radiobtn_spesific_site}
Verify Select "Specific Sites" is successfully
        Wait Until ELement is Enabled               ${dropdown_specific_sites}                  ${Delay}
        Page Should Contain Element                 ${dropdown_specific_sites}
Verify "Specific Department" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_spesific_department}             ${Delay}
        Page Should Contain Element                 ${radiobtn_spesific_department}
Verify Select "Specific Department" is successfully
        Wait Until ELement is Enabled               ${dropdown_specific_department}             ${Delay}
        Page Should Contain Element                 ${dropdown_specific_department}
Verify "Send Now" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_send_now}                        ${Delay}
        Page Should Contain Element                 ${radiobtn_send_now}
Verify "End Date" Field is Available
        Wait Until ELement is Enabled               ${drpdwn_end_date}                          ${Delay}
        Page Should Contain Element                 ${drpdwn_end_date}
Verify "Specific Date and Time" radio button is available
        Wait Until ELement is Enabled               ${radiobtn_spesific_date}                   ${Delay}
        Page Should Contain Element                 ${radiobtn_spesific_date}
Verify Select "Specific Start Date and End Date" is successfully
        Wait Until ELement is Enabled               ${drpdwn_spec_start_date}                   ${Delay}
        Page Should Contain Element                 ${drpdwn_spec_start_date}