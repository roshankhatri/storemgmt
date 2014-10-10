class User < ActiveRecord::Base
	has_many :todos
	has_many :items
has_secure_password
scope :testing ,lambda { where(:active=>nil)}
	scope :vis , lambda { where(:completed=>0) }

validates_presence_of :username
validates_presence_of :password

end
