class CreateJobPosts < ActiveRecord::Migration
  def change
    create_table :job_posts do |t|
      
      t.integer :user_id, :null => false, :default => 0
      t.integer :job_post_type_id, :null => false, :default => 0
      t.string :fullname, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :contactno, :null => false, :default => ""
      t.string :jobuuid, :null => false, :default => ""
      t.boolean :terms, :null => false, :default => false
      t.boolean :cvemailoption, :null => false, :default => false

      t.timestamps
    end
  end
end
