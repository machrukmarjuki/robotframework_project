*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot

*** Variable ***
${drpdwn_all_dept}                      xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/*[1]
${select_special_dept}                  xpath://div[@class='select-editor__menu css-26l3qy-menu']//div[1]//div[contains(text(),'${special_dept_name}')]
${select_special_dept_succes}           xpath://div[contains(text(),'${special_dept_name}')]
${drpdwn_periods}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/*[1]
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
${prev_month}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/*[1]
${drpdwn_start_date}                    id:analytics_start_date
${select_startdate}                     xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[1]
${drpdwn_end_date}                      id:analytics_end_date
${select_enddate}                       xpath://body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/table[1]/tbody[1]/tr[4]/td[7]

${tab_red}                              xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/span[1]
${tab_yellow}                           xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/span[1]
${tab_redyellow}                        xpath://span[contains(text(),'Red + Yellow')]

#Red Tab
${link_red}                             Red Flag
#Yellow Tab
${link_yellow}                          Yellow Flag
#Red + Yellow Tab
${link_redyellow}                       Red + Yellow Flag

#Top Issues
${tab_by_flags}                         xpath://div[contains(text(),'Top Issues by Flags')]
${tab_from_quest}                       xpath://div[contains(text(),'Issues from Questions')]

#Top Issues by flags
${drpdwn_view_by}                       xpath://body/div[@id='root']/div[1]/div[1]/div[3]/div[2]/div[2]/div[2]/section[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]
${select_viewby_red}                    xpath://div[@class='select-issue__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Red')]
${select_viewby_yellow}                 xpath://div[@class='select-issue__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Yellow')]
${select_viewby_redyellow}              xpath://div[@class='select-issue__menu css-26l3qy-menu']//div[1]//div[contains(text(),'Red + Yellow')]
${btn_asc_quest}                        xpath:
${btn_desc_quest}                       xpath:
${btn_asc_categ}                        xpath:
${btn_desc_categ}                       xpath:
${btn_asc_flag}                         xpath:
${btn_desc_flag}                        xpath:
${icon_detail}                          xpath://tbody/tr[1]/td[6]/div[1]/img[1]
${btn_dwld}                             xpath://button[contains(text(),'Download .csv')]

#Issues from Question
${btn_asc_rate}                         xpath:
${btn_desc_rate}                        xpath:
${icon_detail_quest}                    xpath://tbody/tr[1]/td[6]/div[1]/img[1]
${btn_view_detail}                      xpath://div[contains(text(),'View Details')]
