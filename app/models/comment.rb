class Comment < ActiveRecord::Base
	belongs_to :contents
	belongs_to :user
end
