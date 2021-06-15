*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-downloadmngr.robot
Suite Setup             Open Browser to Manage Menu



*** Test Cases ***
Go to Download Manager
        Go to Download Manager



Verify "Download Manager" page is displayed correctly
        Verify Filter by Report is Available
        Verify Filter by Department is Available
        Verify Filter by Site is Available
        Verify Filter by Auditor is Available
        Verify Date Range is Available
        Verify "Search" button is available
        Verify "Download Activity" button is available


*** Keywords ***
Verify Filter by Report is Available
        Wait Until Element is Enabled               ${dropdown_report_download}                 ${Delay}
        Page Should Contain Element                 ${dropdown_report_download}
Verify Filter by Department is Available
        Page Should Contain Element                 ${dropdown_departmen_download}
Verify Filter by Site is Available
        Page Should Contain Element                 ${dropdown_site_download}
Verify Filter by Auditor is Available
        Page Should Contain Element                 ${dropdown_auditor_download}
Verify Date Range is Available
        Page Should Contain Element                 ${dropdown_stardate_download}
        Page Should Contain Element                 ${dropdown_enddate_download}
Verify "Search" button is available
        Page Should Contain Element                 ${button_search_download}
Verify "Download Activity" button is available
        Page Should Contain Element                 ${button_activity_download}




Verify "Download Manager" page is displayed correctly
        Verify Filter by Report is Available
        Verify Filter by Department is Available
        Verify Filter by Site is Available
        Verify Filter by Auditor is Available
        Verify Date Range is Available
        Verify "Search" button is available
        Verify "Download Activity" button is available