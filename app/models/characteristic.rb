class Characteristic < ActiveRecord::Base
  belongs_to :property
  belongs_to :plant
end
