class AddParentIdToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :parent_id, :integer
  end
end
