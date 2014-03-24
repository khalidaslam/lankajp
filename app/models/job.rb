class Job < ActiveRecord::Base
  has_many :job_applications
  belongs_to :user
  attr_accessible :companyemail, :companyname, :companyphone, :cvemailoption, :employerlinkcode, :freejobpost, :jobposttype, :jobuuid, :postemailack, :tags, :title, :user_id

  include PgSearch
	pg_search_scope :search, against: [:title, :tags],
	using: {tsearch: {dictionary: "english"}}




def self.jobs_search(query)
	if query.present?
		search(query)
	else
		scoped
	end
end



end
