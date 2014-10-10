class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @cat=Category.all
    @items=Item.new(:stock=>'false')
  end
def create
  @items=Item.new(params.require(:items).permit(:cat_id,:itemname,:nos,:return,:stock))
  if @items.save
    u=User.find(session[:user_id])
    u.items << @items
    flash[:notice]="item '#{@items.itemname}'saved successfully"
    redirect_to(:action=>'index')
  else
    redirect_to(:action=>'new')
  end
end
  def edit
  end

  def delete
  end
end
