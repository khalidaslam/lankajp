class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|

      t.integer :user_id, :null => false, :default => 0
      t.string :fullname, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :city, :null => false, :default => ""
      t.string :contact, :null => false, :default => ""
      t.text :resumetags, :null => false, :default => ""
      t.boolean :ischecked, :null => false, :default => false

      t.timestamps
    end
  end
end
