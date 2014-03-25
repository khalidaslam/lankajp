class JobApplication < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  attr_accessible :contactno, :email, :fullname, :job_id, :resume, :tags
  has_attached_file :resume

  include PgSearch
	pg_search_scope :search, against: [:fullname, :email],
	using: {tsearch: {dictionary: "english"}}


	validates :fullname, :email, :presence => true
	validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
	validates :contactno, :numericality => { :message => "is invalid" }, :allow_blank => true
	validates_attachment_presence :resume
	validates_attachment :resume, :size => { :in => 0..256.kilobytes, :message => "file size should be under 256kb" }
	validates_attachment_content_type :resume, :content_type => [ 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/pdf' ],
									:message => 'only (doc/docx/pdf) files'



def self.resume_search(resumequery)
	if resumequery.present?
		search(resumequery)
	else
		scoped
	end
end

end
