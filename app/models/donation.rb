class Donation < ActiveRecord::Base
  belongs_to :donor, class_name: "User", foreign_key: "donor_id"
  belongs_to :tree
end
