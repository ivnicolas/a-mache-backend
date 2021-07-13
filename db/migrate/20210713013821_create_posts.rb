class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.string :tags
      t.integer :price
      t.string :location
      t.string :contact_email
      t.string :contact_phone
      t.belongs_to :subcategory, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
