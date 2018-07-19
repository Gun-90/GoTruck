class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.belongs_to :truck, foreign_key: true
      t.integer :menu_price
      t.string :menu_image
      t.string :menu_category
      t.string :menu_state

      t.timestamps
    end
  end
end
