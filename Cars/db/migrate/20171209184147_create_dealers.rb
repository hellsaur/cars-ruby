class CreateDealers < ActiveRecord::Migration[5.1]
  def change
    create_table :dealers do |t|
      t.string :city
      t.string :address
      t.timestamps
    end
  end
end
