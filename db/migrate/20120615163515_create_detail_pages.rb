class CreateDetailPages < ActiveRecord::Migration
  def change
    create_table :detail_pages do |t|
      t.string :title
      t.string :subtitle
      t.string :slug
      t.text :content
      t.integer :product_id

      t.timestamps
    end
  end
end
