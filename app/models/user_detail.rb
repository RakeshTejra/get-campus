class UserDetail < ActiveRecord::Base
  belongs_to :user
  belongs_to :detail
end
