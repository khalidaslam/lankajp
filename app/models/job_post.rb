class JobPost < ActiveRecord::Base
	include Humanizer
    require_human_on :create

	belongs_to :user
	belongs_to :job_post_type

  attr_accessible :contactno, :cvemailoption, :email, :fullname, :job_post_type,
  :jobuuid, :terms, :adimage, :humanizer_answer, :humanizer_question_id

  include PgSearch
	pg_search_scope :search, against: [:fullname, :email, :jobuuid],
	using: {tsearch: {dictionary: "english", prefix:  "true"}}



	validates :fullname, :email, :contactno, presence: true, length: { maximum: 50 }

	validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true


	has_attached_file :adimage, :default_url => "/images/:attachment/missinglogo.jpg"

	validates_attachment_presence :adimage

	validates_attachment_content_type :adimage,:content_type => [ 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/pdf', 'image/jpeg', 'image/jpg', 'image/png' ],
						:message => 'only (doc/docx/pdf) files'

	validates_attachment :adimage, :size => { :in => 0..512.kilobytes, :message => "file size should be under 512kb" }

	validates :terms, :presence => { :message => "must be accepted" }

def self.job_post_search(adminquery)
	if adminquery.present?
		search(adminquery)
	else
		scoped
	end
end




end
