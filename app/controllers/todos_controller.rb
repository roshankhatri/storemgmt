class TodosController < ApplicationController

  def index
  	@todo=Todo.where(:user_id=>session[:user_id]).sorted
  end
  def new
  	@todo=Todo.new
  end
  def create
  	if session[:user_id]
  	@todo=Todo.new(params.require(:todo).permit(:todoname,:completed))
  	if @todo.save
  		u=User.find(session[:user_id])
  		u.todos << @todo
  		redirect_to(:action=>'index')
  	else
  		render('new')
  	end
  	else
  		redirect_to(:controller=>'access',:action=>'login')
  	end
  end
  def edit
  	@todo=Todo.find(params[:id])
  end
  def update
	  	@todo=Todo.find(params[:id])
	  	if @todo.update_attributes(params.require(:todo).permit(:todoname,:completed))
	  		redirect_to(:action=>'index')
	  		else
	  		render('edit')
	  	end
	end
  def delete
  	@todo=Todo.find(params[:id])
  end
  def destroy
  	@todo=Todo.find(params[:id])
  	@todo.destroy
  	redirect_to(:action=>'index')
  end
end
