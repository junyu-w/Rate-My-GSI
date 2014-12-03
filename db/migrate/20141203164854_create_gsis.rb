class CreateGsis < ActiveRecord::Migration
  def change
    create_table :gsis do |t|
      t.string :name
      t.text :description
      t.string :course

      t.timestamps
    end
  end
end
