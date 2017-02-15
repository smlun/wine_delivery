class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :cart, foreign_key: true
      t.references :wine, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
