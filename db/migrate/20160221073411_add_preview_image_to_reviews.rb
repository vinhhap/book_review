class AddPreviewImageToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :preview_image, :string
  end
end
