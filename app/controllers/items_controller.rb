class ItemsController < ApplicationController
  def index
  end

  def detail
  end

  def new
    @item = Item.new
  end
end
