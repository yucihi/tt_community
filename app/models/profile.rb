class Profile < ActiveRecord::Base
	belongs_to :user

	validates :name, presence: true
	validates :sex, presence: true
	validates :birthday, presence: true
	validates :team, presence: true
	validates :place, presence: true

	def picture_file= (p)
    if p
      self.picture_data= p.read
      self.content_type= p.content_type
    end
  end
end
