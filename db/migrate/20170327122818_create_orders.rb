class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :total
      t.integer :person_id

      t.timestamps
    end
  end
end
