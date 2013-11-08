Spree::Core::Engine.routes.draw do

  namespace :admin do
    namespace :product_customization do
      resources :customizations
      resources :values, only: [:destroy, :index]
    end
  end

end
