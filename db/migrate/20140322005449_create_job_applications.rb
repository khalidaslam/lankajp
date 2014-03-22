class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      
      t.integer :job_id, :null => false, :default => 0
      t.integer :user_id, :null => false, :default => 0
      t.string :fullname, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :contactno, :null => false, :default => ""

      t.timestamps
    end
    add_index :job_applications, :job_id
  end
end
