class Plant < ActiveRecord::Base
  validates_presence_of :common_name
  validates_presence_of :genus_species
  validate :genus_species_is_at_least_two_words

  def genus_species_is_at_least_two_words
    errors.add(:genus_species, "should have at least one space (separating the genus and species)") unless genus_species.split(' ').length > 1
  end

end
