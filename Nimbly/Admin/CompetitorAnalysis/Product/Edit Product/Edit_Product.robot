*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-competitor.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser

Documentation           Verify Edit "Product" feature is working properly

*** Test Cases ***
Go to Competitor Page
        go to competitor page
        Click Product Tab


Verify Edit Product is successfully
        Verify Edit Product is successfully



*** Keywords ***
Click Product Tab
        Wait Until Element is Enabled               ${tab_products}                             ${Delay}
        Click Element                               ${tab_products}

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



#View Details
Search Product to Edit
        Wait Until Element is Enabled               ${input_search_product}                     ${Delay}
        Input Text                                  ${input_search_product}                     QA
        Wait Until Page Contains                    QA                                          ${Delay}
        Sleep                                       3

Click View Details
        Wait Until Element is Enabled               ${button_view_detail_product}               ${Delay}
        Click Element                               ${button_view_detail_product}
        Sleep                                       5

Edit Product Name
        ${RANDOM} =                                 Generate Random String                      2   [NUMBERS]
        Wait Until Element is Enabled               ${input_product_name}                       ${Delay}
        Input Text                                  ${input_product_name}                       ${product_name_edited} ${RANDOM}

Edit Description
        Wait Until Element is Enabled               ${input_product_description}                ${Delay}
        Input Text                                  ${input_product_description}                ${product_desc_edited}
Edit Store
        Sleep                                       10
        Wait Until Element is Visible               ${dropdown_add_store}                       ${Delay}
        Click Element                               ${dropdown_add_store}
        Wait Until Element is Enabled               ${select_store_edited}                      ${Delay}
        Click Element                               ${select_store_edited}
Edit Product Category
        Wait Until Element is Enabled               ${dropdown_product_category}                ${Delay}
        Click Element                               ${dropdown_product_category}
        Wait Until Element is Enabled               ${select_prod_categ_edit}                   ${Delay}
        Click Element                               ${select_prod_categ_edit}
Edit Target Market
        Wait Until Element is Enabled               ${dropdown_target_market}                   ${Delay}
        Click Element                               ${dropdown_target_market}
        Wait Until Element is Enabled               ${select_target_market_edited}              ${Delay}
        Click Element                               ${select_target_market_edited}
Edit Min Price
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_price_from}                         ${Delay}
        Input Text                                  ${input_price_from}                         ${RANDOM}${price_from}
Edit Max Price
        ${RANDOM} =                                 Generate Random String                      3   [NUMBERS]
        Wait Until Element is Enabled               ${input_price_to}                           ${Delay}
        Input Text                                  ${input_price_to}                           ${RANDOM}${price_to}

Click Save Product
        Wait Until Element is Enabled               ${button_save_product}                      ${Delay}
        Click Element                               ${button_save_product}

Verify Edit Product Successful
        Wait Until Page Contains                    ${product_edit_success}                     ${Delay}
        Page Should Contain                         ${product_edit_success}




#Test Cases Template
Verify "Edit Product" Modal rendered correctly
        Verify "Product Name" field is available
        Verify "Company Name" Dropdown is available
        Verify "This Product is variant of" checkbox is available
        Verify "Products Variant" dropdown is enable if checkbox selected
        Verify "Description" field is available
        Verify "Available in Store" Dropdown is available
        Verify "Product Category" Dropdown is available
        Verify "Target Market" Dropdown is available
        Verify "Save" button is available
        Verify "Change Product Image" button is available


Verify Edit Product is successfully
        Search Product to Edit
        Click View Details
        Verify "Edit Product" Modal rendered correctly
        Edit Product Name
        Edit Description
        #Edit Product Category
        #Edit Target Market
        Edit Min Price
        Edit Max Price
        Edit Store
        Click Save Product
        Verify Edit Product Successful
