class Comment < ActiveRecord::Base
	belongs_to :contents
	belongs_to :user

	validates :body, presence: true
end
