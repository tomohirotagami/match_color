class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :text
      t.text :image

      t.timestamps
    end
  end
end
