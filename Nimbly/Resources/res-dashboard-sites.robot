*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot

*** Variable ***
${drpdwn_all_dept}                      xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/*[1]
${select_special_dept}                  xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${select_special_dept_succes}           xpath://div[contains(text(),'${special_dept_name}')]
${drpdwn_all_sites}                     xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[1]/div[1]
${select_special_sites}                 xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_site}')]
${select_special_site_succes}           xpath://div[contains(text(),'${special_site}')]
${drpdwn_periods}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/*[1]
${select_this_week}                     xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'This Week')]
${select_thisweek_success}              xpath://div[contains(text(),'This Week')]
${select_last_week}                     xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last Week')]
${select_lastweek_success}              xpath://div[contains(text(),'Last Week')]
${select_7_days}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 7 Days')]
${select_7days_success}                 xpath://div[contains(text(),'Last 7 Days')]
${select_28_days}                       xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 28 Days')]
${select_28days_success}                xpath://div[contains(text(),'Last 28 Days')]
${select_30_days}                       xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 30 Days')]
${select_30days_success}                xpath://div[contains(text(),'Last 30 Days')]
${select_90_days}                       xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 90 Days')]
${select_90days_success}                xpath://div[contains(text(),'Last 90 Days')]
${select_6_months}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 6 Months')]
${select_6months_success}               xpath://div[contains(text(),'Last 6 Months')]
${select_12_months}                     xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 12 Months')]
${select_12months_success}              xpath://div[contains(text(),'Last 12 Months')]
${select_last_year}                     xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last Year')]
${select_lastyear_success}              xpath://div[contains(text(),'Last Year')]
${select_month_to_date}                 xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Month-to-date')]
${select_monthtodate_success}           xpath://div[contains(text(),'Month-to-date')]
${select_custom}                        xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Custom')]
${select_custom_success}                xpath://div[contains(text(),'Custom')]
${prev_month}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/*[1]
${drpdwn_start_date}                    id:analytics_start_date
${select_startdate}                     xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[1]
${drpdwn_end_date}                      id:analytics_end_date
${select_enddate}                       xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/table[1]/tbody[1]/tr[4]/td[7]


${drpdwn_view_by}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]
${select_green}                         xpath://div[@class='select-flag__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Green')]
${select_green_success}                 xpath://div[contains(text(),'Green')]
${select_yellow}                        xpath://div[@class='select-flag__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Yellow')]
${select_yellow_success}                xpath://div[contains(text(),'Yellow')]
${select_red}                           xpath://div[@class='select-flag__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Red')]
${select_red_success}                   xpath://div[contains(text(),'Red')]
${btn_dwnld_csv}                        xpath://button[contains(text(),'Download .csv')]
${tab_flag}                             xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[1]
${tab_report}                           xpath://div[contains(text(),'Report')]
${tab_issue}                            xpath://div[contains(text(),'Issue')]
${btn_asc_name}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/span[1]/img[1]
${btn_desc_name}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/span[1]/img[2]
${btn_asc_city}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[3]/span[1]/img[1]
${btn_desc_city}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[3]/span[1]/img[2]
${btn_asc_score}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[6]/span[1]/img[1]
${btn_desc_score}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[6]/span[1]/img[1]

${verif_deptname}                       xpath:
${verif_sitename}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/a[contains(text(),'${special_site}')]
${verif_nosites}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[contains(text(),'No sites are available')]


#Tab-Report
${btn_asc_site}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/span[1]/img[1]
${btn_desc_site}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/span[1]/img[2]
${btn_asc_city}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[3]/span[1]/img[1]
${btn_desc_city}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[3]/span[1]/img[2]
${btn_asc_total_sched}                  xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[6]/span[1]/img[1]
${btn_desc_total_sched}                 xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[6]/span[1]/img[2]
${btn_asc_done}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[7]/span[1]/img[1]
${btn_desc_done}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[7]/span[1]/img[2]
${btn_asc_missed}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[8]/span[1]/img[1]
${btn_desc_missed}                      xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[8]/span[1]/img[2]
${btn_asc_completion}                   xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[9]/span[1]/img[1]
${btn_desc_completion}                  xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[9]/span[1]/img[2]
${link_site_name}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[3]/div[2]/a[1]
${icon_option}                          xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[4]/div[10]/img[1]
${btn_sites_issue}                      xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[4]/div[10]/div[1]/div[1]/div[1]



#Tab-Issue
${lbl_site_name}                        xpath://th[contains(text(),'Site Name')]
${lbl_department}                       xpath://th[contains(text(),'Department')]
${lbl_issue_due}                        xpath://th[contains(text(),'Issues Due')]
${lbl_issue_resolv}                     xpath://th[contains(text(),'Issues Resolved')]
${lbl_compl_rate}                       xpath://thead/tr[1]/th[6]
${link_site_issue}                      xpath://a[contains(text(),'Pasar Pagi')]



*** Keyword ***
Go to the Dashboard Sites
    Wait Until Element is Enabled                       ${link_dashboard}                       ${Delay}
    Click Element                                       ${link_dashboard}
    Wait Until Element is Enabled                       ${link_dsbrd_sites}                     ${Delay}
    Click Element                                       ${link_dsbrd_sites}
    Wait Until Element is Visible                       ${drpdwn_all_dept}                      ${Delay}

Verify Filter by Department is Available
    Page Should Contain Element                         ${drpdwn_all_dept}

Verify Filter by Sites is Available
    Page Should Contain Element                         ${drpdwn_all_sites}

Verify Filter by Period is Available
    Page Should Contain Element                         ${drpdwn_periods}

Verify Top Sites by Score is Displayed
    Wait Until Element is Enabled                       ${btn_asc_score}                        ${Delay}
    Page Should Contain Element                         ${btn_asc_score}


Filter by Department
    Wait Until Element is Visible                       ${drpdwn_all_dept}                      ${Delay}
    Click Element                                       ${drpdwn_all_dept}
    Wait Until Element is Enabled                       ${select_special_dept}                  ${Delay}
    Click Element                                       ${select_special_dept}

Verify Select Department is Successful
    Wait Until Element is Enabled                       ${select_special_dept_succes}           ${Delay}
    Page Should Contain Element                         ${select_special_dept_succes}

Filter by Sites
    Wait Until Element is Visible                       ${drpdwn_all_sites}                     ${Delay}
    Click Element                                       ${drpdwn_all_sites}
    Wait Until Element is Enabled                       ${select_special_sites}                 ${Delay}
    Click Element                                       ${select_special_sites}

Verify Select Site is Successful
    Wait Until Element is Enabled                       ${select_special_site_succes}           ${Delay}
    Page Should Contain Element                         ${select_special_site_succes}


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
    Wait Until Element is Enabled                       ${drpdwn_startdate}                     ${Delay}
    Click Element                                       ${drpdwn_startdate}
    Wait Until Element is Enabled                       ${select_startdate}                     ${Delay}
    Click Element                                       ${select_startdate}
Select End Date
    Wait Until Element is Enabled                       ${select_enddate}                       ${Delay}
    Click Element                                       ${select_enddate}

Click Flag Tab
    Wait Until Element is Enabled                       ${tab_flag}                             ${Delay}
    Click Element                                       ${tab_flag}

Click View By Green
    Wait Until Element is Visible                       ${drpdwn_view_by}                       ${Delay}
    Click Element                                       ${drpdwn_view_by}
    Wait Until Element is Enabled                       ${select_green}                         ${Delay}
    Click Element                                       ${select_green}
Verify Select Green Flag is Successful
    Wait Until Element is Enabled                       ${select_green_success}                 ${Delay}
    Page Should Contain Element                         ${select_green_success}


Click View By Yellow
    Wait Until Element is Visible                       ${drpdwn_view_by}                       ${Delay}
    Click Element                                       ${drpdwn_view_by}
    Wait Until Element is Enabled                       ${select_yellow}                        ${Delay}
    Click Element                                       ${select_yellow}
Verify Select Yellow Flag is Successful
    Wait Until Element is Enabled                       ${select_yellow_success}                ${Delay}
    Page Should Contain Element                         ${select_yellow_success}

Click View By Red
    Wait Until Element is Visible                       ${drpdwn_view_by}                       ${Delay}
    Click Element                                       ${drpdwn_view_by}
    Wait Until Element is Enabled                       ${select_red}                           ${Delay}
    Click Element                                       ${select_red}
Verify Select Red Flag is Successful
    Wait Until Element is Enabled                       ${select_red_success}                   ${Delay}
    Page Should Contain Element                         ${select_red_success}


Click Download csv
    Wait Until Element is Enabled                       ${btn_dwnld_csv}                        ${Delay}
    Click Element                                       ${btn_dwnld_csv}

Click Report Tab
    Wait Until Element is Enabled                       ${tab_report}                           ${Delay}
    Click Element                                       ${tab_report}

Verify Option Icon is Available
    Wait Until Element is Enabled                       ${icon_option}                          ${Delay}
    Page Should Contain Element                         ${icon_option}


Click Issue Report
    Wait Until Element is Enabled                       ${tab_issue}                            ${Delay}
    Click Element                                       ${tab_issue}

Verify Tabel Displayed Properly
    Wait Until Element is Enabled                       ${lbl_issue_resolv}                     ${Delay}
    Page Should Contain Element                         ${lbl_issue_resolv}

Delay
    Sleep                                               3




















