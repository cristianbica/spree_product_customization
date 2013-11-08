class Spree::Admin::ProductCustomization::ValuesController < Spree::Admin::ResourceController

  def index
  end

  protected
  def model_class
    Spree::ProductCustomization::Value
  end
end
