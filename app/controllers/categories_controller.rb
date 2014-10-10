class CategoriesController < ApplicationController
  def index
  	@cat=Category.all
  end

  def new
  end

  def edit
  end

  def delete
  end
end
