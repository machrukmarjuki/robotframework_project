
*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot

*** Variable ***
${drpdwn_dept}                          xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/*[1]
${select_special_dept}                  xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${select_special_dept_succes}           xpath://div[contains(text(),'${special_dept_name}')]
${select_all_dept}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'All Departments')]
${select_all_dept_succes}               xpath://div[contains(text(),'All Departments')]
${drpdwn_user}                          xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/*[1]
${select_all_user}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'All Users')]
${select_all_user_success}              xpath://div[contains(text(),'All Users')]
${drpdwn_periods}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/*[1]
${select_thisweek}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'This Week')]
${select_thisweek_success}              xpath://div[contains(text(),'This Week')]
${select_lastweek}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last Week')]
${select_lastweek_success}              xpath://div[contains(text(),'Last Week')]
${select_7days}                         xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 7 Days')]
${select_7days_success}                 xpath://div[contains(text(),'Last 7 Days')]
${select_28days}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 28 Days')]
${select_28days_success}                xpath://div[contains(text(),'Last 28 Days')]
${select_30days}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 30 Days')]
${select_30days_success}                xpath://div[contains(text(),'Last 30 Days')]
${select_90days}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 90 Days')]
${select_90days_success}                xpath://div[contains(text(),'Last 90 Days')]
${select_6months}                       xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 6 Months')]
${select_6months_success}               xpath://div[contains(text(),'Last 6 Months')]
${select_12months}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 12 Months')]
${select_12months_success}              xpath://div[contains(text(),'Last 12 Months')]
${select_lastyear}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last Year')]
${select_lastyear_success}              xpath://div[contains(text(),'Last Year')]
${select_monthtodate}                   xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Month-to-date')]
${select_monthtodate_success}           xpath://div[contains(text(),'Month-to-date')]
${select_custom}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Custom')]
${select_custom_success}                xpath://div[contains(text(),'Custom')]
${prev_month}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/*[1]
${next_month}                            xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/*[1]
${drpdwn_startdate}                     id:analytics_start_date
${select_startdate}                     xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[3]/td[1]
${drpdwn_enddate}                       id:analytics_end_date
${select_enddate}                       xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/table[1]/tbody[1]/tr[3]/td[7]

#Reports Done
${tab_sched_report}                     xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[2]/button[1]
${tab_adhoc_report}                     xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[2]/button[2]
${link_no_report}                       xpath:
${chart_sched_report}                   xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/*[1]
${chart_adhoc_report}                   xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/*[1]

#TIme Invested
${tab_sched_time}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/button[1]
${tab_adhoc_time}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/button[2]
${link_time_report}                     xpath:
${chart_sched_time}                     xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/*[1]
${chart_adhoc_time}                     xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/*[1]


#Top User by Completion
${drpdwn_filter_by}                     xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/*[1]
${select_filter_by_question}            xpath:xpath://div[@class='select-editor__menu css-govwq4-menu']//div[1]//div[contains(text(),'${special_questionnaire}')]
${btn_dwld_csv}                         xpath://button[contains(text(),'Download .csv')]
${table_top_user}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[2]/div[1]/div[2]/div[1]/div[2]
${btn_asc_name}                         xpath:
${btn_desc_name}                        xpath:
${btn_asc_scheduled}                    xpath:
${btn_desc_scheduled}                   xpath:
${btn_asc_done}                         xpath:
${btn_desc_done}                        xpath:
${btn_asc_pending}                      xpath:
${btn_desc_pending}                     xpath:
${btn_asc_madeup}                       xpath:
${btn_desc_madeup}                      xpath:
${btn_asc_missed}                       xpath:
${btn_desc_missed}                      xpath:
${btn_asc_completion}                   xpath:
${btn_desc_completion}                  xpath:
${btn_asc_adhoc}                        xpath:
${btn_desc_adhoc}                       xpath:
${btn_asc_change}                       xpath:
${btn_desc_change}                      xpath:
${btn_view_sales}                       xpath://tbody/tr[1]/td[9]/button[1]
${popup_view_sales}                     xpath://div[contains(text(),'×')]



*** Keyword ***
Go to the Dashboard Users
    Wait Until Element is Enabled                       ${link_dashboard}                       ${Delay}
    Click Element                                       ${link_dashboard}
    Wait Until Element is Enabled                       ${link_dsbrd_users}                     ${Delay}
    Click Element                                       ${link_dsbrd_users}
    Wait Until Element is Visible                       ${drpdwn_dept}                          ${Delay}

Verify Filter by Department is Available
    Page Should Contain Element                         ${drpdwn_dept}

Verify Filter by User is Available
    Page Should Contain Element                         ${drpdwn_user}

Filter by Department
    Wait Until Element is Visible                       ${drpdwn_dept}                          ${Delay}
    Click Element                                       ${drpdwn_dept}
    Delay
    Wait Until Element is Enabled                       ${select_all_dept}                      ${Delay}
    Click Element                                       ${select_all_dept}

Verify Select Department is Successful
    Wait Until Element is Enabled                       ${select_all_dept_succes}               ${Delay}
    Page Should Contain Element                         ${select_all_dept_succes}

Filter by User
    Wait Until Element is Visible                       ${drpdwn_user}                          ${Delay}
    Click Element                                       ${drpdwn_user}
    Wait Until Element is Enabled                       ${select_all_user}                      ${Delay}
    Click Element                                       ${select_all_user}

Verify Select User is Successful
    Wait Until Element is Enabled                       ${select_all_user_success}          ${Delay}
    Page Should Contain Element                         ${select_all_user_success}

Filter by This Week
    Wait Until Element is Visible                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_this_week}                     ${Delay}
    Click Element                                       ${select_this_week}
Verify Select "This Week" is Successful
    Wait Until Element is Enabled                       ${select_special_site_succes}           ${Delay}
    Page Should Contain Element                         ${select_special_site_succes}

Filter by Last Week
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_week}                     ${Delay}
    Click Element                                       ${select_last_week}
Verify Select "Last Week" is Successful
    Wait Until Element is Enabled                       ${select_lastweek_success}              ${Delay}
    Page Should Contain Element                         ${select_lastweek_success}

Filter by Last 7 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_7_days}                        ${Delay}
    Click Element                                       ${select_7_days}
Verify Select "Last 7 Days" is Successful
    Wait Until Element is Enabled                       ${select_7days_success}                 ${Delay}
    Page Should Contain Element                         ${select_7days_success}

Filter by Last 28 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_28_days}                       ${Delay}
    Click Element                                       ${select_28_days}
Verify Select "Last 28 Days" is Successful
    Wait Until Element is Enabled                       ${select_28days_success}                ${Delay}
    Page Should Contain Element                         ${select_28days_success}

Filter by Last 30 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_30_days}                       ${Delay}
    Click Element                                       ${select_30_days}
Verify Select "Last 30 Days" is Successful
    Wait Until Element is Enabled                       ${select_30days_success}                ${Delay}
    Page Should Contain Element                         ${select_30days_success}

Filter by Last 90 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_90_days}                       ${Delay}
    Click Element                                       ${select_90_days}
Verify Select "Last 90 Days" is Successful
    Wait Until Element is Enabled                       ${select_90days_success}                ${Delay}
    Page Should Contain Element                         ${select_90days_success}

Filter by Last 6 Months
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_6_months}                      ${Delay}
    Click Element                                       ${select_6_months}
Verify Select "Last 6 Months" is Successful
    Wait Until Element is Enabled                       ${select_6months_success}               ${Delay}
    Page Should Contain Element                         ${select_6months_success}

Filter by Last 12 Months
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_12_months}                     ${Delay}
    Click Element                                       ${select_12_months}
Verify Select "Last 12 Months" is Successful
    Wait Until Element is Enabled                       ${select_12months_success}              ${Delay}
    Page Should Contain Element                         ${select_12months_success}

Filter by Last Year
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_year}                     ${Delay}
    Click Element                                       ${select_last_year}
Verify Select "Last Year" is Successful
    Wait Until Element is Enabled                       ${select_lastyear_success}              ${Delay}
    Page Should Contain Element                         ${select_lastyear_success}

Filter by Month to Date
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_month_to_date}                 ${Delay}
    Click Element                                       ${select_month_to_date}
Verify Select "Month to Date" is Successful
    Wait Until Element is Enabled                       ${select_monthtodate_success}           ${Delay}
    Page Should Contain Element                         ${select_monthtodate_success}

Filter by Custom Periods
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_custom}                        ${Delay}
    Click Element                                       ${select_custom}
Verify Select "Custom" is Successful
    Wait Until Element is Enabled                       ${select_custom_success}                ${Delay}
    Page Should Contain Element                         ${select_custom_success}

Select Start Date
    Wait Until Element is Enabled                       ${prev_month}                           ${Delay}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    Click Element                                       ${prev_month}
    #Wait Until Element is Enabled                       ${drpdwn_startdate}                     ${Delay}
    #Click Element                                       ${drpdwn_startdate}
    Wait Until Element is Enabled                       ${select_startdate}                     ${Delay}
    Click Element                                       ${select_startdate}
Select End Date
    Wait Until Element is Enabled                       ${next_month}                           ${Delay}
    Click Element                                       ${next_month}
    Click Element                                       ${next_month}
    Click Element                                       ${next_month}
    Click Element                                       ${next_month}
    Click Element                                       ${next_month}
    Click Element                                       ${next_month}
    Click Element                                       ${next_month}
    Click Element                                       ${next_month}
    Wait Until Element is Enabled                       ${select_enddate}                       ${Delay}
    Click Element                                       ${select_enddate}
    Delay
    Delay
Click View Sales
    Wait Until Element is Enabled                       ${btn_view_sales}                       ${Delay}
    Click Element                                       ${btn_view_sales}

Verify View Sales Popup Displayed Properly
    Wait Until Element is Enabled                       ${popup_view_sales}                     ${Delay}
    Page Should Contain Element                         ${popup_view_sales}

Delay
    Sleep                                               5


Verify Report Done (Scheduled) is Displayed
    Delay
    Wait Until Element is Visible                       ${chart_sched_report}                   ${Delay}
    Page Should Contain Element                         ${chart_sched_report}
Verify Report Done (Ad-Hoc) is Displayed
    Wait Until Element is Enabled                       ${tab_adhoc_report}                     ${Delay}
    Click Element                                       ${tab_adhoc_report}
    Wait Until Element is Visible                       ${chart_adhoc_report}                   ${Delay}
    Page Should Contain Element                         ${chart_adhoc_report}
Verify Time Invested (Scheduled) is Displayed
    Wait Until Element is Visible                       ${chart_sched_time}                     ${Delay}
    Page Should Contain Element                         ${chart_sched_time}
Verify Time Invested (Ad-Hoc) is Displayed
    Wait Until Element is Enabled                       ${tab_adhoc_time}                       ${Delay}
    Click Element                                       ${tab_adhoc_time}
    Delay
    Wait Until Element is Visible                       ${chart_adhoc_time}                     ${Delay}
    Page Should Contain Element                         ${chart_adhoc_time}

Verify "Top User by Completion" is Displayed
    Wait Until Element is Visible                       ${table_top_user}                       ${Delay}
    Page Should Contain Element                         ${table_top_user}



















