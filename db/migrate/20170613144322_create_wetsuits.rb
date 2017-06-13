class CreateWetsuits < ActiveRecord::Migration
  def change
    create_table :wetsuits do |t|
      t.string :maker
      t.string :type

      t.timestamps null: false
    end
  end
end
