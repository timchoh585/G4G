class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.integer :twitter_id
      t.string :profile_image
      t.string :screenname
    end
  end
end
