class CreateSpreeProductCustomizationCustomizations < ActiveRecord::Migration
  def change
    create_table :spree_product_customization_customizations do |t|
      t.string :name
      t.string :presentation
      t.string :customization_type
      t.boolean :predefined_values

      t.timestamps
    end
  end
end
