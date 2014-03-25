class AddAttachmentLogoAdimageToJobPosts < ActiveRecord::Migration
  def self.up
    change_table :job_posts do |t|
      t.attachment :companylogo
      t.attachment :adimage
    end
  end

  def self.down
    drop_attached_file :job_posts, :companylogo
    drop_attached_file :job_posts, :adimage
  end
end
