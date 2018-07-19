class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :mobile_num
      t.string :adress
      t.string :birthday
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
