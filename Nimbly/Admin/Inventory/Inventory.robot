*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-inventory.robot
Suite Setup             Open Browser to Manage Menu

*** Test Cases ***
Go to Inventory Page
        Go to Inventory Page

Verify "Inventory" page rendered correctly
        Verify "Search" field is available
        Verify "Add SKU" button is available
        Verify "Upload From Excel" button is available
        #Verify Next, Previous, First and Last page on pagination work properly

Verify "SKU" list is displayed correctly
        Verify columns labeled "SKU Name", "SKU No", "Tags", and "Assigned to site" are available
        Verify "Edit" SKU button is available
        Verify "Delete" SKU button is available

Verify Upload SKU from Excel Successfully
        Click "Upload From Excel" Button
        Verify "Upload From Excel" Button can be clicked
        Verify "Upload From Excel" SKU popup is displayed correctly
        Select File Excel
        Verify Select File Successfully
        Click "Upload"
        Upload From Excel Successfully




*** Keywords ***
Go to Inventory Page
        Wait Until Element is Enabled               ${link_inventory}                           ${Delay}
        Click Element                               ${link_inventory}

Verify "Search" field is available
        Wait Until Element is Enabled               ${input_search_sku}                         ${Delay}
        Page Should Contain Element                 ${input_search_sku}
Verify "Add SKU" button is available
        Wait Until Element is Enabled               ${btn_add_sku}                              ${Delay}
        Page Should Contain Element                 ${btn_add_sku}
Verify "Upload From Excel" button is available
        Wait Until Element is Enabled               ${btn_bulk_upload_sku}                      ${Delay}
        Page Should Contain Element                 ${btn_bulk_upload_sku}
Verify columns labeled "SKU Name", "SKU No", "Tags", and "Assigned to site" are available
        Wait Until ELement is Enabled               ${label_sku_name}                          ${Delay}
        Page Should Contain Element                 ${label_sku_name}
        Page Should Contain Element                 ${label_sku_no}
        Page Should Contain Element                 ${label_tags}
        Page Should Contain Element                 ${label_assign_site}
Verify "Edit" SKU button is available
        Wait Until Element is Enabled               ${btn_edit_sku}                             ${Delay}
        Page Should Contain Element                 ${btn_edit_sku}
Verify "Delete" SKU button is available
        Wait Until Element is Enabled               ${btn_del_sku}                              ${Delay}
        Page Should Contain Element                 ${btn_del_sku}
Verify Next, Previous, First and Last page on pagination work properly
        Wait Until ELement is Enabled               ${btn_page_1}                               ${Delay}
        Element Should Be Disabled                  ${btn_page_left}
        Page Should Contain Element                 ${btn_page_1}
        Page Should Contain Element                 ${btn_page_2}
        Page Should Contain Element                 ${btn_page_right}
        Click Element                               ${btn_page_2}
        Wait Until ELement is Enabled               ${btn_page_left}                            ${Delay}
        Element Should Be Enabled                   ${btn_page_left}

Search SKU
        Wait Until Element is Enabled               ${input_search_sku}                         ${Delay}
        Input Text                                  ${input_search_sku}                         ${search_sku}

#Add SKU
Click "Add SKU" Button
        Wait Until Element is Enabled               ${btn_add_sku}                              ${Delay}
        Click Element                               ${btn_add_sku}
Verify "Add SKU" Button can be clicked
        Wait Until Element is Enabled               ${input_sku_name}                           ${Delay}
        Page Should Contain Element                 ${input_sku_name}
        Page Should Contain Element                 ${input_sku_no}
        Page Should Contain Element                 ${input_prod_desc}
Verify "Add SKU" modal is displayed correctly
        Wait Until ELement is Enabled               ${input_sku_name}                           ${Delay}
        Page Should Contain Element                 ${input_sku_name}
        Page Should Contain Element                 ${input_sku_no}
        Page Should Contain Element                 ${input_prod_desc}
        Page Should Contain Element                 ${drpdwn_tags}
        Page Should Contain Element                 ${drpdwn_sku_type}
        Page Should Contain Element                 ${drpdwn_uom}
        Page Should Contain Element                 ${drpdwn_sku_site}
        Page Should Contain Element                 ${btn_add_photo_sku}
        Page Should Contain Element                 ${radiobtn_spec_no}
        Page Should Contain Element                 ${radiobtn_spec_50}
        Page Should Contain Element                 ${radiobtn_spec_100}
        Page Should Contain Element                 ${radiobtn_spec_200}
        Page Should Contain Element                 ${radiobtn_spec_400}
        Page Should Contain Element                 ${radiobtn_spec_500}
        Page Should Contain Element                 ${radiobtn_spec_800}
        Page Should Contain Element                 ${input_custom_no}
        Page Should Contain Element                 ${radiobtn_percent}
        Page Should Contain Element                 ${btn_submit_sku}
        Page Should Contain Element                 ${btn_cancel_sku}
Input SKU Name
        ${RANDOM} =                                 Generate Random String                      3            [NUMBERS]
        Wait Until Element is Enabled               ${input_sku_name}                           ${Delay}
        Input Text                                  ${input_sku_name}                           ${sku_name} ${RANDOM}
Input SKU No.
        ${RANDOM} =                                 Generate Random String                      3            [NUMBERS]
        Wait Until Element is Enabled               ${input_sku_no}                             ${Delay}
        Input Text                                  ${input_sku_no}                             ${sku_no} ${RANDOM}
Select Tags
        Wait Until Element is Enabled               ${drpdwn_tags}                              ${Delay}
        Click Element                               ${drpdwn_tags}
        Wait Until Element is Enabled               ${select_tag_coffee}                        ${Delay}
        Click Element                               ${select_tag_coffee}
Select Site to add
        Wait Until Element is Enabled               ${drpdwn_sku_site}                          ${Delay}
        Click Element                               ${drpdwn_sku_site}
        Wait Until Element is Enabled               ${select_site}                              ${Delay}
        Click Element                               ${select_site}
Input Product Description
        Wait Until Element is Enabled               ${input_prod_desc}                          ${Delay}
        Input Text                                  ${input_prod_desc}                          ${sku_desc}
Select SKU Type "Inbound From App"
        Wait Until Element is Enabled               ${drpdwn_sku_type}                          ${Delay}
        Click Element                               ${drpdwn_sku_type}
        Wait Until Element is Enabled               ${select_from_app}                          ${Delay}
        Click Element                               ${select_from_app}
Select SKU Type "Inbound From Purchase Order"
        Wait Until Element is Enabled               ${drpdwn_sku_type}                          ${Delay}
        Click Element                               ${drpdwn_sku_type}
        Wait Until Element is Enabled               ${select_from_po}                           ${Delay}
        Click Element                               ${select_from_po}
Select SKU Type "On-hand Inventory"
        Wait Until Element is Enabled               ${drpdwn_sku_type}                          ${Delay}
        Click Element                               ${drpdwn_sku_type}
        Wait Until Element is Enabled               ${select_onhand}                            ${Delay}
        Click Element                               ${select_onhand}
Select UoM
        Wait Until Element is Enabled               ${drpdwn_uom}                               ${Delay}
        Click Element                               ${drpdwn_uom}
        Wait Until Element is Enabled               ${select_uom_kg}                            ${Delay}
        Click Element                               ${select_uom_kg}
Add Photo
        Wait Until Element is Enabled               ${btn_add_photo_sku}                        ${Delay}
        Choose File                                 ${btn_add_photo_sku}                        ${select_photo_sku}

Select Specific Number
        Wait Until Element is Enabled               ${radiobtn_spec_no}                         ${Delay}
        Click Element                               ${radiobtn_spec_no}
Select 50
        Wait Until Element is Enabled               ${radiobtn_spec_50}                         ${Delay}
        Click Element                               ${radiobtn_spec_50}
Select 100
        Wait Until Element is Enabled               ${radiobtn_spec_100}                        ${Delay}
        Click Element                               ${radiobtn_spec_100}
Select 200
        Wait Until Element is Enabled               ${radiobtn_spec_200}                        ${Delay}
        Click Element                               ${radiobtn_spec_200}
Select 400
        Wait Until Element is Enabled               ${radiobtn_spec_400}                        ${Delay}
        Click Element                               ${radiobtn_spec_400}
Select 500
        Wait Until Element is Enabled               ${radiobtn_spec_500}                        ${Delay}
        Click Element                               ${radiobtn_spec_500}
Select 800
        Wait Until Element is Enabled               ${radiobtn_spec_800}                        ${Delay}
        Click Element                               ${radiobtn_spec_800}
Input Custom
        Wait Until Element is Enabled               ${input_custom_no}                          ${Delay}
        Input Text                                  ${input_custom_no}                          ${custom_no}


Select Percentage
        Wait Until Element is Enabled               ${radiobtn_percent}                         ${Delay}
        Click Element                               ${radiobtn_percent}

Select 0%
        Wait Until Element is Enabled               ${select_percent_0}                         ${Delay}
        Click Element                               ${select_percent_0}
Select 10%
        Wait Until Element is Enabled               ${select_percent_10}                        ${Delay}
        Click Element                               ${select_percent_10}
Select 20%
        Wait Until Element is Enabled               ${select_percent_20}                        ${Delay}
        Click Element                               ${select_percent_20}
Select 30%
        Wait Until Element is Enabled               ${select_percent_30}                        ${Delay}
        Click Element                               ${select_percent_30}
Select 40%
        Wait Until Element is Enabled               ${select_percent_40}                        ${Delay}
        Click Element                               ${select_percent_40}
Select 50%
        Wait Until Element is Enabled               ${select_percent_50}                        ${Delay}
        Click Element                               ${select_percent_50}
Set Max Count
        Wait Until Element is Enabled               ${set_max_count}                            ${Delay}
        Input Text                                  ${set_max_count}                            ${max_count}


Click Submit Button
        Wait Until Element is Enabled               ${btn_submit_sku}                          ${Delay}
        Click Element                               ${btn_submit_sku}
Add SKU Successfully
        Wait Until Page Contains                    ${success_add_sku_toast}                   ${Delay}
        Page Should Contain                         ${success_add_sku_toast}
Click Cancel Button
        Wait Until Element is Enabled               ${btn_cancel_sku}                          ${Delay}
        Click Element                               ${btn_cancel_sku}








#Edit SKU
Search SKU to Edit
        Wait Until Element is Enabled               ${input_search_sku}                         ${Delay}
        Input Text                                  ${input_search_sku}                         ${search_sku_edited}
Click Edit Button
        Wait Until Element is Enabled               ${btn_edit_sku}                              ${Delay}
        Click Element                               ${btn_edit_sku}
Verify "Edit" SKU Button can be clicked
        Wait Until Element is Enabled               ${input_sku_name}                           ${Delay}
        Page Should Contain Element                 ${input_sku_name}
        Page Should Contain Element                 ${input_sku_no}
        Page Should Contain Element                 ${input_prod_desc}
Verify "Edit" SKU modal is displayed correctly
        Wait Until ELement is Enabled               ${input_sku_name}                           ${Delay}
        Page Should Contain Element                 ${input_sku_name}
        Page Should Contain Element                 ${input_sku_no}
        Page Should Contain Element                 ${input_prod_desc}
        Page Should Contain Element                 ${drpdwn_tags}
        Page Should Contain Element                 ${drpdwn_sku_type}
        Page Should Contain Element                 ${drpdwn_uom}
        Page Should Contain Element                 ${drpdwn_sku_site}
        Page Should Contain Element                 ${btn_add_photo_sku}
        Page Should Contain Element                 ${radiobtn_spec_no}
        Page Should Contain Element                 ${radiobtn_spec_50}
        Page Should Contain Element                 ${radiobtn_spec_100}
        Page Should Contain Element                 ${radiobtn_spec_200}
        Page Should Contain Element                 ${radiobtn_spec_400}
        Page Should Contain Element                 ${radiobtn_spec_500}
        Page Should Contain Element                 ${radiobtn_spec_800}
        Page Should Contain Element                 ${input_custom_no}
        Page Should Contain Element                 ${radiobtn_percent}
        Page Should Contain Element                 ${btn_submit_sku}
        Page Should Contain Element                 ${btn_cancel_sku}
Edit SKU Name
        ${RANDOM} =                                 Generate Random String                      3            [NUMBERS]
        Wait Until Element is Enabled               ${input_sku_name}                           ${Delay}
        Input Text                                  ${input_sku_name}                           ${sku_name}Edited ${RANDOM}
Edit SKU No.
        ${RANDOM} =                                 Generate Random String                      3            [NUMBERS]
        Wait Until Element is Enabled               ${input_sku_no}                             ${Delay}
        Input Text                                  ${input_sku_no}                             ${sku_no} ${RANDOM}
Edit Tags
        Wait Until Element is Enabled               ${drpdwn_tags}                              ${Delay}
        Click Element                               ${drpdwn_tags}
        Wait Until Element is Enabled               ${select_tag_milk}                          ${Delay}
        Click Element                               ${select_tag_milk}
Edit Site to add
        Wait Until Element is Enabled               ${drpdwn_sku_site}                          ${Delay}
        Click Element                               ${drpdwn_sku_site}
        Wait Until Element is Enabled               ${select_site}                              ${Delay}
        Click Element                               ${select_site}
Edit Product Description
        Wait Until Element is Enabled               ${input_prod_desc}                          ${Delay}
        Input Text                                  ${input_prod_desc}                          ${sku_desc_edited}
Edit UoM
        Wait Until Element is Enabled               ${drpdwn_uom}                               ${Delay}
        Click Element                               ${drpdwn_uom}
        Wait Until Element is Enabled               ${select_uom_bottle}                        ${Delay}
        Click Element                               ${select_uom_bottle}
Change Photo
        Wait Until Element is Enabled               ${btn_add_photo_sku}                        ${Delay}
        Choose File                                 ${btn_add_photo_sku}                        ${select_photo_sku}
Edit to Specific Number
        Wait Until Element is Enabled               ${radiobtn_spec_no}                         ${Delay}
        Click Element                               ${radiobtn_spec_no}
Edit to 50
        Wait Until Element is Enabled               ${radiobtn_spec_50}                         ${Delay}
        Click Element                               ${radiobtn_spec_50}
Edit to 100
        Wait Until Element is Enabled               ${radiobtn_spec_100}                        ${Delay}
        Click Element                               ${radiobtn_spec_100}
Edit to 200
        Wait Until Element is Enabled               ${radiobtn_spec_200}                        ${Delay}
        Click Element                               ${radiobtn_spec_200}
Edit to 400
        Wait Until Element is Enabled               ${radiobtn_spec_400}                        ${Delay}
        Click Element                               ${radiobtn_spec_400}
Edit to 500
        Wait Until Element is Enabled               ${radiobtn_spec_500}                        ${Delay}
        Click Element                               ${radiobtn_spec_500}
Edit to 800
        Wait Until Element is Enabled               ${radiobtn_spec_800}                        ${Delay}
        Click Element                               ${radiobtn_spec_800}
Edit Custom
        Wait Until Element is Enabled               ${input_custom_no}                          ${Delay}
        Input Text                                  ${input_custom_no}                          ${custom_no}


Edit to Percentage
        Wait Until Element is Enabled               ${radiobtn_percent}                         ${Delay}
        Click Element                               ${radiobtn_percent}
Edit to 0%
        Wait Until Element is Enabled               ${select_percent_0}                         ${Delay}
        Click Element                               ${select_percent_0}
Edit to 10%
        Wait Until Element is Enabled               ${select_percent_10}                        ${Delay}
        Click Element                               ${select_percent_10}
Edit to 20%
        Wait Until Element is Enabled               ${select_percent_20}                        ${Delay}
        Click Element                               ${select_percent_20}
Edit to 30%
        Wait Until Element is Enabled               ${select_percent_30}                        ${Delay}
        Click Element                               ${select_percent_30}
Edit to 40%
        Wait Until Element is Enabled               ${select_percent_40}                        ${Delay}
        Click Element                               ${select_percent_40}
Edit to 50%
        Wait Until Element is Enabled               ${select_percent_50}                        ${Delay}
        Click Element                               ${select_percent_50}
Edit Max Count
        Wait Until Element is Enabled               ${set_max_count}                            ${Delay}
        Input Text                                  ${set_max_count}                            ${max_count}


Click Submit Edit Button
        Wait Until Element is Enabled               ${btn_submit_sku}                          ${Delay}
        Click Element                               ${btn_submit_sku}
Edit SKU Successfully
        Wait Until Page Contains                    ${success_edit_sku_toast}                  ${Delay}
        Page Should Contain                         ${success_edit_sku_toast}
Click Cancel Edit Button
        Wait Until Element is Enabled               ${btn_cancel_sku}                          ${Delay}
        Click Element                               ${btn_cancel_sku}





#Delete SKU
Search SKU to Delete
        Wait Until Element is Enabled               ${input_search_sku}                         ${Delay}
        Input Text                                  ${input_search_sku}                         ${search_sku_deleted}
Click "Delete" Button
        Wait Until Element is Enabled               ${btn_del_sku}                              ${Delay}
        Click Element                               ${btn_del_sku}
Verify "Delete" SKU Button can be clicked
        Wait Until Element is Enabled               ${btn_yes_delete}                           ${Delay}
        Page Should Contain                         Are you sure you want to delete SKU?
        Page Should Contain Element                 ${btn_yes_delete}
        Page Should Contain Element                 ${btn_no_delete}
Verify "Delete" SKU popup is displayed correctly
        Wait Until Element is Enabled               ${btn_yes_delete}                           ${Delay}
        Page Should Contain                         Are you sure you want to delete SKU?
        Page Should Contain Element                 ${btn_yes_delete}
        Page Should Contain Element                 ${btn_no_delete}
Click "Yes" Delete
        Wait Until Element is Enabled               ${btn_yes_delete}                           ${Delay}
        Click Element                               ${btn_yes_delete}
Click "No" Delete
        Wait Until Element is Enabled               ${btn_no_delete}                            ${Delay}
        Click Element                               ${btn_no_delete}
Delete SKU Successfully
        Wait Until Page Contains                    ${success_delete_sku_toast}                 ${Delay}
        Page Should Contain                         ${success_delete_sku_toast}





#Upload SKU From Excel
Click "Upload From Excel" Button
        Wait Until Element is Enabled               ${btn_bulk_upload_sku}                      ${Delay}
        Click Element                               ${btn_bulk_upload_sku}
Verify "Upload From Excel" Button can be clicked
        Wait Until Element is Enabled               ${link_dwnld_template}                      ${Delay}
        Page Should Contain Element                 ${link_dwnld_template}
Verify "Upload From Excel" SKU popup is displayed correctly
        Wait Until Element is Enabled               ${link_dwnld_template}                      ${Delay}
        Page Should Contain                         Want to add in bulk?
        Page Should Contain Element                 ${btn_select_file}
        Page Should Contain Element                 ${btn_upload_sku}
        Page Should Contain Element                 ${btn_cancel_sku}
Select File Excel
        Wait Until Element is Enabled               ${btn_select_file}                          ${Delay}
        Choose File                                 ${btn_select_file}                          ${sku_file}
Verify Select File Successfully
        Wait Until Element is Enabled               ${icon_del_file}                            ${Delay}
        Page Should Contain Element                 ${icon_del_file}
Click "Upload"
        Wait Until Element is Enabled               ${btn_upload_sku}                           ${Delay}
        Click Element                               ${btn_upload_sku}
Upload From Excel Successfully
        Wait Until Page Contains                    ${success_upload_sku_toast}                 ${Delay}
        Page Should Contain                         ${success_upload_sku_toast}
Click "Cancel" Upload
        Wait Until Element is Enabled               ${btn_cancel_sku}                           ${Delay}
        Click Element                               ${btn_cancel_sku}















#Inventory Testing Templates
Verify "Inventory" page rendered correctly
        Verify "Search" field is available
        Verify "Add SKU" button is available
        Verify "Upload From Excel" button is available
        #Verify Next, Previous, First and Last page on pagination work properly
Verify "SKU" list is displayed correctly
        Verify columns labeled "SKU Name", "SKU No", "Tags", and "Assigned to site" are available
        Verify "Edit" SKU button is available
        Verify "Delete" SKU button is available

Verify "Add SKU" Successfully
        Click "Add SKU" Button
        Verify "Add SKU" Button can be clicked
        Verify "Add SKU" modal is displayed correctly
        Input SKU Name
        Input SKU No.
        Select Tags
        Select Site to add
        Input Product Description
        Select SKU Type "On-hand Inventory"
        Select UoM
        #Add Photo
        Select Specific Number
        Select 800
        Click Submit Button
        Add SKU Successfully

Verify "Edit SKU" Successfully
        Search SKU to Edit
        Click Edit Button
        Verify "Edit" SKU Button can be clicked
        Verify "Edit" SKU modal is displayed correctly
        Edit SKU Name
        Edit SKU No.
        Edit Tags
        Edit Site to add
        Edit Product Description
        Edit UoM
        Change Photo
        Edit to Percentage
        Edit to 50%
        Click Submit Edit Button
        Edit SKU Successfully

Verify "Delete SKU" Successfully
        Search SKU to Delete
        Click "Delete" Button
        Verify "Delete" SKU Button can be clicked
        Verify "Delete" SKU popup is displayed correctly
        Click "Yes" Delete
        Delete SKU Successfully

Verify Upload SKU from Excel Successfully
        Click "Upload From Excel" Button
        Verify "Upload From Excel" Button can be clicked
        Verify "Upload From Excel" SKU popup is displayed correctly
        Select File Excel
        Verify Select File Successfully
        Click "Upload"
        Upload From Excel Successfully
