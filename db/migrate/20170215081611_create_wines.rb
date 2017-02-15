class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
