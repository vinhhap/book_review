class Review < ActiveRecord::Base
  has_many :review_categories
  has_many :categories, through: :review_categories
  before_save :set_default_preview_image
  
  validates :title, presence: true, length: { minimum: 3 }
  validates :author, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { minimum: 10 }
  
  private
    def set_default_preview_image
      if self.preview_image.blank?
        self.preview_image = "https://placehold.it/300x300.png/000"
      end
    end
end
