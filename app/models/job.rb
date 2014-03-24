class Job < ActiveRecord::Base
  has_many :job_applications
  belongs_to :user
  belongs_to :city
  attr_accessible :companyemail, :companyname, :companyphone, :cvemailoption, :employerlinkcode, :freejobpost, :jobposttype, :jobuuid, :postemailack, :tags, :title, :user_id, :city_id

  include PgSearch
	pg_search_scope :search, against: [:title],
	using: {tsearch: {dictionary: "english"}}

	pg_search_scope :search_title, against: [:companyemail],
	using: {tsearch: {dictionary: "english"}}



def self.jobs_search(query)
	if query.present?
		search(query)
	else
		scoped
	end
end

def self.tags_search(tags)
	if tags.present?
		search_title(tags)
	else
		scoped
	end
end



end
