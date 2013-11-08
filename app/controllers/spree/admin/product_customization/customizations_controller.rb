class Spree::Admin::ProductCustomization::CustomizationsController < Spree::Admin::ResourceController

  before_filter :setup_new_value, :only => [:edit]

  # def index
  # end

  # def new
  # end

  # def edit
  # end
  protected
  def model_class
    Spree::ProductCustomization::Customization
  end

  def setup_new_value
    @customization.values.build() if @customization.values.empty?
  end


end
