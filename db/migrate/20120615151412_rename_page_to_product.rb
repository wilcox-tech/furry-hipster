class RenamePageToProduct < ActiveRecord::Migration
  def up
    rename_table :pages, :products
  end

  def down
    rename_table :products, :pages
  end
end
