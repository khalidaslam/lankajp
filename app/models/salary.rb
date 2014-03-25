class Salary < ActiveRecord::Base
  attr_accessible :salaryrange
  has_many :jobs
end
