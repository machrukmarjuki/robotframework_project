*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-competitor.robot
Suite Setup             Open Browser to Manage Menu
Documentation           Verify "Promotion" Feature is working properly


*** Test Cases ***
Go to Competitor Page
        Go to Competitor Page
        Click Promotion Tab

Verify "Promotions" page rendered correctly
        Verify "Competitor" tab is available
        Verify "Products" tab is available
        Verify "Export" tab is available
        Verify "Add New Promotions" button is available
        Verify "Bulk Upload Promotion" button is available
        Verify columns labeled "Company Name", "Promo Title", "Type", "Detail" and "Period" are available
        Verify "View Details" button is available
        Verify Next, Previous, First and Last page on pagination work properly

Verify Add New Promotions with End Date is successfully
        Verify Add New Promotions with End Date is successfully

Verify Add New Promotions with Indefinite End Date is successfully
        Verify Add New Promotions with Indefinite End Date is successfully






*** Keywords ***
Click Promotion Tab
        Wait Until Element is Enabled               ${tab_promotions}                           ${Delay}
        Click Element                               ${tab_promotions}

Verify "Competitor" tab is available
        Wait Until ELement is Enabled               ${tab_competitor}                           ${Delay}
        Page Should Contain Element                 ${tab_competitor}
Verify "Products" tab is available
        Wait Until Element is Enabled               ${tab_products}                             ${Delay}
        Page Should Contain Element                 ${tab_products}
Verify "Export" tab is available
        Wait Until ELement is Enabled               ${tab_export}                               ${Delay}
        Page Should Contain Element                 ${tab_export}
Verify "Add New Promotions" button is available
        Wait Until ELement is Enabled               ${btn_add_new_promo}                        ${Delay}
        Page Should Contain Element                 ${btn_add_new_promo}
Verify "Bulk Upload Promotion" button is available
        Wait Until ELement is Enabled               ${btn_bulk_upload_promo}                    ${Delay}
        Page Should Contain Element                 ${btn_bulk_upload_promo}
Verify columns labeled "Company Name", "Promo Title", "Type", "Detail" and "Period" are available
        Wait Until ELement is Enabled               ${label_company_name}                       ${Delay}
        Page Should Contain Element                 ${label_promo_title}
        Page Should Contain Element                 ${label_type}
        Page Should Contain Element                 ${label_detail}
        Page Should Contain Element                 ${label_period}
Verify "View Details" button is available
        Wait Until Element is Enabled               ${button_view_detail_product}               ${Delay}
        Page Should Contain Element                 ${button_view_detail_product}
Verify Next, Previous, First and Last page on pagination work properly
        Wait Until ELement is Enabled               ${btn_page_1}                               ${Delay}
        Element Should Be Disabled                  ${btn_page_left}
        Page Should Contain Element                 ${btn_page_1}
        Page Should Contain Element                 ${btn_page_2}
        Page Should Contain Element                 ${btn_page_right}
        Click Element                               ${btn_page_2}
        Wait Until ELement is Enabled               ${btn_page_left}                            ${Delay}
        Element Should Be Enabled                   ${btn_page_left}


Click Add New Promotions
        Wait Until Element is Enabled               ${btn_add_new_promo}                        ${Delay}
        Click Element                               ${btn_add_new_promo}
Choose Promo Image
        Wait Until Element is Enabled               ${btn_change_promo_image}                   ${Delay}
        Choose File                                 ${btn_change_promo_image}                   ${choose_promo_image}
Select Company Name
        Wait Until Element is Enabled               ${drpdwn_company_promo}                     ${Delay}
        Click Element                               ${drpdwn_company_promo}
        Wait Until Element is Enabled               ${select_company_Promotion}                 ${Delay}
        Click Element                               ${select_company_Promotion}
Input Promo Title
        ${RANDOM} =                                 Generate Random String                      2   [NUMBERS]
        Wait Until Element is Enabled               ${input_promo_title}                        ${Delay}
        Input Text                                  ${input_promo_title}                        ${promo_title} ${RANDOM}
Select Promo Type
        Wait Until Element is Enabled               ${dropdown_promotion_type}                  ${Delay}
        Click Element                               ${dropdown_promotion_type}
        Wait Until Element is Enabled               ${select_promo_type}                        ${Delay}
        Click Element                               ${select_promo_type}
Input Display Location
        Wait Until Element is Enabled               ${input_display_location}                   ${Delay}
        Input Text                                  ${input_display_location}                   ${display_location}
Select Promo Start Date
        Wait Until Element is Enabled               ${dropdown_promotion_startdate}             ${Delay}
        Click Element                               ${dropdown_promotion_startdate}
        Wait Until Element is Enabled               ${select_promotion_startdate}               ${Delay}
        Click Element                               ${select_promotion_startdate}
Select Indefinite Toggle
        Wait Until Element is Enabled               ${toggle_indefinite}                        ${Delay}
        Click Element                               ${toggle_indefinite}
Select Promo End Date
        Wait Until Element is Enabled               ${dropdown_promotion_enddate}               ${Delay}
        Click Element                               ${dropdown_promotion_enddate}
        Wait Until Element is Enabled               ${arrow_next_month}                         ${Delay}
        Click Element                               ${arrow_next_month}
        Wait Until Element is Enabled               ${select_promotion_enddate}                 ${Delay}
        Click Element                               ${select_promotion_enddate}
Input Promotion Detail
        Wait Until Element is Enabled               ${input_promotion_detail}                   ${Delay}
        Input Text                                  ${input_promotion_detail}                   ${promotion_detail}
Click Save Promo
        Wait Until Element is Enabled               ${btn_save_promo}                           ${Delay}
        Click Element                               ${btn_save_promo}

Verify Add New Promotion Successful
        Wait Until Page Contains                    ${promotion_success_toast}                  ${Delay}
        Page Should Contain                         ${promotion_success_toast}

Verify "Change Promotion Image" button is available
        Wait Until Element is Enabled               ${btn_change_promo_image}                   ${Delay}
        Page Should Contain Element                 ${btn_change_promo_image}
Verify "Company Name" Dropdown is available
        Wait Until Element is Enabled               ${dropdown_choose_company}                  ${Delay}
        Page Should Contain Element                 ${dropdown_choose_company}
Verify "Promo Title" field is available
        Wait Until Element is Enabled               ${input_promo_title}                        ${Delay}
        Page Should Contain Element                 ${input_promo_title}
Verify "Type" Dropdown is available
        Wait Until Element is Enabled               ${dropdown_promotion_type}                  ${Delay}
        Page Should Contain Element                 ${dropdown_promotion_type}
Verify "Display Located" field is available
        Wait Until Element is Enabled               ${input_display_location}                   ${Delay}
        Page Should Contain Element                 ${input_display_location}
Verify "Start Date" & "End Date" Promo is available
        Wait Until Element is Enabled               ${dropdown_promotion_startdate}             ${Delay}
        Page Should Contain Element                 ${dropdown_promotion_startdate}
        Wait Until Element is Enabled               ${dropdown_promotion_enddate}               ${Delay}
        Page Should Contain Element                 ${dropdown_promotion_enddate}
Verify "Indefinite" toggle is available
        Wait Until Element is Enabled               ${toggle_indefinite}                        ${Delay}
        Page Should Contain Element                 ${toggle_indefinite}
Verify "Product" Dropdown is available
        Wait Until Element is Enabled               ${drpdwn_product}                           ${Delay}
        Page Should Contain Element                 ${drpdwn_product}
Verify "Promotions Detail" field is available
        Wait Until Element is Enabled               ${input_promotion_detail}                   ${Delay}
        Page Should Contain Element                 ${input_promotion_detail}
Verify "Save" button is available
        Wait Until Element is Enabled               ${button_save_product}                      ${Delay}
        Page Should Contain Element                 ${button_save_product}











#Scenarios
Verify "Promotions" page rendered correctly
        Verify "Competitor" tab is available
        Verify "Products" tab is available
        Verify "Export" tab is available
        Verify "Add New Promotions" button is available
        Verify "Bulk Upload Promotion" button is available
        Verify columns labeled "Company Name", "Promo Title", "Type", "Detail" and "Period" are available
        Verify "View Details" button is available
        Verify Next, Previous, First and Last page on pagination work properly


Verify "Add New Promotions" Modal rendered correctly
        Verify "Change Promotion Image" button is available
        Verify "Company Name" Dropdown is available
        Verify "Promo Title" field is available
        Verify "Type" Dropdown is available
        Verify "Display Located" field is available
        Verify "Start Date" & "End Date" Promo is available
        Verify "Indefinite" toggle is available
        Verify "Product" Dropdown is available
        Verify "Promotions Detail" field is available
        Verify "Save" button is available


Verify Add New Promotions with End Date is successfully
    Click Add New Promotions
    Verify "Add New Promotions" Modal rendered correctly
    Choose Promo Image
    Select Company Name
    Input Promo Title
    Select Promo Type
    Input Display Location
    Select Promo End Date
    Input Promotion Detail
    Click Save Promo
    Verify Add New Promotion Successful


Verify Add New Promotions with Indefinite End Date is successfully
    Click Add New Promotions
    Verify "Add New Promotions" Modal rendered correctly
    Choose Promo Image
    Select Company Name
    Input Promo Title
    Select Promo Type
    Input Display Location
    Input Promotion Detail
    Select Indefinite Toggle
    Click Save Promo
    Verify Add New Promotion Successful

#Verify Promotion Detail View is Successfully (waiting for search feature)