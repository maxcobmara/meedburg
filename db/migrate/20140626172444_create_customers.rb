class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_no
      t.string :name
      t.text :address
      t.string :other_customer_no

      t.timestamps
    end
  end
end
