class Tree < ActiveRecord::Base
  belongs_to :charity
  has_many :donations
  has_many :propositions
  has_many :donors, through: :donations, source: :donor
  has_many :proposed_donors, through: :propositions, source: :proposed

  def sort_donors_chron
  	self.donations.order(created_at: :asc).map do |donation|
  		donation.donor
  	end
  end

  def get_pic_for_donor
  	
  end

  def sort_proposed_chron
  	self.propositions.order(created_at: :asc).map do |prop|
  		prop.proposed
  	end
  end
end
