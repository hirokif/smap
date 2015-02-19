class AddColorToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :color, :string
  end
end
