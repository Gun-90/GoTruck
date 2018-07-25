class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :community_comment
      t.belongs_to :user, foreign_key: true
      t.belongs_to :community, foreign_key: true

      t.timestamps
    end
  end
end
