class ItemsController < ApplicationController

  def create
    @item = Item.new(params[:item].permit!)
    @item.user = current_user
    @item.save
    redirect_to :back
  end

end
