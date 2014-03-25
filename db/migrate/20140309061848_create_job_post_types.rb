class CreateJobPostTypes < ActiveRecord::Migration
  def change
    create_table :job_post_types do |t|
    	t.string :jobtype, :null => false, :default => ""
      t.timestamps
    end
  end
end
