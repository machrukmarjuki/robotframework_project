*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot

*** Variables ***
${questionnaire}                            Special AutoQuestionnaire
${question_categ}                           Quality Checking
${question_chcklist}                        Q8 Checklist ?
${question_multiple}                        Q6 Multiple Choice ?
${question_yesno}                           Q2 YN?
${question_score}                           Q3 SCR?
${question_number}                          Q5 Number ?
${question_gyr}                             Q1 GYR?
${question_openended}                       Q4 OE?
${question_range}                           Q9 Range ?
${question_competitor}
${auditor_quest}                            Jack
${drpdwn_questionnaire}                     xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/span[1]/div[1]/div[1]/div[2]/div[1]/*[1]
${select_questionnaire}                     xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${questionnaire}')]
${drpdwn_categ}                             xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/span[2]/div[1]/div[1]/div[2]/div[1]/*[1]
${select_categ}                             xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_categ}')]
${drpdwn_quest}                             xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/span[3]/div[1]/div[1]/div[2]/div[1]/*[1]
${select_checklist}                         xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_chcklist}')]
${select_multiple}                          xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_multiple}')]
${select_yesno}                             xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_yesno}')]
${select_score}                             xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_score}')]
${select_number}                            xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_number}')]
${select_gyr}                               xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_gyr}')]
${select_openended}                         xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_openended}')]
${select_range}                             xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_range}')]
${select_competitor}                        xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${question_competitor}')]
${drpdwn_auditor}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/span[4]/div[1]/div[1]/div[2]/div[1]/*[1]
${select_auditor_quest}                     xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${auditor_quest}')]

#View By
${drpdwn_periods}                           xpath://div[contains(text(),'This Month')]
${select_this_week}                         xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'This Week')]
${select_last_week}                         xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last Week')]
${select_last_7days}                        xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last 7 Days')]
${select_last_28days}                       xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last 28 Days')]
${select_last_30days}                       xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last 30 Days')]
${select_last_90days}                       xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last 90 Days')]
${select_last_6months}                      xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last 6 Months')]
${select_last_12months}                     xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last 12 Months')]
${select_last_year}                         xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Last Year')]
${select_month_to_date}                     xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'Month-to-date')]
${drpdwn_startdate}                         id:trends
${select_start_date}                        xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/span[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[3]/td[1]
${drpdwn_enddate}                           id:trends_end_date
${btn_previous_month}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/span[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/*[1]
${select_end_date}                          xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/span[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/table[1]/tbody[1]/tr[4]/td[7]

${btn_dwld_csv}                             xpath:
${tab_multi_choice}                         xpath://div[contains(text(),'Multiple Choice')]
${tab_checklist}                            xpath://div[contains(text(),'Checklist')]
${tab_yes_no}                               xpath://div[contains(text(),'Yes/No')]
${tab_score}                                xpath://div[contains(text(),'Score')]
${tab_number}                               xpath://div[contains(text(),'Number')]
${tab_gyr}                                  xpath://div[contains(text(),'Green/Yellow/Red')]
${tab_open_ended}                           xpath://div[contains(text(),'Open Ended')]
${tab_range_flag}                           xpath://div[contains(text(),'Range with Flags')]
${tab_comp_analys}                          xpath://div[contains(text(),'Competitor Analysis')]

${chcklist_chart}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]
${chcklist_percentage}                      xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]

${multiple_chart}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]
${multiple_percentage}                      xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[1]/*[1]

${yesno_chart}                              xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]
${yesno_percentage}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]

${score_chart}                              id:trends-bar-chart

${number_chart}                             xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]/*[1]

${gyr_chart}                                xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]/*[1]
${gyr_percentage}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[1]/*[1]

${openended_table}                          xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[2]

${range_chart}                              id:GRY-bar-chart
${range_percentage}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[1]/*[1]

#${competitor_chart}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]/*[1]
#${competitor_percentage}                    xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]





*** Keywords ***
Delay
    Sleep                                               5
Go to the Dashboard Trends
    Wait Until Element is Enabled                       ${link_dashboard}                       ${Delay}
    Click Element                                       ${link_dashboard}
    Wait Until Element is Enabled                       ${link_dsbrd_trends}                    ${Delay}
    Click Element                                       ${link_dsbrd_trends}
    Wait Until Element is Enabled                       ${tab_multi_choice}                     ${Delay}
    Sleep                                               5

Verify Filter by Questionnaire is Available
    Wait Until Element is Visible                       ${drpdwn_questionnaire}                 ${Delay}
    Page Should Contain Element                         ${drpdwn_questionnaire}
Verify Filter by Question Category is Available
    Page Should Contain Element                         ${drpdwn_categ}
Verify Filter by Question is Available
    Page Should Contain Element                         ${drpdwn_quest}
Verify Filter by Auditor is Available
    Page Should Contain Element                         ${drpdwn_auditor}
Verify Filter by Periods is Available
    Page Should Contain Element                         ${drpdwn_periods}
Verify "Multiple Choice" Tab is Available
    Page Should Contain Element                         ${tab_multi_choice}
Verify "Checklist" Tab is Available
    Wait Until Element is Visible                       ${drpdwn_questionnaire}                 ${Delay}
    Page Should Contain Element                         ${tab_checklist}
Verify "Yes/No" Tab is Available
    Page Should Contain Element                         ${tab_yes_no}
Verify "Score" Tab is Available
    Page Should Contain Element                         ${tab_score}
Verify "Number" Tab is Available
    Page Should Contain Element                         ${tab_number}
Verify "Green/Yellow/Red" Tab is Available
    Page Should Contain Element                         ${tab_gyr}
Verify "Open Ended" Tab is Available
    Wait Until Element is Visible                       ${tab_open_ended}                       ${Delay}
    Page Should Contain Element                         ${tab_open_ended}
Verify "Range Flag" Tab is Available
    Page Should Contain Element                         ${tab_range_flag}
Verify "Competitor Analysis" Tab is Available
    Page Should Contain Element                         ${tab_comp_analys}

Filter by Questionnaire
    Sleep                                               5
    Wait Until Element is Visible                       ${drpdwn_questionnaire}                 ${Delay}
    Element Should be Enabled                           ${drpdwn_questionnaire}
    Click Element                                       ${drpdwn_questionnaire}
    Wait Until Element is Enabled                       ${select_questionnaire}                 ${Delay}
    Click Element                                       ${select_questionnaire}

Filter by Question Category
    Wait Until Element is Visible                       ${drpdwn_categ}                         ${Delay}
    Click Element                                       ${drpdwn_categ}
    Wait Until Element is Enabled                       ${select_categ}                         ${Delay}
    Click Element                                       ${select_categ}
    Delay

Filter by "Multiple Choice" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_multiple}                      ${Delay}
    Click Element                                       ${select_multiple}
    Delay

Filter by "Cheklist" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_checklist}                     ${Delay}
    Click Element                                       ${select_checklist}
    Delay

Filter by "Yes/No" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_yesno}                         ${Delay}
    Click Element                                       ${select_yesno}
    Delay

Filter by "Score" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_score}                         ${Delay}
    Click Element                                       ${select_score}
    Delay

Filter by "Number" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_number}                        ${Delay}
    Click Element                                       ${select_number}
    Delay

Filter by "Open-Ended" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_openended}                     ${Delay}
    Click Element                                       ${select_openended}
    Delay

Filter by "Green/Yellow/Red" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_gyr}                           ${Delay}
    Click Element                                       ${select_gyr}
    Delay

Filter by "Range with Flags" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_range}                         ${Delay}
    Click Element                                       ${select_range}
    Delay

Filter by "Competitor Analysis" Question
    Wait Until Element is Visible                       ${drpdwn_quest}                         ${Delay}
    Click Element                                       ${drpdwn_quest}
    Wait Until Element is Enabled                       ${select_competitor}                    ${Delay}
    Click Element                                       ${select_competitor}
    Delay

Filter by Auditor
    Wait Until Element is Visible                       ${drpdwn_auditor}                       ${Delay}
    Click Element                                       ${drpdwn_auditor}
    Wait Until Element is Visible                       ${select_auditor_quest}                 ${Delay}
    Click Element                                       ${select_auditor_quest}

Click Multiple Choice Tab
    Wait Until Element is Enabled                       ${tab_multi_choice}                     ${Delay}
    Click Element                                       ${tab_multi_choice}

Click Checklist Tab
    Wait Until Element is Enabled                       ${tab_checklist}                        ${Delay}
    Click Element                                       ${tab_checklist}
Click Yes/No Tab
    Wait Until Element is Enabled                       ${tab_yes_no}                           ${Delay}
    Click Element                                       ${tab_yes_no}
Click Score Tab
    Wait Until Element is Enabled                       ${tab_score}                            ${Delay}
    Click Element                                       ${tab_score}
Click Number Tab
    Wait Until Element is Enabled                       ${tab_number}                           ${Delay}
    Click Element                                       ${tab_number}
Click Green/Yellow/Red Tab
    Wait Until Element is Enabled                       ${tab_gyr}                              ${Delay}
    Click Element                                       ${tab_gyr}
Click Open Ended Tab
    Wait Until Element is Enabled                       ${tab_open_ended}                       ${Delay}
    Click Element                                       ${tab_open_ended}
Click Range Flag Tab
    Wait Until Element is Visible                       ${tab_range_flag}                       ${Delay}
    Click Element                                       ${tab_range_flag}
Click Competitor Analysis Tab
    Wait Until Element is Enabled                       ${tab_comp_analys}                      ${Delay}
    Click Element                                       ${tab_comp_analys}

Verify Chart on "Checklist" Tab is Displayed
    Wait Until Element is Visible                       ${chcklist_chart}                       ${Delay}
    Page Should Contain Element                         ${chcklist_chart}
Verify Percentage on "Checklist" Tab is Displayed
    Wait Until Element is Visible                       ${chcklist_percentage}                  ${Delay}
    Page Should Contain Element                         ${chcklist_percentage}

Verify Chart on "Multiple Choice" Tab is Displayed
    Wait Until Element is Visible                       ${multiple_chart}                       ${Delay}
    Page Should Contain Element                         ${multiple_chart}
Verify Percentage on "Multiple Choice" Tab is Displayed
    Wait Until Element is Visible                       ${multiple_percentage}                  ${Delay}
    Page Should Contain Element                         ${multiple_percentage}

Verify Chart on "Yes/No" Tab is Displayed
    Wait Until Element is Visible                       ${yesno_chart}                          ${Delay}
    Page Should Contain Element                         ${yesno_chart}
Verify Percentage on "Yes/No" Tab is Displayed
    Wait Until Element is Visible                       ${yesno_percentage}                     ${Delay}
    Page Should Contain Element                         ${yesno_percentage}

Verify Chart on "Score" Tab is Displayed
    Wait Until Element is Visible                       ${score_chart}                          ${Delay}
    Page Should Contain Element                         ${score_chart}

Verify Chart on "Number" Tab is Displayed
    Wait Until Element is Visible                       ${number_chart}                         ${Delay}
    Page Should Contain Element                         ${number_chart}


Verify Chart on "Green/Yellow/Red" Tab is Displayed
    Wait Until Element is Visible                       ${gyr_chart}                            ${Delay}
    Page Should Contain Element                         ${gyr_chart}
Verify Percentage on "Green/Yellow/Red" Tab is Displayed
    Wait Until Element is Visible                       ${gyr_percentage}                       ${Delay}
    Page Should Contain Element                         ${gyr_percentage}

Verify Chart on "Open Ended" Tab is Displayed
    Wait Until Element is Visible                       ${openended_table}                      ${Delay}
    Page Should Contain Element                         ${openended_table}


Verify Chart on "Range Flag" Tab is Displayed
    Wait Until Element is Visible                       ${range_chart}                          ${Delay}
    Page Should Contain Element                         ${range_chart}
Verify Percentage on "Range Flag" Tab is Displayed
    Wait Until Element is Visible                       ${range_percentage}                     ${Delay}
    Page Should Contain Element                         ${range_percentage}

Verify Chart on "Competitor Analysis" Tab is Displayed
    Wait Until Element is Visible                       ${competitor_chart}                     ${Delay}
    Page Should Contain Element                         ${competitor_chart}
Verify Percentage on "Competitor Analysis" Tab is Displayed
    Wait Until Element is Visible                       ${competitor_percentage}                ${Delay}
    Page Should Contain Element                         ${competitor_percentage}


View by This Week
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_this_week}                     ${Delay}
    Click Element                                       ${select_this_week}
View by Last Week
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_week}                     ${Delay}
    Click Element                                       ${select_last_week}
View by Last 7 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_7days}                    ${Delay}
    Click Element                                       ${select_last_7days}
View by Last 28 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_28days}                   ${Delay}
    Click Element                                       ${select_last_28days}
View by Last 30 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_30days}                   ${Delay}
    Click Element                                       ${select_last_30days}
View by Last 90 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_90days}                   ${Delay}
    Click Element                                       ${select_last_90days}
View by Last 6 Months
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_6months}                  ${Delay}
    Click Element                                       ${select_last_6months}
View by Last 12 Months
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_12months}                 ${Delay}
    Click Element                                       ${select_last_12months}
View by Last Year
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_year}                     ${Delay}
    Click Element                                       ${select_last_year}
View by Month to Date
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_month_to_date}                 ${Delay}
    Click Element                                       ${select_month_to_date}

Select Start Date
    Wait Until Element is Enabled                       ${drpdwn_startdate}                     ${Delay}
    Click Element                                       ${drpdwn_startdate}
    Wait Until Element is Enabled                       ${btn_previous_month}                   ${Delay}
    Click Element                                       ${btn_previous_month}
    Wait Until Element is Enabled                       ${select_start_date}                    ${Delay}
    Click Element                                       ${select_start_date}

Select End Date
    Wait Until Element is Enabled                       ${drpdwn_enddate}                       ${Delay}
    Click Element                                       ${drpdwn_enddate}
    Wait Until Element is Enabled                       ${select_end_date}                      ${Delay}
    Click Element                                       ${select_end_date}






