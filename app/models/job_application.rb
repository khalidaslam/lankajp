class JobApplication < ActiveRecord::Base
  belongs_to :job
  attr_accessible :contactno, :email, :fullname

  include PgSearch
	pg_search_scope :search, against: [:fullnamename],
	using: {tsearch: {dictionary: "english", prefix:  "true"}}


def self.job_post_search(adminquery)
	if adminquery.present?
		search(adminquery)
	else
		scoped
	end
end

end
