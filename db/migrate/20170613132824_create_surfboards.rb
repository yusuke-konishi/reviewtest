class CreateSurfboards < ActiveRecord::Migration
  def change
    create_table :surfboards do |t|
      t.string :model
      t.string :shaper
      t.string :company

      t.timestamps null: false
    end
  end
end
