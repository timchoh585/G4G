class CreatePropositions < ActiveRecord::Migration
  def change
    create_table :propositions do |t|
      t.belongs_to :proposer
      t.belongs_to :proposed
      t.belongs_to :tree
      t.timestamps null: false
    end
  end
end
