module Spree
  module ProductCustomization
    module Types

      class TShirt < Base

        self.type_name = "TShirt"
        self.fields    = [:number, :name]

      end

    end
  end
end
