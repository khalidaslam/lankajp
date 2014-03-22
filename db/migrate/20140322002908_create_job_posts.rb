class CreateJobPosts < ActiveRecord::Migration
  def change
    create_table :job_posts do |t|
      
      t.string :fullname, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :conactno, :null => false, :default => ""
      t.string :jobuuid, :null => false, :default => ""
      t.string :jobposttype, :null => false, :default => ""
      t.boolean :terms, :null => false, :default => false
      t.boolean :cvemailoption, :null => false, :default => false

      t.timestamps
    end
  end
end
