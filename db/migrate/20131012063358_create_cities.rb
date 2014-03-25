class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|

    	t.integer :province_id, :null => false, :default => 0
    	t.string :name, :null => false, :default => ""
    	
      t.timestamps
    end
  end
end
