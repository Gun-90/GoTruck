class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :profile_name
      t.string :profile_mobile
      t.string :profile_adress
      t.string :profile_birthday
      t.string :profile_image
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
