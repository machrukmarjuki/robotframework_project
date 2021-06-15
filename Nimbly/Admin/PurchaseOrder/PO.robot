*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-po.robot
Suite Setup             Open Browser to Manage Menu

*** Test Cases ***
Go to Purchase Order Page
        Wait Until Element is Enabled               ${link_purchase_order}                      ${Delay}
        Click Element                               ${link_purchase_order}

Verify "Search" field is available
        Wait Until Element is Enabled               ${input_search_po}                          ${Delay}
        Page Should Contain Element                 ${input_search_po}
Verify "Add Purchase Order" button is available
        Wait Until Element is Enabled               ${btn_add_po}                               ${Delay}
        Page Should Contain Element                 ${btn_add_po}

Verify columns labeled "Order No.", "Order Date", "Requested By", "Vendor", "Status" and "Total Order" are available
        Wait Until ELement is Enabled               ${btn_desc_order_no}                        ${Delay}
        Page Should Contain Element                 ${btn_desc_order_no}
        Page Should Contain Element                 ${btn_desc_order_date}
        Page Should Contain Element                 ${btn_desc_req_by}
        Page Should Contain Element                 ${btn_desc_vendor}
        Page Should Contain Element                 ${btn_desc_total}
        Page Should Contain Element                 ${btn_desc_status}

Verify "Option" icon is available
        Wait Until Element is Enabled               ${btn_option}                              ${Delay}
        Page Should Contain Element                 ${btn_option}
        Click Element                               ${btn_option}







*** Keywords ***
Go to Purchase Order Page
        Wait Until Element is Enabled               ${link_purchase_order}                      ${Delay}
        Click Element                               ${link_purchase_order}

Verify "Search" field is available
        Wait Until Element is Enabled               ${input_search_po}                          ${Delay}
        Page Should Contain Element                 ${input_search_po}
Verify "Add Purchase Order" button is available
        Wait Until Element is Enabled               ${btn_add_po}                               ${Delay}
        Page Should Contain Element                 ${btn_add_po}

Verify columns labeled "Order No.", "Order Date", "Requested By", "Vendor", "Status" and "Total Order" are available
        Wait Until ELement is Enabled               ${btn_desc_order_no}                        ${Delay}
        Page Should Contain Element                 ${btn_desc_order_no}
        Page Should Contain Element                 ${btn_desc_order_date}
        Page Should Contain Element                 ${btn_desc_req_by}
        Page Should Contain Element                 ${btn_desc_vendor}
        Page Should Contain Element                 ${btn_desc_total}
        Page Should Contain Element                 ${btn_desc_status}

Verify "Option" icon is available
        Wait Until Element is Enabled               ${btn_edit_po}                              ${Delay}
        Page Should Contain Element                 ${btn_edit_po}
