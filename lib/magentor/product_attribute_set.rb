module Magento
  # http://www.magentocommerce.com/wiki/doc/webservices-api/api/catalog_product_attribute_set
  class ProductAttributeSet < Base
    class << self
      # catalog_product_attribute_set.list
      # Retrieve product attribute sets
      # 
      # Return: array
      def list
        results = commit("list", nil)
        results.collect do |result|
          new(result)
        end
      end

      # catalog_product_attribute_set.create
      # Create product attribute set
      # 
      # Return: int id of new set
      # 
      # Arguments:
      # 
      # array data - array of data to create
      def create(*args)
        commit("create", *args)
      end

      # catalog_product_attribute_set.addAttribute
      # Add attribute to set
      # 
      # Return: bool
      # 
      # Arguments:
      # 
      # array data - array of data to create
      def attribute_add(*args)
        commit("attributeAdd", *args)
      end

      # catalog_product_attribute_set.remove
      # Remove product attribute set
      # 
      # Return: bool success
      # 
      # Arguments:
      # 
      # array data:
      # attribute_set_id => id
      # force_products_remove => bool
      def remove(*args)
        commit("remove", *args)
      end
    end
  end
end