class JobPostType < ActiveRecord::Base
	has_many :jobs
	has_many :job_posts

  attr_accessible :jobtype
end

