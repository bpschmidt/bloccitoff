class ItemsController < ApplicationController

  def create
    @item = Item.new(params[:item].permit!)
    @item.user = current_user
    @item.save
    redirect_to :back
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    redirect_to "/users/#{current_user.id}"
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    #Which Item are we supoosed to be updating here?
    @item = Item.find(params[:id])
    @item.name = params[:item][:name]
    @item.save
    redirect_to current_user
  end

end
