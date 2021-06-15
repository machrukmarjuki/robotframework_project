*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-competitor.robot
Suite Setup             Open Browser to Manage Menu
Suite Teardown          Close Browser

Documentation           Verify Create Company Feature is working properly



*** Test Cases ***
Go to Competitor Page
        Go to Competitor Page

Verify "Competitor" page rendered correctly
        Verify columns labeled "Company Name", "Products", "Promos", "Strength", and "Weakness" are available
        Verify "View Details" button is available
        Verify Next, Previous, First and Last page on pagination work properly
Verify "Active" tab is the default page that is open
        Verify "Create Company" button is available
        Verify "Bulk Upload Company" button is available
        Verify "Products" tab is available
        Verify "Promotions" tab is available
        Verify "Export" tab is available

Verify Create New Company is successfully
        Verify Create New Company is successfully

Verify Edit Company is successfully
        Verify Edit Company is successfully


*** Keywords ***


Click Create Company
        Wait Until Element is Enabled               ${button_create_company}                    ${Delay}
        Click Element                               ${button_create_company}
Choose Company Logo
        Wait Until Element is Enabled               ${button_change_logo_company}               ${Delay}
        Choose File                                 ${button_change_logo_company}               ${choose_company_logo}
Input Company Name
        ${RANDOM} =                                 Generate Random String                      2       [NUMBERS]
        Wait Until Element is Enabled               ${input_company_name}                       ${Delay}
        Input Text                                  ${input_company_name}                       ${company_name} ${RANDOM}
Input Company Description
        Wait Until Element is Enabled               ${input_company_description}                ${Delay}
        Input Text                                  ${input_company_description}                ${company_description}
Input Company Website
        Wait Until Element is Enabled               ${input_company_website}                    ${Delay}
        Input Text                                  ${input_company_website}                    ${company_website}
Input Company Established
        Wait Until Element is Enabled               ${input_company_established}                ${Delay}
        Input Text                                  ${input_company_established}                ${company_established}
Input Company Employee
        Wait Until Element is Enabled               ${input_no_employee}                        ${Delay}
        Input Text                                  ${input_no_employee}                        ${company_total_employee}
Input Company Strenght
        Wait Until Element is Enabled               ${input_company_strenght}                   ${Delay}
        Input Text                                  ${input_company_strenght}                   ${company_strenght}
        Press Keys                                  ${input_company_strenght}                   ENTER
Input Company Weakness
        Wait Until Element is Enabled               ${input_company_weakness}                   ${Delay}
        Input Text                                  ${input_company_weakness}                   ${company_weakness}
        Press Keys                                  ${input_company_weakness}                   ENTER
Click Save Company
        Wait Until Element is Enabled               ${button_save_company}                      ${Delay}
        Click Element                               ${button_save_company}
Verify Create Company Successful
        Wait Until Page Contains                    ${company_success_toast}                    ${Delay}
        Page Should Contain                         ${company_success_toast}

#Create Company
Verify "Change Logo" button is available
        Wait Until ELement is Enabled               ${button_change_logo_company}               ${Delay}
        Page Should Contain Element                 ${button_change_logo_company}
Verify "Company Name" field is available
        Wait Until ELement is Enabled               ${input_company_name}                       ${Delay}
        Page Should Contain Element                 ${input_company_name}
Verify "Description" field is available
        Wait Until ELement is Enabled               ${input_company_description}                ${Delay}
        Page Should Contain Element                 ${input_company_description}
Verify "Website" field is available
        Wait Until ELement is Enabled               ${input_company_website}                    ${Delay}
        Page Should Contain Element                 ${input_company_website}
Verify "Established" dropdown is available
        Wait Until ELement is Enabled               ${input_company_established}                ${Delay}
        Page Should Contain Element                 ${input_company_established}
Verify "No. of Employees" dropdown is available
        Wait Until ELement is Enabled               ${input_no_employee}                        ${Delay}
        Page Should Contain Element                 ${input_no_employee}
Verify "Strength" field is available
        Wait Until ELement is Enabled               ${input_company_strenght}                   ${Delay}
        Page Should Contain Element                 ${input_company_strenght}
Verify "Weakness" field is available
        Wait Until ELement is Enabled               ${input_company_weakness}                   ${Delay}
        Page Should Contain Element                 ${input_company_weakness}
Verify "Cancel" button is available
        Wait Until ELement is Enabled               ${button_cancel_company}                    ${Delay}
        Page Should Contain Element                 ${button_cancel_company}
Verify "Save" button is available
        Wait Until ELement is Enabled               ${button_save_company}                      ${Delay}
        Page Should Contain Element                 ${button_save_company}



Verify columns labeled "Company Name", "Products", "Promos", "Strength", and "Weakness" are available
        Wait Until ELement is Enabled               ${label_company_name}                       ${Delay}
        Page Should Contain Element                 ${label_product}
        Page Should Contain Element                 ${label_promos}
        Page Should Contain Element                 ${label_strength}
        Page Should Contain Element                 ${label_weakness}

Verify "View Details" button is available
        Wait Until Element is Enabled               ${button_view_detail_company}               ${Delay}
        Page Should Contain Element                 ${button_view_detail_company}
Verify Next, Previous, First and Last page on pagination work properly
        Wait Until ELement is Enabled               ${btn_page_1}                               ${Delay}
        Element Should Be Disabled                  ${btn_page_left}
        Page Should Contain Element                 ${btn_page_1}
        Page Should Contain Element                 ${btn_page_2}
        Page Should Contain Element                 ${btn_page_right}
        Click Element                               ${btn_page_2}
        Wait Until ELement is Enabled               ${btn_page_left}                            ${Delay}
        Element Should Be Enabled                   ${btn_page_left}

Verify "Create Company" button is available
        Wait Until Element is Enabled               ${button_create_company}                    ${Delay}
        Page Should Contain Element                 ${button_create_company}
Verify "Bulk Upload Company" button is available
        Wait Until Element is Enabled               ${button_bulk_upload_company}               ${Delay}
        Page Should Contain Element                 ${button_bulk_upload_company}
Verify "Products" tab is available
        Wait Until Element is Enabled               ${tab_products}                             ${Delay}
        Page Should Contain Element                 ${tab_products}
Verify "Promotions" tab is available
        Wait Until Element is Enabled               ${tab_promotions}                           ${Delay}
        Page Should Contain Element                 ${tab_promotions}
Verify "Export" tab is available
        Wait Until Element is Enabled               ${tab_export}                               ${Delay}
        Page Should Contain Element                 ${tab_export}




#Edit Company (waiting for "search" feature to test this)
Click Company Details
        Wait Until Element is Enabled               ${button_view_detail_company}               ${Delay}
        Click Element                               ${button_view_detail_company}

Edit Company Name
        ${RANDOM} =                                 Generate Random String                      2       [NUMBERS]
        Wait Until Element is Enabled               ${input_company_name}                       ${Delay}
        Input Text                                  ${input_company_name}                       ${company_name_edited} ${RANDOM}
Edit Company Description
        Wait Until Element is Enabled               ${input_company_description}                ${Delay}
        Input Text                                  ${input_company_description}                ${company_descr_edited}
Edit Website
        Wait Until Element is Enabled               ${input_company_website}                    ${Delay}
        Input Text                                  ${input_company_website}                    ${company_website_edited}
Edit Established
        Wait Until Element is Enabled               ${input_company_established}                ${Delay}
        Input Text                                  ${input_company_established}                ${company_estab_edited}
Edit Total Employee
        Wait Until Element is Enabled               ${input_no_employee}                        ${Delay}
        Input Text                                  ${input_no_employee}                        ${company_total_empl_edited}
Edit Company Strenght
        Wait Until Element is Enabled               ${input_company_strenght}                   ${Delay}
        Input Text                                  ${input_company_strenght}                   ${company_strenght_edited}
        Press Keys                                  ${input_company_strenght}                   ENTER
Edit Company Weakness
        Wait Until Element is Enabled               ${input_company_weakness}                   ${Delay}
        Input Text                                  ${input_company_weakness}                   ${company_weakness_edited}
        Press Keys                                  ${input_company_weakness}                   ENTER

Verify Edit Company Successful
        Wait Until Page Contains                    ${company_edit_success}                     ${Delay}
        Page Should Contain                         ${company_edit_success}





#Scenarios
Verify "Competitor" page rendered correctly
        Verify columns labeled "Company Name", "Products", "Promos", "Strength", and "Weakness" are available
        Verify "View Details" button is available
        Verify Next, Previous, First and Last page on pagination work properly
Verify "Active" tab is the default page that is open
        Verify "Create Company" button is available
        Verify "Bulk Upload Company" button is available
        Verify "Products" tab is available
        Verify "Promotions" tab is available
        Verify "Export" tab is available

Verify "Create Company" Modal rendered correctly
        Verify "Change Logo" button is available
        Verify "Company Name" field is available
        Verify "Description" field is available
        Verify "Website" field is available
        Verify "Established" dropdown is available
        Verify "No. of Employees" dropdown is available
        Verify "Strength" field is available
        Verify "Weakness" field is available
        #Verify "Cancel" button is available
        Verify "Save" button is available

Verify Create New Company is successfully
        Click Create Company
        Verify "Create Company" Modal rendered correctly
        Input Company Name
        Input Company Description
        Input Company Website
        Input Company Established
        Input Company Employee
        Input Company Strenght
        Input Company Weakness
        Click Save Company
        Verify Create Company Successful


Verify "Edit Company" Modal rendered correctly
        Verify "Products" tab is available
        Verify "Promotions" tab is available
        Verify "Change Logo" button is available
        Verify "Company Name" field is available
        Verify "Description" field is available
        Verify "Website" field is available
        Verify "Established" dropdown is available
        Verify "No. of Employees" dropdown is available
        Verify "Strength" field is available
        Verify "Weakness" field is available
        #Verify "Cancel" button is available
        Verify "Save" button is available

Verify Edit Company is successfully
        Click Company Details
        Verify "Create Company" Modal rendered correctly
        Edit Company Name
        Edit Company Description
        Edit Website
        Edit Established
        Edit Total Employee
        Edit Company Strenght
        Edit Company Weakness
        Click Save Company
        Verify Edit Company Successful




