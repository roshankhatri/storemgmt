class IssuesController < ApplicationController
  def index
  end
  def new
    @iss=Issue.new
    @cat=Category.all
    @user=User.all.testing
  end

def create
  
end
  def show
  end

  def edit
  end

  def delete
  end
end
