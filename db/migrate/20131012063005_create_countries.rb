class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
    	t.string :name, :null => false, :default => "Sri Lanka"
        t.timestamps
    end
  end
end
