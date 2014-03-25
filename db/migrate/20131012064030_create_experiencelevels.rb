class CreateExperiencelevels < ActiveRecord::Migration
  def change
    create_table :experiencelevels do |t|
    	t.string :name, :null => false, :default => ""
        t.timestamps
    end
  end
end
