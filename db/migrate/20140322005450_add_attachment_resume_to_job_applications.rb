class AddAttachmentResumeToJobApplications < ActiveRecord::Migration
  def self.up
    change_table :job_applications do |t|
      t.attachment :resume
    end
  end

  def self.down
    drop_attached_file :job_applications, :resume
  end
end
