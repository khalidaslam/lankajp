class Province < ActiveRecord::Base
  attr_accessible :name
  has_many :cities

end
