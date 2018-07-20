class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :truck_name
      t.float :truck_x
      t.float :truck_y
      t.string :truck_sns
      t.string :truck_sns2
      t.string :truck_phone
      t.string :truck_cover
      t.string :truck_category
      t.belongs_to :user

      t.timestamps
    end
  end
end
