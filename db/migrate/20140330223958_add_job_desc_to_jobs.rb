class AddJobDescToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :jobdesctext, :text, :null => false, :default => ""
  	add_column :job_posts, :jobdesctext, :text, :null => false, :default => ""
  end
end
