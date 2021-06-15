*** Settings ***
Library             Selenium2Library
Library             String
Resource            ../Resources/login.robot

*** Variables ***
#Login Page
${BROWSER}                              headlessfirefox
${SERVER}                               ${staging}
${pre_admin}                            https://pre-audit-release.web.app/
${staging}                              https://staging.hellonimbly.com/
${web_admin}                            https://admin.hellonimbly.com/
${beta}                                 https://beta.hellonimbly.com/
${EMAIL}                                machruk@hellonimbly.com
${superadmin}                           qaqc.superadm@gmail.com
${admin}                                qaqc.adm@gmail.com
${auditor}                              qaqc.auditor@gmail.com
${supervisor}                           qaqc.spv@gmail.com
${account_holder}                       qaqc.accholder@gmail.com
${PASSWORD}                             123456
${password_qa}                          helloNimbly
${INVALIDEMAIL}                         machruk@hellonimbly
${INVALIDPASSWORD}                      1234567
${button_forgot_password}               xpath://span[@class='forgot-password']
${Delay}                                60


#Main Menu
${link_dashboard}                       id:menu_dsbrd
${link_issue_tracker}                   id:menu_issue_tracker
${link_admin}                           id:menu_adm
${link_setting}                         id:menu_settings
${link_language}                        id:menu_language
${link_help}                            id:menu_help
${button_logout}                        id:menu_logout
${icon_burger}                          id:burger_bar
${icon_dashboard_lock}                  id:

#Dashboard Menus
${link_dsbrd_overview}                  id:menu_dsbrd_overview
${link_dsbrd_trends}                    id:menu_dsbrd_trends
${link_dsbrd_sites}                     id:menu_dsbrd_sites
${link_dsbrd_issues}                    id:menu_dsbrd_issues
${link_dsbrd_users}                     id:menu_dsbrd_users
${link_dsbrd_inventory}                 id:menu_dsbrd_inventory
${link_dsbrd_sitelowstocks}             id:menu_dsbrd_low_stocks
${link_dsbrd_salescalc}                 id:menu_dsbrd_sales_calc
${link_dsbrd_competitoranalys}          xpath://span[contains(text(),'Competitor Analysis')]



#Issue Tracker Menus



#Admin Menus
#Manage
${link_manage}                          id:menu_adm_manage
#Departments Group
${link_departments_group}               id:menu_dept_group
#Departments
${link_departments}                     id:menu_dept
#Questionnaires
${link_questionnaires}                  id:menu_questionnaires
#Auditors
${link_auditors}                        id:menu_auditors
#Sites
${link_sites}                           id:menu_sites
#Inventory
${link_inventory}                       id:menu_inventory
#Purchase Order
${link_purchase_order}                  id:menu_purchase_order
#Non-Operational Days
${link_non_operational_days}            id:menu_non_opr_days
#Download Manager
${link_download_manager}                id:menu_download_mng
#Journey Plan
${link_journey_plan}                    xpath://span[contains(text(),'Journey Plan')]
#Competitor Analysis
${link_competitor_analysis}             xpath://span[contains(text(),'Competitor Analysis')]

#Sales Target
${link_sales_target}                    id:menu_adm_sales_target
#Promotions
${link_promotions}                      id:menu_adm_promo
#Broadcast
${link_broadcast}                       id:menu_adm_brdcast



#Setting Menus

#common
${button_choose_file}                   id:file

#special title
${special_site}                         Special AutoSite
${special_dept_name}                    Special AutoDepartment
${special_auditor}                      Special AutoAuditor
${special_questionnaire}                Special AutoQuestionnaire
${special_user}                         machruk



*** Keywords ***
Open Browser to Login Page
        Open Browser                                ${SERVER}                                   ${BROWSER}
        Maximize Browser Window
        Valid Login

Open Browser to Admin Menu
        Open Browser                                ${SERVER}                                   ${BROWSER}
        Maximize Browser Window
        Valid Login
        Wait Until Element is Enabled               ${link_admin}                               ${Delay}
        Click Element                               ${link_admin}

Open Browser to Manage Menu
        Open Browser                                ${SERVER}                                   ${BROWSER}
        Maximize Browser Window
        Valid Login
        Wait Until Element is Enabled               ${link_admin}                               ${Delay}
        Click Element                               ${link_admin}
        Wait Until Element is Enabled               ${link_manage}                              ${Delay}
        Click Element                               ${link_manage}

