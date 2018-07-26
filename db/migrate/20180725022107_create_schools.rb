class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.float :lat, index: true
      t.float :lng, index: true

      t.timestamps
    end
  end
end
