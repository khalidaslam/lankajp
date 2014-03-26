class AddAttachmentApplicantresumeToResumes < ActiveRecord::Migration
  def self.up
    change_table :resumes do |t|
      t.attachment :resumefile
    end
  end

  def self.down
    drop_attached_file :resumes, :resumefile
  end
end
