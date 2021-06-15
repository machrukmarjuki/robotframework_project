*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-competitor.robot
Suite Setup             Open Browser to Manage Menu
Suite Teardown          Close Browser

Documentation           Verify Add "Product" feature is working properly

*** Test Cases ***
Go to Competitor Page
        go to competitor page
        Click Product Tab

Verify "Products" page rendered correctly
        Verify "Competitor" tab is available
        Verify "Promotions" tab is available
        Verify "Export" tab is available
        Verify "Search" field is available
        Verify "Add New Product" button is available
        Verify "Bulk Upload Product" button is available
        Verify columns labeled "Product Name", "Company Name", "Product Category", "Price From", and "Price To" are available
        Verify "View Details" button is available
        Verify Next, Previous, First and Last page on pagination work properly

Verify Add New Product is successfully
        Verify Add New Product is successfully





*** Keywords ***
Click Product Tab
        Wait Until Element is Enabled               ${tab_products}                             ${Delay}
        Click Element                               ${tab_products}

Verify "Competitor" tab is available
        Wait Until ELement is Enabled               ${tab_competitor}                           ${Delay}
        Page Should Contain Element                 ${tab_competitor}

Verify "Promotions" tab is available
        Wait Until ELement is Enabled               ${tab_promotions}                           ${Delay}
        Page Should Contain Element                 ${tab_promotions}

Verify "Export" tab is available
        Wait Until ELement is Enabled               ${tab_export}                               ${Delay}
        Page Should Contain Element                 ${tab_export}

Verify "Search" field is available
        Wait Until ELement is Enabled               ${input_search_product}                     ${Delay}
        Page Should Contain Element                 ${input_search_product}

Verify "Add New Product" button is available
        Wait Until ELement is Enabled               ${button_add_new_product}                   ${Delay}
        Page Should Contain Element                 ${button_add_new_product}

Verify "Bulk Upload Product" button is available
        Wait Until ELement is Enabled               ${button_bulk_upload_product}               ${Delay}
        Page Should Contain Element                 ${button_bulk_upload_product}

Verify columns labeled "Product Name", "Company Name", "Product Category", "Price From", and "Price To" are available
        Wait Until ELement is Enabled               ${label_company_name}                       ${Delay}
        Page Should Contain Element                 ${label_product}
        Page Should Contain Element                 ${label_promos}
        Page Should Contain Element                 ${label_strength}
        Page Should Contain Element                 ${label_weakness}

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


  #Add New Product
Click Add New Product
        Wait Until Element is Enabled               ${button_add_new_product}                   ${Delay}
        Click Element                               ${button_add_new_product}
Choose Product Image
        Wait Until Element is Enabled               ${button_change_product_image}              ${Delay}
        Choose File                                 ${button_change_product_image}              ${choose_product_image}
Input Product Name
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_product_name}                       ${Delay}
        Input Text                                  ${input_product_name}                       ${product_name} ${RANDOM}
Select Company Name
        Wait Until Element is Enabled               ${dropdown_choose_company}                  ${Delay}
        Click Element                               ${dropdown_choose_company}
        Wait Until Element is Enabled               ${select_company}                           ${Delay}
        Click Element                               ${select_company}
Select Checkbox Variant
        Wait Until Element is Enabled               ${checkbox_variant}                         ${Delay}
        Click Element                               ${checkbox_variant}
        Wait Until Element is Enabled                                            ${Delay}
        Click Element
        Wait Until Element is Enabled                                            ${Delay}
        Click Element
Input Product Description
        Wait Until Element is Enabled               ${input_product_description}                ${Delay}
        Input Text                                  ${input_product_description}                ${product_description}
Select Available Store
        Sleep                                       10
        Wait Until Element is Visible               ${dropdown_add_store}                       ${Delay}
        Click Element                               ${dropdown_add_store}
        Wait Until Element is Enabled               ${select_store}                             ${Delay}
        Click Element                               ${select_store}
Select Product Category
        Wait Until Element is Enabled               ${dropdown_product_category}                ${Delay}
        Click Element                               ${dropdown_product_category}
        Wait Until Element is Enabled               ${select_product_category}                  ${Delay}
        Click Element                               ${select_product_category}
Select Target Market
        Wait Until Element is Enabled               ${dropdown_target_market}                   ${Delay}
        Click Element                               ${dropdown_target_market}
        Wait Until Element is Enabled               ${select_target_market}                     ${Delay}
        Click Element                               ${select_target_market}
Input Min Price
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_price_from}                         ${Delay}
        Input Text                                  ${input_price_from}                         ${RANDOM}${price_from}
Input Max Price
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_price_to}                           ${Delay}
        Input Text                                  ${input_price_to}                           ${RANDOM}${price_to}
Click Save Product
        Wait Until Element is Enabled               ${button_save_product}                      ${Delay}
        Click Element                               ${button_save_product}
Verify Add Product Successful
        Wait Until Element is Enabled               ${add_product_success}                      ${Delay}
        Page Should Contains Element                ${add_product_success}

Verify "Change Product Image" button is available
        Wait Until Element is Enabled               ${button_change_product_image}              ${Delay}
        Page Should Contain Element                 ${button_change_product_image}
Verify "Product Name" field is available
        Wait Until Element is Enabled               ${input_product_name}                       ${Delay}
        Page Should Contain Element                 ${input_product_name}
Verify "Company Name" Dropdown is available
        Wait Until Element is Enabled               ${dropdown_choose_company}                  ${Delay}
        Page Should Contain Element                 ${dropdown_choose_company}
Verify "This Product is variant of" checkbox is available
        Wait Until Element is Enabled               ${checkbox_variant}                         ${Delay}
        Page Should Contain Element                 ${checkbox_variant}
Verify "Products Variant" dropdown is enable if checkbox selected
        Wait Until Element is Enabled               ${checkbox_variant}                         ${Delay}
        Click Element                               ${checkbox_variant}
        Checkbox Should be Selected                 ${checkbox_uncheck}
        Wait Until Element is Enabled               ${dropdown_variant}                         ${Delay}
        Element Should Be Enabled                   ${dropdown_variant}
        Click Element                               ${checkbox_variant}


Verify "Description" field is available
        Wait Until Element is Enabled               ${input_product_description}                ${Delay}
        Page Should Contain Element                 ${input_product_description}

Verify "Available in Store" Dropdown is available
        Wait Until Element is Enabled               ${dropdown_add_store}                       ${Delay}
        Page Should Contain Element                 ${dropdown_add_store}
Verify "Product Category" Dropdown is available
        Wait Until Element is Enabled               ${dropdown_product_category}                ${Delay}
        Page Should Contain Element                 ${dropdown_product_category}
Verify "Target Market" Dropdown is available
        Wait Until Element is Enabled               ${dropdown_target_market}                   ${Delay}
        Page Should Contain Element                 ${dropdown_target_market}
Verify "Save" button is available
        Wait Until Element is Enabled               ${button_save_product}                      ${Delay}
        Page Should Contain Element                 ${button_save_product}







#Test Cases Template
Verify "Products" page rendered correctly
        Verify "Competitor" tab is available
        Verify "Promotions" tab is available
        Verify "Export" tab is available
        Verify "Search" field is available
        Verify "Add New Product" button is available
        Verify "Bulk Upload Product" button is available
        Verify columns labeled "Product Name", "Company Name", "Product Category", "Price From", and "Price To" are available
        Verify "View Details" button is available
        Verify Next, Previous, First and Last page on pagination work properly


Verify "Add New Product" Modal rendered correctly
        Verify "Change Product Image" button is available
        Verify "Product Name" field is available
        Verify "Company Name" Dropdown is available
        Verify "This Product is variant of" checkbox is available
        Verify "Products Variant" dropdown is enable if checkbox selected
        Verify "Description" field is available
        Verify "Available in Store" Dropdown is available
        Verify "Product Category" Dropdown is available
        Verify "Target Market" Dropdown is available
        Verify "Save" button is available


Verify Add New Product is successfully
        Click Product Tab
        Click Add New Product
        Verify "Add New Product" Modal rendered correctly
        #Choose Product Image
        Input Product Name
        Select Company Name
        Input Product Description
        Select Product Category
        Select Target Market
        Input Min Price
        Input Max Price
        Select Available Store
        Click Save Product
        #Verify Add Product Successful


