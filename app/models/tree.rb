class Tree < ActiveRecord::Base
  belongs_to :charity
  has_many :donations
  has_many :propositions
  has_many :donors, through: :donations, source: :donor
  has_many :proposed_donors, through: :propositions, source: :proposed
end
