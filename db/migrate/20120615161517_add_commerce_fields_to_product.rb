class AddCommerceFieldsToProduct < ActiveRecord::Migration
  def up
    add_column :products, :sku, :integer
    add_column :products, :available, :boolean
  end
  
  def down
    remove_column :products, :available
    remove_column :products, :sku
  end
end
