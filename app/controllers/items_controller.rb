class ItemsController < ApplicationController
  def index
    @items =Item.all
  end
  def new
    @item = Item.new
    @items = Item.all
  end
  def create
    binding.pry
    @item = Item.new(item_params)
    if @item.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end
  def item_params
    params.require(:item).permit(:name, :price, :description, :img_url)
  end
  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item =Item.find(params[:id])
    @item.update_attributes(params.require(:item).permit(:name, :price, :description, :img_url))
    if @item.save
      redirect_to :action => "index"
    else
      render :action => "edit"
    end
  end
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash[:notice] = 'deleted'
    redirect_to :action => 'index'
  end
end
