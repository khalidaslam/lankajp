class Job < ActiveRecord::Base
belongs_to :user
  attr_accessible :companyemail, :companyname, :companyphone, :cvemailoption, :employerlinkcode, :freejobpost, :jobposttype, :jobuuid, :postemailack, :tags, :title, :user_id
end
