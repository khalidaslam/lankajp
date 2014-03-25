class CreateCareerlevels < ActiveRecord::Migration
  def change
    create_table :careerlevels do |t|
      t.string :name, :null => false, :default => ""
      t.timestamps
    end
  end
end
