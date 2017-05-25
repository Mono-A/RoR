class ItemsController < ApplicationController
  def index
  end
  def new
    @item = Item.new
    @items = Item.all
  end
  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice:'Item was succesfully regist.' }
        format.html { render :new,status: :created,location: @item}
      else
        format.html{ render :new }
        format.json{ render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end
  def item_params
    params.require(:item).permit(:name, :price, :description, :img_url)
  end
end
