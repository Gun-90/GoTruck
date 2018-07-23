class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :community_title
      t.text :community_content
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
