class ItemsController < ApplicationController
  def index
  end

  def detail
  end

  def new
    @item = Item.new
    @item.build_image
  end

  def create
    @item = Item.new(item_params)
    @item.save!
    redirect_to item_path(@company)
  end

  def show
  end

private

  def item_params
    params.require(:item).permit(:name, image_attributes: [:id, :image1, :image2, :image3, :image4], :first_category_id, :second_category_id, :third_category_id, :size_id, :condition)
  end

end
