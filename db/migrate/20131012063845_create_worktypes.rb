class CreateWorktypes < ActiveRecord::Migration
  def change
    create_table :worktypes do |t|
      t.string :name, :null => false, :default => ""
      t.timestamps
    end
  end
end
