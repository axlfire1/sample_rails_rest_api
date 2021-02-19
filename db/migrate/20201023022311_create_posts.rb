class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.integer :likes, :default => 0
      t.integer :dislikes, :default => 0

      t.timestamps
    end
  end
end
