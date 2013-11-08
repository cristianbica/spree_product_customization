class CreateSpreeProductCustomizationValues < ActiveRecord::Migration
  def change
    create_table :spree_product_customization_values do |t|
      t.string :presentation
      t.text :values
      t.integer :position
      t.references :customization

      t.timestamps
    end
  end
end
