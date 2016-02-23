class ReviewsController < ApplicationController
	before_action :set_review, only: [:show, :edit, :update, :destroy]
	def index
		@reviews = Review.all
	end
	def show
	end
	def new
		@review = Review.new
	end
	def edit
	end
	def create
		@review = Review.new(review_params)
		if @review.save
			flash[:success] = "Tạo review thành công"
			redirect_to review_path(@review)
		else
			render 'new'
		end
	end
	def update
		if @review.update(review_params)
			flash[:success] = "Chỉnh sửa review thành công"
			redirect_to review_path(@review)
		else
			render "edit"
		end
	end
	def destroy
		@review.destroy
    flash[:warning ] = "Review đã được xóa"
    redirect_to reviews_path
	end
	
	private
		def review_params
			params.require(:review).permit(:title, :author, :description, :preview_image, :content, category_ids: [])
		end
		def set_review
			@review = Review.find(params[:id]);
		end
end
