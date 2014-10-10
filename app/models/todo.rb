class Todo < ActiveRecord::Base
	belongs_to :user
	scope :sorted, lambda { order("todos.created_at DESC") }
	scope :vis , lambda { where(:completed=>0) }
	scope :search ,lambda {|q| where(["user_id=","#{q}"])}
	scope :test ,lambda {where(:user_id=>session[:user_id])}
end
