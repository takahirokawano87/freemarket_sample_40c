class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.build_image
    @item.build_delivery
  end

  def create
    @item = Item.new(item_params)
    @item.save!
    redirect_to root_path
  end

  def show
  end

private

  def item_params
    params.require(:item).permit(:name, :description, :first_category_id, :second_category_id, :third_category_id, :size_id, :brand_id, :condition, :price, image_attributes: [:image1, :image2, :image3, :image4], delivery_attributes: [:fee, :kind, :area, :delivery_days]).merge(seller_id: current_user.id)
  end

end
