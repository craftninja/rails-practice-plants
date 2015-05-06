class Property < ActiveRecord::Base
  has_many :characteristics
  has_many :plants, through: :characteristics
end
