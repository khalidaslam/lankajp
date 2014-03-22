class Job < ActiveRecord::Base
  has_many :job_applications
belongs_to :user
  attr_accessible :companyemail, :companyname, :companyphone, :cvemailoption, :employerlinkcode, :freejobpost, :jobposttype, :jobuuid, :postemailack, :tags, :title, :user_id
end
