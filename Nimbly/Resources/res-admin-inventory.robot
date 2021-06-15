*** Setting ***
Library         Selenium2Library
Resource        ../../Resources/resource.robot



*** Variable ***
${search_sku}                       AutoQA
${input_search_sku}                 id:input_search_sku
${btn_add_sku}                      id:btn_add_sku
${btn_bulk_upload_sku}              id:btn_bulk_upload_sku
${btn_edit_sku}                     id:btn_edit_sku
${btn_del_sku}                      id:btn_del_sku
${btn_asc_no}                       id:btn_asc_no
${btn_desc_no}                      id:btn_desc_no
${btn_asc_sku_name}                 id:btn_asc_sku_name
${btn_desc_sku_name}                id:btn_desc_sku_name
${btn_asc_sku_no}                   id:btn_asc_sku_no
${btn_desc_sku_no}                  id:btn_desc_sku_no
${btn_asc_tags}                     id:btn_asc_tags
${btn_desc_tags}                    id:btn_desc_tags
${btn_asc_assign_site}              id:btn_asc_assign_site
${btn_desc_assign_site}             id:btn_desc_assign_site

${link_more_tag}                    id:link_more_tag
${link_mote_site}                   id:link_mote_site

#add sku
${input_sku_name}                   id:input_sku_name
${input_sku_no}                     id:input_sku_no
${input_prod_desc}                  id:input_prod_desc
${drpdwn_tags}                      id:drpdwn_tags
${drpdwn_sku_type}                  id:drpdwn_sku_type
${drpdwn_uom}                       id:drpdwn_uom
${drpdwn_sku_site}                  id:drpdwn_sku_site
${btn_add_photo_sku}                id:btn_add_photo_sku
${radiobtn_spec_no}                 id:radiobtn_spec_no
${radiobtn_spec_50}                 id:radiobtn_spec_50
${radiobtn_spec_100}                id:radiobtn_spec_100
${radiobtn_spec_200}                id:radiobtn_spec_200
${radiobtn_spec_400}                id:radiobtn_spec_400
${radiobtn_spec_500}                id:radiobtn_spec_500
${radiobtn_spec_800}                id:radiobtn_spec_800
${input_custom_no}                  id:input_custom_no
${radiobtn_percent}                 id:radiobtn_percent
${select_percent_0}                 id:select_percent_0
${select_percent_10}                id:select_percent_10
${select_percent_20}                id:select_percent_20
${select_percent_30}                id:select_percent_30
${select_percent_40}                id:select_percent_40
${select_percent_50}                id:select_percent_50
${set_max_count}                    xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[3]/div[2]/div[1]/div[2]/div[1]/input[1]

${btn_submit_sku}                   id:btn_submit_sku
${btn_cancel_sku}                   id:btn_cancel_sku
${btn_yes_delete}                   id:btn_yes_delete
${btn_no_delete}                    id:btn_no_delete

${sku_name}                         AutoSKU
${search_sku_edited}                AutoSKUEdited
${search_sku_deleted}               AutoSKUDeleted
${sku_no}                           123
${sku_desc}                         Ini adalah SKU yang di buat dengan automation
${sku_desc_edited}                  Ini adalah SKU yang pernah dibuat dengan automation dan diedit dengan automation
${custom_no}                        175
${max_count}                        75
${select_tag_coffee}                xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'coffee')]
${select_tag_milk}                  xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'milk')]
${select_site}                      xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'All Sites')]
${select_from_app}                  xpath://div[@class='custom-type-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Inbound from app')]
${select_from_po}                   xpath://div[@class='custom-type-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Inbound from Purchase Order')]
${select_onhand}                    xpath://div[@class='custom-type-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'On-hand inventory')]
${select_uom_kg}                    xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Kilogram')]
${select_uom_gram}                  xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Gram')]
${select_uom_liter}                 xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Liter')]
${select_uom_milliliter}            xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Milliliter')]
${select_uom_canister}              xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Canister')]
${select_uom_bottle}                xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Bottle')]
${select_uom_sachet}                xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Sachet')]
${select_uom_pack}                  xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Pack')]
${select_uom_pieces}                xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Pieces')]
${select_uom_dirigen}               xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Dirigen')]
${select_uom_pail}                  xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Pail')]
${select_uom_jar}                   xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Jar')]
${select_uom_pouch}                 xpath://div[@class='select-editor__menu css-jt25gm-menu']//div[1]//div[contains(text(),'Pouch')]
${select_photo_sku}                 /Users/machruk/Downloads/Test.jpg
${success_edit_sku_toast}           Successfully update item
${success_add_sku_toast}            Successfully create new item
${success_delete_sku_toast}         Item deleted.
${success_upload_sku_toast}         Successfully upload item




#coloumn label
${label_sku_name}                   id:btn_asc_sku_name
${label_sku_no}                     id:btn_asc_sku_no
${label_tags}                       id:btn_asc_sku_tags
${label_assign_site}                id:btn_asc_assign_site


#bulk upload
${link_dwnld_template}              id:link_dwnld_template
${btn_select_file}                  id:btn_select_file
${btn_upload_sku}                   id:btn_upload_sku
${btn_cancel_sku}                   id:btn_cancel_sku
${icon_del_file}                    xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[2]/img[1]
${sku_file}                         Users/machruk/Documents/File Upload/Inventory-SKU.xlsx


#pagination
${btn_page_left}                        id:btn_left_arrow_sites
${btn_page_1}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/div[1]/button[2]
${btn_page_2}                           xpath://body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/div[1]/button[3]
${btn_page_right}                       id:btn_right_arrow_sites






















