class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
    	t.string :name, :null => false, :default => ""
        t.timestamps
    end
  end
end
