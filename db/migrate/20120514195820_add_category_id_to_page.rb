class AddCategoryIdToPage < ActiveRecord::Migration
  def change
    add_column :pages, :category_id, :integer
  end
end
