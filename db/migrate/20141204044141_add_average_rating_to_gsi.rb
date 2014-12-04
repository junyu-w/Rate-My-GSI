class AddAverageRatingToGsi < ActiveRecord::Migration
  def change
    add_column :gsis, :average_rating, :integer
  end
end
