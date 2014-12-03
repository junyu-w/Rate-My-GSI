class AddGsiIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :gsi_id, :integer
  end
end
