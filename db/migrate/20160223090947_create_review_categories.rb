class CreateReviewCategories < ActiveRecord::Migration
  def change
    create_table :review_categories do |t|
      
      t.timestamps null: false
    end
  end
end
