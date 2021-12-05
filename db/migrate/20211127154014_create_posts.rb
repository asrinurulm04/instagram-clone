class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.boolean :active
      t.text :description
      t.integer :total_likes_count
      t.integer :total_comments_count
      t.references :account
      t.timestamps
    end
  end
end
