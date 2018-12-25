class ItemsController < ApplicationController
  before_action :set_item, only: [:show,:buy]

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
    @seller_id = Item.where(seller_id: @item.seller_id).where.not(id: @item.id)
    @relative_items = Item.where(third_category_id: @item.id)
    @previous = @seller_id.where('id < ?', @item.id).first
    @next = @seller_id.where('id > ?', @item.id).first
    @delivery = Delivery.find_by(item_id: params[:id])
  end

  def buy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :first_category_id, :second_category_id, :third_category_id, :size_id, :brand_id, :condition, :price, image_attributes: [:image1, :image2, :image3, :image4], delivery_attributes: [:fee, :kind, :area, :delivery_days]).merge(seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
