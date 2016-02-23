class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  def show
    @category_reviews = @category.reviews.all
  end
  def new
    @category = Category.new
  end
  def edit
  end
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Tạo thể loại mới thành công"
      redirect_to category_path(@category)
    else
      render "new"
    end
  end
  def update
    if @category.update(category_params)
      flash[:success] = "Chỉnh sửa thể loại thành công"
      redirect_to category_path(@category)
    else
      render "edit"
    end
  end
  def destroy
    @category.destroy
    flash[:warning ] = "Thể loại đã được xóa"
    redirect_to reviews_path
  end
  
  private
    def category_params
      params.require(:category).permit(:title, :description)
    end
    def set_category
      @category = Category.find(params[:id])
    end
end
