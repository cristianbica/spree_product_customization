Deface::Override.new(
  :name => "edit_product_customization",
  :virtual_path => "spree/admin/products/_form",
  :insert_bottom => "[data-hook='admin_product_form_additional_fields']",
  :text => "
    <%= f.field_container :customization do %>
      <%= f.label :customization, Spree.t(:customization) %>
      <%= f.collection_select(:customization_id, Spree::ProductCustomization::Customization.all, :id, :name, { :include_blank => Spree.t('match_choices.none') }, { :class => 'select2' }) %>
      <%= f.error_message_on :shipping_category %>
    <% end %>
  "
)
