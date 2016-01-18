class Content < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	validates :title, presence: true
	validates :body, presence: true
	validates :day, presence: true
	validates :place, presence: true

end
