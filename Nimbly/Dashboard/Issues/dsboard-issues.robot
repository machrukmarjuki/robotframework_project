*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-dashboard-issues.robot
Suite Setup             Open Browser to Login Page
#Suite Teardown          Close Browser

*** Test Cases ***
Go to the Dashboard Issues
    Go to the Dashboard Issues
Parallel Testing
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    #Verify Select Department is Successful
    #Filter by Last Week
    #Verify Select "Last Week" is Successful
    Filter by Last 7 Days
    Verify Select "Last 7 Days" is Successful
    Filter by Last 28 Days
    Verify Select "Last 28 Days" is Successful
    Filter by Last 90 Days
    Verify Select "Last 90 Days" is Successful
    Filter by Last Year
    Verify Select "Last Year" is Successful
    Filter by Last 12 Months
    Verify Select "Last 12 Months" is Successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click Red Flag Tab
    Verify Red Flag Graphic displayed
    Click Yellow Flag Tab
    Verify Yellow Flag Graphic displayed
    Verify Select "Last 6 Months" is Successful
    #Click View by Red + Yellow
    #Click View by Yellow
    #Click View by Red
    #Click View by Red + Yellow
    #Click Issues From Questions
    #Verify Issues From Questions Tab Displayed
    #Click Download csv




*** Keywords ***
Go to the Dashboard Issues
    Wait Until Element is Enabled                       ${link_dashboard}                       ${Delay}
    Click Element                                       ${link_dashboard}
    Wait Until Element is Enabled                       ${link_dsbrd_issues}                    ${Delay}
    Click Element                                       ${link_dsbrd_issues}
    Delay

Verify Filter by Department is Available
    Wait Until Element is Enabled                       ${drpdwn_all_dept}                       ${Delay}
    Page Should Contain Element                         ${drpdwn_all_dept}

Verify Filter by Periods is Available
    Page Should Contain Element                         ${drpdwn_periods}

Filter by Department
    Wait Until Element is Visible                       ${drpdwn_all_dept}                      ${Delay}
    Click Element                                       ${drpdwn_all_dept}
    Delay
    Wait Until Element is Enabled                       ${select_special_dept}                  ${Delay}
    Click Element                                       ${select_special_dept}

Verify Select Department is Successful
    Wait Until Element is Enabled                       ${select_special_dept_succes}           ${Delay}
    Page Should Contain Element                         ${select_special_dept_succes}


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
    Delay

Filter by Last 7 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_7_days}                        ${Delay}
    Click Element                                       ${select_7_days}
Verify Select "Last 7 Days" is Successful
    Wait Until Element is Enabled                       ${select_7days_success}                 ${Delay}
    Page Should Contain Element                         ${select_7days_success}
    Delay

Filter by Last 28 Days
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_28_days}                       ${Delay}
    Click Element                                       ${select_28_days}
Verify Select "Last 28 Days" is Successful
    Wait Until Element is Enabled                       ${select_28days_success}                ${Delay}
    Page Should Contain Element                         ${select_28days_success}
    Delay

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
    Delay

Filter by Last 6 Months
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_6_months}                      ${Delay}
    Click Element                                       ${select_6_months}
Verify Select "Last 6 Months" is Successful
    Wait Until Element is Enabled                       ${select_6months_success}               ${Delay}
    Page Should Contain Element                         ${select_6months_success}
    Delay
Filter by Last 12 Months
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_12_months}                     ${Delay}
    Click Element                                       ${select_12_months}
Verify Select "Last 12 Months" is Successful
    Wait Until Element is Enabled                       ${select_12months_success}              ${Delay}
    Page Should Contain Element                         ${select_12months_success}
    Delay
Filter by Last Year
    Wait Until Element is Enabled                       ${drpdwn_periods}                       ${Delay}
    Click Element                                       ${drpdwn_periods}
    Wait Until Element is Enabled                       ${select_last_year}                     ${Delay}
    Click Element                                       ${select_last_year}
Verify Select "Last Year" is Successful
    Wait Until Element is Enabled                       ${select_lastyear_success}              ${Delay}
    Page Should Contain Element                         ${select_lastyear_success}
    Delay

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

Click Red Flag Tab
    Wait Until Element is Enabled                       ${tab_red}                              ${Delay}
    Click Element                                       ${tab_red}
Verify Red Flag Graphic displayed
    Wait Until Page Contains                            ${link_red}                           ${Delay}
    Page Should Contain                                 ${link_red}
    Delay

Click Yellow Flag Tab
    Wait Until Element is Enabled                       ${tab_yellow}                           ${Delay}
    Click Element                                       ${tab_yellow}
Verify Yellow Flag Graphic displayed
    Wait Until Page Contains                            ${link_yellow}                          ${Delay}
    Page Should Contain                                 ${link_yellow}
    Delay

Click Red + Yellow Flag Tab
    Wait Until Page Contains                            ${tab_redyellow}                        ${Delay}
    Click Element                                       ${tab_redyellow}
Verify Red + Yellow Flag Graphic displayed
    Wait Until Page Contains                            ${link_redyellow}                       ${Delay}
    Page Should Contain                                ${link_redyellow}

Click Top Issue by Flags
    Wait Until Element is Enabled                       ${tab_by_flags}                         ${Delay}
    Click Element                                       ${tab_by_flags}
Click Issues From Questions
    Wait Until Element is Enabled                       ${tab_from_quest}                       ${Delay}
    Click Element                                       ${tab_from_quest}
Verify Issues From Questions Tab Displayed
    Wait Until Element is Enabled                       ${icon_detail_quest}                    ${Delay}
    Delay

Click Download csv
    Wait Until Element is Enabled                       ${btn_dwld}                             ${Delay}
    Click Element                                       ${btn_dwld}
Scroll to View By
    Scroll Element Into View                            ${drpdwn_view_by}
Click View by Red
    Wait Until Element is Enabled                       ${drpdwn_view_by}                       ${Delay}
    Click Element                                       ${drpdwn_view_by}
    Wait Until Element is Enabled                       ${select_viewby_red}                    ${Delay}
    Click Element                                       ${select_viewby_red}
    Delay
Click View by Yellow
    Scroll to View By
    Wait Until Element is Enabled                       ${drpdwn_view_by}                       ${Delay}
    Click Element                                       ${drpdwn_view_by}
    Wait Until Element is Enabled                       ${select_viewby_yellow}                 ${Delay}
    Click Element                                       ${select_viewby_yellow}
    Delay
Click View by Red + Yellow
    Scroll to View By
    Wait Until Element is Enabled                       ${drpdwn_view_by}                       ${Delay}
    Click Element                                       ${drpdwn_view_by}
    Wait Until Element is Enabled                       ${select_viewby_redyellow}              ${Delay}
    Click Element                                       ${select_viewby_redyellow}
    Delay

Delay
    Sleep                                               5


#Test Case Templates
Verify Dashboard Issues Displayed Properly
    Go to the Dashboard Issues
    Verify Filter by Department is Available
    Verify Filter by Periods is Available
    Delay

Verify Filter by Department is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful

Verify Filter by "Last Week" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last Week
    Verify Select "Last Week" is Successful

Verify Filter by "Last 7 Days" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 7 Days
    Verify Select "Last 7 Days" is Successful

Verify Filter by "Last 28 Days" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 28 Days
    Verify Select "Last 28 Days" is Successful

Verify Filter by "Last 30 Days" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 30 Days
    Verify Select "Last 30 Days" is Successful

Verify Filter by "Last 90 Days" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 90 Days
    Verify Select "Last 90 Days" is Successful

Verify Filter by "Last 6 Months" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful

Verify Filter by "Last 12 Months" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 12 Months
    Verify Select "Last 12 Months" is Successful

Verify Filter by "Last Year" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last Year
    Verify Select "Last Year" is Successful

Verify Filter by "Month to Date" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Month to Date
    Verify Select "Month to Date" is Successful

Verify Filter by "Custom Periods" is successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Custom Periods
    Verify Select "Custom" is Successful

Verify Red Flag Tab Displayed Properly
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Click Red Flag Tab
    Verify Red Flag Graphic displayed

Verify Yellow Flag Tab Displayed Properly
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Click Yellow Flag Tab
    Verify Yellow Flag Graphic displayed

Verify Red + Yellow Flag Tab Displayed Properly
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Click Red + Yellow Flag Tab
    Verify Red + Yellow Flag Graphic displayed

Verify View by Red Flag is Successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click View by Red

Verify View by Yellow Flag is Successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Verify Select "Last 6 Months" is Successful
    Click View by Yellow

Verify View by Red + Yellow Flag is Successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Verify Select "Last 6 Months" is Successful
    Click View by Red + Yellow

Verify Download csv is Successful
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Verify Select "Last 6 Months" is Successful
    Click Download csv

Parallel Testing
    Verify Dashboard Issues Displayed Properly
    Filter by Department
    #Verify Select Department is Successful
    Filter by Last Week
    Verify Select "Last Week" is Successful
    Filter by Last 7 Days
    Verify Select "Last 7 Days" is Successful
    Filter by Last 28 Days
    Verify Select "Last 28 Days" is Successful
    Filter by Last 90 Days
    Verify Select "Last 90 Days" is Successful
    Filter by Last Year
    Verify Select "Last Year" is Successful
    Filter by Last 12 Months
    Verify Select "Last 12 Months" is Successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click Red Flag Tab
    Verify Red Flag Graphic displayed
    Click Yellow Flag Tab
    Verify Yellow Flag Graphic displayed
    Verify Select "Last 6 Months" is Successful
    #Click View by Red + Yellow
    #Click View by Yellow
    #Click View by Red
    #Click View by Red + Yellow
    #Click Issues From Questions
    #Verify Issues From Questions Tab Displayed
    #Click Download csv



