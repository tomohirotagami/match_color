class AddImageUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image_url, :text
    add_column :users, :nickname, :string
    add_column :users, :sex, :string
    add_column :users, :age, :string
    add_column :users, :city, :string
  end
end
