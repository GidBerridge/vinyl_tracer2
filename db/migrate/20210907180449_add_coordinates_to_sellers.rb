class AddCoordinatesToSellers < ActiveRecord::Migration[6.1]
  def change
    add_column :sellers, :latitude, :float
    add_column :sellers, :longitude, :float
  end
end
