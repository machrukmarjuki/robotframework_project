*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot

*** Variables ***

#Overview
${drpdwn_dept}                              xpath://div[contains(text(),'All Departments')]
${drpdwn_sites}                             xpath://div[contains(text(),'All Sites')]
${drpdwn_periods}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/*[1]
${drpdwn_last_week}                         xpath://div[contains(text(),'Last Week')]
${drpdwn_7days}                             xpath://div[contains(text(),'Last 7 Days')]
${drpdwn_28days}                            xpath://div[contains(text(),'Last 28 Days')]
${drpdwn_30days}                            xpath://div[contains(text(),'Last 30 Days')]
${drpdwn_90days}                            xpath://div[contains(text(),'Last 90 Days')]
${drpdwn_6months}                           xpath://div[contains(text(),'Last 6 Months')]
${drpdwn_12months}                          xpath://div[contains(text(),'Last 12 Months')]
${drpdwn_lastyear}                          xpath://div[contains(text(),'Last Year')]
${drpdwn_month_todate}                      xpath://div[contains(text(),'Month-to-date')]
${drpdwn_custom}                            xpath://div[contains(text(),'Custom')]

${select_special_dept}                      xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${select_special_sites}                     xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_site}')]
${select_period_thisweek}                   xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'This Week')]
${select_period_lastweek}                   xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last Week')]
${select_period_last7days}                  xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 7 Days')]
${select_period_last28days}                 xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 28 Days')]
${select_period_last30days}                 xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 30 Days')]
${select_period_last90days}                 xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 90 Days')]
${select_period_last6months}                xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 6 Months')]
${select_period_last12months}               xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last 12 Months')]
${select_period_lastyear}                   xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Last Year')]
${select_period_monthtodate}                xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Month-to-date')]
${select_period_custom}                     xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Custom')]
${drpdwn_startdate}                         xpath://input[@id='analytics_start_date']
${select_startdate}                         xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[1]
${select_prev_month}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/*[1]
${drpdwn_enddate}                           xpath://input[@id='analytics_end_date']
${select_enddate}                           xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/table[1]/tbody[1]/tr[4]/td[7]

#Report Overview
${tab_scheduled}                            xpath://button[contains(text(),'Scheduled')]
${tab_adhoc}                                xpath://button[contains(text(),'Ad-Hoc')]
${chart_adhoc}                              xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[3]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/*[1]
${btn_see_all}                              xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[3]/div[3]/div[3]/button[1]/div[1]
${link_green_completedreport}               xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[3]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/svg[1]/g[2]/g[1]/rect[1]
${link_red_missedreport}                    xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[3]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/svg[1]/g[2]/g[2]/rect[1]

#Issues Overview
${link_blue_issueresolved}                  xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[5]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/svg[1]/g[2]/g[1]/rect[1]
${btn_seeall_green}                         xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[5]/div[2]/div[1]/div[3]/button[1]/div[1]
${btn_seeall_red}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[5]/div[2]/div[2]/div[3]/button[1]/div[1]
${btn_seeall_yellow}                        xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[5]/div[2]/div[3]/div[3]/button[1]/div[1]




*** Keywords ***
Go to the Dashboard Overview
    Wait Until Element is Enabled                       ${link_dashboard}                       ${Delay}
    Click Element                                       ${link_dashboard}
    Wait Until Element is Enabled                       ${link_dsbrd_overview}                  ${Delay}
    Click Element                                       ${link_dsbrd_overview}
    Wait Until Element is Enabled                       ${drpdwn_dept}                          ${Delay}

Verify Filter by Department is Available
    Wait Until Element is Enabled                       ${drpdwn_dept}                          ${Delay}
    Page Should Contain Element                         ${drpdwn_dept}

Verify Filter by Sites is Available
    Page Should Contain Element                         ${drpdwn_sites}

Verify Filter by Period is Available
    Page Should Contain Element                         ${drpdwn_periods}

Filter by Department
    Wait Until Element is Enabled                       ${drpdwn_dept}                          ${Delay}
    Click Element                                       ${drpdwn_dept}
    Wait Until Element is Enabled                       ${select_special_dept}                  ${Delay}
    Click Element                                       ${select_special_dept}
Filter by Sites
    Wait Until Element is Enabled                       ${drpdwn_sites}                         ${Delay}
    Click Element                                       ${drpdwn_sites}
    Wait Until Element is Enabled                       ${select_special_sites}                 ${Delay}
    Click Element                                       ${select_special_sites}
Filter by This Week
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_period_thisweek}               ${Delay}
    Click Element                                       ${select_period_thisweek}
    Delay
Filter by Last Week
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_period_lastweek}               ${Delay}
    Click Element                                       ${select_period_lastweek}
    Delay
Filter by Last 7 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_period_last7days}              ${Delay}
    Click Element                                       ${select_period_last7days}
    Delay
Filter by Last 28 Days
    Wait Until Element is Enabled                       ${drpdwn_7days}                         ${Delay}
    Click Element                                       ${drpdwn_7days}
    Wait Until Element is Enabled                       ${select_period_last28days}             ${Delay}
    Click Element                                       ${select_period_last28days}
    Delay
Filter by Last 30 Days
    Wait Until Element is Visible                       ${drpdwn_28days}                        ${Delay}
    Click Element                                       ${drpdwn_28days}
    Wait Until Element is Visible                       ${select_period_last30days}             ${Delay}
    Click Element                                       ${select_period_last30days}
    Delay
Filter by Last 90 Days
    Wait Until Element is Visible                       ${drpdwn_30days}                        ${Delay}
    Click Element                                       ${drpdwn_30days}
    Wait Until Element is Visible                       ${select_period_last90days}             ${Delay}
    Click Element                                       ${select_period_last90days}
    Delay
Filter by Last 6 Months
    Wait Until Element is Enabled                       ${drpdwn_90days}                        ${Delay}
    Click Element                                       ${drpdwn_90days}
    Wait Until Element is Enabled                       ${select_period_last6months}            ${Delay}
    Click Element                                       ${select_period_last6months}
    Delay
Filter by Last 12 Months
    Wait Until Element is Enabled                       ${drpdwn_6months}                       ${Delay}
    Click Element                                       ${drpdwn_6months}
    Wait Until Element is Enabled                       ${select_period_last12months}           ${Delay}
    Click Element                                       ${select_period_last12months}
    Delay
Filter by Last Year
    Wait Until Element is Enabled                       ${drpdwn_12months}                      ${Delay}
    Click Element                                       ${drpdwn_12months}
    Wait Until Element is Enabled                       ${select_period_lastyear}               ${Delay}
    Click Element                                       ${select_period_lastyear}
    Delay
Filter by Month to Date
    Wait Until Element is Enabled                       ${drpdwn_lastyear}                      ${Delay}
    Click Element                                       ${drpdwn_lastyear}
    Wait Until Element is Enabled                       ${select_period_monthtodate}            ${Delay}
    Click Element                                       ${select_period_monthtodate}
    Delay
Filter by Custom Periods
    Wait Until Element is Enabled                       ${drpdwn_month_todate}                  ${Delay}
    Click Element                                       ${drpdwn_month_todate}
    Wait Until Element is Enabled                       ${select_period_custom}                 ${Delay}
    Click Element                                       ${select_period_custom}
    Delay
Select Start Date
    Wait Until Element is Enabled                       ${drpdwn_startdate}                     ${Delay}
    Click Element                                       ${drpdwn_startdate}
    Click Element                                       ${select_prev_month}
    Click Element                                       ${select_prev_month}
    Click Element                                       ${select_prev_month}
    Click Element                                       ${select_prev_month}
    Wait Until Element is Enabled                       ${select_startdate}                     ${Delay}
    Click Element                                       ${select_startdate}
Select End Date
    Wait Until Element is Enabled                       ${select_enddate}                       ${Delay}
    Click Element                                       ${select_enddate}

Click Scheduled Button
    Wait Until Element is Enabled                       ${tab_scheduled}                        ${Delay}
    Click Element                                       ${tab_scheduled}

Click Ad-Hoc Button
    Wait Until Element is Enabled                       ${tab_adhoc}                            ${Delay}
    Click Element                                       ${tab_adhoc}

Verify Adhoc Chart is displayed
    Wait Until Element is Enabled                       ${chart_adhoc}                          ${Delay}
    Page Should Contain Element                         ${chart_adhoc}

Click See All Green Flags
    Wait Until Element is Enabled                       ${btn_seeall_green}                     ${Delay}
    Click Element                                       ${btn_seeall_green}

Click See All Red Flags
    Wait Until Element is Enabled                       ${btn_seeall_red}                       ${Delay}
    Click Element                                       ${btn_seeall_red}

Click See All Yellow Flags
    Wait Until Element is Enabled                       ${btn_seeall_yellow}                    ${Delay}
    Click Element                                       ${btn_seeall_yellow}

Delay
    Sleep                                               6