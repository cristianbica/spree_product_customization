Deface::Override.new(
  :name => "admin_product_customizations_tab",
  :virtual_path => "spree/admin/shared/_product_sub_menu",
  :insert_bottom => "[data-hook='admin_product_sub_tabs']",
  :text => '<%= tab :product_customization_customizations, :match_path => "/product_customization/customizations" %>'
)
