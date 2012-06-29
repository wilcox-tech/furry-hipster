class CreatePressReleases < ActiveRecord::Migration
  def change
    create_table :press_releases do |t|
      t.string :headline
      t.string :subhead
      t.text :content
      t.integer :product_id

      t.timestamps
    end
  end
end
