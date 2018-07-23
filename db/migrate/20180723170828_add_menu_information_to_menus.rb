class AddMenuInformationToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :menu_information, :text
  end
end
