class CreatePostingParts < ActiveRecord::Migration[5.1]
  def change
    create_table :posting_parts do |t|
      t.text :posting_content
      t.string :posting_image
      t.string :posting_video
      t.belongs_to :posting, foreign_key: true
      t.string :posting_link
      t.string :posting_subtitle
      t.float :posting_x
      t.float :posting_y

      t.timestamps
    end
  end
end
