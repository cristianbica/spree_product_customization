class AddCustomizationIdToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :customization_id, :integer
    add_index :spree_products, :customization_id
  end
end
