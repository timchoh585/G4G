class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.belongs_to :charity
      t.integer :donation_amount
      t.timestamps null: false
    end
  end
end
