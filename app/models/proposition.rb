class Proposition < ActiveRecord::Base
  belongs_to :proposer, class_name: "User", foreign_key: "proposer_id"
  belongs_to :proposed, class_name: "User", foreign_key: "proposed_id"
end
