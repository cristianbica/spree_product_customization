module Spree
  module ProductCustomization
    module Types

      mattr_accessor :types
      self.types = [Spree::ProductCustomization::Types::TShirt, Spree::ProductCustomization::Types::Short]

      def self.register_type(klass)
        self.types << klass
      end

    end
  end
end
