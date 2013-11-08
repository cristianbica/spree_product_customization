Spree::Product.class_eval do
  belongs_to :customization, class_name: "Spree::ProductCustomization::Customization"
end
