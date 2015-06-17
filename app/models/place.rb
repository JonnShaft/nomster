class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, :length => { :minimum => 4 }
	validates :description, :presence => true
	validates :address, :presence => true
end
