class Job < ActiveRecord::Base
  has_many :job_applications
  belongs_to :user
  belongs_to :city
  belongs_to :careerlevel
  belongs_to :experiencelevel
  belongs_to :classification
  belongs_to :payment_method
  belongs_to :salary
  belongs_to :job_post_type
  belongs_to :worktype

  attr_accessible :companyemail, :companyname, :companyphone, :cvemailoption, :employerlinkcode,
   :freejobpost, :job_post_type, :jobuuid, :postemailack, :tags, :title,
   :user_id, :city_id, :classification_id, :worktype_id, :careerlevel_id, :payment_method_id,
   :salary_id, :job_post_type_id, :experiencelevel_id

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
