class Job < ActiveRecord::Base
    attr_accessible :companyemail, :companyname, :companyphone, :cvemailoption, :employerlinkcode,
   :freejobpost, :jobuuid, :postemailack, :tags, :title,
   :user_id, :city_id, :classification_id, :worktype_id, :careerlevel_id, :payment_method_id,
   :salary_id, :job_post_type_id, :experiencelevel_id, :adimage, :jobskills
   
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



  has_attached_file :adimage, :styles => { :small => "400>x"}, :default_url => "/images/:attachment/missinglogo.jpg"

  validates :title, :companyname, :companyemail, :companyphone, :presence => { :message => "must be given" }

  validates :city, :careerlevel, :experiencelevel, :classification, :payment_method,
  :salary, :worktype, :job_post_type, :presence => { :message => "must be selected" }

  validates_attachment :adimage, :size => { :in => 0..512.kilobytes, :message => "file size should be under 512kb" }
  validates_attachment_content_type :adimage, 
    :content_type => /^image\/(png|gif|jpeg)/,
    :message => 'only (png/gif/jpeg) images'

  include PgSearch
	pg_search_scope :search, against: [:tags],
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
