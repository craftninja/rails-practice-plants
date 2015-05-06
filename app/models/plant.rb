class Plant < ActiveRecord::Base
  has_many :characteristics
  has_many :properties, through: :characteristics
end
