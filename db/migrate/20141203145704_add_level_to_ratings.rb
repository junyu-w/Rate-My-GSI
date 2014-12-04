class AddLevelToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :level, :integer
  end
end
