class Profile < ActiveRecord::Base
	belongs_to :user

	validates :name, presence: true
	validates :sex, presence: true
	validates :birthday, presence: true
	validates :team, presence: true
	validates :place, presence: true
end
