class AddImgUrlToGsi < ActiveRecord::Migration
  def change
    add_column :gsis, :img_url, :string
  end
end
