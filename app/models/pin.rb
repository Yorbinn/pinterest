class Pin < ApplicationRecord
	validates :name, presence:true
	validates :photo, presence:true
	validates :description, presence:true
end
