class CreatePostingReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :posting_reviews do |t|
      t.text :posting_review_content
      t.belongs_to :user
      t.belongs_to :posting

      t.timestamps
    end
  end
end
