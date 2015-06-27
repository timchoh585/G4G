class User < ActiveRecord::Base
  has_many :made_propositions, class_name: "Proposition", foreign_key: "proposer_id"
  has_many :received_propositions, class_name: "Proposition", foreign_key: "proposed_id"
  has_many :donations, foreign_key: "donor_id"
end