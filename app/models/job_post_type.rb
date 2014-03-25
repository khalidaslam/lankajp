class JobPostType < ActiveRecord::Base
	attr_accessible :jobtype
	has_many :jobs
	has_many :job_posts
end

