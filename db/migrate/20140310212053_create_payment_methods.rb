class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :name, :null => false, :default => ""

      t.timestamps
    end
  end
end
