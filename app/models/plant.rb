class Plant < ActiveRecord::Base
  validates_presence_of :common_name
  validates_presence_of :genus_species
end
