class AccessController < ApplicationController
	before_action :confirm_login, :except=>[:login,:attempt_login,:logout]
  def index
  end

  def login
  end
  def attempt_login
   if params[:username].present? && params[:password].present?
   	found_user=User.where(:username => params[:username]).first
   	if found_user
   		auth_user=found_user.authenticate(params[:password])
   	end
   end
   if auth_user
   	session[:user_id]=auth_user.id
   	session[:username]=auth_user.username
   	redirect_to(:controller=>'users',:action=>'index')
   else
   	redirect_to(:action=>'login')
   end

  	
  end
  def logout
  	session[:user_id]=nil
  	session[:username]=nil
  	redirect_to(:action=>'login')
  end
end
