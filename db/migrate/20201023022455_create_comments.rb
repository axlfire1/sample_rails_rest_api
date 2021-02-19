class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :post, null: false, foreign_key: true
      t.string :owner, :null => false
      t.string :content, :null => false
      t.integer :likes, :default => 0
      t.integer :dislikes, :default => 0

      t.timestamps
    end
  end
end
