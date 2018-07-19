class CreateTruckReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :truck_reviews do |t|
      t.text :truck_review_content
      t.string :truck_review_image
      t.belongs_to :user, foreign_key: true
      t.belongs_to :truck, foreign_key: true

      t.timestamps
    end
  end
end
