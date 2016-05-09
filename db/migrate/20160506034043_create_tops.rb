class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.text   :image_url
      t.string :nickname
      t.string :sex
      t.string :city
      t.string :age
      t.timestamps
    end
  end
end
