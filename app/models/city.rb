class City < ActiveRecord::Base
	attr_accessible :name, :province_id
	belongs_to :province
	has_many :jobs
end
