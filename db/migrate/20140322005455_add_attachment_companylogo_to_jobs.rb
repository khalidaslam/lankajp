class AddAttachmentCompanylogoToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.attachment :companylogo
      t.attachment :adimage
    end
  end

  def self.down
    drop_attached_file :jobs, :companylogo
    drop_attached_file :jobs, :adimage
  end
end
