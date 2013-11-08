class Spree::ProductCustomization::Customization < ActiveRecord::Base

  has_many :values, :class_name => "Spree::ProductCustomization::Value", :foreign_key => "customization_id"
  validates_inclusion_of :customization_type, in: ->(_){ Spree::ProductCustomization::Types.types.map(&:to_s) }
  accepts_nested_attributes_for :values, allow_destroy: true

  def customizer
    customization_type.constantize
  end

end
