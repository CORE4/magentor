module Magento
  # internal stuff
  class Importer < Base
    class << self
      # importer.gallery
      # Retrieve all images from all products at once
      # 
      # Return: array
      def gallery
        commit("gallery", nil)
      end

    end
  end
end