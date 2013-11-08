class Spree::ProductCustomization::Value < ActiveRecord::Base
  serialize :values
  belongs_to :customization, :class_name => "Spree::ProductCustomization::Customization", :foreign_key => "customization_id"

  before_save :compose_presentation

  def compose_presentation
    self.presentation = "#{values[:number]} - #{values[:name]}"
  end

end
