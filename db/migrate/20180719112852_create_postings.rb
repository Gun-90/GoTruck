class CreatePostings < ActiveRecord::Migration[5.1]
  def change
    create_table :postings do |t|
      t.string :posting_title
      t.belongs_to :truck, foreign_key: true

      t.timestamps
    end
  end
end
