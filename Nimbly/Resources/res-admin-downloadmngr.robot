*** Variables ***
#Download Manager
${dropdown_report_download}             id:drpdwn_report
${dropdown_departmen_download}          id:drpdwn_dept_report
${dropdown_site_download}               id:drpdwn_site_report
${dropdown_auditor_download}            id:drpdwn_auditor_report
${dropdown_stardate_download}           id:drpdwn_start_date_report
${dropdown_enddate_download}            id:drpdwn_end_date_report
${button_search_download}               id:btn_search_report
${button_activity_download}             id:btn_dwnld_act
${button_export_all_download}           id:btn-exp-all
${button_report_download}               id:btn_dwnld_report

${tab_completed_report}                 id:tab_completed_report
${tab_missed_report}                    id:tab_missed_report
${tab_issues_report}                    id:tab_issues

${select_completed_report_download}     xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Completed Report')]
${select_missed_report_download}        xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Missed Report')]
${select_issue_download}                xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Issue')]
${select_department_download}           xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${all_dept_download}')]
${select_dept_missedreport}             xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${dept_download}')]
${select_site_download}                 xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${site_download}')]
${select_auditor_download}              xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'${special_user}')]
${select_stardate_download}             xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//table[1]//tbody[1]//tr[1]//td[contains(text(),'1')]
${select_enddate_download}              xpath://body//div[@id='root']//div//div//div//div//div//div[3]//div[1]//table[1]//tbody[1]//tr[5]//td[contains(text(),'29')]
${verify_exporting}                     xpath://span[contains(text(),'EXPORTING...')]
${verify_tab_missed_report}             xpath://div[contains(text(),'Missed Reports')]
${verify_tab_completed_report}          xpath://div[contains(text(),'Completed Reports')]
${verify_tab_issue}                     xpath://div[contains(text(),'Issues')]
${Verify_dept_table}                    xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div[1]//div[contains(text(),'${all_dept_download}')]
${Verify_dept_special}                  xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div[1]//div[contains(text(),'${dept_download}')]
${Verify_site_table}                    xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div[1]//div[contains(text(),'${site_download}')]
${prev_month}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/*[1]
${next_month}                           //body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/*[1]

${dept_download}                        Special AutoDepartment
${all_dept_download}                    All Department
${site_download}                        Special AutoSite
${no_issue_found}                       xpath://span[contains(text(),'No issues found')]



*** Keyword ***
Delay
        Sleep                                       5
Go to Download Manager
        Wait Until Element is Enabled               ${link_download_manager}                    ${Delay}
        Click Element                               ${link_download_manager}

Filter by Completed Report
        Wait Until ELement is Enabled               ${dropdown_report_download}                 ${Delay}
        Click Element                               ${dropdown_report_download}
        Wait Until Element is Enabled               ${select_completed_report_download}         ${Delay}
        Click Element                               ${select_completed_report_download}

Filter by Missed Report
        Wait Until ELement is Enabled               ${dropdown_report_download}                 ${Delay}
        Click Element                               ${dropdown_report_download}
        Wait Until Element is Enabled               ${select_missed_report_download}            ${Delay}
        Click Element                               ${select_missed_report_download}

Filter by Issue
        Wait Until ELement is Enabled               ${dropdown_report_download}                 ${Delay}
        Click Element                               ${dropdown_report_download}
        Wait Until Element is Enabled               ${select_issue_download}                    ${Delay}
        Click Element                               ${select_issue_download}

Filter by Department
        Wait Until ELement is Enabled               ${dropdown_departmen_download}              ${Delay}
        Click Element                               ${dropdown_departmen_download}
        Wait Until Element is Enabled               ${select_department_download}               ${Delay}
        Click Element                               ${select_department_download}

Filter by Department missed report
        Wait Until ELement is Enabled               ${dropdown_departmen_download}              ${Delay}
        Click Element                               ${dropdown_departmen_download}
        Wait Until Element is Enabled               ${select_dept_missedreport}                 ${Delay}
        Click Element                               ${select_dept_missedreport}

Filter by Sites
        Wait Until ELement is Enabled               ${dropdown_site_download}                   ${Delay}
        Click Element                               ${dropdown_site_download}
        Wait Until Element is Enabled               ${select_site_download}                     ${Delay}
        Click Element                               ${select_site_download}

Filter by Auditor
        Wait Until ELement is Enabled               ${dropdown_auditor_download}                ${Delay}
        Click Element                               ${dropdown_auditor_download}
        Wait Until Element is Enabled               ${select_auditor_download}                  ${Delay}
        Click Element                               ${select_auditor_download}
Select Prev Month
        Wait Until Element is Enabled               ${prev_month}                               ${Delay}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
        Click Element                               ${prev_month}
Select Next Month
        Wait Until Element is Enabled               ${next_month}                               ${Delay}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
        Click Element                               ${next_month}
Select Star Date
        Wait Until Element is Enabled               ${dropdown_stardate_download}               ${Delay}
        Click Element                               ${dropdown_stardate_download}
        Select Prev Month
        Wait Until Element is Enabled               ${select_stardate_download}                 ${Delay}
        Click Element                               ${select_stardate_download}

Select End Date
        Wait Until Element is Enabled               ${dropdown_enddate_download}                ${Delay}
        Click Element                               ${dropdown_enddate_download}
        Select Next Month
        Wait Until Element is Enabled               ${select_enddate_download}                  ${Delay}
        Click Element                               ${select_enddate_download}

Click Search Button
        Wait Until Element is Enabled               ${button_search_download}                   ${Delay}
        Click Element                               ${button_search_download}

Click Download Activity
        Wait Until Element is Enabled               ${button_activity_download}                 ${Delay}
        Click Element                               ${button_activity_download}

Click Export All
        Wait Until Element is Enabled               ${button_export_all_download}               ${Delay}
        Click Element                               ${button_export_all_download}

Click Download Report
        Wait Until Element is Enabled               ${button_report_download}                   ${Delay}
        Click Element                               ${button_report_download}

Verify Completed Report Founds
        Wait Until Element is Enabled               ${button_export_all_download}               ${Delay}
        Page Should Contain Element                 ${button_export_all_download}

Verify "Export Started" Message is Displayed
        Wait Until Page Contains                    Export started. Please wait while we're creating a zip file for you.     ${Delay}
        Page Should Contain                         Export started. Please wait while we're creating a zip file for you.
Verify whether being directed to the "completed reports" tab
        Wait Until Element is Enabled               ${verify_tab_completed_report}              ${Delay}
        Page Should Contain Element                 ${verify_tab_completed_report}
Verify whether the "completed reports" is being exported
        Wait Until Element is Enabled               ${Verify_dept_table}                        ${Delay}
        Page Should Contain Element                 ${Verify_dept_table}
        #Wait Until Element is Enabled               ${Verify_site_table}                         ${Delay}
        #Page Should Contain Element                 ${Verify_site_table}
Verify whether being directed to the "missed reports" tab
        Wait Until Element is Enabled               ${verify_tab_missed_report}                 ${Delay}
        Page Should Contain Element                 ${verify_tab_missed_report}

Verify whether the "missed reports" is being exported
        Wait Until Element is Enabled               ${Verify_dept_special}                      ${Delay}
        Page Should Contain Element                 ${Verify_dept_special}
        #Wait Until Element is Enabled               ${Verify_site_table}                         ${Delay}
        #Page Should Contain Element                 ${Verify_site_table}

Verify whether being directed to the "issue reports" tab
        Wait Until Element is Enabled               ${verify_tab_issue}                         ${Delay}
        Page Should Contain Element                 ${verify_tab_issue}

Verify whether the "issue reports" is being exported
        Wait Until Element is Enabled               ${Verify_dept_table}                      ${Delay}
        Page Should Contain Element                 ${Verify_dept_table}

Verify "Export Started" Message is Displayed (Issue Report)
        Wait Until Page Contains                    Export started. Please wait while we're creating a csv file for you.     ${Delay}
        Page Should Contain                         Export started. Please wait while we're creating a csv file for you.