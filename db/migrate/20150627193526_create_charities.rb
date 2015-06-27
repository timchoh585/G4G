class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :summary
      t.string :url
      t.string :jg_code
      t.timestamps null: false
    end
  end
end
