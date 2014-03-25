class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
    	t.string :name, :null => false, :default => ""
      	t.timestamps
    end
  end
end
