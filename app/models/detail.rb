class Detail < ActiveRecord::Base
  
  do_not_validate_attachment_file_type :photo
  validates_presence_of :title, :start_date, :end_date, :photo, :description 
  
  has_many :user_details
  has_many :users, through: :user_details
  has_attached_file :photo,
                    :styles => {:original => "400x600>", :thumb => "120x120>" },  
                    :path => ":rails_root/public/:class/:attachment/:id/:style/:filename",
                    :url => "/:class/:attachment/:id/:style/:filename"
end
