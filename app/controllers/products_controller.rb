class ProductsController < ApplicationController
  def index
  end

  def show
  end
  
  def destroy
    item = Item.find(params[:id])
    if item.user_id == current_user.id
      item.destroy
      redirect_to("/")
    end
  end
end
