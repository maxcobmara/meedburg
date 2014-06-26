class CreateCompounds < ActiveRecord::Migration
  def change
    create_table :compounds do |t|
      t.string :compound_code
      t.datetime :issued_at
      t.string :location
      t.string :compound_type
      t.string :customer_id
      t.decimal :amount
      t.datetime :compound_date
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
