class AddIsAverageToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :is_average, :boolean
  end
end
