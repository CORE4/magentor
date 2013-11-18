module Magento
  # internal stuff
  class Partner < Base
    class << self
      # partner.list
      # Retrieve partner list
      # 
      # Return: array
      def list
        commit("list", nil)
      end

      # partner.create
      # Create partner
      # 
      # Return: int id of new partner
      # 
      # Arguments:
      # 
      # array data - array of data to create
      def create(*args)
        commit("add", *args)
      end

      # partner.remove
      # Remove partner
      # 
      # Return: bool success
      # 
      # Arguments:
      # 
      # partner_id
      def remove(*args)
        commit("remove", *args)
      end

      # partner.move
      # Move partner within the tree
      # 
      # Return: bool success
      # 
      # Arguments:
      # 
      # array data:
      # partner_id
      # parent_id
      # after_id
      def move(*args)
        commit("move", *args)
      end
    end
  end
end