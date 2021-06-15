*** Variables ***

     #tab
${tab_competitor}                   xpath://div[contains(text(),'Competitor')]
${tab_products}                     xpath://div[contains(text(),'Products')]
${tab_promotions}                   xpath://div[contains(text(),'Promotions')]
${tab_export}                       xpath://div[contains(text(),'Export')]

    #Competitor
${button_create_company}            xpath://button[contains(text(),'Create Company')]
${button_bulk_upload_company}       xpath://button[contains(text(),'Bulk Upload Company')]
${button_change_logo_company}       xpath://button[contains(text(),'Change Logo')]
${button_save_company}              xpath://button[contains(text(),'Save')]
${button_cancel_company}            xpsth://div[contains(text(),'Cancel')]
${button_view_detail_company}       xpath://tr[1]//td[6]//button[1]

${input_company_name}               id:companyName
${input_company_description}        id:description
${input_company_website}            id:website
${input_company_established}        id:established
${input_no_employee}                id:totalEmployee
${input_company_strenght}           id:strength
${input_company_weakness}           id:weakness

${company_name}                     AutoQA Company
${company_name_edited}              AutoQA Company Edited
${company_description}              Ini adalah company yang dibuat dengan automation
${company_descr_edited}             Ini adalah company yang di edit dengan automation
${company_website}                  autoqa.website.com
${company_website_edited}           autoqa.website-edited.com
${company_established}              100
${company_estab_edited}             75
${company_total_employee}           2000
${company_total_empl_edited}        1575
${company_strenght}                 AutoQA Strenght
${company_strenght_edited}          AutoQA Strenght Edited
${company_weakness}                 AutoQA Weakness
${company_weakness_edited}          AutoQA Weakness Edited
${choose_company_logo}              /Users/machruk/Downloads/Test.jpg
${company_success_toast}            Success create company
${company_edit_success}             Success update company

    #Product
${button_add_new_product}           xpath://button[contains(text(),'Add New Product')]
${button_bulk_upload_product}       xpath://button[contains(text(),'Bulk Upload Product')]
${button_view_detail_product}       xpath://tr[1]//td[6]//button[1]
${button_change_product_image}      id:product-img
${choose_product_image}             /Users/machruk/Downloads/Test.jpg
${button_view_detail_product}       xpath://tbody/tr[1]/td[6]/button[1]

${input_search_product}             xpath://input[@placeholder='Search for products, category, or variant...']
${input_product_name}               id:productName
${dropdown_choose_company}          xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]
${checkbox_variant}                 id:chkbox_check_all

#xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/div[2]/div[3]/label[1]/div[1]/span[1]
${checkbox_uncheck}                 id:chkbox_uncheck_all
${dropdown_variant}                 xpath://div[contains(text(),'Select product')]
${input_product_description}        id:description
${dropdown_add_store}               xpath://div[contains(text(),'Add a Store')]
${dropdown_product_category}        xpath://div[contains(text(),'Select a product category')]
${dropdown_target_market}           xpath://div[contains(text(),'Select a target market')]
${input_price_from}                 id:priceFrom
${input_price_to}                   id:priceTo
${button_save_product}              xpath://button[contains(text(),'Save')]
${add_product_success}
${product_edit_success}

${search_product}                   AutoQA Product
${product_name}                     AutoQA Product
${product_name_edited}              AutoQA Product Edited
${select_company}                   xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'AutoQA Special Company')]
${product_description}              Description Product
${product_desc_edited}              Description Product Edited
${select_variant_product}           xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'AutoQA Special Product')]
${select_store}                     xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'${special_site}')]
${select_store_edited}              xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'Pasar Pagi')]
${select_product_category}          xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'Kopi')]
${select_prod_categ_edit}           xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'Drink')]
${select_target_market}             xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'Teenagers')]
${select_target_market_edited}      xpath://div[@class=' css-1jj7sbe-menu']//div[1]//div[contains(text(),'Rangers')]
${price_from}                       000
${price_to}                         0000

    #Promotions
${btn_add_new_promo}                xpath://button[contains(text(),'Add New Promotions')]
${btn_bulk_upload_promo}            xpath://button[contains(text(),'Bulk Upload Promotion')]
${btn_view_detail_promo}            xpath://tr[1]//td[6]//button[1]
${btn_change_promo_image}           id:promotion-img
${btn_save_promo}                   xpath://button[contains(text(),'Save')]

${input_promo_title}                id:promoTitle
${dropdown_promotion_type}          xpath://div[contains(text(),'Select a Promotion Type')]
${input_display_location}           id:displayLoc
${dropdown_promotion_startdate}     id:promotion_start-date
${dropdown_promotion_enddate}       id:promotion_end-date
${drpdwn_product}                   id:productName optional
${input_promotion_detail}           id:promotionDetail
${toggle_indefinite}                xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/div[1]/div[2]

${choose_promo_image}               /Users/machruk/Downloads/Test.jpg
${drpdwn_company_promo}             xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]
${select_company_Promotion}         xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'AutoQA Special Company')]
${promo_title}                      AutoQA Promotion
${select_promo_type}                xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Free Item')]
${display_location}                 Bekasi
${select_promotion_startdate}       xpath://body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[3]/td[7]
${arrow_next_month}                 xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/*[1]
${select_promotion_enddate}         xpath://body//div[@id='root']//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div//div[2]//div[1]//table[1]//tbody[1]//tr[5]//td[contains(text(),'29')]
${promotion_detail}                 Promotion ini dibuat dengan automation
${promotion_success_toast}          Success create promotion

${label_promo_title}                xpath://thead/tr[1]/th[2]
${label_type}                       xpath://thead/tr[1]/th[3]
${label_detail}                     xpath://thead/tr[1]/th[4]
${label_period}                     xpath://thead/tr[1]/th[5]

    #Export
${btn_search_data}                  xpath://button[contains(text(),'Search')]
${drpdwn_data_dwnld}                xpath://body/div[@id='root']/div/div/div/div/div/div/div/div[@id='product']/div/div[1]
${drpdwn_startdate_dwnld}           xpath://input[@id='companyProduct_start-date']
${drpdwn_enddate_dwnld}             xpath://input[@id='companyProduct_end-date']
${btn_dwnld}                        xpath://button[contains(text(),'Download')]
${btn_dwnld_all}                    xpath://button[contains(text(),'Download All')]
${label_downloaded_on}              xpath://thead/tr[1]/th[1]
${label_type_data}                  xpath://thead/tr[1]/th[2]
${label_num_of_prod}                xpath://thead/tr[1]/th[3]
${label_date}                       xpath://thead/tr[1]/th[4]
${prev_month}                       xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/*[1]
${next_month}                       xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/*[1]

${select_promotion}                 xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Product')]
${select_product}                   xpath://div[@class=' css-26l3qy-menu']//div[1]//div[contains(text(),'Promotion')]
${select_startdate}                 xpath://body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[2]/td[1]
${select_enddate}                   xpath://body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[4]/td[7]



    #Lable
${label_company_name}               xpath://thead/tr[1]/th[1]
${label_product}                    xpath://thead/tr[1]/th[2]
${label_promos}                     xpath://thead/tr[1]/th[3]
${label_strength}                   xpath://thead/tr[1]/th[4]
${label_weakness}                   xpath://thead/tr[1]/th[5]

    #pagination
${btn_page_left}                    id:btn_left_arrow
${btn_page_1}                       id:btn_page1
${btn_page_2}                       id:btn_page2
${btn_page_right}                   id:btn_right_arrow




*** Keywords ***
Go to Competitor Page
        Wait Until Element is Enabled               ${link_competitor_analysis}                 ${Delay}
        Click Element                               ${link_competitor_analysis}


#Export
Click Export Tab
        Wait Until Element is Enabled               ${tab_export}                               ${Delay}
        Click Element                               ${tab_export}

Verify "Competitor" tab is available
        Wait Until ELement is Enabled               ${tab_competitor}                           ${Delay}
        Page Should Contain Element                 ${tab_competitor}
Verify "Products" tab is available
        Wait Until ELement is Enabled               ${tab_products}                             ${Delay}
        Page Should Contain Element                 ${tab_products}
Verify "Promotions" tab is available
        Wait Until ELement is Enabled               ${tab_promotions}                           ${Delay}
        Page Should Contain Element                 ${tab_promotions}
Verify "Type Data" dropdown is available
        Wait Until ELement is Enabled               ${drpdwn_data_dwnld}                        ${Delay}
        Page Should Contain Element                 ${drpdwn_data_dwnld}
Verify "Start Date" dropdown is available
        Wait Until ELement is Enabled               ${drpdwn_startdate_dwnld}                   ${Delay}
        Page Should Contain Element                 ${drpdwn_startdate_dwnld}
Verify "End Date" dropdown is available
        Wait Until ELement is Enabled               ${drpdwn_enddate_dwnld}                     ${Delay}
        Page Should Contain Element                 ${drpdwn_enddate_dwnld}
Verify "Search" button is available
        Wait Until ELement is Enabled               ${btn_search_data}                          ${Delay}
        Page Should Contain Element                 ${btn_search_data}

Verify columns labeled "Downloaded On", "Type", "Num of Product/Promotion", and "Date" are available
        Wait Until ELement is Enabled               ${label_downloaded_on}                      ${Delay}
        Page Should Contain Element                 ${label_downloaded_on}
        Page Should Contain Element                 ${label_type_data}
        Page Should Contain Element                 ${label_num_of_prod}
        Page Should Contain Element                 ${label_date}
Verify "Download" button is available
        Wait Until Element is Enabled               ${btn_dwnld}                                ${Delay}
        Page Should Contain Element                 ${btn_dwnld}



Select Promotion Data
        Wait Until Element is Enabled               ${drpdwn_data_dwnld}                        ${Delay}
        Click Element                               ${drpdwn_data_dwnld}
        Wait Until Element is Enabled               ${select_promotion}                         ${Delay}
        Click Element                               ${select_promotion}
Select Product Data
        Wait Until Element is Enabled               ${drpdwn_data_dwnld}                        ${Delay}
        Click Element                               ${drpdwn_data_dwnld}
        Wait Until Element is Enabled               ${select_product}                           ${Delay}
        Click Element                               ${select_product}
Select Start Date
        Wait Until Element is Enabled               ${drpdwn_startdate_dwnld}                   ${Delay}
        Click Element                               ${drpdwn_startdate_dwnld}
        Select Prev Month
        Wait Until Element is Enabled               ${select_startdate}                         ${Delay}
        Click Element                               ${select_startdate}
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
        Click Element                               ${next_month}
        Click Element                               ${next_month}

Select End Date
        Wait Until Element is Enabled               ${drpdwn_enddate_dwnld}                     ${Delay}
        Click Element                               ${drpdwn_enddate_dwnld}
        Wait Until Element is Enabled               ${select_enddate}                           ${Delay}
        Click Element                               ${select_enddate}

Click Search button
        Wait Until Element is Enabled               ${btn_search_data}                          ${Delay}
        Click Element                               ${btn_search_data}
Click Download All
        Wait Until Element is Enabled               ${btn_dwnld_all}                            ${Delay}
        Click Element                               ${btn_dwnld_all}
Click Download
        Wait Until Element is Enabled               ${btn_dwnld}                                ${Delay}
        Click Element                               ${btn_dwnld}
Verify Download All is Successfully
        Wait Until Element is Enabled               ${btn_dwnld_all}                            ${Delay}
        Page Should Contain Element                 ${btn_dwnld_all}
        Click Element                               ${btn_dwnld_all}
        Wait Until Element is Enabled               ${label_downloaded_on}                      ${Delay}
        Page Should Contain Element                 ${label_downloaded_on}