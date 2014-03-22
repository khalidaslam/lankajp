class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      
      t.integer :user_id, :null => false, :default => 0
      t.string :title, :null => false, :default => ""
      t.string :jobuuid, :null => false, :default => ""
      t.string :employerlinkcode, :null => false, :default => ""
      t.text :tags, :null => false, :default => ""
      t.string :companyname, :null => false, :default => ""
      t.string :companyemail, :null => false, :default => ""
      t.string :companyphone, :null => false, :default => ""
      t.string :jobposttype, :null => false, :default => ""
      t.boolean :freejobpost, :null => false, :default => false
      t.boolean :cvemailoption, :null => false, :default => false
      t.boolean :postemailack, :null => false, :default => false

      t.timestamps
    end
  end
end
