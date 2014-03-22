class JobApplication < ActiveRecord::Base
  belongs_to :job
  attr_accessible :contactno, :email, :fullname
end
