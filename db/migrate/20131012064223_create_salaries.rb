class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
    	t.string :salaryrange, :null => false, :default => ""
      t.timestamps
    end
  end
end
