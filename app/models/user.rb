class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :user_details
  has_many :details, through: :user_details
  
  def self.find_for_database_authentication(conditions={})
    find_by(email: conditions[:email]) || find_by(phone: conditions[:email])
  end
  
  def detail_added? detail
    self.details.include? detail
  end
  
end
