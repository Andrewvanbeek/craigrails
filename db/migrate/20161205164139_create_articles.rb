class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :category_id
      t.string :description
      t.string :contact
      t.decimal :price
      t.timestamps
    end
  end
end
