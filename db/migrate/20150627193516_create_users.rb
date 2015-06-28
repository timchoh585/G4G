class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.integer :twitter_code
      t.string :image_url
      t.string :twitter_handle
    end
  end
end
