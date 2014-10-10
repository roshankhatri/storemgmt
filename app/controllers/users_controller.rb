class UsersController < ApplicationController
	before_action :confirm_login, :except=>[:index]
  def index
  	@user=User.all
  end

  def new
  end

  def edit
  end

  def delete
  end
end
