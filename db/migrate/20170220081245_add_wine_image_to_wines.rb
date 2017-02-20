class AddWineImageToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :wine_image, :string
  end
end
