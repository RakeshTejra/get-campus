class Detail < ActiveRecord::Base
  has_many :user_details
  has_many :users, through: :user_details
end
