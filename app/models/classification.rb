class Classification < ActiveRecord::Base
  attr_accessible :name
  has_many :jobs
end
