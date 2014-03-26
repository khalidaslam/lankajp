class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|

      t.integer :user_id, :null => false, :default => 0
      t.string :fullname, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.boolean :issubscribed, :null => false, :default => false
      t.string :subscribedtags, :null => false, :default => ""

      t.timestamps
    end
  end
end
