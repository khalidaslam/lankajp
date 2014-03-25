class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      
      t.integer :user_id, :null => false, :default => 0
      t.integer :city_id, :null => false, :default => 0
      t.integer :classification_id, :null => false, :default => 0
      t.integer :worktype_id, :null => false, :default => 0
      t.integer :job_post_type_id, :null => false, :default => 0
      t.integer :careerlevel_id, :null => false, :default => 0
      t.integer :experiencelevel_id, :null => false, :default => 0
      t.integer :payment_method_id, :null => false, :default => 0
      t.integer :salary_id, :null => false, :default => 0

      # Job Specifics
      t.string :title, :null => false, :default => ""
      t.string :jobuuid, :null => false, :default => ""
      t.string :employerlinkcode, :null => false, :default => ""
      t.text :tags, :null => false, :default => ""
      t.string :companyname, :null => false, :default => ""
      t.string :companyemail, :null => false, :default => ""
      t.string :companyphone, :null => false, :default => ""
      t.boolean :cvemailoption, :null => false, :default => false
      t.boolean :postemailack, :null => false, :default => false

      t.timestamps
    end
  end
end
