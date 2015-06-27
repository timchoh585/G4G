class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.belongs_to :donor
      t.belongs_to :tree
      t.timestamps null: false
    end
  end
end
