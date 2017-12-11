class CreateMakes < ActiveRecord::Migration[5.1]
  def change
    create_table :makes do |t|
      t.string :model
      t.integer :year
      t.string :color
      t.timestamps
    end
  end
end
