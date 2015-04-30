class Plant < ActiveRecord::Base

  validates :common_name,   presence: true
  validates :genus_species, presence: true
  validate  :genus_species_is_two_words_or_more
  validate  :find_genus_species_if_common_name_known

  def genus_species_is_two_words_or_more
    unless genus_species.split(' ').length > 1
      errors.add(:genus_species, 'must be at least two words')
    end
  end

  def find_genus_species_if_common_name_known
    errors.add(:base, "Would you like to look up the genus species of #{common_name} on Wikipedia? http://en.wikipedia.org/wiki/Special:Search?search=#{common_name}&go=Go") if common_name.present? && !genus_species.present?
  end

end
