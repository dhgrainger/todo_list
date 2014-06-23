class ItemsController < ApplicationController

  def new
    @item = Item.new
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to new_item_path,
      notice: 'TODO saved'
    else
      redirect_to new_item_path,
      notice: 'Unable to process request'
    end
  end

  private
    def item_params
      params.require(:item).permit(:item)
    end
end
